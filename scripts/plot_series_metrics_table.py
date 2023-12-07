################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get Observational and CMIP data (orig -> 2.5dg -> JJA mean) and compute metrics.
# 
################################################################################


import os
import warnings
import numpy as np
import xarray as xr
import matplotlib as mpl
import matplotlib.pyplot as plt
from glob import glob
from tabulate import tabulate
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=1, suppress=1, linewidth=500)

print()
print()
print('PLOT SERIES AND COMPUTE RMSE AND MAKE TABLE')
print()

metrics_1 = {}
metrics_2 = {}
			   
for exp in ['cmip5', 'cmip6']:


	exp_timmean = { 'cmip5':{'historical':[1979,2005],  'rcp85':[2070,2100]},
					'cmip6':{'historical':[1979,2014], 'ssp585':[2070,2100], 'ssp370':[2070,2100]} }
					

	for var in ['tas', 'ua', 'dTASdy', 'dUAdy', 'd2UAdy2']:

		print()
		print('Running -->', exp, var)

		if exp in ['era-interim']:    subexp = ''
		if exp in ['cmip5', 'cmip6']: subexp = 'historical'
		
		lastyr = {'cmip5':2005, 'cmip6':2014}
		
		vv = {'tas':['tas',''], 'dTASdy':['tas', '_dTASdy'], 
			   'ua':['ua', ''], 'dUAdy' :['ua',  '_dUAdy' ], 'd2UAdy2':['ua', '_d2UAdy2'] }
		v0, v1 = vv[var]
		
		if exp in ['era-interim', 'era5']:
			yr1, yr2 = [1979,2014]
		else:
			yr1, yr2 = exp_timmean[exp][subexp]
		
		
		names = []
		serie = {}
		
		
		# MODELS 

		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_timmean-{3}-{4}'.format(exp, subexp, v0, yr1, yr2)

		# /home/dark/M22/data/cmip6/historical/tas_2p5dg_jja_zonmean_timmean-1979-2014/tas_Amon_ACCESS-CM2_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_timmean-1979-2014.nc
			
		if exp in ['cmip5'] and v0 in ['ua']:
			dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_timmean-{3}-{4}_from_m18'.format(exp, subexp, v0, yr1, yr2)
			fnames = '{0}/{1}_*_jja_zonmean_2.5dg_timmean{2}.nc'.format(dir_in, v0, v1)
		else:
			fnames = '{0}/{1}_*_{2}_*_2p5dg_jja_zonmean_timmean-{3}-{4}{5}.nc'.format(dir_in, v0, subexp, yr1, yr2, v1) 

		print('fnames -->', fnames)
				
		files = glob(fnames)
		files.sort()
		
		if len(files) == 0:
			print('not found -->', fnames)
			exit()

		for fin in files:
			
			ds  = xr.open_dataset(fin, decode_times=False).sel(lat=slice(25, 75))
			dat = np.squeeze(ds[v0].data)
			lat = ds['lat'].data
			lon = ds['lon'].data
			# print('input -->', dat.shape, fin)
			
			f = fin.split('/')[-1].split('_')
			if exp == 'cmip5': key = f[4] + "_" + f[2]              # r1i1p1_TaiESM1
			if exp == 'cmip6': key = f[4] + "_" + f[5] + "_" + f[2] # r1i1p1f1_gn_TaiESM1
			
			serie[key] = dat[:]
			names.append(key)
			
		n_models = len(names)
						
		# ENSEMBLE
		key = 'ENSEMBLE-MEAN'
		dat = np.nanmean( np.array(list(serie.values())), axis=0 )
		serie[key] = dat[:]
		names.append(key)
		# dat = np.expand_dims(dat, axis=(0,2))
		# fout = '../data_2_scripts/ua_Amon_ENSEMBLE-MEAN_historical_r1i1p1f1_gn_197901-201412_jja_zonmean_2.5dg_timmean_d2UAdy2.nc'
		# cn4(dat, lat, lon, varname='ua', fileout=fout, varlongname='ua', varunits='m/(s*rad^2)', vartimeunits='years since 1979-07-15 00:00')
		
		# OBSERVATION
		
		key = 'ERA-Interim'
		fin = '../data/era-interim/{0}_2p5dg_jja_zonmean_timmean-1979-2014/{0}_monthly_era-interim_197901-201412_2p5dg_jja_zonmean_timmean-1979-2014{1}.nc'.format(v0, v1)
		print(fin)
		ds  = xr.open_dataset(fin, decode_times=False).sel(lat=slice(25, 75))
		dat = np.squeeze(ds[v0].data)
		lat = ds['lat'].data
		lon = ds['lon'].data
		print('input -->', dat.shape, fin)
		serie[key] = dat[:]
		names.append(key)

		key = 'ERA5'
		if v0 == 'tas':
			fin = '../data/era5/tas_2p5dg_jja_zonmean_timmean-1979-2014/tas_monthly_ECMWF-ERA5_observation_19790101-20211231_2p5dg_jja_zonmean_timmean-1979-2014{0}.nc'.format(v1)
		if v0 == 'ua':
			fin = '../data/era5/ua_2p5dg_jja_zonmean_timmean-1979-2014/ua_monthly_ECMWF-ERA5_observation_19790101-20221231_2p5dg_jja_zonmean_timmean-1979-2014{0}.nc'.format(v1)
		
		ds  = xr.open_dataset(fin, decode_times=False).sel(lat=slice(25, 75))
		dat = np.squeeze(ds[v0].data)
		lat = ds['lat'].data
		lon = ds['lon'].data
		print('input -->', dat.shape, fin)
		serie[key] = dat[:]
		names.append(key)


		# PLOT

		print()
		print('PLOT SERIES')
		print()

				
		dir_ou_figs  = '../figures/metrics'
		
		if not os.path.exists(dir_ou_figs): os.makedirs(dir_ou_figs)

		figname = '{0}/plot_{1}_{2}_{3}_2p5dg_jja_zonmean_timmean-1979-2014.png'.format(dir_ou_figs, exp, subexp, v0+v1)

		if v0 == 'tas' and exp == 'cmip5':
			fig, ax = plt.subplots(figsize=(8.5,12))
		else:
			fig, ax = plt.subplots(figsize=(8,12))
			

		plt.grid(color='grey', linestyle='--', linewidth=0.3, alpha=0.5)
		
		varp = {'tas':'T(\u03C6)', 'dTASdy':'dT(\u03C6)/d\u03C6', 'ua':'U(\u03C6)', 'dUAdy' :'dU(\u03C6)/d\u03C6', 'd2UAdy2':'d\u00B2U(\u03C6)/d\u03C6\u00B2' }
		varu = {'tas':'K',         'dTASdy':'K/rad',              'ua':'m/s',       'dUAdy' :'m/(s*rad)',          'd2UAdy2':'m/(s*rad\u00B2)' }


		plt.title ( '{0} - JJA seasonal means and zonal mean in 2.5dg\nObservations [1979-2014] and {1} {2} [1979-{3}]'.format(varp[var], exp.upper(), subexp.title(), lastyr[exp]) )
		plt.xlabel( 'Latitude' )
		plt.ylabel( '{0} [{1}]'.format(varp[var], varu[var]) )

		for i,a in enumerate(names):
			
			# print(i,a)
			
			if a not in ['ENSEMBLE-MEAN', 'ERA-Interim', 'ERA5']:
				ax.plot(lat, serie[a], '-', color='gray',  lw=1, label=a)
				
			if a == 'ENSEMBLE-MEAN':
				ax.plot(lat, serie[a], '-', color='black', lw=3, label=a)
				
			if a == 'ERA-Interim':
				ax.plot(lat, serie[a], '-', color='red',   lw=3, label=a)
				
			if a == 'ERA5':
				ax.plot(lat, serie[a], '-', color='blue',  lw=3, label=a)

		ax.set_xlim(25,75)
		ax.set_xticks(range(25,76,5))
		if var == 'tas':     ax.set_ylim(270,302)
		if var == 'dTASdy':  ax.set_ylim(-90,10)
		if var == 'ua':      ax.set_ylim(-5,25)
		if var == 'dUAdy':   ax.set_ylim(-80,100)
		if var == 'd2UAdy2': ax.set_ylim(-800,800)
		
		ncol = {'cmip5':{'tas':4, 'dTASdy':4, 'ua':3, 'dUAdy':3, 'd2UAdy2':3}, 'cmip6':{'tas':3, 'dTASdy':3, 'ua':3, 'dUAdy':3, 'd2UAdy2':3}}
		
		# changing labels order
		handles, labels = plt.gca().get_legend_handles_labels()
		order = [-1,-2, -3] + list(range(len(names)-3))
		handles = [handles[idx] for idx in order]
		labels  = [labels[idx]  for idx in order]
		# ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8.1, ncol=ncol[exp][var])
		ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper center', bbox_to_anchor=(0.5, -0.1), fontsize=8, ncol=ncol[exp][var])
		ax.set_aspect(0.8/ax.get_data_ratio(), adjustable='box')
		
		plt.tight_layout()
		# plt.subplots_adjust(right=0.8)
		# plt.show()
		plt.savefig(figname, bbox_inches='tight')
		plt.close()

		if os.path.exists(figname):
			print('done -->', figname)
		else:
			print('fail -->', figname)

		# exit()
		
		
		# METRICS 1 - ERA-Interim


		for metric in ['ERA-Interim', 'ERA5']:
			

			dat_all_diff      = {}
			dat_all_diff2     = {}
			dat_all_mse       = {}
			dat_all_rmse      = {}
			dat_all_rmse_perc = {}

			for a in names:
				
				mod = serie[a]
				obs = serie[metric]
					
				if a not in ['ENSEMBLE-MEAN', 'ERA-Interim', 'ERA5']:
				
					# difference --> model - era
					dat_all_diff[a] = mod - obs
					
					# difference --> model - era --> squared
					dat_all_diff2[a] = (dat_all_diff[a])**2

					# difference --> model - era --> squared --> mean over lat
					dat_all_mse[a] = np.nanmean( dat_all_diff2[a] )

					# difference --> model - era --> squared --> mean over lat --> square root
					dat_all_rmse[a] = dat_all_mse[a]**0.5

					# difference --> model - era --> squared --> mean over lat --> square root --> divide by obs and multiply by 100
					dat_all_rmse_perc[a] = dat_all_rmse[a]*100 / np.nanmean(obs)

				if a in ['ENSEMBLE-MEAN']:
				
					# difference --> model - era
					dat_ens_diff = mod - obs
					
					# difference --> model - era --> squared
					dat_ens_diff2 = (dat_ens_diff)**2

					# difference --> model - era --> squared --> mean over lat
					dat_ens_mse = np.nanmean( dat_ens_diff2 )

					# difference --> model - era --> squared --> mean over lat --> square root
					dat_ens_rmse = dat_ens_mse**0.5

					# difference --> model - era --> squared --> mean over lat --> square root --> divide by obs and multiply by 100
					dat_ens_rmse_perc = (dat_ens_rmse/ np.nanmean(obs))*100

					
			# Error for Ensemble_mean
			error_for_ensemble_mean = round(dat_ens_rmse_perc, 1)

			# Mean error for Ensemble

			dat_all_mse = np.array( list( dat_all_mse.values() ) )
			dat_all_mse_mean_mod  = np.nanmean( dat_all_mse )  # mean over models
			dat_all_rmse_mean_mod = dat_all_mse_mean_mod**0.5
			dat_all_rmse_mean_mod_perc = dat_all_rmse_mean_mod*100 / np.nanmean(obs)

			mean_error_for_ensemble = round(dat_all_rmse_mean_mod_perc, 1)
			

			# Prints

			print()
			print( '{0} ({1} simulations) --> {2}'.format(exp.upper(), n_models, var) )
			print( 'mean error for ensemble --> {}%'.format( mean_error_for_ensemble) )
			print( 'error for ensemble mean --> {}%'.format( error_for_ensemble_mean) )
			
			
			# Storing to make table
			
			if metric == 'ERA-Interim':
				metrics_1[exp+'_'+var] = [ '{}% ({})'.format(mean_error_for_ensemble, n_models), '{}% ({})'.format(error_for_ensemble_mean, n_models)]
			
			if metric == 'ERA5':
				metrics_2[exp+'_'+var] = [ '{}% ({})'.format(mean_error_for_ensemble, n_models), '{}% ({})'.format(error_for_ensemble_mean, n_models)]
			

			# PLOT RMSE
			
			figname = '{0}/plot_rmse_{1}_{2}_x_{3}_{4}_2p5dg_jja_zonmean_timmean-1979-2014.png'.format(dir_ou_figs, exp, subexp, metric, v0+v1)
			
			fig, ax = plt.subplots(figsize=(12,8))
			
			plt.title ( 'RMSE - {0} - JJA seasonal means and zonal mean in 2.5dg\n{1} [1979-2014] and {2} {3} [1979-{4}]'.format(varp[var], metric, exp.upper(), subexp.title(), lastyr[exp]), fontsize=16 )
			# plt.xlabel('Models')
			plt.ylabel('RMSE (%)')
					
			xlist, ylist, mlist, clist, slist = [], [], [], [], []

			for i,a in enumerate(names):
		
				if a in ['ENSEMBLE-MEAN']:
					ylist.append(dat_ens_rmse_perc)
					mlist.append('Error for Ensemble_mean')
					xlist.append(-5)
					clist.append('black')
					slist.append(3)

					ylist.append(dat_all_rmse_mean_mod_perc)
					mlist.append('Mean error for Ensemble')
					xlist.append(-10)
					clist.append('blue')
					slist.append(3)
					
				if a not in ['ENSEMBLE-MEAN', 'ERA-Interim', 'ERA5']:
					
					# print( dat_all_rmse_perc[a])
					ylist.append(dat_all_rmse_perc[a])
					mlist.append(a)
					xlist.append(i)
					clist.append('gray')
					slist.append(0.4)
			
			ylist_mod_mean = np.nanmean(list(dat_all_rmse_perc.values()))
			
			ax.hlines(xmin=-1, xmax=max(xlist), y=ylist_mod_mean, color='orange', linestyle='--', label='Average RMSE for models')
			
			for i,a in enumerate(xlist):
				
				ax.bar([a], [ylist[i]], slist[i], color=clist[i], align='center', label=mlist[i], lw=0)
			
			# ax.set_xlim(min(xlist)-5, max(xlist)+5)
			# ax.set_xlim(min(xlist)-5, 217+5)
			ax.set_xlim(min(xlist)-5, 150+5)
			ax.set_xticks([])
			# ax.set_xticks(range(25,76,5))
			# ax.set_xticklabels(range(-90,90,15))
			
			if var == 'tas':     ax.set_ylim(0, 1.6)
			if var == 'dTASdy':  ax.set_ylim(-45, 0)
			if var == 'ua':      ax.set_ylim(0, 60)
			if var == 'dUAdy':   ax.set_ylim(0, 400)
			if var == 'd2UAdy2': ax.set_ylim(-1400, 0)
					
			# changing labels order
			handles, labels = plt.gca().get_legend_handles_labels()
			order = [-1, -2, 1, 0] 
			handles = [handles[idx] for idx in order]
			labels  = [labels[idx]  for idx in order]
			labels[-2] = '{} Simulations ({})'.format(exp.upper(), n_models)
			# ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=8.1, ncol=1)
			ax.legend(handles, labels, framealpha=0.8, frameon=True, loc='upper left', fontsize=10, ncol=2)
			
			
			plt.tight_layout()
			plt.subplots_adjust(right=0.7)
			# plt.show()
			plt.savefig(figname, bbox_inches='tight')
			plt.close()

			if os.path.exists(figname):
				print('done -->', figname)
			else:
				print('fail -->', figname)

		
		# exit()
		

# Table for ERA-Interim

table = []

for var in ['tas', 'dTASdy', 'ua', 'dUAdy', 'd2UAdy2']:
	

	table.append( [ varp[var], metrics_1['cmip5_'+var][0], metrics_1['cmip6_'+var][0], metrics_1['cmip5_'+var][1], metrics_1['cmip6_'+var][1] ])


headers = ['RMSE\n25N-75N\n2.5dg', 'CMIP5\nMean error\nfor Ensemble', 'CMIP6\nMean error\nfor Ensemble', 'CMIP5\nError for\nEnsemble Mean', 'CMIP6\nError for\nEnsemble Mean']

print()
print()
print('Table for ERA-Interim')
print()
print(tabulate(table, headers=headers, tablefmt='psql', colalign=('left','right','right','right','right')))



# Table for ERA5

table = []

for var in ['tas', 'dTASdy', 'ua', 'dUAdy', 'd2UAdy2']:
	

	table.append( [ varp[var], metrics_2['cmip5_'+var][0], metrics_2['cmip6_'+var][0], metrics_2['cmip5_'+var][1], metrics_2['cmip6_'+var][1] ])


headers = ['RMSE\n25N-75N\n2.5dg', 'CMIP5\nMean error\nfor Ensemble', 'CMIP6\nMean error\nfor Ensemble', 'CMIP5\nError for\nEnsemble Mean', 'CMIP6\nError for\nEnsemble Mean']

print()
print()
print('Table for ERA5')
print()
print(tabulate(table, headers=headers, tablefmt='psql', colalign=('left','right','right','right','right')))



# Actual table following SP interp etc

# +------------+----------------+----------------+-----------------+-----------------+
# | RMSE       |          CMIP5 |          CMIP6 |           CMIP5 |           CMIP6 |
# | 25N-75N    |     Mean error |     Mean error |       Error for |       Error for |
# | 2.5dg      |   for Ensemble |   for Ensemble |   Ensemble Mean |   Ensemble Mean |
# |------------+----------------+----------------+-----------------+-----------------|
# | T(φ)       |     0.5% (217) |      0.5% (67) |      0.3% (217) |       0.3% (67) |
# | dT(φ)/dφ   |   -28.4% (217) |    -26.4% (67) |    -14.2% (217) |     -13.5% (67) |
# | U(φ)       |     28.0% (74) |     17.6% (67) |      19.1% (74) |      10.8% (67) |
# | dU(φ)/dφ   |    188.8% (74) |    168.7% (67) |      91.3% (74) |     117.6% (67) |
# | d²U(φ)/dφ² |   -324.1% (74) |   -270.6% (67) |    -148.8% (74) |    -193.8% (67) |
# +------------+----------------+----------------+-----------------+-----------------+


# -- UA from M22 --

# Table for ERA-Interim

# +------------+----------------+----------------+-----------------+-----------------+
# | RMSE       |          CMIP5 |          CMIP6 |           CMIP5 |           CMIP6 |
# | 25N-75N    |     Mean error |     Mean error |       Error for |       Error for |
# | 2.5dg      |   for Ensemble |   for Ensemble |   Ensemble Mean |   Ensemble Mean |
# |------------+----------------+----------------+-----------------+-----------------|
# | T(φ)       |     0.5% (150) |      0.5% (66) |      0.3% (150) |       0.3% (66) |
# | dT(φ)/dφ   |   -28.8% (150) |    -26.4% (66) |    -15.1% (150) |     -13.6% (66) |
# | U(φ)       |     28.5% (25) |     17.6% (66) |      17.7% (25) |      10.8% (66) |
# | dU(φ)/dφ   |    211.3% (25) |    169.3% (66) |     118.8% (25) |     118.0% (66) |
# | d²U(φ)/dφ² |   -382.8% (25) |   -271.5% (66) |    -186.5% (25) |    -194.6% (66) |
# +------------+----------------+----------------+-----------------+-----------------+


# Table for ERA5

# +------------+----------------+----------------+-----------------+-----------------+
# | RMSE       |          CMIP5 |          CMIP6 |           CMIP5 |           CMIP6 |
# | 25N-75N    |     Mean error |     Mean error |       Error for |       Error for |
# | 2.5dg      |   for Ensemble |   for Ensemble |   Ensemble Mean |   Ensemble Mean |
# |------------+----------------+----------------+-----------------+-----------------|
# | T(φ)       |     0.4% (150) |      0.5% (66) |      0.2% (150) |       0.2% (66) |
# | dT(φ)/dφ   |   -33.8% (150) |    -30.6% (66) |    -23.3% (150) |     -20.6% (66) |
# | U(φ)       |     28.3% (25) |     17.6% (66) |      17.4% (25) |      10.7% (66) |
# | dU(φ)/dφ   |    214.1% (25) |    172.8% (66) |     119.1% (25) |     120.8% (66) |
# | d²U(φ)/dφ² |   -404.1% (25) |   -285.3% (66) |    -201.9% (25) |    -205.2% (66) |
# +------------+----------------+----------------+-----------------+-----------------+



# -- UA From M18 --

# Table for ERA-Interim

# +------------+----------------+----------------+-----------------+-----------------+
# | RMSE       |          CMIP5 |          CMIP6 |           CMIP5 |           CMIP6 |
# | 25N-75N    |     Mean error |     Mean error |       Error for |       Error for |
# | 2.5dg      |   for Ensemble |   for Ensemble |   Ensemble Mean |   Ensemble Mean |
# |------------+----------------+----------------+-----------------+-----------------|
# | T(φ)       |     0.5% (150) |      0.5% (66) |      0.3% (150) |       0.3% (66) |
# | dT(φ)/dφ   |   -28.8% (150) |    -26.4% (66) |    -15.1% (150) |     -13.6% (66) |
# | U(φ)       |     28.0% (74) |     17.6% (66) |      19.1% (74) |      10.8% (66) |
# | dU(φ)/dφ   |    188.8% (74) |    169.3% (66) |      91.3% (74) |     118.0% (66) |
# | d²U(φ)/dφ² |   -324.1% (74) |   -271.5% (66) |    -148.8% (74) |    -194.6% (66) |
# +------------+----------------+----------------+-----------------+-----------------+


# Table for ERA5

# +------------+----------------+----------------+-----------------+-----------------+
# | RMSE       |          CMIP5 |          CMIP6 |           CMIP5 |           CMIP6 |
# | 25N-75N    |     Mean error |     Mean error |       Error for |       Error for |
# | 2.5dg      |   for Ensemble |   for Ensemble |   Ensemble Mean |   Ensemble Mean |
# |------------+----------------+----------------+-----------------+-----------------|
# | T(φ)       |     0.4% (150) |      0.5% (66) |      0.2% (150) |       0.2% (66) |
# | dT(φ)/dφ   |   -33.8% (150) |    -30.6% (66) |    -23.3% (150) |     -20.6% (66) |
# | U(φ)       |     28.0% (74) |     17.6% (66) |      19.0% (74) |      10.7% (66) |
# | dU(φ)/dφ   |    192.4% (74) |    172.8% (66) |      93.4% (74) |     120.8% (66) |
# | d²U(φ)/dφ² |   -341.3% (74) |   -285.3% (66) |    -160.0% (74) |    -205.2% (66) |
# +------------+----------------+----------------+-----------------+-----------------+



