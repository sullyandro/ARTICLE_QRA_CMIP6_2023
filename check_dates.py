################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data and check date ranges.
# 
################################################################################

import os
import warnings
import numpy as np
from glob import glob
warnings.filterwarnings("ignore")


for exp in ['cmip5', 'cmip6']:
	
	if exp in ['cmip5']:       subex = ['historical', 'rcp85']
	if exp in ['cmip6']:       subex = ['historical', 'ssp585', 'ssp370']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012', 'ssp370':'201501-210012'} }
				  
	exp_years = { 'cmip5':{'historical':np.arange(1850,2005+1),  'rcp85':np.arange(2006,2100+1)}, 
				  'cmip6':{'historical':np.arange(1850,2014+1), 'ssp585':np.arange(2015,2100+1), 'ssp370':np.arange(2015,2100+1)} }


	for subexp in subex:            
		
		expd = exp_dates[exp][subexp]
		expd1 = int(expd.split('-')[0])
		expd2 = int(expd.split('-')[1])
		y1 = int(expd.split('-')[0][:4])
		y2 = int(expd.split('-')[1][:4])
		
		for var in ['tas', 'ua']:

			print()
			print()
			print('Running -->', exp, subexp, var)
			print()
			
			sufix = 'jja'
			# sufix = 'jja_zonmean'
			# sufix = 'jja_zonmean_lat-25n-75n'

			dir_in = '../data/{0}/{1}/{2}_2p5dg_{3}'.format(exp, subexp, var, sufix)
			dir_ou = '../data/{0}/{1}/{2}_2p5dg_{3}'.format(exp, subexp, var, sufix)
			
			if not os.path.exists(dir_ou): os.makedirs(dir_ou)

			
			files = glob( '{0}/{1}_*_2p5dg_{2}.nc'.format(dir_in, var, sufix) )
			files.sort()

			print('files --> {0}/{1}_*_2p5dg_{2}.nc --> {3}'.format(dir_in, var, sufix, len(files)))

			for fin in files:
				
				print('input -->', fin)
				
				dates = fin.split('_2p5dg_')[-2].split('_')[-1].split('-')
				find1 = int(dates[0])
				find2 = int(dates[1])
							
				
				if find1 == expd1 and find2 == expd2:
					continue
					
				elif find1 <= expd1 and find2 >= expd2:

					print('exp ->', expd1, expd2)
					print('fin ->', find1, find2)
					print('--> dates to be cropped')
					
					fou = fin.replace(dates[0],str(expd1)).replace(dates[1],str(expd2))
					
					cmd1 = 'cdo -s -O seldate,{0}-01-01,{1}-12-31 {2} {3}' .format(y1, y2, fin, fou)
					print(cmd1)
					
					# input()
					os.system(cmd1)						

					if os.path.exists(fou):
						print('done  -->', fou)
						os.system('rm -rfv {}'.format(fin))
					print()
				
				else:
					print('exp ->', expd1, expd2)
					print('fin ->', find1, find2)
					print('--> file out of range!')
					# input()
					os.system('rm -rfv {}'.format(fin))
					print()
				
			
				
				
				
				
				
				
				
