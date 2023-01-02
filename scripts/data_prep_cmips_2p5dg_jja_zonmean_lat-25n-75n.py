################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data (2.5dg, JJA mean, zonmean) and compute latitude bands.
# 
################################################################################

import os
import warnings
import numpy as np
from glob import glob
warnings.filterwarnings("ignore")


for exp in ['era-interim', 'cmip5', 'cmip6']:
	

	if exp in ['era-interim']: subex = ['']
	if exp in ['cmip5']:       subex = ['historical', 'rcp85']
	if exp in ['cmip6']:       subex = ['historical', 'ssp585', 'ssp370']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }
				  
	exp_years = { 'cmip5':{'historical':np.arange(1850,2005+1),  'rcp85':np.arange(2006,2100+1)}, 
				  'cmip6':{'historical':np.arange(1850,2014+1), 'ssp585':np.arange(2015,2100+1), 'ssp370':np.arange(2015,2100+1)} }


	for subexp in subex:            
		
		for var in ['tas', 'ua']:

			print()
			print()
			print('Running -->', exp, var)

			dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean'.format(exp, subexp, var)
			dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n'.format(exp, subexp, var)
			
			if not os.path.exists(dir_ou): os.makedirs(dir_ou)
			
			if exp in ['era-interim']:
				files = glob( '{0}/{1}_*_2p5dg_jja_zonmean.nc'.format(dir_in, var) )
			else:
				files = glob( '{0}/{1}_*_{2}_2p5dg_jja_zonmean.nc'.format(dir_in, var, exp_dates[exp][subexp]) )
			files.sort()

			for fin in files:
				
				print()
				print('input -->', fin)
				
				fou = fin.replace('_2p5dg_jja_zonmean', '_2p5dg_jja_zonmean_lat-25n-75n')
								
				cmd1 = 'cdo -s -O remapbil,grid_5dg.nc {0} {1}'         .format(fin, 'tmp.nc')
				cmd2 = 'cdo -s -O sellonlatbox,,,25,75 {0} {1} ; rm {0}'.format('tmp.nc', fou)
				
				print(cmd1)
				print(cmd2)
				
				os.system(cmd1)
				os.system(cmd2)
				
				if os.path.exists(fou):
					print('done  -->', fou)
				
				
				
				
				
				
				
				
				
