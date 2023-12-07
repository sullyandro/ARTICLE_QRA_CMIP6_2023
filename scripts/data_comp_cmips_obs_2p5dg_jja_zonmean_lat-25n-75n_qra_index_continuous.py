################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data as latband (orig -> 2.5dg -> JJA mean -> 25n-75n -> anom) and compute QRA index (M18 method).
#
# Mann et al 2018 method:
#   
# 3   Compute QRA index for GISS
# 3.1 QRA_index_GISS_step_1 = sum_over_lats( T_GISS_ANOM[t,lats] * T_ERA_QRA_ANOM_SMOOTH[lats] )
# 3.2 QRA_index_GISS_step_2 = standard_deviation( QRA_index_GISS_step_1[t] )
# 3.3 QRA_index_GISS = QRA_index_GISS_step_1[t] / QRA_index_GISS_step_2
#
# 5   Compute QRA index for HadCRUT
# 5.1 QRA_index_Had_step_1 = sum_over_lats( T_Had_ANOM[t,lats] * T_ERA_QRA_ANOM_SMOOTH[lats] )
# 5.2 QRA_index_Had = QRA_index_Had_step_1[t] / QRA_index_GISS_step_2 --> dimension (167 time)
# PS: GISS std was used for all QRA index computed.
#
# 7   Compute QRA index for Cowtan & Way
# 7.1 QRA_index_COW_step_1 = sum_over_lats( T_COW_ANOM[t,lats] * T_ERA_QRA_ANOM_SMOOTH[lats] )
# 7.2 QRA_index_COW = QRA_index_COW_step_1[t] / QRA_index_GISS_step_2 --> dimensions (167 time)
# PS: GISS std was used for all QRA index computed
#
# 9   Compute QRA index for CMIP5/CMIP6 Historical simulations
# 9.1 OFFSET = mean(T_GISS_ANOM[1880:2005,lats]) - mean(T_MOD_MEAN_ANOM[1880:2005,lats])
# --> dimensions (1 time, 11 lats)
# 9.2 T_MOD_MEAN_ANOM_offset = T_MOD_MEAN_ANOM[t,lat] + OFFSET[lat]   --> dimensions (145 time, 11 lat)
# 9.3 T_MOD_1_ANOM_offset = T_MOD_1_ANOM[t,lat] + OFFSET[lat]         --> dimensions (145 time, 11 lat)
# 9.4 QRA_index_MOD_1_step_1 = sum_over_lats( T_MOD_1_ANOM_offset[t,lats] * T_ERA_QRA_ANOM_SMOOTH[lats] )
# 9.5 QRA_index_MOD_1 = QRA_index_MOD_1_step_1[t] / QRA_index_GISS_step_2                     --> dimension (145 time)
# 9.6 QRA_index_MOD_MEAN = mean( QRA_index_MOD_1; QRA_index_MOD_2; ... ; QRA_index_MOD_N )    --> dimension (145 time)
#
# 11  Compute QRA index for CMIP5/CMIP6 Future simulations
#     In steps 9.2 and 9.3 were added an offset, but to produce QRA index for 
#     future simulations as a continuation of the historical experiment, the offset was not used here.
# 11.1 QRA_index_MOD_1_step_1_FUT = sum_over_lats( T_MOD_1_ANOM_FUT * T_ERA_QRA_ANOM_SMOOTH[lats] )
# 11.2 QRA_index_MOD_1_FUT = QRA_index_MOD_1_step_1_FUT[t] / QRA_index_GISS_step_2                            --> dimension (145 time)
# 11.3 QRA_index_MOD_MEAN_FUT = mean( QRA_index_MOD_1_FUT; QRA_index_MOD_2_FUT; ... ; QRA_index_MOD_N_FUT )   --> dimension (145 time)
#
################################################################################

import os
import warnings
import numpy as np
import xarray as xr
import matplotlib as mpl
import matplotlib.pyplot as plt
from glob import glob
from CreateNetCDF4 import nc4
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=2, suppress=1, linewidth=500)

print('')
print('')
print('')
print('++ QRA INDEX calculation')
print('')


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ ERA-Interim')
print('')

fin = '../data/Mann_etal_2018/T_QRA_JJA_NH_ERA_2p5dg_lat-25n-75n_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
tas = ds['tas'].data[0,:,0] 
lat = ds['lat'].data
lon = ds['lon'].data

tas_era = tas[:] # (11)


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ GISSTEMP')
print('')

# Temperature anomaly
fin = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
tas = ds['tas'].data[:,:,0] 
lat = ds['lat'].data
lon = ds['lon'].data

tas_gis = tas[:] # (137, 11)

# QRA index
qra_index_step_1_gis = np.sum(tas_gis*tas_era, axis=1)  # (137)
qra_index_step_2_gis = np.nanstd(qra_index_step_1_gis)
qra_index_gis        = qra_index_step_1_gis/qra_index_step_2_gis
qra_index_gis = np.expand_dims(qra_index_gis, axis=(1,2)) # (137, 1, 1)

# Saving netcdf
fou = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_QRAindex.nc'
nc4(qra_index_gis, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since 1880-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)

# plt.plot(range(1880,2017), qra_index_gis[:,0,0])
# plt.show()


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ HadCRUT')
print('')

# Temperature anomaly
fin = '../data/Mann_etal_2018/HadCRUT_latband_2017_1850-2016_jja_lat-25n-75_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
tas = ds['tas'].data[:,:,0] 
lat = ds['lat'].data
lon = ds['lon'].data

tas_had = tas[:] # (137, 11)

# QRA index
qra_index_step_1_had = np.sum(tas_had*tas_era, axis=1)  # (137)
qra_index_had        = qra_index_step_1_had/qra_index_step_2_gis  # GISS std
qra_index_had = np.expand_dims(qra_index_had, axis=(1,2)) # (137, 1, 1)

# Saving netcdf
fou = '../data/Mann_etal_2018/HadCRUT_latband_2017_1850-2016_jja_lat-25n-75_QRAindex.nc'
nc4(qra_index_had, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since 1850-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)

# plt.plot(range(1850,2017), qra_index_had[:,0,0])
# plt.show()
	

print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ Cowtan & Way')
print('')

# Temperature anomaly
fin = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017_1850-2016_jja_lat-25n-75n_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
tas = ds['tas'].data[:,:,0] 
lat = ds['lat'].data
lon = ds['lon'].data

tas_cow = tas[:] # (137, 11)

# QRA index
qra_index_step_1_cow = np.sum(tas_cow*tas_era, axis=1)  # (137)
qra_index_cow        = qra_index_step_1_cow/qra_index_step_2_gis  # GISS std
qra_index_cow = np.expand_dims(qra_index_cow, axis=(1,2)) # (137, 1, 1)

# Saving netcdf
fou = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017_1850-2016_jja_lat-25n-75n_QRAindex.nc'
nc4(qra_index_cow, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since 1850-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)

# plt.plot(range(1850,2017), qra_index_cow[:,0,0])
# plt.show()


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ CMIP5 and CMIP6 ')
print('')

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
		
		# input()

		period = exp_dates[exp][subexp]
		iyr = int(period[0:4])
		fyr = int(period[7:11])
		
		period_continuous = '185001-210012'
		
		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_anom_continuous'    .format(exp, 'historical-'+subexp, var)
		dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-'+subexp, var)

		if not os.path.exists(dir_ou): os.makedirs(dir_ou)

		# Temperature anomaly ENSEMBLE-MEAN

		fnames = '{0}/{3}_Amon_ENSEMBLE-MEAN_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n_anom.nc'.format(dir_in, exp, 'historical-'+subexp, var, period_continuous)
		files = glob(fnames)
		print('ensemble -->', files[0])
		print()
		
		ds  = xr.open_dataset(files[0], decode_times=False)
		dat = np.squeeze(ds['tas'].data)
		lat = ds['lat'].data
		lon = ds['lon'].data
		tas_mod_mean = dat[:]
		
		print('imput -->', dat.shape, files[0])
		
		# OFFSET --> period 1880-2005
		if exp == 'cmip5': iyr = int(files[0].split('/')[-1].split('_')[5][:4])
		if exp == 'cmip6': iyr = int(files[0].split('/')[-1].split('_')[6][:4])
		j1 = 1880-1880
		j2 = 2005-1880+1
		l1 = 1880 - 1850
		l2 = 2005 - 1850 + 1
		
		OFFSET = np.nanmean(tas_gis[j1:j2,:], axis=0) - np.nanmean(tas_mod_mean[l1:l2,:], axis=0) # (1 time, 11 lats) --> period 1880-2005
					
		# Temperature anomaly Models

		fnames = '{0}/{3}_Amon_*_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n_anom.nc'.format(dir_in, exp, 'historical-'+subexp, var, period_continuous)
		print('fnames -->', fnames)
		files = glob(fnames)
		files.sort()

		names = []
		qra_all = {}
		dat_period = {}

		# MODELS
		for a in files:
			
			if 'ENSEMBLE-MEAN' in a: continue
				
			fname = a.split('/')[-1]
			
			if exp == 'cmip5': model = fname.split('_')[4] + "_" + fname.split('_')[2]
			if exp == 'cmip6': model = fname.split('_')[4] + "_" + fname.split('_')[5] + "_" + fname.split('_')[2]

			names.append(model)
				
			ds  = xr.open_dataset(a, decode_times=False)
			dat = np.squeeze(ds['tas'].data)
			lat = ds['lat'].data
			lon = ds['lon'].data

			print('imput -->', dat.shape, a)

			tas_mod = dat[:] + OFFSET[:]
			
			# QRA index
			qra_index_step_1_mod = np.nansum(tas_mod*tas_era, axis=1)         # (137)
			qra_index_mod        = qra_index_step_1_mod/qra_index_step_2_gis  # GISS std
			qra_index_mod        = np.expand_dims(qra_index_mod, axis=(1,2))  # (137, 1, 1)

			qra_all[model] = qra_index_mod[:]

			# Output name
			
			model_name  = model.split('_')[-1]
			if exp == 'cmip5': run = model.split('_')[0]
			if exp == 'cmip6': run = model.split('_')[0] + "_" + model.split('_')[1]
			
			fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, 'historical-'+subexp, var, model_name, run, period_continuous)
			
			# Saving netcdf
			nc4(qra_index_mod, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
			if os.path.exists(fou):
				print('done -->', fou)
				

		# QRA index models mean

		qra_index_mod_mean = np.array(list(qra_all.values()))
		qra_index_mod_mean = np.nanmean(qra_index_mod_mean, axis=0)

		if exp == 'cmip5': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1'
		if exp == 'cmip6': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1f1_gn'
				
		fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, 'historical-'+subexp, var, model_name, run, period_continuous)
		
		# Saving netcdf
		nc4(qra_index_mod_mean, [0], [0], vvar='tas', fname=fou, vlname='tas', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
		if os.path.exists(fou):
			print('done -->', fou)







