################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP QRA index data trend (orig -> 2.5dg -> JJA mean -> 25n-75n -> anom -> QRA index) and plot map.
# This is to reproduce figure 4 from Mann et al 2018.
# 
################################################################################

import os
from mpl_toolkits.basemap import Basemap
import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from netCDF4 import Dataset


print('')
print('')
print('')
print('++ QRA INDEX trend maps')


for exp in ['cmip5', 'cmip6']:
	

	if exp in ['cmip5']: subex = ['rcp85']
	if exp in ['cmip6']: subex = ['ssp585', 'ssp370']

	exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012'}, 
				  'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012', 'ssp370':'201501-210012'} }
	
	var = 'tas'
		
	for subexp in subex:

		for trend in ['ens-all', 'ens-10-lower', 'ens-10-upper']:
				
			for time_period in ['2015-2050', '2051-2100']:
		
			
				print('')
				print('')
				print('++ {} {} --> {} {}'.format(exp.upper(), subexp, time_period, trend))
				print('')    
				
                
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
				
				dir_in_trend = '../data/{0}/trend_analysis_continuous'.format(exp)
				
				dir_ou_figs  = '../figures/trend_analysis_continuous'
				
				if not os.path.exists(dir_ou_figs): os.makedirs(dir_ou_figs)
				
				fname = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja_regress.nc'.format(dir_in_trend, exp, subexp, 'tas', trend, 'r1i1p1', yr1, yr2)

				print('input -->', fname)
				print()
				

				ncfile = Dataset(fname, 'r', format='NETCDF4')
				dat = ncfile.variables['tas'][0]
				lon = ncfile.variables['lon'][:]
				lat = ncfile.variables['lat'][:]
				ncfile.close()

				# print('dat -->', dat.shape)
				# print('lat -->', lat.shape)
				# print('lon -->', lon.shape)

				# This part is to fix the drawing bug that shows blank sector between the first lon and the last lon
				dat = np.concatenate((dat, dat[:,0:1 ]), axis=1)
				lon = np.append(lon, lon[0])


				# Basemap part

				m = Basemap(projection='ortho', lat_0=90, lon_0=260, resolution='l')
				m.drawcoastlines()
				m.drawcountries()
				m.drawparallels(np.arange(-80.,80.,20.),   linewidth=0.2, dashes=[4,4])
				m.drawmeridians(np.arange(-180.,181.,20.), linewidth=0.2)
										
				# plot data

				lonp, latp = np.meshgrid(lon, lat)
				x, y = m(lonp, latp)

				cmap = (mpl.colors.ListedColormap(['white', 'yellow', 'gold', 'orange', 'darkorange','orangered', 'r', 'crimson', 'brown', 'darkred', 'k']))
				bounds = np.arange(0, 0.11, 0.01)
				norm = mpl.colors.BoundaryNorm(bounds, cmap.N)

				m.contourf(x, y, dat, bounds, origin='upper', cmap=cmap, extend='both')

				m.colorbar(location='bottom', label='Beta values (°C/year)')

				################################ 
				# make external circle contour
				llla = np.array([6]*360)
				lllo = np.array(range(0,360))
				xc, yc = m(lllo, llla)
				m.plot(xc, yc, marker=None, color='k', lw=2)
				################################

			   
				figname  = '{0}/map_{1}_{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja_regress_continuous.png'.format(dir_ou_figs, exp, subexp, 'tas', trend, 'r1i1p1', yr1, yr2)

				if trend == 'ens-all':      figtitle = 'TAS trend (JJA seasonal mean)\n{} {} {}-{}\nAll Models'  .format(exp.upper(), subexp.upper(), yr1, yr2)
				if trend == 'ens-10-lower': figtitle = 'TAS trend (JJA seasonal mean)\n{} {} {}-{}\nNegative QRA'.format(exp.upper(), subexp.upper(), yr1, yr2)
				if trend == 'ens-10-upper': figtitle = 'TAS trend (JJA seasonal mean)\n{} {} {}-{}\nPositive QRA'.format(exp.upper(), subexp.upper(), yr1, yr2)

				plt.title(figtitle)
				plt.tight_layout()
				plt.savefig(figname, bbox_inches='tight')
				plt.close()

				if os.path.exists(figname): 
					print('done -->', figname)
				
                
                
                
                
                
                
                
                
                

