################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to check models data.
#
################################################################################

import os
import warnings
import numpy as np
import xarray as xr
from glob import glob
warnings.filterwarnings("ignore")
np.set_printoptions(precision=1, suppress=1, linewidth=500)

print()
print()
print('CHECK NCS')
print()

# MODELS 

prj = 'cmip5'
exp = 'historical'
# exp = 'rcp85'
var = 'tas'
# var = 'ua'

# prj = 'cmip6'
# exp = 'historical'
# exp = 'ssp585'
# exp = 'ssp370'
# var = 'tas'
# var = 'ua'

sufix = 'jja'
# sufix = 'jja_zonmean'
# sufix = 'jja_zonmean_lat-25n-75n'
     
dir_in = '../data/{0}/{1}/{2}_2p5dg_{3}'.format(prj, exp, var, sufix)
names  = '{0}/{3}_Amon_*_{2}_*_2p5dg_{4}.nc'.format(dir_in, prj, exp, var, sufix)

files = glob( names )
files.sort()


print('Checking -->', names, '['+str(len(files))+']')
print()

if len(files) == 0:
    print('not found --> {0}'.format(names))
    exit()

for fin in files:
    
    ds  = xr.open_dataset(fin, decode_times=False) 
    dat = np.squeeze(ds[var].data)
    # lat = ds['lat'].data
    # lon = ds['lon'].data
    # print('input -->', dat.shape, fin)
    
    dates = fin.split('_2p5dg_')[-2].split('_')[-1].split('-')
    y1 = int(dates[0][:4])
    m1 = int(dates[0][4:6])
    y2 = int(dates[1][:4])
    
    nc_len = dat.shape[0]
    yr_len = len(range(y1,y2+1))
        
    if nc_len != yr_len and m1 != 12:
        print('')
        print('input -->', dat.shape, fin)
        print('Problem in time axis --> {} - {} ({} steps) --> but {} netcdf steps'.format( y1, y2, yr_len, nc_len) )
       


# Checar duplicados
print()
print('CHECK NCS DUPLICADOS')
print()

for fin in files:
    
    body = fin.split('_2p5dg_{}.nc'.format(sufix))[0][:-13]+'*_2p5dg_{}.nc'.format(sufix)

    dup = glob( body )
    
    if len(dup) > 1:
        print()
        for i in dup:
            print(i)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
