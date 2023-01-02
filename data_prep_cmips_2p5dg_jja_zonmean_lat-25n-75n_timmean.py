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
				  
	exp_timmean = { 'cmip5':{'historical':[1979,2005],  'rcp85':[2070,2100]},
				    'cmip6':{'historical':[1979,2014], 'ssp585':[2070,2100], 'ssp370':[2070,2100]} }


	for subexp in subex:

		if exp in ['era-interim']:
			yr1, yr2 = [1979,2014]
		else:
			yr1, yr2 = exp_timmean[exp][subexp]
				
		
		for var in ['tas', 'ua']:

			print()
			print()
			print('Running -->', exp, var)

			dir_in = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n'.format(exp, subexp, var)
			dir_ou = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_timmean-{3}-{4}'.format(exp, subexp, var, yr1, yr2)
			
			if not os.path.exists(dir_ou): os.makedirs(dir_ou)
			
			if exp in ['era-interim']:
				files = glob( '{0}/{1}_*_2p5dg_jja_zonmean_lat-25n-75n.nc'.format(dir_in, var) )
			else:
				files = glob( '{0}/{1}_*_{2}_2p5dg_jja_zonmean_lat-25n-75n.nc'.format(dir_in, var, exp_dates[exp][subexp]) )

			files.sort()

			for fin in files:
				
				print()
				print('input -->', fin)
				
				fou = fin.replace('_2p5dg_jja_zonmean_lat-25n-75n', '_2p5dg_jja_zonmean_lat-25n-75n_timmean-{}-{}'.format(yr1,yr2))
								
				cmd1 = 'cdo -s -O timmean -seldate,{0}-01-15,{1}-12-31 {2} {3}'.format(yr1, yr2, fin, fou)
				
				print(cmd1)
				
				os.system(cmd1)
				
				if os.path.exists(fou):
					print('done  -->', fou)
				
				
				# exit()
				
				
				
				
				
				
