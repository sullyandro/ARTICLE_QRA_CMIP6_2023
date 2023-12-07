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
from glob import glob
from scipy.stats import linregress
from CreateNetCDF4 import nc4
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
	
				 
	if exp in ['cmip5']: subex = ['rcp85']
	if exp in ['cmip6']: subex = ['ssp585', 'ssp370']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }

	exp_years = { 'cmip5':{'historical':np.arange(1850,2005+1),  'rcp85':np.arange(2006,2100+1), 'historical-rcp85':np.arange(1850,2100+1)}, 
				  'cmip6':{'historical':np.arange(1850,2014+1), 'ssp585':np.arange(2015,2100+1), 'ssp370':np.arange(2015,2100+1), 
						   'historical-ssp585':np.arange(1850,2100+1), 'historical-ssp370':np.arange(1850,2100+1)}  }

	lim_c5_hist   = np.in1d(exp_years['cmip5']['historical-rcp85'],  exp_years['cmip5']['historical'])
	lim_c5_rcp85  = np.in1d(exp_years['cmip5']['historical-rcp85'],  exp_years['cmip5']['rcp85'])

	lim_c6_hist   = np.in1d(exp_years['cmip6']['historical-ssp585'], exp_years['cmip6']['historical'])
	lim_c6_ssp585 = np.in1d(exp_years['cmip6']['historical-ssp585'], exp_years['cmip6']['ssp585'])
	lim_c6_ssp370 = np.in1d(exp_years['cmip6']['historical-ssp370'], exp_years['cmip6']['ssp370'])

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
		
		dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-'+subexp, var)
		dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous'.format(exp, 'historical-'+subexp, 'ua')

		if not os.path.exists(dir_ou): os.makedirs(dir_ou)

		# Temperature QRAindex from models

		fnames = '{0}/{3}_Amon_*_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, 'historical-'+subexp, var, period_continuous)
				
		print('fnames -->', fnames)
		files = glob(fnames)
		files.sort()
		
		names = []
		qra_ua_all_hist = {}
		qra_ua_all_futu = {}
		dat_period = {}

		# MODELS
		for a in files:
			
			if 'ENSEMBLE-MEAN' in a: continue
				
			fname = a.split('/')[-1]
			
			if exp == 'cmip5': model = fname.split('_')[4] + "_" + fname.split('_')[2]
			if exp == 'cmip6': model = fname.split('_')[4] + "_" + fname.split('_')[5] + "_" + fname.split('_')[2]
				
			# Reading TAS QRA index continuous (Historical-future)
			
			# ../data/cmip5/historical-rcp85/tas_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_continuous/tas_Amon_*_historical-rcp85_*_*_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc

			ds  = xr.open_dataset(a, decode_times=False)
			dat = np.squeeze(ds['tas'].data)
			lat = ds['lat'].data
			lon = ds['lon'].data
			qra_index_mod = dat[:]
			
			lim_exp_hist = np.in1d(exp_years[exp]['historical-'+subexp],  exp_years[exp]['historical'])
			lim_exp_futu = np.in1d(exp_years[exp]['historical-'+subexp],  exp_years[exp][subexp])
			
			qra_index_mod_hist = qra_index_mod[lim_exp_hist]
			qra_index_mod_futu = qra_index_mod[lim_exp_futu]
			
			print()
			print('imput -->', dat.shape, a)
			
			# Reading UA Historical
			
			# ../data/cmip5/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_ACCESS1-0_historical_r1i1p1_185001-200512_2p5dg_jja_zonmean_lat-25n-75n.nc
			
			ua_fname_hist = a.replace('_QRAindex','').replace('/tas/','/ua/').replace('/tas_','/ua_').replace('_continuous','')\
			                 .replace('-rcp85','').replace('-ssp585','').replace('-ssp370','').replace(period_continuous,exp_dates[exp]['historical'])
			
			if len(glob(ua_fname_hist)) != 0:
			
				ds  = xr.open_dataset(ua_fname_hist, decode_times=False)
				dat = np.squeeze(ds['ua'].data)
				lat = ds['lat'].data
				lon = ds['lon'].data
				
				ua_mod_hist = dat[:]
				
				print('imput -->', dat.shape, ua_fname_hist)
				
			else: 
				print('fail --> not found', ua_fname_hist)
				continue
			
			# Reading UA Future
			
			# ../data/cmip5/rcp85/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_BNU-ESM_rcp85_r1i1p1_200601-210012_2p5dg_jja_zonmean_lat-25n-75n.nc
			
			ua_fname_futu = a.replace('_QRAindex','').replace('/tas/','/ua/').replace('/tas_','/ua_').replace('_continuous','')\
			                 .replace('historical-','').replace(period_continuous,exp_dates[exp][subexp])
		
			if len(glob(ua_fname_futu)) != 0:
			
				ds  = xr.open_dataset(ua_fname_futu, decode_times=False)
				dat = np.squeeze(ds['ua'].data)
				lat = ds['lat'].data
				lon = ds['lon'].data
				
				ua_mod_futu = dat[:]
				
				print('imput -->', dat.shape, ua_fname_futu)
				
			else: 				
				print('fail --> not found', ua_fname_futu)
				continue


			names.append(model)

			
			# Until here we have:
			#    qra_index_mod_hist (165)
			#           ua_mod_hist (165, 11)
			
			
			# QRAindex onto UA Historical
			
			std_qra_index_mod_hist = np.std(qra_index_mod_hist[:])
			
			x_for_regress = qra_index_mod_hist[:] / std_qra_index_mod_hist
			
			qra_index_onto_ua_mod_hist = np.full((1,11,1), np.nan)
			
			for j in range(11):
				
				y_for_regress = ua_mod_hist[:, j]
				
				# [B,BINT,R,RINT,STATS] = regress(Y,X)

				slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
				
				# print()
				# print( 'slope     -->', slope)
				# print( 'intercept -->', intercept)
				# print( 'r         -->', r)
				# print( 'p         -->', p)
				# print( 'se        -->', se)
				# print()
							
				qra_index_onto_ua_mod_hist[0,j,0] = slope
			
			
			# QRAindex onto UA Future
			
			std_qra_index_mod_futu = np.std(qra_index_mod_futu[:])
			
			x_for_regress = qra_index_mod_futu[:] / std_qra_index_mod_futu
			
			qra_index_onto_ua_mod_futu = np.full((1,11,1), np.nan)
			
			for j in range(11):
				
				y_for_regress = ua_mod_futu[:, j]
				
				# [B,BINT,R,RINT,STATS] = regress(Y,X)

				slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
				
				# print()
				# print( 'slope     -->', slope)
				# print( 'intercept -->', intercept)
				# print( 'r         -->', r)
				# print( 'p         -->', p)
				# print( 'se        -->', se)
				# print()
							
				qra_index_onto_ua_mod_futu[0,j,0] = slope		
			
			
			# Output file QRAindex onto UA Historical
			
			model_name  = model.split('_')[-1]
			if exp == 'cmip5': run = model.split('_')[0]
			if exp == 'cmip6': run = model.split('_')[0] + "_" + model.split('_')[1]
			
			fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, 'historical', 'ua', model_name, run, exp_dates[exp]['historical'])
				
			nc4(qra_index_onto_ua_mod_hist[0:1,0:11,0:1], lat[0:11], [0], vvar='ua', fname=fou, vlname='ua', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
			if os.path.exists(fou):
				print('done -->', fou)
			
			# Output file QRAindex onto UA Future
			
			model_name  = model.split('_')[-1]
			if exp == 'cmip5': run = model.split('_')[0]
			if exp == 'cmip6': run = model.split('_')[0] + "_" + model.split('_')[1]
			
			fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, subexp, 'ua', model_name, run, exp_dates[exp][subexp])
				
			nc4(qra_index_onto_ua_mod_futu[0:1,0:11,0:1], lat[0:11], [0], vvar='ua', fname=fou, vlname='ua', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
			if os.path.exists(fou):
				print('done -->', fou)


			qra_ua_all_hist[model] = qra_index_onto_ua_mod_hist[0,:,0]
			qra_ua_all_futu[model] = qra_index_onto_ua_mod_futu[0,:,0]
			
			
			
		print()
		print('Number of models -->', len(names))

		# QRA index models mean hist

		qra_index_ua_mod_mean_hist = np.array(list(qra_ua_all_hist.values()))
		print()
		print('qra_index_ua_mods -->', qra_index_ua_mod_mean_hist.shape)
		print()
		qra_index_ua_mod_mean_hist = np.nanmean(qra_index_ua_mod_mean_hist, axis=0)
		print()
		print('qra_index_ua_ens -->', qra_index_ua_mod_mean_hist.shape, qra_index_ua_mod_mean_hist)
		print()

		qra_index_onto_ua_ens_hist = np.full((1,11,1), np.nan)
		qra_index_onto_ua_ens_hist[0,:,0] = qra_index_ua_mod_mean_hist[:]
		
		if exp == 'cmip5': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1'
		if exp == 'cmip6': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1f1_gn'
				
		fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, 'historical', 'ua', model_name, run, exp_dates[exp]['historical'])

		nc4(qra_index_onto_ua_ens_hist[0:1,0:11,0:1], lat[0:11], [0], vvar='ua', fname=fou, vlname='ua', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
		if os.path.exists(fou):
			print('done -->', fou)
			
			
		# QRA index models mean futu

		qra_index_ua_mod_mean_futu = np.array(list(qra_ua_all_futu.values()))
		print()
		print('qra_index_ua_mods -->', qra_index_ua_mod_mean_futu.shape)
		print()
		qra_index_ua_mod_mean_futu = np.nanmean(qra_index_ua_mod_mean_futu, axis=0)
		print()
		print('qra_index_ua_ens -->', qra_index_ua_mod_mean_futu.shape, qra_index_ua_mod_mean_futu)
		print()

		qra_index_onto_ua_ens_futu = np.full((1,11,1), np.nan)
		qra_index_onto_ua_ens_futu[0,:,0] = qra_index_ua_mod_mean_futu[:]
		
		if exp == 'cmip5': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1'
		if exp == 'cmip6': model_name, run = 'ENSEMBLE-MEAN', 'r1i1p1f1_gn'
				
		fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_ou, exp, subexp, 'ua', model_name, run, exp_dates[exp][subexp])
			
		# Saving netcdf
		nc4(qra_index_onto_ua_ens_futu[0:1,0:11,0:1], lat[0:11], [0], vvar='ua', fname=fou, vlname='ua', vunints='QRA Index', tunits='years since {}-07-15 00:00'.format(iyr))
		if os.path.exists(fou):
			print('done -->', fou)
			




