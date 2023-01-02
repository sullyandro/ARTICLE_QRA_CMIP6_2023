CDF      
      time       bnds      lon       lat       plev         2   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       �GISS-E2.1G (2019): 
aerosol: Varies with physics-version (p==1 none, p==3 OMA, p==4 TOMAS, p==5 MATRIX)
atmos: GISS-E2.1 (2.5x2 degree; 144 x 90 longitude/latitude; 40 levels; top level 0.1 hPa)
atmosChem: Varies with physics-version (p==1 Non-interactive, p>1 GPUCCINI)
land: GISS LSM
landIce: none
ocean: GISS Ocean (GO1, 1 degree; 360 x 180 longitude/latitude; 40 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: GISS SI   institution       <Goddard Institute for Space Studies, New York, NY 10025, USA   history      8Sat Dec 31 08:19:24 2022: cdo -s -O timmean -seldate,1979-01-15,2014-12-31 ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n_timmean-1979-2014/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n_timmean-1979-2014.nc
Thu Dec 29 07:38:17 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:50:59 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:50:58 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 20:11:55 2021: cdo -O cat ./cmip6_2/historical/ua/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-190012_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_190101-195012_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_195101-200012_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_200101-201412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_jja_zonmean_2.5dg.nc_tmp
Sat Sep 11 20:11:46 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -sellevel,30000 -selname,ua /p/projects/climate_data_central/CMIP/CMIP6/CMIP/NASA-GISS/GISS-E2-1-G/historical/r1i1p3f1/Amon/ua/gn/v20190702/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-190012.nc ./cmip6_2/historical/ua/ua_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-190012_jja_zonmean_2.5dg.nc
2019-11-25T10:58:17Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.   activity_id       CMIP   branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact        Kenneth Lo (cdkkl@giss.nasa.gov)   creation_date         2019-11-25T10:58:17Z   data_specs_version        01.00.23   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Shttps://furtherinfo.es-doc.org/CMIP6.NASA-GISS.GISS-E2-1-G.historical.none.r1i1p3f1    grid      -atmospheric grid: 144x90, ocean grid: 288x180      
grid_label        gn     initialization_index            institution_id        	NASA-GISS      mip_era       CMIP6      model_id      E212Tomaf10aF40oQ40_2      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_experiment_rip         r1i1p3     parent_mip_era        CMIP6      parent_source_id      GISS-E2-1-G    parent_time_units         days since 2000-1-1    parent_variant_label      r1i1p3f1   physics_index               product       model-output   realization_index               realm         atmos      
references        'https://data.giss.nasa.gov/modelE/cmip6    	source_id         GISS-E2-1-G    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(21 March 2018) MD5:c93735846d66458966fc81f390b2d714     title         %GISS-E2-1-G output prepared for CMIP6      tracking_id       1hdl:21.14100/fdceb62f-16b0-4b58-8276-c46f49f24821      variable_id       ua     variant_label         r1i1p3f1   license      cCMIP6 model data produced by NASA Goddard Institute for Space Studies is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.3.2      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-1-1    calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X              lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X      plev               standard_name         air_pressure   	long_name         pressure   units         Pa     positive      down   axis      Z           x   ua                        	   standard_name         eastward_wind      	long_name         Eastward Wind      units         m s-1      
_FillValue        `�x�   missing_value         `�x�   cell_methods      
time: mean     comment      'Eastward' indicates a vector component which is positive when directed eastward (negative westward). Wind is defined as a two-dimensional (horizontal) air velocity vector, with no vertical component. (Vertical motion in the atmosphere has the standard name upward_air_velocity.)    cell_measures         area: areacella    history       o2019-11-25T10:58:17Z altered by CMOR: replaced missing value flag (-1e+30) with standard missing value (1e+20).       ,  �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @�L     @�4�    @��    @�X�    @n(S@���A(�_AhE�A��/A�"<AVޟA��@�!)@̤@��_