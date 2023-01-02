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


    if exp in ['cmip5']: subex = ['historical',  'rcp85']
    if exp in ['cmip6']: subex = ['historical', 'ssp585', 'ssp370']

    exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'},
                  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }

    exp_years = { 'cmip5':{'historical':np.arange(1850,2005+1),  'rcp85':np.arange(2006,2100+1)},
                  'cmip6':{'historical':np.arange(1850,2014+1), 'ssp585':np.arange(2015,2100+1), 'ssp370':np.arange(2015,2100+1)} }

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

        dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_anom'.format(exp, subexp, var)

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



# Plot [CMIP5 --> Historical and RCP85]   --> All models

data_all_cmip5_hist     = data['cmip5']['historical']
data_ens_cmip5_hist     = data['cmip5']['historical']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_hist     = exp_years['cmip5']['historical']

data_all_cmip5_rcp85    = data['cmip5']['rcp85']
data_ens_cmip5_rcp85    = data['cmip5']['rcp85']['ENSEMBLE-MEAN_r1i1p1_null']
data_tim_cmip5_rcp85    = exp_years['cmip5']['rcp85']

aa_data_all_cmip5_hist  = data_aa['cmip5']['historical']
aa_data_ens_cmip5_hist  = data_aa['cmip5']['historical']['ENSEMBLE-MEAN_r1i1p1_null']

aa_data_all_cmip5_rcp85 = data_aa['cmip5']['rcp85']
aa_data_ens_cmip5_rcp85 = data_aa['cmip5']['rcp85']['ENSEMBLE-MEAN_r1i1p1_null']


# Plot [CMIP6 --> Historical and SSP585]  --> All models

data_all_cmip6_hist      = data['cmip6']['historical']
data_ens_cmip6_hist      = data['cmip6']['historical']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist      = exp_years['cmip6']['historical']

data_all_cmip6_ssp585    = data['cmip6']['ssp585']
data_ens_cmip6_ssp585    = data['cmip6']['ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp585    = exp_years['cmip6']['ssp585']

aa_data_all_cmip6_hist   = data_aa['cmip6']['historical']
aa_data_ens_cmip6_hist   = data_aa['cmip6']['historical']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_all_cmip6_ssp585 = data_aa['cmip6']['ssp585']
aa_data_ens_cmip6_ssp585 = data_aa['cmip6']['ssp585']['ENSEMBLE-MEAN_r1i1p1f1_gn']


# Plot [CMIP6 --> Historical and SSP370]  --> All models

data_all_cmip6_hist      = data['cmip6']['historical']
data_ens_cmip6_hist      = data['cmip6']['historical']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_hist      = exp_years['cmip6']['historical']

data_all_cmip6_ssp370    = data['cmip6']['ssp370']
data_ens_cmip6_ssp370    = data['cmip6']['ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']
data_tim_cmip6_ssp370    = exp_years['cmip6']['ssp370']

aa_data_all_cmip6_hist   = data_aa['cmip6']['historical']
aa_data_ens_cmip6_hist   = data_aa['cmip6']['historical']['ENSEMBLE-MEAN_r1i1p1f1_gn']

aa_data_all_cmip6_ssp370 = data_aa['cmip6']['ssp370']
aa_data_ens_cmip6_ssp370 = data_aa['cmip6']['ssp370']['ENSEMBLE-MEAN_r1i1p1f1_gn']



print()
print('-------------------------------------------------------------------')
print('-------------------------------------------------------------------')
print()
print('Plot [CMIP5 --> Historical and RCP85]   --> All models')
print()

figname = '../figures/plot_serie_cmip5_historical_rcp85_anom_1850-2100_by_lat.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP5 Historical and RCP85 - Ensemble mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip5_hist,  data_ens_cmip5_hist[:,i],  '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip5_rcp85, data_ens_cmip5_rcp85[:,i], '-', color=colors[i], lw=2)

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

figname = '../figures/plot_serie_cmip6_historical_ssp585_anom_1850-2100_by_lat.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP6 Historical and SSP585 - Ensemble mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist[:,i],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp585, data_ens_cmip6_ssp585[:,i], '-', color=colors[i], lw=2)

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

figname = '../figures/plot_serie_cmip6_historical_ssp370_anom_1850-2100_by_lat.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Anomaly - CMIP6 Historical and SSP370 - Ensemble mean')
plt.ylabel('Temperature anomaly [°C]')

colors = ['magenta', 'slateblue', 'mediumslateblue', 'cyan', 'green', 'lime', 'yellow', 'wheat', 'tan', 'peru', 'saddlebrown']

for i,a in enumerate(lat):

    ax.plot(data_tim_cmip6_hist,   data_ens_cmip6_hist[:,i],   '-', color=colors[i], lw=2, label=str(int(a))+'N')
    ax.plot(data_tim_cmip6_ssp370, data_ens_cmip6_ssp370[:,i], '-', color=colors[i], lw=2)

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
print('Plot [CMIP5 --> Historical and RCP85] and [CMIP6 --> Historical, SSP585, SSP370] --> ENSEMBLE --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmips_anom_1850-2100_arctic_amplification.png'

fig, ax = plt.subplots(figsize=(12,8))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N)')
plt.ylabel('Temperature anomaly [°C]')

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist,   '-', color='black',   lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, aa_data_ens_cmip6_ssp585, '-', color='blue',    lw=3, label='CMIP6 ENSEMBLE MEAN SSP585')
ax.plot(data_tim_cmip6_ssp370, aa_data_ens_cmip6_ssp370, '-', color='sienna',  lw=3, label='CMIP6 ENSEMBLE MEAN SSP370')

ax.plot(data_tim_cmip5_hist,   aa_data_ens_cmip5_hist,   '-', color='dimgrey', lw=2, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85,  aa_data_ens_cmip5_rcp85,  '-', color='dimgrey', lw=3, label='CMIP5 ENSEMBLE MEAN RCP85')

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
print('Plot [CMIP5 --> Historical and RCP85] --> All models --> Arctic Amplification')
print()

figname = '../figures/plot_serie_cmip5_historical_rcp85_anom_1850-2100_arctic_amplification.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N)\nCMIP5 Historical and RCP85')
plt.ylabel('Temperature anomaly [°C]')

for i,a in enumerate(aa_data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_hist,  aa_data_all_cmip5_hist[a],   '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip5_rcp85.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip5_rcp85, aa_data_all_cmip5_rcp85[a], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip5_hist,  aa_data_ens_cmip5_hist,  '-', color='black', lw=2, label='CMIP5 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip5_rcp85, aa_data_ens_cmip5_rcp85, '-', color='black', lw=4, label='CMIP5 ENSEMBLE MEAN RCP85')

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

figname = '../figures/plot_serie_cmip6_historical_ssp585_anom_1850-2100_arctic_amplification.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N)\nCMIP6 Historical and SSP585')
plt.ylabel('Temperature anomaly [°C]')

for i,a in enumerate(aa_data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   aa_data_all_cmip6_hist[a],   '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip6_ssp585.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp585, aa_data_all_cmip6_ssp585[a], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist,   '-', color='black', lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp585, aa_data_ens_cmip6_ssp585, '-', color='black', lw=4, label='CMIP6 ENSEMBLE MEAN SSP585')

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

figname = '../figures/plot_serie_cmip6_historical_ssp370_anom_1850-2100_arctic_amplification.png'

fig, ax = plt.subplots(figsize=(12,9))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('TAS Arctic amplification - High (65-75N) minus Mid (25-60N)\nCMIP6 Historical and SSP370')
plt.ylabel('Temperature anomaly [°C]')

for i,a in enumerate(aa_data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_hist,   aa_data_all_cmip6_hist[a],   '-', color='gray', lw=1)

for i,a in enumerate(aa_data_all_cmip6_ssp370.keys()):
	if 'ENSEMBLE-MEAN' not in a:  ax.plot(data_tim_cmip6_ssp370, aa_data_all_cmip6_ssp370[a], '-', color='gray', lw=1, label='{1}_{2}_{0}'.format(*a.split('_')) )

ax.plot(data_tim_cmip6_hist,   aa_data_ens_cmip6_hist,   '-', color='black', lw=2, label='CMIP6 ENSEMBLE MEAN Historical')
ax.plot(data_tim_cmip6_ssp370, aa_data_ens_cmip6_ssp370, '-', color='black', lw=4, label='CMIP6 ENSEMBLE MEAN SSP370')

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





