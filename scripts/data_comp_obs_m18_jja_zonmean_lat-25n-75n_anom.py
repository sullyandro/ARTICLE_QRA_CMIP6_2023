################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get Mann et al 2018 data, save as nc, compute latbands, and anomaly (M18 method).
#
# Mann et al 2018 anomaly method:
#	
# 1 T_CLIM	--> Climatology avg [1979-2005 JJA 25N-75N 5dg] 			--> dimensions (1 time, 11 lat)
# 2 T_OBS	--> Temperature series [1861-2005 JJA 25N-75N 5dg] 			--> dimensions (145 time, 11 lat)
# 3 T_OBS_ANOM = (T_OBS - T_CLIM) - mean(T_OBS - T_CLIM)				--> dimensions (145 time, 11 lat)
# 
################################################################################

import os
import scipy
import warnings
import numpy as np
import xarray as xr
from CreateNetCDF4 import nc4
warnings.filterwarnings("ignore")


print('')
print('ERA Interim - Climatology data')
print('')

# Creating netcdf from dat

fin = '../data/Mann_etal_2018/T_clim_JJA_NH_ERA.dat'
fou = '../data/Mann_etal_2018/T_clim_JJA_NH_ERA_2p5dg.nc'

tas = np.expand_dims(np.loadtxt(fin, delimiter=',', dtype=float), axis=(0,2))
lat = np.arange(0,91,2.5)
lon = np.array([0])

nc4(tas, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1979-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
		
# Creating latbands folloing Mann etal 2017-2018

fin = '../data/Mann_etal_2018/T_clim_JJA_NH_ERA_2p5dg.nc'
fou = '../data/Mann_etal_2018/T_clim_JJA_NH_ERA_2p5dg_lat-25n-75n.nc'

ds  = xr.open_dataset(fin, decode_times=False)
tas = ds['tas'].data[0,:,0] 
lat = ds['lat'].data
lon = ds['lon'].data

lat_smooth = []
tas_smooth = []
for i in range(1, len(lat)-1):
    
    lat_smooth.append( lat[i] )
    tas_smooth.append( 0.25 * ( tas[i-1] + 2*tas[i] + tas[i+1] ) )

lat_smooth = np.array(lat_smooth)
tas_smooth = np.array(tas_smooth)
l1 = np.where((lat_smooth >= 25.) & (lat_smooth <= 75.))
lat_5dg = lat_smooth[l1][::2]
tas_5dg = tas_smooth[l1][::2]
tas_cli = np.expand_dims(tas_5dg[:], axis=(0,2))

nc4(tas_cli, lat_5dg, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1979-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
	    

print('')
print('ERA Interim - QRA data')
print('')

# Creating netcdf from dat

fin = '../data/Mann_etal_2018/T_QRA_JJA_NH_ERA.dat'
fou = '../data/Mann_etal_2018/T_QRA_JJA_NH_ERA_2p5dg.nc'

tas = np.expand_dims(np.loadtxt(fin, delimiter=',', dtype=float), axis=(0,2))
lat = np.arange(0,91,2.5)
lon = np.array([0])

nc4(tas, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1979-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
		
# Creating latbands following Mann etal 2017-2018

fin = '../data/Mann_etal_2018/T_QRA_JJA_NH_ERA_2p5dg.nc'
fou = '../data/Mann_etal_2018/T_QRA_JJA_NH_ERA_2p5dg_lat-25n-75n.nc'

ds  = xr.open_dataset(fin, decode_times=False)
tas = ds['tas'].data[0,:,0] 
lat = ds['lat'].data
lon = ds['lon'].data

lat_smooth = []
tas_smooth = []
for i in range(1, len(lat)-1):
    
    lat_smooth.append( lat[i] )
    tas_smooth.append( 0.25 * ( tas[i-1] + 2*tas[i] + tas[i+1] ) )

lat_smooth = np.array(lat_smooth)
tas_smooth = np.array(tas_smooth)
l1 = np.where((lat_smooth >= 25.) & (lat_smooth <= 75.))
lat_5dg = lat_smooth[l1][::2]
tas_5dg = tas_smooth[l1][::2]
tas_qra = np.expand_dims(tas_5dg[:], axis=(0,2))

nc4(tas_qra, lat_5dg, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1979-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)


print('')
print('ERA Interim - QRA Anomaly')
print('')

fou = '../data/Mann_etal_2018/T_QRA_JJA_NH_ERA_2p5dg_lat-25n-75n_anom.nc'

tas_anom = (tas_qra - tas_cli) - np.nanmean(tas_qra - tas_cli)

tas_anom_zero_mean = tas_anom - np.nanmean(tas_anom)
tas_anom_zero_mean = np.expand_dims(tas_anom_zero_mean, axis=(0,2))

nc4(tas_anom_zero_mean, lat_5dg, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1979-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)



print('')
print('GISSTEMP')
print('')

# Temperature data

fin = '../data/Mann_etal_2018/GISTEMP_latband_2017.mat'   # 1880-2016
fou = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n.nc'

mat = scipy.io.loadmat(fin)
tas = mat['lattemp']      # (11, 137)
yrs = mat['saveyr' ][:,0]
lat = mat['savelat'][0,:]
tas = np.expand_dims(np.swapaxes(tas, 1, 0), axis=2) # (137, 11, 1)

nc4(tas, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1880-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)

# Climatology

j1 = 1979-1880
j2 = 2015-1880+1
tas_cli  = np.nanmean(tas[j1:j2,...], axis=0) # (11,1) over 1979-2015

# Anomaly

tas_anom = (tas - tas_cli) - np.nanmean(tas - tas_cli) # (137, 11, 1)

fou = '../data/Mann_etal_2018/GISTEMP_latband_2017_1880-2016_jja_lat-25n-75n_anom.nc'

nc4(tas_anom, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1880-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
	


print('')
print('HadCRUT')
print('')

# Temperature data

fin = '../data/Mann_etal_2018/HadCRUT_latband_2017.mat'   # 1850-2016
fou = '../data/Mann_etal_2018/HadCRUT_latband_2017_1850-2016_jja_lat-25n-75n.nc'

mat = scipy.io.loadmat(fin)
tas = mat['lattemp_int']      # (11, 167)
yrs = mat['saveyr' ][:,0]
lat = mat['savelat'][0,:]

tas = np.expand_dims(np.swapaxes(tas, 1, 0), axis=2) # (167, 11, 1)

nc4(tas, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1850-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
	
# Climatology

j1 = 1979-1850
j2 = 2015-1850+1
tas_cli  = np.nanmean(tas[j1:j2,...], axis=0) # (11,1) over 1979-2015

# Anomaly

tas_anom = (tas - tas_cli) - np.nanmean(tas - tas_cli) # (137, 11, 1)

fou = '../data/Mann_etal_2018/HadCRUT_latband_2017_1850-2016_jja_lat-25n-75_anom.nc'

nc4(tas_anom, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1850-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)

    
    
print('')
print('Cowtan & Way')
print('')

# Temperature data

fin = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017.mat'   # 1850-2016
fou = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017_1850-2016_jja_lat-25n-75n.nc'

mat = scipy.io.loadmat(fin)
tas = mat['lattemp_int']      # (11, 167)
yrs = mat['saveyr' ][:,0]
lat = mat['savelat'][0,:]

tas = np.expand_dims(np.swapaxes(tas, 1, 0), axis=2) # (167, 11, 1)

nc4(tas, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1850-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
	
# Climatology

j1 = 1979-1850;
j2 = 2015-1850+1;
tas_cli  = np.nanmean(tas[j1:j2,...], axis=0) # (11,1) over 1979-2015

# Anomaly

tas_anom = (tas - tas_cli) - np.nanmean(tas - tas_cli) # (137, 11, 1)

fou = '../data/Mann_etal_2018/HadCRUT_krig_latband_2017_1850-2016_jja_lat-25n-75n_anom.nc'

nc4(tas_anom, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since 1850-07-15 00:00')
if os.path.exists(fou):
	print('done -->', fou)
	








