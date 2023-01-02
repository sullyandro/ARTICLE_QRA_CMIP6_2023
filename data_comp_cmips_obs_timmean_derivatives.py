################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data (2.5dg, JJA mean, zonmean) and compute derivatives.
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
from CreateNetCDF4 import nc4
from derivative_in_arrays import derivative_in_arrays 
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=0, suppress=1, linewidth=500)

print()
print()
print('COMPUTE DERIVATIVES')


for exp in ['era-interim', 'cmip5', 'cmip6']:
# for exp in ['cmip5']:
    
    for var in ['tas', 'ua']:

        print()
        print('Running -->', exp, var)

        if exp in ['era-interim']:    subexp = ''
        if exp in ['cmip5', 'cmip6']: subexp = 'historical'

        files = glob( '../data/{0}/{1}/{2}*/{2}_*_2p5dg_jja_zonmean_timmean-1979-*.nc'.format(exp, subexp, var) )
        files.sort()

        for fin in files:
            
            ds  = xr.open_dataset(fin, decode_times=False)
            dat = np.squeeze(ds[var].data)
            lat = ds['lat'].data
            lon = ds['lon'].data

            print()
            print('input -->', dat.shape, fin)

            dg_to_rad = 180/np.pi
            
            d1_var_dy = derivative_in_arrays(      dat, lat, method='backward', scale_factor=dg_to_rad)
            d2_var_dy = derivative_in_arrays(d1_var_dy, lat, method='forward',  scale_factor=dg_to_rad)
            d1_var_dy = np.expand_dims(d1_var_dy, axis=(0,2))
            d2_var_dy = np.expand_dims(d2_var_dy, axis=(0,2))
            
            # print('lat       -->', lat)
            # print('var       -->', dat)
            # print('d1_var_dy -->', d1_var_dy)
            # print('d2_var_dy -->', d2_var_dy)
            
            # Saving netcdf
            if var == 'tas':
                
                fou_d1 = fin[:-3] + '_dTASdy.nc'
                fou_d2 = fin[:-3] + '_d2TASdy2.nc'

                nc4(d1_var_dy, lat, lon, vvar='tas', fname=fou_d1, vlname='tas', vunints='K/rad',   tunits='years since 1979-07-15 00:00')
                nc4(d2_var_dy, lat, lon, vvar='tas', fname=fou_d2, vlname='tas', vunints='K/rad^2', tunits='years since 1979-07-15 00:00')
                
            if var == 'ua':
                
                fou_d1 = fin[:-3] + '_dUAdy.nc'
                fou_d2 = fin[:-3] + '_d2UAdy2.nc'
                                
                nc4(d1_var_dy, lat, lon, vvar='ua', fname=fou_d1, vlname='ua', vunints='m/(s*rad)',   tunits='years since 1979-07-15 00:00')
                nc4(d2_var_dy, lat, lon, vvar='ua', fname=fou_d2, vlname='ua', vunints='m/(s*rad^2)', tunits='years since 1979-07-15 00:00')
                
            
            if os.path.exists(fou_d1): print('done -->', fou_d1)
            if os.path.exists(fou_d2): print('done -->', fou_d2)

            
            
            # input()
            
            # exit()
            
            
            
            
