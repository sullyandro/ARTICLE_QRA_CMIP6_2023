################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data from PIK database, interpolate to 2.5dg, and compute JJA mean.
# 
################################################################################

# Execution time for historcal tas ua
# real  312m53.993s
# user  178m28.485s
# sys   10m59.549s

import os
import numpy as np
from glob import glob


# Main variables

case = 9	# Choose here which case should run
			# There are the Amon and day cases because the database may has more or less data available in each one

if case == 1: 
	project, experim, frequen = 'cmip5', 'historical', 'Amon'
if case == 2:
	project, experim, frequen = 'cmip5', 'historical', 'day'
if case == 3:
	project, experim, frequen = 'cmip5', 'rcp85', 'Amon'
if case == 4:
	project, experim, frequen = 'cmip5', 'rcp85', 'day'
if case == 5:
	project, experim, frequen = 'cmip6', 'historical', 'Amon'
if case == 6:
	project, experim, frequen = 'cmip6', 'historical', 'day'
if case == 7:
	project, experim, frequen = 'cmip6', 'ssp585', 'Amon'
if case == 8:
	project, experim, frequen = 'cmip6', 'ssp585', 'day'
if case == 9:
	project, experim, frequen = 'cmip6', 'ssp370', 'Amon'
if case == 10:
	project, experim, frequen = 'cmip6', 'ssp370', 'day'



# Create dictionary with all information for data path and file

# Paths examples

# /p/projects/climate_data_central/CMIP/CMIP5/historical/Amon/tas/ACCESS1-0/r1i1p1/tas_Amon_ACCESS1-0_historical_r1i1p1_185001-200512.nc
# /p/projects/climate_data_central/CMIP/CMIP5/historical/day /tas/ACCESS1-0/r1i1p1/tas_day_ACCESS1-0_historical_r1i1p1_18500101-18741231.nc
# /p/projects/climate_data_central/CMIP/CMIP5/rcp85     /Amon/tas/ACCESS1-0/r1i1p1/tas_Amon_ACCESS1-0_rcp85_r1i1p1_200601-210012.nc
# /p/projects/climate_data_central/CMIP/CMIP5/rcp85     /day /tas/ACCESS1-0/r1i1p1/tas_day_ACCESS1-0_rcp85_r1i1p1_20060101-20301231.nc

# /p/projects/climate_data_central/CMIP/CMIP6/CMIP       /AWI/AWI-CM-1-1-MR/historical/r1i1p1f1/Amon/tas/gn/v20200720/tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_185001-185012.nc
# /p/projects/climate_data_central/CMIP/CMIP6/CMIP       /AWI/AWI-CM-1-1-MR/historical/r1i1p1f1/day /tas/gn/v20181218/tas_day_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_18500101-18501231.nc
# /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/AWI/AWI-CM-1-1-MR/ssp585    /r1i1p1f1/Amon/tas/gn/v20190529/tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_201501-201512.nc
# /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/AWI/AWI-CM-1-1-MR/ssp585    /r1i1p1f1/day /tas/gn/v20190529/tas_day_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_20150101-20151231.nc

main_dir = '/p/projects/climate_data_central/CMIP/'

if project == 'cmip5' and experim == 'historical' and frequen == 'Amon': data_dir = '/p/projects/climate_data_central/CMIP/CMIP5/historical/Amon/*/*/*/*'
if project == 'cmip5' and experim == 'historical' and frequen == 'day':  data_dir = '/p/projects/climate_data_central/CMIP/CMIP5/historical/day/*/*/*/*'
if project == 'cmip5' and experim == 'rcp85'      and frequen == 'Amon': data_dir = '/p/projects/climate_data_central/CMIP/CMIP5/rcp85/Amon/*/*/*/*'
if project == 'cmip5' and experim == 'rcp85'      and frequen == 'day':  data_dir = '/p/projects/climate_data_central/CMIP/CMIP5/rcp85/day/*/*/*/*'

if project == 'cmip6' and experim == 'historical' and frequen == 'Amon': data_dir = '/p/projects/climate_data_central/CMIP/CMIP6/CMIP/*/*/historical/*/Amon/*/*/*/*'
if project == 'cmip6' and experim == 'historical' and frequen == 'day':  data_dir = '/p/projects/climate_data_central/CMIP/CMIP6/CMIP/*/*/historical/*/day/*/*/*/*'
if project == 'cmip6' and experim == 'ssp585'     and frequen == 'Amon': data_dir = '/p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/*/*/ssp585/*/Amon/*/*/*/*'
if project == 'cmip6' and experim == 'ssp585'     and frequen == 'day':  data_dir = '/p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/*/*/ssp585/*/day/*/*/*/*'
if project == 'cmip6' and experim == 'ssp370'     and frequen == 'Amon': data_dir = '/p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/*/*/ssp370/*/Amon/*/*/*/*'
if project == 'cmip6' and experim == 'ssp370'     and frequen == 'day':  data_dir = '/p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/*/*/ssp370/*/day/*/*/*/*'


files = glob(data_dir)
files.sort()

bigdic = {}

print('\n# Creating big dictionary\n')

for a in files:
	
	if 'test.nc' in a: continue # there is this file test.nc together with cmip files
	
	
	parts = a.replace(main_dir, '').split('/') # historical/Amon/tas/ACCESS1-0/r1i1p1/tas_Amon_ACCESS1-0_historical_r1i1p1_185001-200512.nc

	proj, etc, insti, model, exp, run, freq, var, grd, ver, fname = 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none'

	if project == 'cmip5':
		
		proj, exp, freq, var, model, run, fname = parts[:]
		
	if project == 'cmip6':
				
		proj, etc, insti, model, exp, run, freq, var, grd, ver, fname = parts[:]


	info = '{0}_{1}_{2}_{3}_{4}_{5}_{6}_{7}_{8}_{9}'.format(proj, etc, insti, model, exp, run, freq, var, grd, ver)

	if info not in bigdic:
		bigdic[info] = [fname]
	else:
		bigdic[info] = bigdic[info] + [fname]


# Use the dictionary to find the desired model files by experiment and variable 

print('\n# Listing files by model\n')

for a in bigdic:
	
	proj, etc, insti, model, exp, run, freq, var, grd, ver = a.split('_')

	fnames = bigdic[a]

	if var in ['tas', 'ua']:

		print('\n\n\nKEY -->', a, '\n')

		for i in fnames:

			if project == 'cmip5': args = '{0}/{1}/{2}/{3}/{4}/{5}'.format(proj, exp, freq, var, model, run)
			if project == 'cmip6': args = '{0}/{1}/{2}/{3}/{4}/{5}/{6}/{7}/{8}/{9}'.format(proj, etc, insti, model, exp, run, freq, var, grd, ver)

			sufix = '2p5dg_jja'

			full_path_in = '{}{}'.format(main_dir, args).replace('/none','')
			full_path_ou = '../data/{0}/{1}/{2}_{3}'.format(project, exp, var, sufix)

			full_file_in = '{0}/{1}'.format(full_path_in, i)
			full_file_ou = '{0}/{1}_{2}.nc'.format(full_path_ou, i[:-3], sufix)
			if freq == 'day': 
				full_file_ou = '{0}/{1}_{2}.nc'.format(full_path_ou, i[:-14].replace('_day_','_Amon_')+i[-12:-5], sufix) # removing the day from file dates

			if not os.path.exists(full_path_ou):
				os.makedirs(full_path_ou)

			if freq == 'day':  cmd_mon = '-monmean'
			if freq == 'Amon': cmd_mon = ''
	
			if var == 'tas':
				cmd = 'cdo -s -O seasmean -remapbil,griddes-2.5deg {3} -selmonth,6,7,8                 -selname,{2} {0} {1}'.format(full_file_in, full_file_ou, var, cmd_mon)
			if var == 'ua':
				cmd = 'cdo -s -O seasmean -remapbil,griddes-2.5deg {3} -selmonth,6,7,8 -sellevel,30000 -selname,{2} {0} {1}'.format(full_file_in, full_file_ou, var, cmd_mon)


			sdate = fnames[ 0].split('_')[-1].split('-')[0]       # 185001
			fdate = fnames[-1].split('_')[-1].split('-')[-1][:-3] # 201412
			
			fbody = fnames[0].split(sdate)[0].replace('_day_','_Amon_')

			full_file_in_cat = '{0}/{1}*_{2}.nc'      .format(full_path_ou, fbody, sufix)  # 
			full_file_ou_cat = '{0}/{1}{2}-{3}_{4}.nc'.format(full_path_ou, fbody, sdate[:6], fdate[:6], sufix)  # 
			
			full_file_ou_cat_2 = '{0}/{1}{2}-{3}_{4}.nc'.format(full_path_ou, fbody, '185001', fdate[:6], sufix)  # this is to avoid create a new file from 'day' shorter than from 'Amon'

			
			if os.path.exists(full_file_ou_cat):
				print('Exists -->', full_file_ou_cat)
				break

			elif os.path.exists(full_file_ou_cat_2):
				print('Exists -->', full_file_ou_cat_2)
				break

			elif not os.path.exists(full_file_ou) and not os.path.exists(full_file_ou_cat):

				print('cmd -->', cmd)
				os.system(cmd)

				if os.path.exists(full_file_ou): 
					print('Done -->', full_file_ou)
				else:
					print('Fail -->', full_file_ou)

					cmd = cmd.replace('30000', '25000')
					print('alternative -->', cmd)
					os.system(cmd)

					if os.path.exists(full_file_ou):
						print('Done -->', full_file_ou)
					else:
						print('Fail -->', full_file_ou)

			elif os.path.exists(full_file_ou):
				print('Exists -->', full_file_ou)


		if len(fnames) > 1:

			cmd = 'cdo -O cat {0} {1}_tmp ; rm -rf {0} ; mv -v {1}_tmp {1}'.format(full_file_in_cat, full_file_ou_cat)

			if not os.path.exists(full_file_ou_cat):

				print('cmd -->', cmd)
				os.system(cmd)

				if os.path.exists(full_file_ou_cat):
					print('Done -->', full_file_ou_cat)
				else:
					print('Fail -->', full_file_ou_cat)

			else:
				print('Exists -->', full_file_ou_cat)



















