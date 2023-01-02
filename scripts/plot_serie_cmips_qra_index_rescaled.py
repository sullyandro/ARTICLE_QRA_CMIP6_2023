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
from CreateNetCDF4 import nc4
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=2, suppress=1, linewidth=500)

print('')
print('')
print('')
print('++ Plots')


RESCALE_PERIOD = '1979-2019'


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('Getting OBS QRA index data')
print('')

# GISSTEMP
fin = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_QRAindex_rescaled-{0}.nc'.format(RESCALE_PERIOD)
print('input -->', fin)
ds  = xr.open_dataset(fin, decode_times=False)
gis = np.squeeze(ds['tas'].data)
yrs_gis = range(1880, 2016+1)



print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ Creating data dictionary for CMIP5 and CMIP6 ')
print('')

data = {}

for exp in ['cmip5', 'cmip6']:


    if exp in ['cmip5']: subex = ['historical',  'rcp85']
    if exp in ['cmip6']: subex = ['historical', 'ssp585', 'ssp370']

    exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
                  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }
                  
    exp_years = { 'cmip5':{'historical':np.arange(1850,2005+1),  'rcp85':np.arange(2006,2100+1)}, 
                  'cmip6':{'historical':np.arange(1850,2014+1), 'ssp585':np.arange(2015,2100+1), 'ssp370':np.arange(2015,2100+1)} }
    
    var = 'tas'
    
    data.update({exp:{}})
        
    for subexp in subex:

        data[exp].update({subexp:{}})

        print('')
        print('')
        print('+ {} {}'.format(exp.upper(), subexp))
        print('')    
                        
        dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled-{3}'.format(exp, subexp, var, RESCALE_PERIOD)

        fnames = '{0}/{3}_Amon_*_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled-{4}.nc'.format(dir_in, exp, subexp, var, RESCALE_PERIOD)
        
        print('fnames -->', fnames)
        files = glob(fnames)
        files.sort()

        for i,a in enumerate(files):
            
            fname = a.split('/')[-1] 
            split = a.split('/')[-1].split('_')
                        
            if exp == 'cmip5': model_key = '{}_{}_null'.format(split[2], split[4])           # tas_Amon_ENSEMBLE-MEAN_historical_r1i1p1_185001-200512_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled-1979-2019.nc
            if exp == 'cmip6': model_key = '{}_{}_{}'  .format(split[2], split[4], split[5]) # tas_Amon_ENSEMBLE-MEAN_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled-1979-2019.nc
                        
            ds  = xr.open_dataset(a, decode_times=False)
            dat = np.squeeze(ds['tas'].data)
            
            data[exp][subexp].update({ model_key: dat })
            
            

# Plot [CMIP5 --> Historical and RCP85]   --> All models

data_all_cmip5_hist   = data['cmip5']['historical']
data_ens_cmip5_hist   = data['cmip5']['historical']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_hist   = exp_years['cmip5']['historical']

data_all_cmip5_rcp85  = data['cmip5']['rcp85']
data_ens_cmip5_rcp85  = data['cmip5']['rcp85']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_rcp85  = exp_years['cmip5']['rcp85']


# Plot [CMIP6 --> Historical and SSP585]  --> All models

data_all_cmip6_hist   = data['cmip6']['historical']
data_ens_cmip6_hist   = data['cmip6']['historical']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist   = exp_years['cmip6']['historical']

data_all_cmip6_ssp585 = data['cmip6']['ssp585']
data_ens_cmip6_ssp585 = data['cmip6']['ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp585 = exp_years['cmip6']['ssp585']


# Plot [CMIP6 --> Historical and SSP370]  --> All models

data_all_cmip6_hist   = data['cmip6']['historical']
data_ens_cmip6_hist   = data['cmip6']['historical']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist   = exp_years['cmip6']['historical']

data_all_cmip6_ssp370 = data['cmip6']['ssp370']
data_ens_cmip6_ssp370 = data['cmip6']['ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp370 = exp_years['cmip6']['ssp370']


print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85]   --> All models')
print()

figname = '../figures/plot_serie_cmip5_historical_rcp85_QRAindex_1850-2100_rescaled-{0}.png'.format(RESCALE_PERIOD)

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index (rescaled) CMIP5 Historical and RCP85')
plt.ylabel('Regression Coefficient [unitless]')

for i,a in enumerate(data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_hist,  data_all_cmip5_hist[a],   '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_rcp85, data_all_cmip5_rcp85[a], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red', lw=1, label='GISTEMP', alpha=1)
ax.plot(data_tim_cmip5_hist,  data_ens_cmip5_hist,  '-', color='black', lw=2, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85, data_ens_cmip5_rcp85, '-', color='black', lw=4, label='CMIP5 ENSEMBLE MEAN RCP85')

top_labels = 3

yrs = data_tim_cmip5_hist.tolist() + data_tim_cmip5_rcp85.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-7, 35)
ax.set_yticks(range(-7, 35, 2))

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

figname = '../figures/plot_serie_cmip6_historical_ssp585_QRAindex_1850-2100_rescaled-{0}.png'.format(RESCALE_PERIOD)

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index (rescaled) CMIP6 Historical and SSP585')
plt.ylabel('Regression Coefficient [unitless]')

for i,a in enumerate(data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   data_all_cmip6_hist[a],   '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp585, data_all_cmip6_ssp585[a], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red', lw=1, label='GISTEMP', alpha=1)
ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist,   '-', color='black', lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585, '-', color='black', lw=4, label='CMIP6 ENSEMBLE MEAN SSP585')

top_labels = 3

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp585.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-7, 35)
ax.set_yticks(range(-7, 35, 2))

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

figname = '../figures/plot_serie_cmip6_historical_ssp370_QRAindex_1850-2100_rescaled-{0}.png'.format(RESCALE_PERIOD)

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index (rescaled) CMIP6 Historical and SSP370')
plt.ylabel('Regression Coefficient [unitless]')

for i,a in enumerate(data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   data_all_cmip6_hist[a],   '-', color='gray', lw=1)

for i,a in enumerate(data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp370, data_all_cmip6_ssp370[a], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(yrs_gis, gis, '-', color='red', lw=1, label='GISTEMP', alpha=1)
ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist,   '-', color='black', lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370, '-', color='black', lw=4, label='CMIP6 ENSEMBLE MEAN SSP370')

top_labels = 3

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(-7, 35)
ax.set_yticks(range(-7, 35, 2))

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

figname = '../figures/plot_serie_cmip5_cmip6_historical_rcp_ssp_QRAindex_1850-2100_rescaled-{0}.png'.format(RESCALE_PERIOD)

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS QRA Index (rescaled) CMIP5 and CMIP6')
plt.ylabel('Regression Coefficient [unitless]')

ax.plot(yrs_gis, gis, '-', color='red', lw=1, label='GISTEMP', alpha=1)

ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist,   '-', color='black',   lw=3, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585, '-', color='blue',    lw=5, label='CMIP6 ENSEMBLE MEAN SSP585')
ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370, '-', color='sienna',  lw=5, label='CMIP6 ENSEMBLE MEAN SSP370')

ax.plot(data_tim_cmip5_hist,   data_ens_cmip5_hist,   '-', color='dimgrey', lw=3, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85,  data_ens_cmip5_rcp85,  '-', color='dimgrey', lw=5, label='CMIP5 ENSEMBLE MEAN RCP85')

yrs = data_tim_cmip6_hist.tolist() + data_tim_cmip6_ssp370.tolist()
ax.set_xlim(yrs[0], yrs[-1]+1)
ax.set_xticks(range(yrs[0], yrs[-1]+10, 10))
ax.xaxis.set_tick_params(labelsize=8)
ax.set_ylim(2, 19)
ax.set_yticks(range(2, 19, 2))

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












