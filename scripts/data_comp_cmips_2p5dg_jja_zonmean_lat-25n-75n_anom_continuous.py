################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data as latband (orig -> 2.5dg -> JJA mean -> 25n-75n) and compute anomaly (M18 method).
#
# Mann et al 2018 anomaly method:
#	
# 1 T_MOD_1_CLIM	--> Climatology avg [1979-2005 JJA 25N-75N 5dg] 			--> dimensions (1 time, 11 lat)
# 2 T_MOD_1 		--> Temperature series [1861-2005 JJA 25N-75N 5dg] 			--> dimensions (145 time, 11 lat)
# 3 T_MOD_1_ANOM = (T_MOD_1 - T_MOD_1_CLIM) - mean(T_MOD_1 - T_MOD_1_CLIM)		--> dimensions (145 time, 11 lat)
# 4 T_MOD_MEAN_ANOM = mean( T_MOD_1_ANOM; T_MOD_2_ANOM; ... ; T_MOD_N_ANOM ) 	--> dimensions (145 time, 11 lat)
# 
################################################################################

import os
import warnings
import numpy as np
import xarray as xr
from glob import glob
from CreateNetCDF4 import nc4
warnings.filterwarnings("ignore")

print()
print('PREPARING DATA')
print()

for exp in ['cmip5', 'cmip6']:

	if exp in ['cmip5']: subex = ['rcp85']
	if exp in ['cmip6']: subex = ['ssp585', 'ssp370', 'ssp370-lowNTCF']
	
	exp_check = { 'cmip5':{'historical':'rcp85',   'rcp85':'historical', '1pctCO2':'historical'}, 
				  'cmip6':{'historical':'ssp585', 'ssp585':'historical', '1pctCO2':'historical', 'ssp370':'historical', 'ssp370-lowNTCF':'historical'} }
	
	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012', 'ssp370-lowNTCF':'201501-210012'} }

	var = 'tas'
		
	for subexp in subex:
		
		print('')
		print('')
		print(exp.upper(), subexp)
		print('')
		print('')
		
		period = exp_dates[exp][subexp]
		iyr = int(period[0:4])
		fyr = int(period[7:11])
		
		period_ck = exp_dates[exp][exp_check[exp][subexp]]
		iyr_ck = int(period_ck[0:4])
		fyr_ck = int(period_ck[7:11])

		period_continuous = period_ck[0:6] + '-' + period[7:13]

		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n'.format(exp, subexp, var)
		dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_anom_continuous'.format(exp, 'historical-'+subexp, var)

		fnames = '{0}/{3}_Amon_*_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n.nc'.format(dir_in, exp, subexp, var, period)
		print('fnames -->', fnames)
		print()
		files = glob(fnames)
		files.sort()

		names = []
		dat_all_futu = {}
		dat_all_hist = {}
		dat_period = {}

		# MODELS
		for a in files:
	
			# Future data -----------
			
			ncname = a.split('/')[-1].split('_')
			model  = ncname[2]
			if exp == 'cmip5': run = ncname[4]
			if exp == 'cmip6': run = ncname[4] + '_' + ncname[5]
			run_model = run+'_'+model
			
			# main nc
			ds  = xr.open_dataset(a, decode_times=False)
			dat = np.squeeze(ds[var].data)
			lat = ds['lat'].data
			lon = ds['lon'].data
		
			if dat.shape[0] == (fyr-iyr+1):
				print('imput -->', dat.shape, a)
			else:
				print('*fail -->', dat.shape, a)
				continue
			
			# Historical data -------
			
			# checking if historical and projection matches
			dir_ck = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n'.format(exp, 'historical', var)
			fcheck = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n.nc'.format(dir_ck, exp, 'historical', var, model, run, period_ck)
			check  = glob(fcheck)
			if len(check) > 0: 
				
				ds2 = xr.open_dataset(check[0], decode_times=False)
				dat2 = np.squeeze(ds2[var].data)
				dat_all_hist[run_model] = dat2[:]

				if dat2.shape[0] != (fyr_ck-iyr_ck+1):				
					print('*fail -->', dat2.shape, check[0])
					continue
				else:
					print('input -->', dat2.shape, check[0])
			else:
				print('not added ------->', fcheck)
				continue


			# just add a model if exits their projection nc too
			names.append(run_model)
			dat_all_futu[run_model] = dat[:]

		print()
		print('models total -->', len(names))
		print()
		if len(names) == 0:
			continue
	

		# TIME MEAM

		dat_all_timmean_futu = {}
		dat_all_timmean_hist = {}
		
		l1 = 1880 - 1850
		l2 = 2005 - 1850 + 1
		
		for a in names:
			dat_all_timmean_hist[a] = np.nanmean(dat_all_hist[a][l1:l2,:], axis=0)
		
		
		# Fingerprint Anomaly as M17

		dat_all_anom = {}

		for a in names:
			
			tas_futu = dat_all_futu[a][:,:]  # (137,11)
			tas_hist = dat_all_hist[a][:,:]  # (137,11)
			
			tas = np.concatenate((tas_hist,tas_futu), axis=0)
						
			# Climatology
			tas_cli = dat_all_timmean_hist[a]  # (11) over 1979-2015  --> if rcp or ssp then check is historical
			
			# Anomaly
			
			tas_anom = (tas - tas_cli) - np.nanmean(tas_hist[l1:l2,:] - tas_cli) # (137, 11)         -----> PS: CMIP5 and CMIP6 using 1880-2005 as base period <-------
			
			tas_anom = np.expand_dims(tas_anom, axis=2) # (137, 11, 1)
			
			dat_all_anom[a] = tas_anom[:]

			# Output name
						
			model  = a.split('_')[-1]
			if exp == 'cmip5': run = a.split('_')[0]
			if exp == 'cmip6': run = a.split('_')[0] + "_" + a.split('_')[1]
				
			fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_anom.nc'.format(dir_ou, exp, 'historical-'+subexp, var, model, run, period_continuous)

			if not os.path.exists(dir_ou): os.makedirs(dir_ou)

			# Saving netcdf
			
			nc4(tas_anom, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since {}-07-15 00:00'.format(iyr_ck))
			if os.path.exists(fou):
				print('done -->', fou)
			
			# exit()
			
			
		# ENSEMBLE
			
		if exp == 'cmip5': 
			run, model = 'r1i1p1', 'ENSEMBLE-MEAN'
		if exp == 'cmip6': 
			run, model = 'r1i1p1f1_gn', 'ENSEMBLE-MEAN'
			
		dat_ens_anom = np.array( list(dat_all_anom.values()) )
		dat_ens_anom = np.nanmean(dat_ens_anom, axis=0)
		
		fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_anom.nc'.format(dir_ou, exp, 'historical-'+subexp, var, model, run, period_continuous)

		# Saving netcdf
		
		nc4(dat_ens_anom, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since {}-07-15 00:00'.format(iyr_ck))
		if os.path.exists(fou):
			print('done -->', fou)




















