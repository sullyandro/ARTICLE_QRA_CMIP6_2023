################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   Python3
#
# Description:
# Script to get CMIP data as latband (orig -> 2.5dg -> JJA mean -> 25n-75n -> anom -> QRA index) and compute trend.
# This is to reproduce figure 4 from Mann et al 2018.
#
################################################################################


import os
import scipy
import warnings
import numpy as np
import xarray as xr
import matplotlib as mpl
import matplotlib.pyplot as plt
from glob import glob
from scipy.stats import linregress
from CreateNetCDF4 import nc4
plt.style.use('classic')
warnings.filterwarnings("ignore")
np.set_printoptions(precision=5, suppress=1, linewidth=500)


print('')
print('')
print('')
print('++ QRA INDEX trend calculation')
print('')


print('')
print('')
print('')
print('-----------------------------------------------------------------')
print('-----------------------------------------------------------------')
print('+ CMIP5 and CMIP6 ')
print('')


for trend in [ [2015,2050], [2051,2100] ]:
        

    for exp in ['cmip5', 'cmip6']:
        

        if exp in ['cmip5']: subex = ['rcp85'] 
        if exp in ['cmip6']: subex = ['ssp585']

        exp_dates = { 'cmip5':{'historical':'185001-200512',  'rcp85':'200601-210012'}, 
                      'cmip6':{'historical':'185001-201412', 'ssp585':'201501-210012'} }
        
        var = 'tas'
            
        for subexp in subex:

            print('')
            print('')
            print('+ {} {} --> Trend {}-{}'.format(exp.upper(), subexp, trend[0], trend[1]))
            print('')    
            
            # input()

            period = exp_dates[exp][subexp]
            iyr = int(period[0:4])
            fyr = int(period[7:11])
            
            yr1 = trend[0]
            yr2 = trend[1]
                
            dir_in       = '../data/{0}/{1}/{2}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex'.format(exp, subexp, var)
            dir_in_globe = '../data/{0}/{1}/{2}_2p5dg_jja'.format(exp, subexp, var)
            
            dir_ou_figs  = '../figures/trend_analysis'
            dir_ou_figsm = '../figures/trend_analysis/{0}_{1}_{2}-{3}'.format(exp, subexp, yr1, yr2)
            dir_ou_trend = '../data/{0}/trend_analysis'.format(exp)

            if not os.path.exists(dir_ou_figs):  os.makedirs(dir_ou_figs)
            if not os.path.exists(dir_ou_figsm): os.makedirs(dir_ou_figsm)
            if not os.path.exists(dir_ou_trend): os.makedirs(dir_ou_trend)

            # Temperature QRAindex from models

            fnames = '{0}/{3}_Amon_*_{2}_*_{4}_2p5dg_jja_zonmean_lat-25n-75n_QRAindex.nc'.format(dir_in, exp, subexp, var, period)
            print('fnames -->', fnames)
            files = glob(fnames)
            files.sort()
            
            names = []
            qra_slope_all = {}
            qra_slope_names = []
            qra_slope_value = []
            dat_period = {}

            ct = 0
            
            # MODELS
            for a in files:
                
                if 'ENSEMBLE-MEAN' in a: continue
                    
                fname = a.split('/')[-1]
                
                if exp == 'cmip5': model = fname.split('_')[4] + "_" + fname.split('_')[2]
                if exp == 'cmip6': model = fname.split('_')[4] + "_" + fname.split('_')[5] + "_" + fname.split('_')[2]
                
                if exp == 'cmip5': model_run = fname.split('_')[2] + "_" + fname.split('_')[4]
                if exp == 'cmip6': model_run = fname.split('_')[2] + "_" + fname.split('_')[4] + "_" + fname.split('_')[5]
                    
                ds  = xr.open_dataset(a, decode_times=False)
                dat = np.squeeze(ds['tas'].data)
                lat = ds['lat'].data
                lon = ds['lon'].data
                qra_index_mod = dat[:]
                
                print('imput -->', dat.shape, a)
                
                # Period for the trend
                l1 = yr1 - iyr
                l2 = yr2 - iyr + 1
                                
                y_for_regress = qra_index_mod[l1:l2]
                x_for_regress = range(1, len(qra_index_mod[l1:l2])+1)
                
                x_for_plt = range(yr1, yr1+len(qra_index_mod[l1:l2]))
                
                # print()
                # print('x')
                # print(x_for_regress)
                # print()
                # print('y')
                # print(y_for_regress)
                # print()
                                
                slope, intercept, r, p, se = linregress(x_for_regress, y_for_regress)
                
                slope = slope + ct
                
                ct += 0.000000000000001  # this was necessary to not bug the ecdf and plot
                				
				# print()
				# print( 'slope     -->', slope)
				# print( 'intercept -->', intercept)
				# print( 'r         -->', r)
				# print( 'p         -->', p)
				# print( 'se        -->', se)
				# print()
                                
                qra_slope_all[model] = slope
                qra_slope_names.append(model)
                qra_slope_value.append(slope)
                
                fx = slope*x_for_regress + intercept
                if intercept>=0:
                    eq_lab = 'Trend: {}x + {}'.format(round(slope,3), round(intercept,3))
                if intercept<0:
                    eq_lab = 'Trend: {}x - {}'.format(round(slope,3), -1*round(intercept,3))
                    
                if 1:
                    
                    # Plots for each model trend       
                                 
                    figname = '{0}/plot_tas_qraindex_trend_{1}_{2}_{3}-{4}_{5}.png'.format(dir_ou_figsm, exp, subexp, yr1, yr2, model_run)
                        
                    plt.plot(x_for_regress, y_for_regress, label=model)
                    plt.plot(x_for_regress, fx, label=eq_lab)
                    plt.xticks(x_for_regress[::5], x_for_plt[::5])
                    plt.legend(loc='upper left')
                    plt.title('TAS QRA index - {} {}'.format(exp.upper(), subexp.upper()))
                    plt.tight_layout()
                    plt.subplots_adjust(right=0.7)
                    plt.savefig(figname, bbox_inches='tight')
                    plt.close()
                    if os.path.exists(figname): print('done -->', figname)
                
            
            print()
            print()
            print('####################')
            print(qra_slope_all)	
            print()
            print('####################')
            print(qra_slope_names)	
            print()
            print('####################')
            print()
            for i in range(len(qra_slope_value)):
                print(i, qra_slope_value[i], qra_slope_names[i])
            print()
            print()
            
                            
            def ecdf(a):
                """
                function to calculate the empirical cdf.
                """
                x, counts = np.unique(a, return_counts=True)
                w, re_inv = np.unique(a, return_inverse=True)
                h, re_ind = np.unique(a, return_index=True)
                cusum = np.cumsum(counts)
                ecdf_y  = (cusum / cusum[-1])*100
            
                return x, ecdf_y, re_inv, re_ind
                
                
            ecdf_x, ecdf_y, re_inv, re_ind = ecdf(qra_slope_value)
            
            print()
            print()
            
            
            # Plot of the ECDF with all models
                        
            figname = '{}/plot_tas_qraindex_trend_{}_{}_{}-{}_ecdf.png'.format(dir_ou_figs, exp, subexp, yr1, yr2)
            
            models_slope_10lower = []
            models_slope_10upper = []
            
            for k in range(len(re_ind)):
                
                i = np.where(re_ind == k)[0][0]
                
                print('---->', k, i, ecdf_x[i], ecdf_y[i], qra_slope_names[k])
                            
                if      ecdf_y[i] <= 10: 
                    color = 'green'
                    models_slope_10lower.append(qra_slope_names[k])
                if 10 < ecdf_y[i] <  90: 
                    color = 'gray'
                if      ecdf_y[i] >= 90: 
                    color = 'red'
                    models_slope_10upper.append(qra_slope_names[k])

                if k+1 < 10: 
                    adx = 0.0015
                    label='{}  {}'.format(k+1, qra_slope_names[k])
                    
                if k+1 >= 10: 
                    adx = 0.0025
                    label='{} {}'.format(k+1, qra_slope_names[k])
                
                plt.scatter(ecdf_x[i], ecdf_y[i], marker='o', color=color, label=label, s=10**2, alpha=0.8, lw=0)

                plt.text(ecdf_x[i]-adx, ecdf_y[i]-0.75, str(k+1), fontsize=6)#, label=qra_slope_names[re_inv])

            if exp == 'cmip5': 
                # plt.xlim(-0.05,0.23)
                ncol=2
            if exp == 'cmip6': 
                # plt.xlim(-0.03,0.23)
                ncol=2

            plt.legend(loc='center left', bbox_to_anchor=(1.01, 0.5), 
                        prop={'family': 'monospace', 'size':6}, ncol=ncol, markerscale=1., 
                        scatterpoints=1, handletextpad=-1.5)# , labelspacing=3)
            plt.grid(True)
            plt.ylim(-2,102)
            plt.xlim(-0.1,0.23)	
            plt.yticks(range(0,101,10), range(0,101,10))
            plt.xlabel('Models trend slope')
            plt.ylabel('Empirical CDF (%)')
            plt.title( 'TAS QRA index - {} {} {}-{}'.format(exp.upper(), subexp.upper(), yr1, yr2) )
            plt.tight_layout()
            plt.subplots_adjust(right=0.7)
            plt.savefig(figname, bbox_inches='tight', dpi=200)
            plt.close()
            if os.path.exists(figname): 
                print('\ndone -->', figname)
                
                
                
            # Get tas from the 10% of models toward lower trend, then
            # - Calculate mean
            # - Calculate regression coeficient for each grid point
            # - Save these as netcdf to create a map
            print()	
            print()	
            print('Models 10 lower -->', models_slope_10lower)	
            
            dat_slope_10lower = []
            
            for a in models_slope_10lower:
                
                print()
                                
                if exp == 'cmip5': 
                    
                    run,       model = a.split('_')
                    
                    fname = '{0}/{3}_Amon_{5}_{2}_{6}_*_2p5dg_jja.nc'.format(dir_in_globe, exp, subexp, var, period, model, run)
                
                if exp == 'cmip6': 
                    
                    run, grid, model = a.split('_')
                    
                    fname = '{0}/{3}_Amon_{5}_{2}_{6}_{7}_*_2p5dg_jja.nc'.format(dir_in_globe, exp, subexp, var, period, model, run, grid)
                    
                            
                print('fname -->', fname)
                fin = glob(fname)[0]
                
                print('file  -->', fin)
                
                
                ds  = xr.open_dataset(fin, decode_times=False)
                dat = np.squeeze(ds['tas'].data)[l1:l2,:,:]
                lat = ds['latitude'].data
                lon = ds['longitude'].data
                
                print('imput -->', dat.shape, a)
                
                dat_slope_10lower.append(dat)
                
            dat_slope_10lower = np.nanmean(np.array(dat_slope_10lower), axis=0)
            
            dat_slope_10lower_regress = np.full((1, len(lat), len(lon)), np.nan)
            
            for i in range(len(lat)):
                
                for j in range(len(lon)):
                    
                    dat_slope_10lower_regress[0, i, j], intercept, r, p, se = linregress(x_for_regress, dat_slope_10lower[:, i, j])
                
            
            print()
            print('mean -->', dat_slope_10lower.shape)
                        
            fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja.nc'.format(dir_ou_trend, exp, subexp, 'tas', 'ens-10-lower', 'r1i1p1', yr1, yr2)
            
            # Saving netcdf            
            nc4(dat_slope_10lower, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since {}-07-15 00:00'.format(yr1))
            if os.path.exists(fou):
                print('done -->', fou)

            
            print()
            print('regress -->', dat_slope_10lower_regress.shape)
            
            fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja_regress.nc'.format(dir_ou_trend, exp, subexp, 'tas', 'ens-10-lower', 'r1i1p1', yr1, yr2)
            
            # Saving netcdf
            nc4(dat_slope_10lower_regress, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='Celsius/year', tunits='years since {}-07-15 00:00'.format(yr1))
            if os.path.exists(fou):
                print('done -->', fou)
                

            # Get tas from the 10% of models toward upper trend, then
            # - Calculate mean
            # - Calculate regression coeficient for each grid point
            # - Save these as netcdf to create a map  
            print()	
            print()	
            print('Models 10 upper -->', models_slope_10upper)	

            dat_slope_10upper = []
            
            for a in models_slope_10upper:
                
                print()
                 
                if exp == 'cmip5': 
                    
                    run,       model = a.split('_')
                    
                    fname = '{0}/{3}_Amon_{5}_{2}_{6}_*_2p5dg_jja.nc'.format(dir_in_globe, exp, subexp, var, period, model, run)
                
                if exp == 'cmip6': 
                    
                    run, grid, model = a.split('_')
                    
                    fname = '{0}/{3}_Amon_{5}_{2}_{6}_{7}_*_2p5dg_jja.nc'.format(dir_in_globe, exp, subexp, var, period, model, run, grid)
                    
                            
                print('fname -->', fname)
                fin = glob(fname)[0]
                
                print('file  -->', fin)
                
                
                ds  = xr.open_dataset(fin, decode_times=False)
                dat = np.squeeze(ds['tas'].data)[l1:l2,:,:]
                lat = ds['latitude'].data
                lon = ds['longitude'].data
                
                print('imput -->', dat.shape, a)
                
                dat_slope_10upper.append(dat)
                
            dat_slope_10upper = np.nanmean(np.array(dat_slope_10upper), axis=0)
            
            dat_slope_10upper_regress = np.full((1, len(lat), len(lon)), np.nan)
            
            for i in range(len(lat)):
                
                for j in range(len(lon)):
                    
                    dat_slope_10upper_regress[0, i, j], intercept, r, p, se = linregress(x_for_regress, dat_slope_10upper[:, i, j])
                
                
            print()
            print('mean -->', dat_slope_10upper.shape)
                        
            fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja.nc'.format(dir_ou_trend, exp, subexp, 'tas', 'ens-10-upper', 'r1i1p1', yr1, yr2)
            
            # Saving netcdf            
            nc4(dat_slope_10upper, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since {}-07-15 00:00'.format(yr1))
            if os.path.exists(fou):
                print('done -->', fou)


            print()
            print('regress -->', dat_slope_10upper_regress.shape)
                        
            fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja_regress.nc'.format(dir_ou_trend, exp, subexp, 'tas', 'ens-10-upper', 'r1i1p1', yr1, yr2)
            
            # Saving netcdf            
            nc4(dat_slope_10upper_regress, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='Celsius/year', tunits='years since {}-07-15 00:00'.format(yr1))
            if os.path.exists(fou):
                print('done -->', fou)

            

            # Get tas from all models, then
            # - Calculate mean
            # - Calculate regression coeficient for each grid point
            # - Save these as netcdf to create a map
            print()	
            print()	
            print('Models ENSEMBLE -->', qra_slope_names)	

            dat_slope_ens = []
            
            for a in qra_slope_names:
                
                print()
                 
                if exp == 'cmip5': 
                    
                    run,       model = a.split('_')
                    
                    fname = '{0}/{3}_Amon_{5}_{2}_{6}_*_2p5dg_jja.nc'.format(dir_in_globe, exp, subexp, var, period, model, run)
                
                if exp == 'cmip6': 
                    
                    run, grid, model = a.split('_')
                    
                    fname = '{0}/{3}_Amon_{5}_{2}_{6}_{7}_*_2p5dg_jja.nc'.format(dir_in_globe, exp, subexp, var, period, model, run, grid)
                    
                            
                print('fname -->', fname)
                fin = glob(fname)[0]
                
                print('file  -->', fin)
                
                
                ds  = xr.open_dataset(fin, decode_times=False)
                dat = np.squeeze(ds['tas'].data)[l1:l2,:,:]
                lat = ds['latitude'].data
                lon = ds['longitude'].data
                
                print('imput -->', dat.shape, a)
                
                dat_slope_ens.append(dat)
                
            dat_slope_ens = np.nanmean(np.array(dat_slope_ens), axis=0)
            
            dat_slope_ens_regress = np.full((1, len(lat), len(lon)), np.nan)
            
            for i in range(len(lat)):
                
                for j in range(len(lon)):
                    
                    dat_slope_ens_regress[0, i, j], intercept, r, p, se = linregress(x_for_regress, dat_slope_ens[:, i, j])
                
               
            print()
            print('mean -->', dat_slope_ens.shape)
                        
            fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja.nc'.format(dir_ou_trend, exp, subexp, 'tas', 'ens-all', 'r1i1p1', yr1, yr2)
            
            # Saving netcdf            
            nc4(dat_slope_ens, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='K', tunits='years since {}-07-15 00:00'.format(yr1))
            if os.path.exists(fou):
                print('done -->', fou)


            print()
            print('regress -->', dat_slope_ens_regress.shape)
                        
            fou = '{0}/{3}_Amon_{4}_{2}_{5}_{6}-{7}_2p5dg_jja_regress.nc'.format(dir_ou_trend, exp, subexp, 'tas', 'ens-all', 'r1i1p1', yr1, yr2)
            
            # Saving netcdf            
            nc4(dat_slope_ens_regress, lat, lon, vvar='tas', fname=fou, vlname='tas', vunints='Celsius/year', tunits='years since {}-07-15 00:00'.format(yr1))
            if os.path.exists(fou):
                print('done -->', fou)
            
            





                
                




