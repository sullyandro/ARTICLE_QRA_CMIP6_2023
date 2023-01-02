################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data as latband (orig -> 2.5dg -> JJA mean -> 25n-75n -> anom -> QRA index) and compute QRA index onto UA.
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
import scipy
import warnings
import numpy as np
import xarray as xr
import matplotlib as mpl
import matplotlib.pyplot as plt
from glob import glob
from scipy.stats import linregress
from CreateNetCDF4 import nc4
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=2, suppress=1, linewidth=500)


print('')
print('')
print('')
print('++ QRA INDEX calculation into UA')
print('')


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ CMIP5 and CMIP6 ')
print('')

for exp in ['cmip5', 'cmip6']:
	
				 
	if exp in ['cmip5']: subex = ['historical', 'rcp85'] 
	if exp in ['cmip6']: subex = ['historical', 'ssp585', 'ssp370']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }
	
	var = 'tas'
		
	for subexp in subex:
	
		print('')
		print('')
		print('+ {} {}'.format(exp.upper(), subexp))
		print('')    
		
		period = exp_dates[exp][subexp]
		iyr = int(period[0:4])
		fyr = int(period[7:11])
				
		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex'.format(exp, subexp, var)
		dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex'.format(exp, subexp, 'ua')

		if not os.path.exists(dir_ou): os.makedirs(dir_ou)

		# Temperature QRAindex from models

		fnames = '{0}/{3}_Amon_*_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, var, period)
				
		print('fnames -->', fnames)
		files = glob(fnames)
		files.sort()
		
		names = []
		qra_ua_all = {}
		dat_period = {}

		# MODELS
		for a in files:
			
			if 'ENSEMBLE-MEAN' in a: continue
				
			fname = a.split('/')[-1]
			
			if exp == 'cmip5': model = fname.split('_')[4] + "_" + fname.split('_')[2]
			if exp == 'cmip6': model = fname.split('_')[4] + "_" + fname.split('_')[5] + "_" + fname.split('_')[2]
				
			ds  = xr.open_dataset(a, decode_times=False)
			dat = np.squeeze(ds['tas'].data)
			lat = ds['lat'].data
			lon = ds['lon'].data
			qra_index_mod = dat[:]
			
			print('imput -->', dat.shape, a)
			
			ua_fname = a.replace('_QRAindex','').replace('/tas/','/ua/').replace('/tas_','/ua_')
			
			ua_file = glob( ua_fname )
			if len(ua_file) == 0:
				ua_file = 0
			else:
				ua_file = ua_file[0]
							
			fck_dates = ua_fname.split('_')[-5]
			
			fck_dif_dates = ua_fname.replace(fck_dates, '*')
			
			fck_file = glob( fck_dif_dates )
			if len(fck_file) == 0:
				fck_file = 0
			else:
				fck_file = fck_file[0]
			
			if ua_file:
				
				ds  = xr.open_dataset(ua_file, decode_times=False)
				dat = np.squeeze(ds['ua'].data)
				lat = ds['lat'].data
				lon = ds['lon'].data
				
				ua_mod = dat[:]
				
				print('imput -->', dat.shape, ua_file)
				
			elif fck_file:
				
				ds  = xr.open_dataset(fck_file, decode_times=False)
				dat = np.squeeze(ds['ua'].data)
				lat = ds['lat'].data
				lon = ds['lon'].data
				
				ua_mod = dat[:]
				
				print('imput dif -->', dat.shape, fck_file)
				
			else:
				print('fail --> not found', fck_dif_dates)
				print()
				continue
			
			qra_index_mod = qra_index_mod[-ua_mod.shape[0]:]
				
			names.append(model)
						
			# Here we have qra_index_mod (165) and ua_mod (165, 11)
			
			# QRAindex onto UA 
			
			std_qra_index_mod = np.std(qra_index_mod[:])
			
			x_for_regress = qra_index_mod[:] / std_qra_index_mod
			
			qra_index_onto_ua_mod = np.full((1,11,1), np.nan)
			
			for j in range(11):
				
				y_for_regress = ua_mod[:, j]
				
				# [B,BINT,R,RINT,STATS] = regress(Y,X)

				slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
				
				# print()
				# print( 'slope     -->', slope)
				# print( 'intercept -->', intercept)
				# print( 'r         -->', r)
				# print( 'p         -->', p)
				# print( 'se        -->', se)
				# print()
							
				qra_index_onto_ua_mod[0,j,0] = slope
			
			# Output name
			
			model_name  = model.split('_')[-1]
			if exp == 'cmip5': run = model.split('_')[0]
			if exp == 'cmip6': run = model.split('_')[0] + "_" + model.split('_')[1]
			
			fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, subexp, 'ua', model_name, run, period)
				
			# Saving netcdf
			nc4(qra_index_onto_ua_mod[0:1,0:11,0:1], lat[0:11], [0], vvar='ua', fname=fou, vlname='ua', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
			if os.path.exists(fou):
				print('done -->', fou)

			qra_ua_all[model] = qra_index_onto_ua_mod[0,:,0]
		
		print()
		print('number of models -->', len(names))

		# QRA index models mean

		qra_index_ua_mod_mean = np.array(list(qra_ua_all.values()))
		print()
		print('qra_index_ua_mods -->', qra_index_ua_mod_mean.shape)
		print()
		qra_index_ua_mod_mean = np.nanmean(qra_index_ua_mod_mean, axis=0)
		print()
		print('qra_index_ua_ens -->', qra_index_ua_mod_mean.shape, qra_index_ua_mod_mean)
		print()

		qra_index_onto_ua_ens = np.full((1,11,1), np.nan)
		qra_index_onto_ua_ens[0,:,0] = qra_index_ua_mod_mean[:]
		
		if exp == 'cmip5': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1'
		if exp == 'cmip6': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1f1_gn'
				
		fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, subexp, 'ua', model_name, run, period)
			
		# Saving netcdf
		nc4(qra_index_onto_ua_ens[0:1,0:11,0:1], lat[0:11], [0], vvar='ua', fname=fou, vlname='ua', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
		if os.path.exists(fou):
			print('done -->', fou)
			
			
			
			
			
			
