################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to plot time series from obsertational and models data. 
#
################################################################################

import os
import warnings
import numpy as np
import xarray as xr
import matplotlib as mpl
import matplotlib.pyplot as plt
import pymannkendall as mk
from glob import glob
from scipy.stats import linregress
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=2, suppress=1, linewidth=500)


print('')
print('')
print('')
print('++ Plots')


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('Getting OBS QRA index data')
print('')

# GISSTEMP
fin = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
gis = np.squeeze(ds['tas'].data)
gis = np.nanmean( np.squeeze(ds['tas'].data), axis=1)
yrs_gis = range(1880, 2016+1)

# HadCRUT
fin = '../data/Mann_etal_2018/HadCRUT_latband_2017_1850-2016_jja_lat-25n-75_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
had = np.nanmean( np.squeeze(ds['tas'].data), axis=1)
yrs_had = range(1850, 2016+1)

# Cowtan & Way
fin = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017_1850-2016_jja_lat-25n-75n_anom.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
cow = np.nanmean( np.squeeze(ds['tas'].data), axis=1)
yrs_cow = range(1850, 2016+1)




print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ Creating data dictionary for CMIP5 and CMIP6 ')
print('')

data = {}
data_aa = {}

for exp in ['cmip5', 'cmip6']:

    if exp in ['cmip5']: subex = ['historical-rcp85']
    if exp in ['cmip6']: subex = ['historical-ssp585', 'historical-ssp370', 'historical-ssp370-lowNTCF']

    exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
                  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012', 'ssp370-lowNTCF':'201501-210012'} }
                  
    exp_years = { 'cmip5':{'historical':np.arange(1850,2006+1),  'rcp85':np.arange(2006,2100+1),  'historical-rcp85':np.arange(1850,2100+1)}, 
                  'cmip6':{'historical':np.arange(1850,2015+1), 'ssp585':np.arange(2015,2100+1), 'ssp370':np.arange(2015,2100+1), 'ssp370-lowNTCF':np.arange(2015,2100+1), 
                           'historical-ssp585':np.arange(1850,2100+1), 'historical-ssp370':np.arange(1850,2100+1), 'historical-ssp370-lowNTCF':np.arange(1850,2100+1)}  }
    
    var = 'tas'
    
    data.update({exp:{}})
    data_aa.update({exp:{}})
    
    for subexp in subex:

        data[exp].update({subexp:{}})
        data_aa[exp].update({subexp:{}})

        print('')
        print('')
        print('+ {} {}'.format(exp.upper(), subexp))
        print('')    
                        
        dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_anom_continuous'.format(exp, subexp, var)

        fnames = '{0}/{3}_Amon_*_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_anom.nc'.format(dir_in, exp, subexp, var)
        
        print('fnames -->', fnames)
        files = glob(fnames)
        files.sort()

        for i,a in enumerate(files):
            
            fname = a.split('/')[-1] 
            split = a.split('/')[-1].split('_')
                        
            if exp == 'cmip5': model_key = '{}_{}_null'.format(split[2], split[4])           # tas_Amon_ENSEMBLE-MEAN_historical_r1i1p1_185001-200512_2p5dg_jja_zonmean_lat-25n-75n_anom.nc
            if exp == 'cmip6': model_key = '{}_{}_{}'  .format(split[2], split[4], split[5]) # tas_Amon_ENSEMBLE-MEAN_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n_anom.nc
            
            ds  = xr.open_dataset(a, decode_times=False)
            dat = np.squeeze(ds['tas'].data)
            lat = ds['lat'].data

            data[exp][subexp].update({ model_key: dat })


            # mid-lat 25-60N

            mid_dat = np.mean(dat[:,:8], axis=1)

            # high-lat 65-75N

            hig_dat = np.mean(dat[:,8:], axis=1)

            # Arctic amplification (high - mid)

            aa_dat  = hig_dat - mid_dat
            
            data_aa[exp][subexp].update({ model_key: aa_dat })
            

lim_c5_hist           = np.in1d(exp_years['cmip5']['historical-rcp85'],          exp_years['cmip5']['historical'])
lim_c5_rcp85          = np.in1d(exp_years['cmip5']['historical-rcp85'],          exp_years['cmip5']['rcp85'])

lim_c6_hist           = np.in1d(exp_years['cmip6']['historical-ssp585'],         exp_years['cmip6']['historical'])
lim_c6_ssp585         = np.in1d(exp_years['cmip6']['historical-ssp585'],         exp_years['cmip6']['ssp585'])
lim_c6_ssp370         = np.in1d(exp_years['cmip6']['historical-ssp370'],         exp_years['cmip6']['ssp370'])
lim_c6_ssp370_lowntcf = np.in1d(exp_years['cmip6']['historical-ssp370-lowNTCF'], exp_years['cmip6']['ssp370-lowNTCF'])

            
# Plot [CMIP5 --> Historical and RCP85]   --> All models

data_all_cmip5_hist                   = data['cmip5']['historical-rcp85']
data_ens_cmip5_hist                   = data['cmip5']['historical-rcp85']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_hist                   = exp_years['cmip5']['historical']

data_all_cmip5_rcp85                  = data['cmip5']['historical-rcp85']
data_ens_cmip5_rcp85                  = data['cmip5']['historical-rcp85']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_rcp85                  = exp_years['cmip5']['rcp85']

aa_data_all_cmip5_hist                = data_aa['cmip5']['historical-rcp85']
aa_data_ens_cmip5_hist                = data_aa['cmip5']['historical-rcp85']['ENSEMBLE-MEAN_r1i1p1_null']

aa_data_all_cmip5_rcp85               = data_aa['cmip5']['historical-rcp85']
aa_data_ens_cmip5_rcp85               = data_aa['cmip5']['historical-rcp85']['ENSEMBLE-MEAN_r1i1p1_null']


# Plot [CMIP6 --> Historical and SSP585]  --> All models

data_all_cmip6_hist                   = data['cmip6']['historical-ssp585']
data_ens_cmip6_hist                   = data['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist                   = exp_years['cmip6']['historical']

data_all_cmip6_ssp585                 = data['cmip6']['historical-ssp585']
data_ens_cmip6_ssp585                 = data['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp585                 = exp_years['cmip6']['ssp585']

aa_data_all_cmip6_hist                = data_aa['cmip6']['historical-ssp585']
aa_data_ens_cmip6_hist                = data_aa['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_all_cmip6_ssp585              = data_aa['cmip6']['historical-ssp585']
aa_data_ens_cmip6_ssp585              = data_aa['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']


# Plot [CMIP6 --> Historical and SSP370]  --> All models

data_all_cmip6_hist                   = data['cmip6']['historical-ssp585']
data_ens_cmip6_hist                   = data['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist                   = exp_years['cmip6']['historical']

data_ens_cmip6_hist_ssp370            = data['cmip6']['historical-ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']

data_all_cmip6_ssp370                 = data['cmip6']['historical-ssp370']
data_ens_cmip6_ssp370                 = data['cmip6']['historical-ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp370                 = exp_years['cmip6']['ssp370']

aa_data_all_cmip6_hist                = data_aa['cmip6']['historical-ssp585']
aa_data_ens_cmip6_hist                = data_aa['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_ens_cmip6_hist_ssp370         = data_aa['cmip6']['historical-ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_all_cmip6_ssp370              = data_aa['cmip6']['historical-ssp370']
aa_data_ens_cmip6_ssp370              = data_aa['cmip6']['historical-ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']


# Plot [CMIP6 --> Historical and SSP370-lowNTCF]  --> All models

data_all_cmip6_hist_ssp370_lowntcf    = data['cmip6']['historical-ssp370-lowNTCF']
data_ens_cmip6_hist_ssp370_lowntcf    = data['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist_ssp370_lowntcf    = exp_years['cmip6']['historical-ssp370-lowNTCF']

data_ens_cmip6_hist_ssp370_lowntcf    = data['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']

data_all_cmip6_ssp370_lowntcf         = data['cmip6']['historical-ssp370-lowNTCF']
data_ens_cmip6_ssp370_lowntcf         = data['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp370_lowntcf         = exp_years['cmip6']['ssp370-lowNTCF']

aa_data_all_cmip6_hist_ssp370_lowntcf = data_aa['cmip6']['historical-ssp370-lowNTCF']
aa_data_ens_cmip6_hist_ssp370_lowntcf = data_aa['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_ens_cmip6_hist_ssp370_lowntcf = data_aa['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_all_cmip6_ssp370_lowntcf      = data_aa['cmip6']['historical-ssp370-lowNTCF']
aa_data_ens_cmip6_ssp370_lowntcf      = data_aa['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']




print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85]   --> All models')
print()

figname = '../figures/plot_serie_cmip5_historical_rcp85_anom_1850-2100_by_lat_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP5 Historical and RCP85 - Ensemble mean - JJA mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip5_hist,  data_ens_cmip5_hist [:,i][lim_c5_hist],  '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip5_rcp85, data_ens_cmip5_rcp85[:,i][lim_c5_rcp85], '-', color=colors[i], lw=2)

yrs = data_tim_cmip5_hist.tolist() + data_tim_cmip5_rcp85.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-1, 9)
ax.set_yticks(range(-1, 9, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, frameon=True, loc='upper left', fontsize=11)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP585]  --> All models')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp585_anom_1850-2100_by_lat_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP6 Historical and SSP585 - Ensemble mean - JJA mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist  [:,i][lim_c6_hist],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585[:,i][lim_c6_ssp585], '-', color=colors[i], lw=2)

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp585.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-1, 9)
ax.set_yticks(range(-1, 9, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, frameon=True, loc='upper left', fontsize=11)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP370]  --> All models')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp370_anom_1850-2100_by_lat_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP6 Historical and SSP370 - Ensemble mean - JJA mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist_ssp370[:,i][lim_c6_hist],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370     [:,i][lim_c6_ssp370], '-', color=colors[i], lw=2)

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-1, 9)
ax.set_yticks(range(-1, 9, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, frameon=True, loc='upper left', fontsize=11)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP370-lowNTCF]  --> All models')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp370-lowNTCF_anom_1850-2100_by_lat_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP6 Historical and SSP370-lowNTCF - Ensemble mean - JJA mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,           data_ens_cmip6_hist_ssp370_lowntcf[:,i][lim_c6_hist],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp370_lowntcf, data_ens_cmip6_ssp370_lowntcf     [:,i][lim_c6_ssp370], '-', color=colors[i], lw=2)

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370_lowntcf.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-1, 9)
ax.set_yticks(range(-1, 9, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, frameon=True, loc='upper left', fontsize=11)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)



print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85] and [CMIP6 --> Historical, SSP585, SSP370] --> ENSEMBLE --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmips_anom_1850-2100_arctic_amplification_continuous_EDITED.png'

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.ylabel('Temperature anomaly [°C]')

plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2004, -0.32, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)
plt.text(2013, -0.32, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist  [lim_c6_hist],   '-', color='black',   lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, aa_data_ens_cmip6_ssp585[lim_c6_ssp585], '-', color='blue',    lw=2, label='CMIP6 ENSEMBLE MEAN SSP585')
ax.plot(data_tim_cmip6_ssp370, aa_data_ens_cmip6_ssp370[lim_c6_ssp370], '-', color='sienna',  lw=2, label='CMIP6 ENSEMBLE MEAN SSP370')

ax.plot(data_tim_cmip5_hist,   aa_data_ens_cmip5_hist   [lim_c5_hist],  '-', color='silver',  lw=2, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85,  aa_data_ens_cmip5_rcp85  [lim_c5_rcp85], '-', color='dimgrey', lw=2, label='CMIP5 ENSEMBLE MEAN RCP85')

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
# ax.set_ylim(-1, 8)
# ax.set_yticks(range(-1, 8, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=3)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)






print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85] and [CMIP6 --> Historical, SSP585, SSP370, SSP370-lowNTCF] --> ENSEMBLE --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmips_anom_1850-2100_arctic_amplification_continuous_EDITED_with_SSP370-lowNTCF.png'

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.ylabel('Temperature anomaly [°C]')

plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2004, -0.32, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)
plt.text(2013, -0.32, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist          [lim_c6_hist],   '-', color='black',     lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, aa_data_ens_cmip6_ssp585        [lim_c6_ssp585], '-', color='blue',      lw=2, label='CMIP6 ENSEMBLE MEAN SSP585')
ax.plot(data_tim_cmip6_ssp370, aa_data_ens_cmip6_ssp370        [lim_c6_ssp370], '-', color='sienna',    lw=2, label='CMIP6 ENSEMBLE MEAN SSP370')
ax.plot(data_tim_cmip6_ssp370, aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370], '-', color='darkgreen', lw=2, label='CMIP6 ENSEMBLE MEAN SSP370-lowNTCF')

ax.plot(data_tim_cmip5_hist,   aa_data_ens_cmip5_hist          [lim_c5_hist],   '-', color='silver',    lw=2, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85,  aa_data_ens_cmip5_rcp85         [lim_c5_rcp85],  '-', color='dimgrey',   lw=2, label='CMIP5 ENSEMBLE MEAN RCP85')

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
# ax.set_ylim(-1, 8)
# ax.set_yticks(range(-1, 8, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=3)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)






####################################################################################################
####################################################################################################
####################################################################################################
# LINEAR REGRESSION PART


print()
print('# Linear trend CMIP6 SSP585 2015-2050')

# print(data_tim_cmip6_ssp585)
# print(len(aa_data_ens_cmip6_ssp585[lim_c6_ssp585]))

# Period for the trend
iyr = data_tim_cmip6_ssp585[0]
yr1 = 2015
yr2 = 2050
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2015-2050 CMIP6 SSP585 ==>', np.nanmean(aa_data_ens_cmip6_ssp585[lim_c6_ssp585][l1:l2]) )

y_for_regress  = aa_data_ens_cmip6_ssp585[lim_c6_ssp585][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip6_ssp585[lim_c6_ssp585][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='increasing', h=True, p=3.6827485505597224e-09, z=5.897847159190592, Tau=0.6888888888888889, s=434.0, var_s=5390.0, slope=0.008466271683573733, intercept=0.09588278364390115)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p1_trend_aa_data_ens_cmip6_ssp585 = test_mk[0]
p1_slope_aa_data_ens_cmip6_ssp585 = test_mk[7]
p1_intercept_aa_data_ens_cmip6_ssp585 = test_mk[8]
p1_trend_line_x_aa_data_ens_cmip6_ssp585 = trend_line_x[:]
p1_trend_line_v_aa_data_ens_cmip6_ssp585 = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip6_ssp585[l1:l2], y_for_regress, '-o', color='black', label='CMIP6 SSP585')
ax.plot(trend_line_x+2014, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2012, 2053)
ax.set_xticks(range(2015, 2051, 5))
ax.set_xticklabels(range(2015, 2051, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip6_ssp585_2015-2050.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


print()
print('# Linear trend CMIP6 SSP370 2015-2050')

# print(data_tim_cmip6_ssp370)
# print(len(aa_data_ens_cmip6_ssp370[lim_c6_ssp370]))

# Period for the trend
iyr = data_tim_cmip6_ssp370[0]
yr1 = 2015
yr2 = 2050
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2015-2050 CMIP6 SSP370 ==>', np.nanmean(aa_data_ens_cmip6_ssp370[lim_c6_ssp370][l1:l2]) )

y_for_regress  = aa_data_ens_cmip6_ssp370[lim_c6_ssp370][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip6_ssp370[lim_c6_ssp370][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='increasing', h=True, p=0.04826478343874108, z=1.975029649151584, Tau=0.23174603174603176, s=146.0, var_s=5390.0, slope=0.0019426757798475442, intercept=0.11517090028991883)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p1_trend_aa_data_ens_cmip6_ssp370 = test_mk[0]
p1_slope_aa_data_ens_cmip6_ssp370 = test_mk[7]
p1_intercept_aa_data_ens_cmip6_ssp370 = test_mk[8]
p1_trend_line_x_aa_data_ens_cmip6_ssp370 = trend_line_x[:]
p1_trend_line_v_aa_data_ens_cmip6_ssp370 = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip6_ssp370[l1:l2], y_for_regress, '-o', color='black', label='CMIP6 SSP370')
ax.plot(trend_line_x+2014, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2012, 2053)
ax.set_xticks(range(2015, 2051, 5))
ax.set_xticklabels(range(2015, 2051, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip6_ssp370_2015-2050.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)



print()
print('# Linear trend CMIP6 SSP370-lowNTCF 2015-2050')

# print(data_tim_cmip6_ssp370_lowntcf)
# print(len(aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370]))

# Period for the trend
iyr = data_tim_cmip6_ssp370_lowntcf[0]
yr1 = 2015
yr2 = 2050
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2015-2050 CMIP6 SSP370-lowNTCF ==>', np.nanmean(aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370][l1:l2]) )

y_for_regress  = aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='no trend', h=False, p=0.05478895941944817, z=1.9205460726232644, Tau=0.2253968253968254, s=142.0, var_s=5390.0, slope=0.0025681593366291226, intercept=0.18624176993102268)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p1_trend_aa_data_ens_cmip6_ssp370_lowntcf = test_mk[0]
p1_slope_aa_data_ens_cmip6_ssp370_lowntcf = test_mk[7]
p1_intercept_aa_data_ens_cmip6_ssp370_lowntcf = test_mk[8]
p1_trend_line_x_aa_data_ens_cmip6_ssp370_lowntcf = trend_line_x[:]
p1_trend_line_v_aa_data_ens_cmip6_ssp370_lowntcf = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip6_ssp370_lowntcf[l1:l2], y_for_regress, '-o', color='black', label='CMIP6 SSP370-lowNTCF')
ax.plot(trend_line_x+2014, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2012, 2053)
ax.set_xticks(range(2015, 2051, 5))
ax.set_xticklabels(range(2015, 2051, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip6_ssp370-lowNTCF_2015-2050.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)



print()
print('# Linear trend CMIP5 RCP85 2015-2050')

# print(data_tim_cmip5_rcp85)
# print(len(aa_data_ens_cmip5_rcp85[lim_c5_rcp85]))

# Period for the trend
iyr = data_tim_cmip5_rcp85[0]
yr1 = 2015
yr2 = 2050
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2015-2050 CMIP5 RCP85 ==>', np.nanmean(aa_data_ens_cmip5_rcp85[lim_c5_rcp85][l1:l2]) )

y_for_regress  = aa_data_ens_cmip5_rcp85[lim_c5_rcp85][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip5_rcp85[lim_c5_rcp85][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='no trend', h=False, p=0.4872648904642325, z=-0.6946656007360743, Tau=-0.08253968253968254, s=-52.0, var_s=5390.0, slope=-0.0002592546692617562, intercept=0.1208265226726469)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p1_trend_aa_data_ens_cmip5_rcp85 = test_mk[0]
p1_slope_aa_data_ens_cmip5_rcp85 = test_mk[7]
p1_intercept_aa_data_ens_cmip5_rcp85 = test_mk[8]
p1_trend_line_x_aa_data_ens_cmip5_rcp85 = trend_line_x[:]
p1_trend_line_v_aa_data_ens_cmip5_rcp85 = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip5_rcp85[l1:l2], y_for_regress, '-o', color='black', label='CMIP5 RCP85')
ax.plot(trend_line_x+2014, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2012, 2053)
ax.set_xticks(range(2015, 2051, 5))
ax.set_xticklabels(range(2015, 2051, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip5_rcp85_2015-2050.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)





print()
print('# Linear trend CMIP6 SSP585 2051-2100')

# print(data_tim_cmip6_ssp585)
# print(len(aa_data_ens_cmip6_ssp585[lim_c6_ssp585]))

# Period for the trend
iyr = data_tim_cmip6_ssp585[0]
yr1 = 2051
yr2 = 2100
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2051-2100 CMIP6 SSP585 ==>', np.nanmean(aa_data_ens_cmip6_ssp585[lim_c6_ssp585][l1:l2]) )

y_for_regress  = aa_data_ens_cmip6_ssp585[lim_c6_ssp585][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip6_ssp585[lim_c6_ssp585][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='increasing', h=True, p=0.0, z=8.632533216710454, Tau=0.843265306122449, s=1033.0, var_s=14291.666666666666, slope=0.0173934002717336, intercept=0.31316419442494714)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p2_trend_aa_data_ens_cmip6_ssp585 = test_mk[0]
p2_slope_aa_data_ens_cmip6_ssp585 = test_mk[7]
p2_intercept_aa_data_ens_cmip6_ssp585 = test_mk[8]
p2_trend_line_x_aa_data_ens_cmip6_ssp585 = trend_line_x[:]
p2_trend_line_v_aa_data_ens_cmip6_ssp585 = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip6_ssp585[l1:l2], y_for_regress, '-o', color='black', label='CMIP6 SSP585')
ax.plot(trend_line_x+2050, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2048, 2103)
ax.set_xticks(range(2050, 2101, 5))
ax.set_xticklabels(range(2050, 2101, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip6_ssp585_2051-2100.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


print()
print('# Linear trend CMIP6 SSP370 2051-2100')

# print(data_tim_cmip6_ssp370)
# print(len(aa_data_ens_cmip6_ssp370[lim_c6_ssp370]))

# Period for the trend
iyr = data_tim_cmip6_ssp370[0]
yr1 = 2051
yr2 = 2100
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2051-2100 CMIP6 SSP370 ==>', np.nanmean(aa_data_ens_cmip6_ssp370[lim_c6_ssp370][l1:l2]) )

y_for_regress  = aa_data_ens_cmip6_ssp370[lim_c6_ssp370][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip6_ssp370[lim_c6_ssp370][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='increasing', h=True, p=1.5543122344752192e-15, z=7.980074310796292, Tau=0.7795918367346939, s=955.0, var_s=14291.666666666666, slope=0.008174456082857572, intercept=0.23368455011111042)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p2_trend_aa_data_ens_cmip6_ssp370 = test_mk[0]
p2_slope_aa_data_ens_cmip6_ssp370 = test_mk[7]
p2_intercept_aa_data_ens_cmip6_ssp370 = test_mk[8]
p2_trend_line_x_aa_data_ens_cmip6_ssp370 = trend_line_x[:]
p2_trend_line_v_aa_data_ens_cmip6_ssp370 = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip6_ssp370[l1:l2], y_for_regress, '-o', color='black', label='CMIP6 SSP370')
ax.plot(trend_line_x+2050, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2048, 2103)
ax.set_xticks(range(2050, 2101, 5))
ax.set_xticklabels(range(2050, 2101, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip6_ssp370_2051-2100.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)



print()
print('# Linear trend CMIP6 SSP370-lowNTCF 2051-2100')

# print(data_tim_cmip6_ssp370_lowntcf)
# print(len(aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370]))

# Period for the trend
iyr = data_tim_cmip6_ssp370[0]
yr1 = 2051
yr2 = 2100
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2051-2100 CMIP6 SSP370-lowNTCF ==>', np.nanmean(aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370][l1:l2]) )

y_for_regress  = aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='increasing', h=True, p=6.016622755566914e-10, z=6.189994748416411, Tau=0.6048979591836735, s=741.0, var_s=14291.666666666666, slope=0.008285914377499657, intercept=0.3369320574947582)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p2_trend_aa_data_ens_cmip6_ssp370_lowntcf = test_mk[0]
p2_slope_aa_data_ens_cmip6_ssp370_lowntcf = test_mk[7]
p2_intercept_aa_data_ens_cmip6_ssp370_lowntcf = test_mk[8]
p2_trend_line_x_aa_data_ens_cmip6_ssp370_lowntcf = trend_line_x[:]
p2_trend_line_v_aa_data_ens_cmip6_ssp370_lowntcf = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip6_ssp370_lowntcf[l1:l2], y_for_regress, '-o', color='black', label='CMIP6 SSP370-lowNTCF')
ax.plot(trend_line_x+2050, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2048, 2103)
ax.set_xticks(range(2050, 2101, 5))
ax.set_xticklabels(range(2050, 2101, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip6_ssp370-lowNTCF_2051-2100.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


print()
print('# Linear trend CMIP5 RCP85 2051-2100')

# print(data_tim_cmip5_rcp85)
# print(len(aa_data_ens_cmip5_rcp85[lim_c5_rcp85]))

# Period for the trend
iyr = data_tim_cmip5_rcp85[0]
yr1 = 2051
yr2 = 2100
l1 = yr1 - iyr
l2 = yr2 - iyr + 1

print( 'AA 2051-2100 CMIP5 RCP85 ==>', np.nanmean(aa_data_ens_cmip5_rcp85[lim_c5_rcp85][l1:l2]) )

y_for_regress  = aa_data_ens_cmip5_rcp85[lim_c5_rcp85][l1:l2]
x_for_regress  = range(1, len(aa_data_ens_cmip5_rcp85[lim_c5_rcp85][l1:l2])+1)

slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
slope_no_events = slope

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = slope*trend_line_x + intercept

# perform Mann-Kendall Trend Test
# https://www.statology.org/mann-kendall-test-python/
test_mk = mk.original_test(y_for_regress)
print('')
print('Mann-Kendall Trend Test')
print('')
print(test_mk)
print('')
# Mann_Kendall_Test(trend='increasing', h=True, p=5.476508135870972e-12, z=6.892642800939354, Tau=0.673469387755102, s=825.0, var_s=14291.666666666666, slope=0.00515870635326092, intercept=0.10021478014114582)

trend_line_x   = np.arange(1, len(x_for_regress)+2)
trend_line_val = test_mk[7]*trend_line_x + test_mk[8]

p2_trend_aa_data_ens_cmip5_rcp85 = test_mk[0]
p2_slope_aa_data_ens_cmip5_rcp85 = test_mk[7]
p2_intercept_aa_data_ens_cmip5_rcp85 = test_mk[8]
p2_trend_line_x_aa_data_ens_cmip5_rcp85 = trend_line_x[:]
p2_trend_line_v_aa_data_ens_cmip5_rcp85 = trend_line_val[:]

fig, ax = plt.subplots(figsize=(10,7))
plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
ax.plot(data_tim_cmip5_rcp85[l1:l2], y_for_regress, '-o', color='black', label='CMIP5 RCP85')
ax.plot(trend_line_x+2050, trend_line_val, '--', color='red', label='Trend: y = {}x + {}'.format(round(slope, 4), round(intercept, 4)))
# ax.set_ylim(0, 17)
ax.set_xlim(2048, 2103)
ax.set_xticks(range(2050, 2101, 5))
ax.set_xticklabels(range(2050, 2101, 5))
ax.xaxis.set_tick_params(labelsize=7)#, rotation=90)
plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean')
plt.legend(loc='upper left')
plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
figname = '../figures/plot_serie_arctic_amplification_continuous_cmip5_rcp85_2051-2100.png'
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)



####################################################################################################



print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot TREND [CMIP5 --> Historical and RCP85] and [CMIP6 --> Historical, SSP585, SSP370, SSP370-lowNTCF] --> ENSEMBLE --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmips_anom_1850-2100_arctic_amplification_continuous_EDITED_with_SSP370-lowNTCF_TRENDS.png'

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('Arctic amplification trend')
plt.ylabel('Temperature anomaly [°C]')

# plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
# plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
# plt.text(2004, -0.32, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)
# plt.text(2013, -0.32, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

label_1 = 'CMIP6 SSP585 Trend: y = {}x + {} ({})'        .format(round(p1_slope_aa_data_ens_cmip6_ssp585,         4), round(p1_intercept_aa_data_ens_cmip6_ssp585,         4), p1_trend_aa_data_ens_cmip6_ssp585)
label_2 = 'CMIP6 SSP370 Trend: y = {}x + {} ({})'        .format(round(p1_slope_aa_data_ens_cmip6_ssp370,         4), round(p1_intercept_aa_data_ens_cmip6_ssp370,         4), p1_trend_aa_data_ens_cmip6_ssp370)
label_3 = 'CMIP6 SSP370-lowNTCF Trend: y = {}x + {} ({})'.format(round(p1_slope_aa_data_ens_cmip6_ssp370_lowntcf, 4), round(p1_intercept_aa_data_ens_cmip6_ssp370_lowntcf, 4), p1_trend_aa_data_ens_cmip6_ssp370_lowntcf)
label_4 = 'CMIP5 SSP585 Trend: y = {}x + {} ({})'        .format(round(p1_slope_aa_data_ens_cmip5_rcp85,          4), round(p1_intercept_aa_data_ens_cmip5_rcp85,          4), p1_trend_aa_data_ens_cmip5_rcp85)

label_5 = 'CMIP6 SSP585 Trend: y = {}x + {} ({})'        .format(round(p2_slope_aa_data_ens_cmip6_ssp585,         4), round(p2_intercept_aa_data_ens_cmip6_ssp585,         4), p2_trend_aa_data_ens_cmip6_ssp585)
label_6 = 'CMIP6 SSP370 Trend: y = {}x + {} ({})'        .format(round(p2_slope_aa_data_ens_cmip6_ssp370,         4), round(p2_intercept_aa_data_ens_cmip6_ssp370,         4), p2_trend_aa_data_ens_cmip6_ssp370)
label_7 = 'CMIP6 SSP370-lowNTCF Trend: y = {}x + {} ({})'.format(round(p2_slope_aa_data_ens_cmip6_ssp370_lowntcf, 4), round(p2_intercept_aa_data_ens_cmip6_ssp370_lowntcf, 4), p2_trend_aa_data_ens_cmip6_ssp370_lowntcf)
label_8 = 'CMIP5 SSP585 Trend: y = {}x + {} ({})'        .format(round(p2_slope_aa_data_ens_cmip5_rcp85,          4), round(p2_intercept_aa_data_ens_cmip5_rcp85,          4), p2_trend_aa_data_ens_cmip5_rcp85)

ax.plot(2014+p1_trend_line_x_aa_data_ens_cmip6_ssp585        [:-1], p1_trend_line_v_aa_data_ens_cmip6_ssp585        [:-1],  '-', color='blue',      lw=2, label=label_1)
ax.plot(2014+p1_trend_line_x_aa_data_ens_cmip6_ssp370        [:-1], p1_trend_line_v_aa_data_ens_cmip6_ssp370        [:-1],  '-', color='sienna',    lw=2, label=label_2)
ax.plot(2014+p1_trend_line_x_aa_data_ens_cmip6_ssp370_lowntcf[:-1], p1_trend_line_v_aa_data_ens_cmip6_ssp370_lowntcf[:-1],  '-', color='darkgreen', lw=2, label=label_3)
ax.plot(2014+p1_trend_line_x_aa_data_ens_cmip5_rcp85         [:-1], p1_trend_line_v_aa_data_ens_cmip5_rcp85         [:-1],  '-', color='dimgrey',   lw=2, label=label_4)

ax.plot(2050+p2_trend_line_x_aa_data_ens_cmip6_ssp585        [:50], p2_trend_line_v_aa_data_ens_cmip6_ssp585        [:-1], '--', color='blue',      lw=2, label=label_5)
ax.plot(2050+p2_trend_line_x_aa_data_ens_cmip6_ssp370        [:50], p2_trend_line_v_aa_data_ens_cmip6_ssp370        [:-1], '--', color='sienna',    lw=2, label=label_6)
ax.plot(2050+p2_trend_line_x_aa_data_ens_cmip6_ssp370_lowntcf[:50], p2_trend_line_v_aa_data_ens_cmip6_ssp370_lowntcf[:-1], '--', color='darkgreen', lw=2, label=label_7)
ax.plot(2050+p2_trend_line_x_aa_data_ens_cmip5_rcp85         [:50], p2_trend_line_v_aa_data_ens_cmip5_rcp85         [:-1], '--', color='dimgrey',   lw=2, label=label_8)

yrs = data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0]-5, yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
# ax.set_ylim(-1, 8)
# ax.set_yticks(range(-1, 8, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=2)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


# LINEAR REGRESSION PART - END
####################################################################################################
####################################################################################################
####################################################################################################




print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85] --> All models --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmip5_historical_rcp85_anom_1850-2100_arctic_amplification_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean\nCMIP5 Historical and RCP85')
plt.ylabel('Temperature anomaly [°C]')

plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2004, -2.25, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(aa_data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_hist,  aa_data_all_cmip5_hist [a][lim_c5_hist],  '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_rcp85, aa_data_all_cmip5_rcp85[a][lim_c5_rcp85], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip5_hist,  aa_data_ens_cmip5_hist [lim_c5_hist],  '-', color='black', lw=3, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85, aa_data_ens_cmip5_rcp85[lim_c5_rcp85], '-', color='black', lw=3, label='CMIP5 ENSEMBLE MEAN RCP85')

top_labels = 2

yrs = data_tim_cmip5_hist.tolist() + data_tim_cmip5_rcp85.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-2.5,4)
ax.set_yticks(np.arange(-2.5, 4, 0.5))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
nlabels = len(labels)
order   = list( np.arange(nlabels)[nlabels-top_labels:] ) + list( np.arange(nlabels)[:nlabels-top_labels] )
handles = [handles[idx] for idx in order]
labels  = [labels[idx]  for idx in order]
# ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8, ncol=2)
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=4)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):	print('done -->', figname)
else:                   	print('fail -->', figname)




print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP585] --> All models --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp585_anom_1850-2100_arctic_amplification_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean\nCMIP6 Historical and SSP585')
plt.ylabel('Temperature anomaly [°C]')

plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2013, -2.25, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(aa_data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   aa_data_all_cmip6_hist  [a][lim_c6_hist],   '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp585, aa_data_all_cmip6_ssp585[a][lim_c6_ssp585], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist  [lim_c6_hist],   '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, aa_data_ens_cmip6_ssp585[lim_c6_ssp585], '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN SSP585')

top_labels = 2

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp585.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-2.5,4)
ax.set_yticks(np.arange(-2.5, 4, 0.5))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
nlabels = len(labels)
order   = list( np.arange(nlabels)[nlabels-top_labels:] ) + list( np.arange(nlabels)[:nlabels-top_labels] )
handles = [handles[idx] for idx in order]
labels  = [labels[idx]  for idx in order]
# ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8, ncol=2)
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=4)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):	print('done -->', figname)
else:                   	print('fail -->', figname)





print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP370] --> All models --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp370_anom_1850-2100_arctic_amplification_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean\nCMIP6 Historical and SSP370')
plt.ylabel('Temperature anomaly [°C]')

plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2013, -2.25, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(aa_data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   aa_data_all_cmip6_hist  [a][lim_c6_hist],   '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp370, aa_data_all_cmip6_ssp370[a][lim_c6_ssp370], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist_ssp370[lim_c6_hist],   '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp370, aa_data_ens_cmip6_ssp370     [lim_c6_ssp370], '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN SSP370')

top_labels = 2

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-2.5,4)
ax.set_yticks(np.arange(-2.5, 4, 0.5))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
nlabels = len(labels)
order   = list( np.arange(nlabels)[nlabels-top_labels:] ) + list( np.arange(nlabels)[:nlabels-top_labels] )
handles = [handles[idx] for idx in order]
labels  = [labels[idx]  for idx in order]
# ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8, ncol=2)
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=4)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):	print('done -->', figname)
else:                   	print('fail -->', figname)






print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP370-lowNTCF] --> All models --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp370-lowNTCF_anom_1850-2100_arctic_amplification_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N) - JJA mean\nCMIP6 Historical and SSP370-lowNTCF')
plt.ylabel('Temperature anomaly [°C]')

plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2013, -2.25, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(aa_data_all_cmip6_ssp370_lowntcf.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,           aa_data_all_cmip6_hist_ssp370_lowntcf[a][lim_c6_hist],   '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip6_ssp370_lowntcf.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp370_lowntcf, aa_data_all_cmip6_ssp370_lowntcf     [a][lim_c6_ssp370], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip6_hist,           aa_data_ens_cmip6_hist_ssp370_lowntcf[lim_c6_hist],   '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp370_lowntcf, aa_data_ens_cmip6_ssp370_lowntcf     [lim_c6_ssp370], '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN SSP370-lowNTCF')

top_labels = 2

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-2.5,4)
ax.set_yticks(np.arange(-2.5, 4, 0.5))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
nlabels = len(labels)
order   = list( np.arange(nlabels)[nlabels-top_labels:] ) + list( np.arange(nlabels)[:nlabels-top_labels] )
handles = [handles[idx] for idx in order]
labels  = [labels[idx]  for idx in order]
# ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8, ncol=2)
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=4)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):	print('done -->', figname)
else:                   	print('fail -->', figname)









print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP585]  --> ENS')
print('and')
print('Plot [CMIP5 --> Historical and  RCP85]  --> ENS')
print()

figname = '../figures/plot_serie_cmips_historical_rcp85_ssp585_anom_1850-2100_by_lat_continuous.png'

fig, ax = plt.subplots(figsize=(12,15))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - Ensemble mean - JJA mean\nCMIP6 Historical and SSP585 - CMIP5 RCP85')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    # ax.plot(data_tim_cmip5_hist,  data_ens_cmip5_hist [:,i][lim_c5_hist],  '-', color=colors[i], lw=2)#, label=str(int(a))+'N')
    ax.plot(data_tim_cmip5_rcp85,  data_ens_cmip5_rcp85 [:,i][lim_c5_rcp85], 'D', markersize=3, markeredgewidth=0, color=colors[i], lw=1, label=str(int(a))+'N', alpha=0.5)
    
for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist  [:,i][lim_c6_hist],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585[:,i][lim_c6_ssp585], '-', color=colors[i], lw=2)
    


# Here is where the magic happens
h,l = ax.get_legend_handles_labels()

import matplotlib.pyplot as plt
import matplotlib.text as mtext


class LegendTitle(object):
    def __init__(self, text_props=None):
        self.text_props = text_props or {}
        super(LegendTitle, self).__init__()

    def legend_artist(self, legend, orig_handle, fontsize, handlebox):
        x0, y0 = handlebox.xdescent, handlebox.ydescent
        title = mtext.Text(x0, y0, orig_handle,  **self.text_props)
        handlebox.add_artist(title)
        return title


# ['','2nd Title'], and ['',''] is a hackish to leave some 
# space between the titles
ax.legend(['  RCP85'] + h[:11] + ['','  SSP585'] + h[11:22], 
          ['']         + l[:11] + ['','']          + l[11:22],
           handler_map={str: LegendTitle({'fontsize': 12})},
          frameon=True, loc='upper left', fontsize=11, ncol=2)

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp585.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-1, 8.7)
ax.set_yticks(range(-1, 9, 1))

# changing labels order
# handles, labels = plt.gca().get_legend_handles_labels()
# ax.legend(handles, labels, frameon=True, loc='upper left', fontsize=11)

ax.set_aspect(0.9/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)













print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP6 --> Historical and SSP370]  --> ENS')
print('and')
print('Plot [CMIP6 --> Historical and SSP370-lowNTCF]  --> ENS')
print()

figname = '../figures/plot_serie_cmips_historical_ssp370_ssp370-lowNTCF_anom_1850-2100_by_lat_continuous.png'

fig, ax = plt.subplots(figsize=(12,15))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - Ensemble mean - JJA mean\nCMIP6 Historical - SSP370 - SSP370-lowNTCF')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']
    
for i,a in enumerate(lat):

    # ax.plot(data_tim_cmip6_hist,         data_ens_cmip6_hist_ssp370   [:,i][lim_c6_hist],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp370_lowntcf, data_ens_cmip6_ssp370_lowntcf[:,i][lim_c6_ssp370], 'D', markersize=3, markeredgewidth=0, color=colors[i], lw=1, label=str(int(a))+'N', alpha=0.5)
    
for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist_ssp370[:,i][lim_c6_hist],   '-', color=colors[i], lw=1, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370     [:,i][lim_c6_ssp370], '-', color=colors[i], lw=1)
    


# Here is where the magic happens
h,l = ax.get_legend_handles_labels()

import matplotlib.pyplot as plt
import matplotlib.text as mtext


class LegendTitle(object):
    def __init__(self, text_props=None):
        self.text_props = text_props or {}
        super(LegendTitle, self).__init__()

    def legend_artist(self, legend, orig_handle, fontsize, handlebox):
        x0, y0 = handlebox.xdescent, handlebox.ydescent
        title = mtext.Text(x0, y0, orig_handle,  **self.text_props)
        handlebox.add_artist(title)
        return title


# ['','2nd Title'], and ['',''] is a hackish to leave some 
# space between the titles
ax.legend(['SSP370-lowNTCF'] + h[:11] + ['','    SSP370'] + h[11:22], 
          ['']         + l[:11] + ['','']          + l[11:22],
           handler_map={str: LegendTitle({'fontsize': 8})},
          frameon=True, loc='upper left', fontsize=11, ncol=2)

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-1, 6.5)
ax.set_yticks(range(-1, 7, 1))

# changing labels order
# handles, labels = plt.gca().get_legend_handles_labels()
# ax.legend(handles, labels, frameon=True, loc='upper left', fontsize=11)

ax.set_aspect(0.9/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname): print('done -->', figname)
else:                       print('fail -->', figname)


