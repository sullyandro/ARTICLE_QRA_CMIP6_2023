################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Function to create netcdf.
#
################################################################################

from netCDF4 import Dataset
import numpy as np


def nc4(data, lat, lon, **kwargs):
	
    """
    Creates a 3d netcdf4.

    param data: Numpy array with 3 dimensions: time, lat, lon
    param  lat: Numpy array with latitudes
    param  lon: Numpy array with longitudes
    
    Optional paramentros:
    vvar       = variable name;
    vlname     = variable long name;
    vunits     = variable unit. Ex: mm, K, C;
    itime      = time steps range ([0, 1, 2]) or the ponctual step. Ex: [0, 1, 2] or 10;
    nmissvalue = missing value ;
    ccomment   = comments;
    ccalendar  = calendar type. Ex: default is 'calendar'
    fname      = output name. Ex: out.nc;
    tunits     = time units. Ex:
                 days since 2015-02-01 00:00:00
                 months since 2015-02-01 00:00:00
                 years since 2015-02-01 00:00:00

	"""
				
    vunits     = kwargs.pop('vunits', 'No Units')
    vvar       = kwargs.pop('vvar', 'var')
    vlname     = kwargs.pop('vlname', 'Variable Long Name')
    itime      = kwargs.pop('itime', range(data.shape[0]))
    nmissvalue = kwargs.pop('nmissvalue', -999)
    ccomment   = kwargs.pop('ccomment', 'No Comments')
    ccalendar  = kwargs.pop('ccalendar', 'standard')
    fname      = kwargs.pop('fname', 'out.nc')
    tunits     = kwargs.pop('tunits', False)

    foo = Dataset(fname, 'w', format='NETCDF4_CLASSIC')

    foo.createDimension('time', None)
    foo.createDimension('lat', len(lat))
    foo.createDimension('lon', len(lon))

    lats = foo.createVariable('lat', 'f4', ('lat'), zlib=True)
    lats.units = 'degrees_north'
    lats.long_name = 'lat'
    lats.axis = "Y"
    lats[:] = lat[:]

    lons = foo.createVariable('lon', 'f4', ('lon'), zlib=True)
    lons.units = 'degrees_east'
    lons.long_name = 'lon'
    lons.axis = "X"
    lons[:] = lon[:]

    times = foo.createVariable('time', 'f4', ('time'), zlib=True)
    if tunits:
        times.units = tunits
    times.calendar = ccalendar
    times.standard_name = "time"
    times[:] = itime

    var = foo.createVariable(vvar, float, ('time', 'lat', 'lon'),
                             zlib=True )
    var.units = vunits
    var.long_name = vlname
    var.missing_value = nmissvalue
    var[:] = data[:]

    foo.comment = ccomment

    foo.close()

