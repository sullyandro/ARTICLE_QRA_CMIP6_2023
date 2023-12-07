################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to plot CMIP data as latband (orig -> 2.5dg -> JJA mean -> 25n-75n -> anom -> QRA index -> UA).
#
# Mann et al 2018 method:
#
# 1. qra_index_mod --> (165 timesteps)
# 2.        ua_mod --> (165 timesteps, 11 latbands)
# 3. Compute std_qra_index_mod --> (1 value)
# 4. Compute x_for_regress = qra_index_mod[:] / std_qra_index_mod --> (165 timesteps)
# 5. Compute regression between ua_mod[:, j] and x_for_regress --> result (1 value = slope)
# 6. Result --> qra_index_onto_ua_mod --> (11 latbands)
# 7. qra_index_ua_mod_mean = mean(qra_index_onto_ua_mod_1, ...)
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


print()
print('PLOT CMIP5 Historical QRA index onto UA')
print()

# DATA

for exp in ['cmip5', 'cmip6']:
	

	if exp in ['cmip5']: subex = ['historical', 'rcp85'] 
	if exp in ['cmip6']: subex = ['historical', 'ssp585', 'ssp370']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }
	
	var = 'ua'
		
	for subexp in subex:
	
		print('')
		print('')
		print('+ {} {}'.format(exp.upper(), subexp))
		print('')    
		

		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-*', var)

		fnames = '{0}/{3}_Amon_*_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, var)
		
		# print(fnames)
		# exit()
		
		files = glob(fnames)
		files.sort()

		names = []
		qra_all = {}
		dat_period = {}
		max_55 = -0.1
		mod_55 = ''

		# MODELS
		for a in files:
			
			print('imput -->', a)
					
			fname = a.split('/')[-1]
			
			if exp == 'cmip5':
				model  = fname.split('_')[4] + "_" + fname.split('_')[2]
				period = fname.split('_')[5]
				dat_period[model] = period
				
			if exp == 'cmip6':
				model  = fname.split('_')[4] + "_" + fname.split('_')[5] + "_" + fname.split('_')[2]
				period = fname.split('_')[6]
				dat_period[model] = period
				
			iyr = int(period[:4])

			names.append(model)
				
			ds  = xr.open_dataset(a, decode_times=False)
			dat = np.squeeze(ds['ua'].data) #
			lat = ds['lat'].data
			lon = ds['lon'].data

			qra_all[model] = dat[:]
			
			if dat[6] > max_55:
				max_55 = max(dat[6], max_55)
				mod_55 = model
				print(max_55, mod_55)
			
		print(mod_55, max_55)

		print('Number of models -->', len(names)-1)


		# PLOT

		figname = '../figures/plot_ua_QRAindex_{0}_{1}_{2}_continuous.png'.format(exp, subexp, exp_dates[exp][subexp])

		fig, ax = plt.subplots(figsize=(10,7))

		plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

		if subexp == 'historical': title_subexp = 'Historical'
		if subexp != 'historical': title_subexp = subexp.upper()
		
		plt.title('UA from QRA Index regression {0} {1}'.format(exp.upper(), title_subexp))
		plt.ylabel('UA anomaly [m/s]')

		for i,a in enumerate(names):			
			
			model  = a.split('_')[-1]
			model_55  = mod_55.split('_')[-1]
			
			print(i,a,model,model_55)
			
			if model not in ['ENSEMBLE-MEAN']:
				
				if model not in [model_55, 'E3SM-1-1']:
					ax.plot(lat, qra_all[a], '-', color='gray', lw=1, label=a)
				
				elif model in [model_55, 'E3SM-1-1']:
					if a != mod_55 and model == model_55: continue
					ax.plot(lat, qra_all[a], '--', color='blue', lw=1, label=a)
									
			if model in ['ENSEMBLE-MEAN']: ens = a

		qra_cmip6_ens = qra_all[ens]

		ax.plot(lat, qra_all[ens], '-', color='black', lw=2, label='{0} ENSEMBLE MEAN'.format(exp.upper()))

		top_labels = 1

		lat_labs = []
		for i in lat:
			lat_labs.append(str(int(i))+'N')

		ax.set_xlim(lat[0], lat[-1])
		ax.set_xticks(lat)
		ax.xaxis.set_tick_params(labelsize=8)
		ax.set_xticklabels(lat_labs[:])
		ax.set_ylim(-1.25, 1.25)
		ax.set_yticks(np.arange(-1.25, 1.26, 0.25))

		# changing labels order
		handles, labels = plt.gca().get_legend_handles_labels()
		nlabels = len(labels)
		order = list( np.arange(nlabels)[nlabels-top_labels:] ) + list( np.arange(nlabels)[:nlabels-top_labels] )
		handles = [handles[idx] for idx in order]
		labels  = [labels[idx]  for idx in order]
		if len(names)>30: ncols = 2
		else: ncols = 1
		ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8.1, ncol=2)

		ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

		plt.tight_layout()
		plt.subplots_adjust(right=0.7)
		plt.savefig(figname, bbox_inches='tight')
		plt.close()

		if os.path.exists(figname):
			print('done -->', figname)
		else:
			print('fail -->', figname)




print()
print('PLOT CMIPs QRA index onto UA')
print()


exp    = 'cmip5'
subexp = 'historical'
dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-*', 'ua')
fnames = '{0}/{3}_Amon_ENSEMBLE-MEAN_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, 'ua')
files = glob(fnames)
files.sort()
print('input -->', files[0])
ds  = xr.open_dataset(files[0], decode_times=False)
dat = np.squeeze(ds['ua'].data) #
lat = ds['lat'].data
lon = ds['lon'].data
ua_cmip5_historical = dat[:]

exp    = 'cmip5'
subexp = 'rcp85'
dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-'+subexp, 'ua')
fnames = '{0}/{3}_Amon_ENSEMBLE-MEAN_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, 'ua')
files = glob(fnames)
files.sort()
print('input -->', files[0])
ds  = xr.open_dataset(files[0], decode_times=False)
dat = np.squeeze(ds['ua'].data) #
lat = ds['lat'].data
lon = ds['lon'].data
ua_cmip5_rcp85 = dat[:]

exp    = 'cmip6'
subexp = 'historical'
dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-*', 'ua')
fnames = '{0}/{3}_Amon_ENSEMBLE-MEAN_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, 'ua')
files = glob(fnames)
files.sort()
print('input -->', files[0])
ds  = xr.open_dataset(files[0], decode_times=False)
dat = np.squeeze(ds['ua'].data) #
lat = ds['lat'].data
lon = ds['lon'].data
ua_cmip6_historical = dat[:]

exp    = 'cmip6'
subexp = 'ssp585'
dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-'+subexp, 'ua')
fnames = '{0}/{3}_Amon_ENSEMBLE-MEAN_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, 'ua')
files = glob(fnames)
files.sort()
print('input -->', files[0])
ds  = xr.open_dataset(files[0], decode_times=False)
dat = np.squeeze(ds['ua'].data) #
lat = ds['lat'].data
lon = ds['lon'].data
ua_cmip6_ssp585 = dat[:]

exp    = 'cmip6'
subexp = 'ssp370'
dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-'+subexp, 'ua')
fnames = '{0}/{3}_Amon_ENSEMBLE-MEAN_{2}_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, 'ua')
files = glob(fnames)
files.sort()
print('input -->', files[0])
ds  = xr.open_dataset(files[0], decode_times=False)
dat = np.squeeze(ds['ua'].data) #
lat = ds['lat'].data
lon = ds['lon'].data
ua_cmip6_ssp370 = dat[:]

# PLOT

figname = '../figures/plot_ua_QRAindex_cmip5_cmip6_hist_proj_continuous.png'.format(exp, subexp)

fig, ax = plt.subplots(figsize=(10,7))

plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)

plt.title('UA from QRA Index regression - Ensemble Mean'.format(exp.upper(), subexp.title()))
plt.ylabel('UA anomaly [m/s]')

ax.plot(lat, ua_cmip5_historical, '-',  color='dimgrey',  lw=1, label='CMIP5 Historical')
ax.plot(lat, ua_cmip5_rcp85,      '--', color='dimgrey',  lw=1, label='CMIP5 RCP85')
ax.plot(lat, ua_cmip6_historical, '-',  color='black',    lw=3, label='CMIP6 Historical')
ax.plot(lat, ua_cmip6_ssp585,     '--', color='blue',     lw=3, label='CMIP6 SSP585')
ax.plot(lat, ua_cmip6_ssp370,     '--', color='sienna',   lw=3, label='CMIP6 SSP370')

lat_labs = []
for i in lat:
	lat_labs.append(str(int(i))+'N')

ax.set_xlim(lat[0], lat[-1])
ax.set_xticks(lat)
ax.xaxis.set_tick_params(labelsize=8)
ax.set_xticklabels(lat_labs[:])
ax.set_ylim(-0.75, 0.75)
ax.set_yticks(np.arange(-0.75, 0.76, 0.25))

# changing labels order
handles, labels = plt.gca().get_legend_handles_labels()
ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8.1, ncol=1)

ax.set_aspect(0.7/ax.get_data_ratio(), adjustable='box')

plt.tight_layout()
plt.subplots_adjust(right=0.7)
plt.savefig(figname, bbox_inches='tight')
plt.close()

if os.path.exists(figname):
	print('done -->', figname)
else:
	print('fail -->', figname)







