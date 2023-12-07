################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data as latband (orig -> 2.5dg -> JJA mean -> 25n-75n -> anom - > QRA index) and compute QRA index rescaled.
#
# Mann et al 2018 method:
#
# STEPS TO RESCALE TAS QRA index using no_events_6-8_all_1979-2019.dat (1979-2019)
#
# 1 Find trend in “no_events_6-8_all.dat (1979-2019)” --> Number_events --> Slope_events
# 2 Find trend in “GISSTEMP QRA index (1979-2019)” --> GISSTEMP_values --> Slope_giss
# 3 Calculate the scale factor  --> Scale_factor = Slope_events / Slope_giss
# 4 Calculate the offset factor --> Offset_factor = mean(Number_events) - mean(GISSTEMP_values)
# 5 Rescaling the QRA index series
# 5.1 GISSTEMP -->      GISSTEMP_values_rescaled = Scale_factor*GISSTEMP_values   + Offset_factor
# 5.2 MODELS   -->         MODEL_values_rescaled = Scale_factor*MODEL_values      + Offset_factor
# 5.3 MODELS_MEAN -> MODELS_MEAN_values_rescaled = Scale_factor*MODEL_MEAN_values + Offset_factor
#
################################################################################

import os
import scipy
import warnings
import numpy as np
import xarray as xr
import matplotlib as mpl
import matplotlib.pyplot as plt
import pymannkendall as mk
from glob import glob
from scipy.stats import linregress
from CreateNetCDF4 import nc4
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=5, suppress=1, linewidth=500)


print('')
print('')
print('')
print('++ QRA INDEX trend calculation for no_events_6-8_all.dat.txt')
print('')
print('')

RESCALE_PERIOD = '1979-2022'

#      ../data/Kornhuber_etal_2017/qra_no_events_wave6-8_all_1979-2022_req_table_iii_era5.txt
fin = '../data/Kornhuber_etal_2017/qra_no_events_wave6-8_all_{0}_req_table_iii_era5.txt'.format(RESCALE_PERIOD)
print('input -->', fin)
no_events_txt = np.loadtxt(fin)
no_events, no_events_yrs = no_events_txt[:,0], no_events_txt[:,1]
no_events_yrs = np.array(no_events_yrs, dtype=float)
print(no_events.shape)
print(no_events)
print(no_events_yrs)

iyr = int(no_events_yrs[0])
fyr = int(no_events_yrs[-1])

# Period for the trend
yr1 = 1979
yr2 = 2022
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

# Regression

no_events_crop = no_events[l1:l2]
y_for_regress  = no_events[l1:l2]
x_for_regress  = range(1, len(no_events[l1:l2])+1)

print()
print('x')
print(x_for_regress)
print()
print('y')
print(y_for_regress)
print()

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann-Kendall Trend Test
# Mann_Kendall_Test(trend='no trend', h=False, p=0.32732960607421324, z=0.9795068491984874, Tau=0.10253699788583509, s=97.0, var_s=9605.666666666666, slope=0.031754032258064516, intercept=6.317288306451613)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(no_events[l1:l2])+5)
trend_line_val = slope*trend_line_x + intercept

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(no_events_yrs, no_events, '-o', color='black', label='ERA5 QRA events')
ax.plot(trend_line_x+1978, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 2), round(intercept, 2)))
# ax.plot(no_events_yrs[-4:], no_events[-4:], '-o', color='gray')
ax.set_ylim(0, 17)
ax.set_xlim(1978, 2024)
ax.set_xticks(range(1979, 2023, 1))
ax.set_xticklabels(range(1979, 2023, 1))
ax.xaxis.set_tick_params(labelsize=7, rotation=90)
plt.title('Number of QRA events for ERA5 (1979-2022) - Waves 6-8')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
figname = '../figures/plot_trend_qra_no_events_wave6-8_all_{0}_req_table_iii_era5.png'.format(RESCALE_PERIOD)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):
	print('done -->', figname)
else:
	print('fail -->', figname)


print()
print( 'slope     -->', slope)
print( 'intercept -->', intercept)
print( 'r         -->', r)
print( 'p         -->', p)
print( 'se        -->', se)
print()


print('')
print('')
print('')
print('++ QRA INDEX trend calculation for GISSTEMP')
print('')

# GISSTEMP 
fin = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_QRAindex.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
gis = np.squeeze(ds['tas'].data) #
lat = ds['lat'].data
lon = ds['lon'].data
yrs_gis = range(1880, 2016+1)

iyr = int(yrs_gis[0])
fyr = int(yrs_gis[-1])

# Period for the trend
yr1 = 1979
yr2 = 2016
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

# Regression

gis_crop      = gis[l1:l2]
y_for_regress = gis[l1:l2]
x_for_regress = range(1, len(gis[l1:l2])+1)

print()
print('x')
print(x_for_regress)
print()
print('y')
print(y_for_regress)
print()

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_gis = slope

print()
print( 'slope     -->', slope)
print( 'intercept -->', intercept)
print( 'r         -->', r)
print( 'p         -->', p)
print( 'se        -->', se)
print()

scalefactor = slope_no_events/slope_gis

offsetfactor = np.mean(no_events_crop) - np.mean(gis_crop);

qra_rescaled_giss = scalefactor*gis + offsetfactor;

trend_line_x   = np.arange(1, len(y_for_regress)+5)
trend_line_val = slope*trend_line_x + intercept

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(np.array(x_for_regress)+1978, y_for_regress, '-o', color='darkred', label='GISTEMP QRA index')
ax.plot(trend_line_x+1978, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 2), round(intercept, 2)))
ax.set_xlim(1978, 2022)
ax.set_xticks(range(1979, 2021, 1))
ax.set_xticklabels(range(1979, 2021, 1))
ax.xaxis.set_tick_params(labelsize=7, rotation=90)
plt.title('QRA index from TAS for GISTEMP')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
figname = '../figures/plot_trend_gisstemp_qraindex.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):
	print('done -->', figname)
else:
	print('fail -->', figname)

qra_rescaled_giss = np.expand_dims(qra_rescaled_giss, axis=(1,2)) # (137, 1, 1)

# Saving netcdf
fou = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_QRAindex_rescaled-{0}.nc'.format(RESCALE_PERIOD)
nc4(qra_rescaled_giss, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since 1880-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)




print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ CMIP5 and CMIP6 ')
print('')

offset_dic = {}

for exp in ['cmip5', 'cmip6']:


	if exp in ['cmip5']: subex = ['rcp85']
	if exp in ['cmip6']: subex = ['ssp585', 'ssp370', 'ssp370-lowNTCF']
	
	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012', 'ssp370-lowNTCF':'201501-210012'} }

	var = 'tas'
		
	for subexp in subex:	
		
		print('')
		print('')
		print('+ {} {}'.format(exp.upper(), subexp))
		print('')    
		
		period = exp_dates[exp][subexp]
		iyr = int(period[0:4])
		fyr = int(period[7:11])
		
		period_continuous = '185001-210012'
		
		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'             .format(exp, 'historical-'+subexp, var)
		dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous_rescaled-{3}'.format(exp, 'historical-'+subexp, var, RESCALE_PERIOD)

		if not os.path.exists(dir_ou): os.makedirs(dir_ou)

		# Temperature QRAindex from models

		fnames = '{0}/{3}_Amon_*_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, 'historical-'+subexp, var, period_continuous)
		
		print('fnames -->', fnames)
		files = glob(fnames)
		files.sort()
		
		names = []
		qra_slope_all = {}
		qra_slope_names = []
		qra_slope_value = []
		dat_period = {}

		ct = 0
		
		# MODELS
		for a in files:
							
			fname = a.split('/')[-1]
			
			if exp == 'cmip5': model = fname.split('_')[4] + "_" + fname.split('_')[2]
			if exp == 'cmip6': model = fname.split('_')[4] + "_" + fname.split('_')[5] + "_" + fname.split('_')[2]
			
			if exp == 'cmip5': model_run = fname.split('_')[2] + "_" + fname.split('_')[4]
			if exp == 'cmip6': model_run = fname.split('_')[2] + "_" + fname.split('_')[4] + "_" + fname.split('_')[5]
				
			ds  = xr.open_dataset(a, decode_times=False)
			dat = np.squeeze(ds['tas'].data)
			lat = ds['lat'].data
			lon = ds['lon'].data
			qra_index_mod = dat[:]
			
			# print('imput -->', dat.shape, a)
						
			qra_rescaled_mod = scalefactor*qra_index_mod + offsetfactor;
			qra_rescaled_mod = np.expand_dims(qra_rescaled_mod, axis=(1,2))

			# Output name
			
			model_name  = model.split('_')[-1]
			if exp == 'cmip5': run = model.split('_')[0]
			if exp == 'cmip6': run = model.split('_')[0] + "_" + model.split('_')[1]
			
			fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled-{7}.nc'.format(dir_ou, exp, 'historical-'+subexp, var, model_name, run, period_continuous, RESCALE_PERIOD)
			
			# Saving netcdf
			nc4(qra_rescaled_mod, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(1850))
			if os.path.exists(fou):
				print('done -->', fou)














