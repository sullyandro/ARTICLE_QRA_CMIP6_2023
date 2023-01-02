################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP QRA index trend plots and concatenate them.
# 
################################################################################

import os
from glob import glob
import numpy as np
import skimage.io
import skimage.util


print('')
print('')
print('')
print('++ QRA INDEX trend plots')
print('')

for exp in ['cmip5', 'cmip6']:
	

	if exp in ['cmip5']: subex = ['rcp85'] 
	if exp in ['cmip6']: subex = ['ssp585']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012', '1pctCO2':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', '1pctCO2':'201501-210012'} }
	
	var = 'tas'
		
	for subexp in subex:
			
		for time_period in ['2015-2050', '2051-2100']:
	
		
			print('')
			print('')
			print('+ {} {}'.format(exp.upper(), subexp))
			print('')    
			
			# input()

			period = exp_dates[exp][subexp]
			iyr = int(period[0:4])
			fyr = int(period[7:11])
			
			# Period for the trend
			if time_period == '2015-2050':
				yr1 = 2015
				yr2 = 2050
			if time_period == '2051-2100':
				yr1 = 2051
				yr2 = 2100

			
			dir_in_figsm = '../figures/trend_analysis/{0}_{1}_{2}-{3}'.format(exp, subexp, yr1, yr2)

			fnames = '{0}/plot_tas_qraindex_trend_{1}_{2}_{3}-{4}_*.png'.format(dir_in_figsm, exp, subexp, yr1, yr2)
					
			print('fnames -->', fnames)
			files = glob(fnames)
			files.sort()
			
			print()
			print()
			print('#########################################')
			print()
			
					
			png_arrays = []
			
			for i,fin in enumerate(files):
				
				if 'ecdf' in fin: continue
				if 'group' in fin: continue
					
				if i==0:
					a = skimage.io.imread(fin)[:,:,:3]
					yd, xd, zd = a.shape
				if i!=0:
					a = skimage.io.imread(fin)[:yd,:xd,:3]
								
				print('input -->', a.shape, fin)
				
				png_arrays.append(a)


			print(len(png_arrays))


			ct = 0
			groups = []
			subgroups = []
			for i, pngs in enumerate(png_arrays):
				
				if ct == 6*4:
					ct = 0
					groups.append(subgroups)
					print(len(subgroups))
					subgroups = []
					
				if ct < 6*4:
					subgroups.append(pngs)

				print('---->', i, ct)
				
				if i+1 == len(png_arrays):
					groups.append(subgroups)
					print(len(subgroups))
					subgroups = []
				
				ct += 1
			

			
			print()
			print('creating groups figs - n groups -->', len(groups))
			print()
			
			ct = 1
			for group in groups:
				
				print('group -->', ct, len(group))
				
				m = skimage.util.montage(group, channel_axis=3, padding_width=0, fill=(255,255,255), grid_shape=(6,4))
				# print(m.shape)
				# (450, 800, 3)

				figout = '{0}/plot_tas_qraindex_trend_{1}_{2}_{3}-{4}_group_{5}.png'.format(dir_in_figsm, exp, subexp, yr1, yr2, ct)
				
				skimage.io.imsave(figout, m)

				if os.path.exists(figout):
					print('done -->', figout)
					
				ct += 1 
				
				
			print()
			print('#########################################')
			print()
			
			
			

























