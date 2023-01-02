CDF      
      time       bnds      lon       lat    %   plev         0   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       (FGOALS-g3 (2017): 
aerosol: none
atmos: GAMIL2 (180 x 90 longitude/latitude; 26 levels; top level 2.19hPa)
atmosChem: none
land: CLM4.0
landIce: none
ocean: LICOM3.0 (LICOM3.0, tripolar primarily 1deg; 360 x 218 longitude/latitude; 30 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: CICE4.0   institution       2Chinese Academy of Sciences, Beijing 100029, China     history      %Sat Dec 31 08:41:17 2022: cdo -s -O timmean -seldate,2070-01-15,2100-12-31 ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean.nc ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean_timmean-2070-2100/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_timmean-2070-2100.nc
Thu Dec 29 07:49:20 2022: cdo -s -O seldate,2015-01-01,2100-12-31 ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Fri Feb 11 01:30:37 2022: cdo -O cat ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-201912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_202001-202912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_203001-203912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_204001-204912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_205001-205912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_206001-206912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_207001-207912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_208001-208912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_209001-209912_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_210001-210012_jja_zonmean_2.5dg.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-210012_jja_zonmean_2.5dg.nc_tmp
Fri Feb 11 01:30:27 2022: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -sellevel,30000 -selname,ua /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/CAS/FGOALS-g3/ssp585/r1i1p1f1/Amon/ua/gn/v20190818/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-201912.nc ./cmip6_2/ssp585/ua/ua_Amon_FGOALS-g3_ssp585_r1i1p1f1_gn_201501-201912_jja_zonmean_2.5dg.nc
2019-08-18T13:04:31Z ;rewrote data to be consistent with ScenarioMIP for variable cl found in table Amon.      activity_id       ScenarioMIP    branch_method         standard   branch_time_in_child                 branch_time_in_parent         @�h        contact       Lijuan Li (ljli@mail.iap.ac.cn)    creation_date         2019-08-18T13:08:33Z   data_specs_version        01.00.31   
experiment        update of RCP8.5 based on SSP5     experiment_id         ssp585     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Ghttps://furtherinfo.es-doc.org/CMIP6.CAS.FGOALS-g3.ssp585.none.r1i1p1f1    grid      =native atmosphere area-weighted latxlon grid (80x180 latxlon)      
grid_label        gn     initialization_index            institution_id        CAS    mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_mip_era        CMIP6      parent_source_id      	FGOALS-g3      parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      run_variant       3rd realization    	source_id         	FGOALS-g3      source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(24 July 2019) MD5:3039b0071259358b3c55557c5f3d21bf      title         #FGOALS-g3 output prepared for CMIP6    tracking_id       1hdl:21.14100/8b36c3aa-2a1b-44f9-bf51-f2bb7b9bdff1      variable_id       ua     variant_label         r1i1p1f1   license      SCMIP6 model data produced by Lawrence Livermore PCMDI is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.5.0      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-01-01 00:00:00     calendar      365_day    axis      T           <   	time_bnds                             D   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X              lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (     plev               standard_name         air_pressure   	long_name         pressure   units         Pa     positive      down   axis      Z           4   ua                        	   standard_name         eastward_wind      	long_name         Eastward Wind      units         m s-1      
_FillValue        `�x�   missing_value         `�x�   cell_methods      !time: mean (interval: 10 minutes)      comment       .Zonal wind (positive in a eastward direction).     cell_measures         area: areacella    history       E2019-08-18T13:08:33Z altered by CMOR: Converted type from 'd' to 'f'.         �  T                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @�L     @�$�    @���    @މ     ������^���9�Hj��@��+`?ɡ@:�@jg�@�C�@�ҷ@�u�AAA7}AU��Ak&ArP�Am}�Adb}AU?�AASA.:AU�A/@���@�<@��@��V@�F�@���@���@�E�@�C�@ޛnA/��@���    