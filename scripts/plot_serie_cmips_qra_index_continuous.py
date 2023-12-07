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
from glob import glob
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
fin = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_QRAindex.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
gis = np.squeeze(ds['tas'].data)
yrs_gis = range(1880, 2016+1)

# HadCRUT
fin = '../data/Mann_etal_2018/HadCRUT_latband_2017_1850-2016_jja_lat-25n-75_QRAindex.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
had = np.squeeze(ds['tas'].data)
yrs_had = range(1850, 2016+1)

# Cowtan & Way
fin = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017_1850-2016_jja_lat-25n-75n_QRAindex.nc'
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
cow = np.squeeze(ds['tas'].data)
yrs_cow = range(1850, 2016+1)




print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ Creating data dictionary for CMIP5 and CMIP6 ')
print('')

data = {}

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
        
    for subexp in subex:

        data[exp].update({subexp:{}})

        print('')
        print('')
        print('+ {} {}'.format(exp.upper(), subexp))
        print('')    
                        
        dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, subexp, var)

        fnames = '{0}/{3}_Amon_*_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, var)
        
        print('fnames -->', fnames)
        files = glob(fnames)
        files.sort()

        for i,a in enumerate(files):
            
            fname = a.split('/')[-1] 
            split = a.split('/')[-1].split('_')
                        
            if exp == 'cmip5': model_key = '{}_{}_null'.format(split[2], split[4])           # tas_Amon_ENSEMBLE-MEAN_historical_r1i1p1_185001-200512_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc
            if exp == 'cmip6': model_key = '{}_{}_{}'  .format(split[2], split[4], split[5]) # tas_Amon_ENSEMBLE-MEAN_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc
                        
            ds  = xr.open_dataset(a, decode_times=False)
            dat = np.squeeze(ds['tas'].data)
            
            data[exp][subexp].update({ model_key: dat })
            
                        
            
lim_c5_hist           = np.in1d(exp_years['cmip5']['historical-rcp85'],          exp_years['cmip5']['historical'])
lim_c5_rcp85          = np.in1d(exp_years['cmip5']['historical-rcp85'],          exp_years['cmip5']['rcp85'])

lim_c6_hist           = np.in1d(exp_years['cmip6']['historical-ssp585'],         exp_years['cmip6']['historical'])
lim_c6_ssp585         = np.in1d(exp_years['cmip6']['historical-ssp585'],         exp_years['cmip6']['ssp585'])
lim_c6_ssp370         = np.in1d(exp_years['cmip6']['historical-ssp370'],         exp_years['cmip6']['ssp370'])
lim_c6_ssp370_lowntcf = np.in1d(exp_years['cmip6']['historical-ssp370-lowNTCF'], exp_years['cmip6']['ssp370-lowNTCF'])

# Plot [CMIP5 --> Historical and RCP85]   --> All models

data_all_cmip5_hist                = data['cmip5']['historical-rcp85']
data_ens_cmip5_hist                = data['cmip5']['historical-rcp85']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_hist                = exp_years['cmip5']['historical']

data_all_cmip5_rcp85               = data['cmip5']['historical-rcp85']
data_ens_cmip5_rcp85               = data['cmip5']['historical-rcp85']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_rcp85               = exp_years['cmip5']['rcp85']

# Plot [CMIP6 --> Historical and SSP585]  --> All models

data_all_cmip6_hist                = data['cmip6']['historical-ssp585']
data_ens_cmip6_hist                = data['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist                = exp_years['cmip6']['historical']

data_all_cmip6_ssp585              = data['cmip6']['historical-ssp585']
data_ens_cmip6_ssp585              = data['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp585              = exp_years['cmip6']['ssp585']

# Plot [CMIP6 --> Historical and SSP370]  --> All models

# data_all_cmip6_hist              = data['cmip6']['historical-ssp585']
# data_ens_cmip6_hist              = data['cmip6']['historical-ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist                = exp_years['cmip6']['historical']

data_ens_cmip6_hist_ssp370         = data['cmip6']['historical-ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']

data_all_cmip6_ssp370              = data['cmip6']['historical-ssp370']
data_ens_cmip6_ssp370              = data['cmip6']['historical-ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp370              = exp_years['cmip6']['ssp370']

# Plot [CMIP6 --> Historical and SSP370-lowNTCF]  --> All models

data_all_cmip6_hist_ssp370_lowntcf = data['cmip6']['historical-ssp370-lowNTCF']
data_ens_cmip6_hist_ssp370_lowntcf = data['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist_ssp370_lowntcf = exp_years['cmip6']['historical-ssp370-lowNTCF']

data_ens_cmip6_hist_ssp370_lowntcf = data['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']

data_all_cmip6_ssp370_lowntcf      = data['cmip6']['historical-ssp370-lowNTCF']
data_ens_cmip6_ssp370_lowntcf      = data['cmip6']['historical-ssp370-lowNTCF']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp370_lowntcf      = exp_years['cmip6']['ssp370-lowNTCF']



print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85]   --> All models')
print()

figname = '../figures/plot_serie_cmip5_historical_rcp85_QRAindex_1850-2100_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index CMIP5 Historical and RCP85\nJJA mean - Zonal mean (25N-75N)')
plt.ylabel('Regression Coefficient [unitless]')

plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2004, -9, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_hist,  data_all_cmip5_hist [a][lim_c5_hist],  '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_rcp85, data_all_cmip5_rcp85[a][lim_c5_rcp85], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red',    lw=1, label='GISTEMP',        alpha=1)
ax.plot(yrs_had, had, '-', color='green',  lw=1, label='HadCRUT',        alpha=0.9)
ax.plot(yrs_cow, cow, '-', color='orange', lw=1, label='COWTAN and WAY', alpha=0.9)

ax.plot(data_tim_cmip5_hist,  data_ens_cmip5_hist [lim_c5_hist],  '-', color='black', lw=3, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85, data_ens_cmip5_rcp85[lim_c5_rcp85], '-', color='black', lw=3, label='CMIP5 ENSEMBLE MEAN RCP85')

top_labels = 5

yrs = data_tim_cmip5_hist.tolist() + data_tim_cmip5_rcp85.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-10, 18)
ax.set_yticks(range(-9, 18, 1))

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
print('Plot [CMIP6 --> Historical and SSP585]  --> All models')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp585_QRAindex_1850-2100_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index CMIP6 Historical and SSP585\nJJA mean - Zonal mean (25N-75N)')
plt.ylabel('Regression Coefficient [unitless]')

plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2013, -9, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   data_all_cmip6_hist  [a][lim_c6_hist],   '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp585, data_all_cmip6_ssp585[a][lim_c6_ssp585], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red',    lw=1, label='GISTEMP',        alpha=1)
ax.plot(yrs_had, had, '-', color='green',  lw=1, label='HadCRUT',        alpha=0.9)
ax.plot(yrs_cow, cow, '-', color='orange', lw=1, label='COWTAN and WAY', alpha=0.9)
ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist  [lim_c6_hist],   '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585[lim_c6_ssp585], '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN SSP585')

top_labels = 5

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp585.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-10, 18)
ax.set_yticks(range(-9, 18, 1))

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
print('Plot [CMIP6 --> Historical and SSP370]  --> All models')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp370_QRAindex_1850-2100_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index CMIP6 Historical and SSP370\nJJA mean - Zonal mean (25N-75N)')
plt.ylabel('Regression Coefficient [unitless]')

plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2013, -9, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   data_all_cmip6_hist  [a][lim_c6_hist],   '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp370, data_all_cmip6_ssp370[a][lim_c6_ssp370], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red',    lw=1, label='GISTEMP',        alpha=1)
ax.plot(yrs_had, had, '-', color='green',  lw=1, label='HadCRUT',        alpha=0.9)
ax.plot(yrs_cow, cow, '-', color='orange', lw=1, label='COWTAN and WAY', alpha=0.9)
ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist_ssp370[lim_c6_hist],   '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370     [lim_c6_ssp370], '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN SSP370')

top_labels = 5

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-10, 18)
ax.set_yticks(range(-9, 18, 1))

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
print('Plot [CMIP6 --> Historical and SSP370-lowNTCF]  --> All models')
print()

figname = '../figures/plot_serie_cmip6_historical_ssp370-lowNTCF_QRAindex_1850-2100_continuous.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index CMIP6 Historical and SSP370-lowNTCF\nJJA mean - Zonal mean (25N-75N)')
plt.ylabel('Regression Coefficient [unitless]')

plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2013, -9, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

for i,a in enumerate(data_all_cmip6_ssp370_lowntcf.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,           data_all_cmip6_hist_ssp370_lowntcf[a][lim_c6_hist],   '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip6_ssp370_lowntcf.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp370_lowntcf, data_all_cmip6_ssp370_lowntcf     [a][lim_c6_ssp370], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red',    lw=1, label='GISTEMP',        alpha=1)
ax.plot(yrs_had, had, '-', color='green',  lw=1, label='HadCRUT',        alpha=0.9)
ax.plot(yrs_cow, cow, '-', color='orange', lw=1, label='COWTAN and WAY', alpha=0.9)
ax.plot(data_tim_cmip6_hist,           data_ens_cmip6_hist_ssp370_lowntcf[lim_c6_hist],   '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp370_lowntcf, data_ens_cmip6_ssp370_lowntcf     [lim_c6_ssp370], '-', color='black', lw=3, label='CMIP6 ENSEMBLE MEAN SSP370-lowNTCF')

top_labels = 5

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-10, 18)
ax.set_yticks(range(-9, 18, 1))

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
print('Plot [CMIP5 --> Historical and RCP85] and [CMIP6 --> Historical, SSP585, SSP370]  --> ENSEMBLE')
print()

figname = '../figures/plot_serie_cmip5_cmip6_historical_rcp_ssp_QRAindex_1850-2100_continuous_EDITED.png'

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.3)

plt.title('TAS QRA Index CMIP5 and CMIP6\nJJA mean - Zonal mean (25N-75N)')
plt.ylabel('Regression Coefficient [unitless]')

plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2004, -5.5, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)
plt.text(2013, -5.5, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

ax.plot(yrs_gis, gis, '-', color='red',    lw=1, label='GISTEMP',        alpha=1)
ax.plot(yrs_had, had, '-', color='green',  lw=1, label='HadCRUT',        alpha=0.9)
ax.plot(yrs_cow, cow, '-', color='orange', lw=1, label='COWTAN and WAY', alpha=0.9)

ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist  [lim_c6_hist],   '-', color='black',   lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585[lim_c6_ssp585], '-', color='blue',    lw=3, label='CMIP6 ENSEMBLE MEAN SSP585')
ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370[lim_c6_ssp370], '-', color='sienna',  lw=3, label='CMIP6 ENSEMBLE MEAN SSP370')

ax.plot(data_tim_cmip5_hist,   data_ens_cmip5_hist  [lim_c5_hist],   '-', color='silver',  lw=3, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85,  data_ens_cmip5_rcp85 [lim_c5_rcp85],  '-', color='dimgrey', lw=3, label='CMIP5 ENSEMBLE MEAN RCP85')


yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-6, 8)
ax.set_yticks(range(-5, 8, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=3)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):	print('done -->', figname)
else:                   	print('fail -->', figname)




print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85] and [CMIP6 --> Historical, SSP585, SSP370, SSP370-lowNTCF]  --> ENSEMBLE')
print()

figname = '../figures/plot_serie_cmip5_cmip6_historical_rcp_ssp_QRAindex_1850-2100_continuous_EDITED_with_SSP370-lowNTCF.png'

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.3)

plt.title('TAS QRA Index CMIP5 and CMIP6\nJJA mean - Zonal mean (25N-75N)')
plt.ylabel('Regression Coefficient [unitless]')

plt.axvline(x=2005, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.axvline(x=2014, ymin=0.1, ymax=0.95, color='gray', alpha=0.7, linestyle='--', lw=0.7)
plt.text(2004, -5.5, str(2005), color="gray", fontsize=8, rotation=90, alpha=0.7)
plt.text(2013, -5.5, str(2014), color="gray", fontsize=8, rotation=90, alpha=0.7)

ax.plot(yrs_gis, gis, '-', color='red',    lw=1, label='GISTEMP',        alpha=1)
ax.plot(yrs_had, had, '-', color='green',  lw=1, label='HadCRUT',        alpha=0.9)
ax.plot(yrs_cow, cow, '-', color='orange', lw=1, label='COWTAN and WAY', alpha=0.9)

ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist          [lim_c6_hist],   '-', color='black',     lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585        [lim_c6_ssp585], '-', color='blue',      lw=3, label='CMIP6 ENSEMBLE MEAN SSP585')
ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370        [lim_c6_ssp370], '-', color='sienna',    lw=3, label='CMIP6 ENSEMBLE MEAN SSP370')
ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370_lowntcf[lim_c6_ssp370], '-', color='darkgreen', lw=3, label='CMIP6 ENSEMBLE MEAN SSP370-lowNTCF')

ax.plot(data_tim_cmip5_hist,   data_ens_cmip5_hist          [lim_c5_hist],   '-', color='silver',    lw=3, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85,  data_ens_cmip5_rcp85         [lim_c5_rcp85],  '-', color='dimgrey',   lw=3, label='CMIP5 ENSEMBLE MEAN RCP85')


yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-6, 8)
ax.set_yticks(range(-5, 8, 1))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.05), fontsize=8, ncol=3)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
# plt.show()
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):	print('done -->', figname)
else:                   	print('fail -->', figname)










