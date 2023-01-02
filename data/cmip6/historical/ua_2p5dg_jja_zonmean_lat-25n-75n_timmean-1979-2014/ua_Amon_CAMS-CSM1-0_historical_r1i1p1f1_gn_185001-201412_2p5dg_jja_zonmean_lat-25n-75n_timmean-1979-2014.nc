CDF      
      time       bnds      lon       lat       plev         3   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       tCAMS_CSM 1.0 (2016): 
aerosol: none
atmos: ECHAM5_CAMS (T106; 320 x 160 longitude/latitude; 31 levels; top level 10 mb)
atmosChem: none
land: CoLM 1.0
landIce: none
ocean: MOM4 (tripolar; 360 x 200 longitude/latitude, primarily 1deg latitude/longitude, down to 1/3deg within 30deg of the equatorial tropics; 50 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: SIS 1.0   institution       AChinese Academy of Meteorological Sciences, Beijing 100081, China      history      Sat Dec 31 08:19:22 2022: cdo -s -O timmean -seldate,1979-01-15,2014-12-31 ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n_timmean-1979-2014/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n_timmean-1979-2014.nc
Thu Dec 29 07:37:36 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:50:09 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:50:09 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 15:51:22 2021: cdo -O cat ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-186412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_186501-187912_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_188001-189412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_189501-190912_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_191001-192412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_192501-193912_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_194001-195412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_195501-196912_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_197001-198412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_198501-199912_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_200001-201412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412_jja_zonmean_2.5dg.nc_tmp
Sat Sep 11 15:50:46 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -sellevel,30000 -selname,ua /p/projects/climate_data_central/CMIP/CMIP6/CMIP/CAMS/CAMS-CSM1-0/historical/r1i1p1f1/Amon/ua/gn/v20190708/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-186412.nc ./cmip6_2/historical/ua/ua_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-186412_jja_zonmean_2.5dg.nc
2019-07-02T10:11:31Z ;rewrote data to be consistent with CMIP for variable ta found in table Amon.;
Output from CAMS-CSM1-0      activity_id       CMIP   branch_method         Standard   branch_time_in_child                 branch_time_in_parent         @��        comment       hThe model integration starts from the piControl experiment equilibrium state (1st Jan. of the year 3025)   contact       #Dr. Xinyao Rong (rongxy@cma.gov.cn)    creation_date         2019-07-02T10:12:35Z   data_specs_version        01.00.30   description       DECK: historical   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Nhttps://furtherinfo.es-doc.org/CMIP6.CAMS.CAMS-CSM1-0.historical.none.r1i1p1f1     grid      T106   
grid_label        gn     initialization_index            institution_id        CAMS   mip_era       CMIP6      nominal_resolution        100 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      CAMS-CSM1-0    parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        @Model described by Rong et al (J. Meteoro. Res., 2019, 576-591).   run_variant       >forcing: greenhouse gases,aerosol,solar constant,volcano,ozone     	source_id         CAMS-CSM1-0    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(30 April 2019) MD5:cc2ae51c23960ce127b4d68ab3d8ac87     title         %CAMS-CSM1-0 output prepared for CMIP6      tracking_id       1hdl:21.14100/af07f993-42a4-410a-b0fc-d60f36ac769f      variable_id       ua     variant_label         r1i1p1f1   license      SCMIP6 model data produced by Lawrence Livermore PCMDI is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.4.0      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-1-1 00:00      calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           L   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  T   plev               standard_name         air_pressure   	long_name         pressure   units         Pa     positive      down   axis      Z           �   ua                        
   standard_name         eastward_wind      	long_name         Eastward Wind      units         m s-1      
_FillValue        `�x�   missing_value         `�x�   cell_methods      
time: mean     comment       .Zonal wind (positive in a eastward direction).     original_name         u      cell_measures         area: areacella    history       92019-07-02T10:12:35Z altered by CMOR: Inverted axis: lat.         ,  �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @�L     @�4�    @��    @�X�    ���@��xA]�AO:Au|�A}5AcC%A0�%A tv@���@���