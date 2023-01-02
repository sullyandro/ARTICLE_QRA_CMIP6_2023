CDF      
      time       bnds      lon       lat    %   plev         1   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       �KIOST-ESM (2018): 
aerosol: none
atmos: GFDL-AM2.0 (cubed sphere (C48); 192 x 96 longitude/latitude; 32 vertical levels; top level 2 hPa)
atmosChem: Simple carbon aerosol model (emission type)
land: NCAR-CLM4
landIce: NCAR-CLM4
ocean: GFDL-MOM5.0 (tripolar - nominal 1.0 deg; 360 x 200 longitude/latitude; 52 levels; top grid cell 0-2 m; NK mixed layer scheme)
ocnBgchem: TOPAZ2
seaIce: GFDL-SIS    institution       MKorea Institute of Ocean Science & Technology, Busan 49111, Republic of Korea      history      FSat Dec 31 08:41:12 2022: cdo -s -O timmean -seldate,1979-01-15,2014-12-31 ../data/cmip6/historical/ua_2p5dg_jja_zonmean/ua_Amon_KIOST-ESM_historical_r1i1p1f1_gr1_185001-201412_2p5dg_jja_zonmean.nc ../data/cmip6/historical/ua_2p5dg_jja_zonmean_timmean-1979-2014/ua_Amon_KIOST-ESM_historical_r1i1p1f1_gr1_185001-201412_2p5dg_jja_zonmean_timmean-1979-2014.nc
Thu Dec 29 07:48:12 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/ua_2p5dg_jja_zonmean/ua_Amon_KIOST-ESM_historical_r1i1p1f1_gr1_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 19:33:07 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -sellevel,30000 -selname,ua /p/projects/climate_data_central/CMIP/CMIP6/CMIP/KIOST/KIOST-ESM/historical/r1i1p1f1/Amon/ua/gr1/v20191104/ua_Amon_KIOST-ESM_historical_r1i1p1f1_gr1_185001-201412.nc ./cmip6_2/historical/ua/ua_Amon_KIOST-ESM_historical_r1i1p1f1_gr1_185001-201412_jja_zonmean_2.5dg.nc
2019-10-28T04:14:37Z ;rewrote data to be consistent with CMIP for variable ua found in table Amon.;
File was processed by CMOR     activity_id       CMIP   branch_method         standard   branch_time_in_child                 branch_time_in_parent         A�X       contact       5YoungHo Kim (yhokim@pknu.ac.kr & yhkimstar@gmail.com)      creation_date         2019-10-28T04:14:37Z   data_specs_version        01.00.30   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.KIOST.KIOST-ESM.historical.none.r1i1p1f1      grid      6atmos data regridded from Cubed-sphere (c48) to 94X192     
grid_label        gr1    initialization_index            institution_id        KIOST      mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      	KIOST-ESM      parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        GModel described by Pak et al. (Ocean Science Journal, to be submitted).    run_variant       3rd realization    	source_id         	KIOST-ESM      source_type       	AOGCM BGC      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(30 April 2019) MD5:cc2ae51c23960ce127b4d68ab3d8ac87     title         #KIOST-ESM output prepared for CMIP6    tracking_id       1hdl:21.14100/d2a391b7-366b-42b8-ac37-8bbc001cc84b      variable_id       ua     variant_label         r1i1p1f1   license      SCMIP6 model data produced by Lawrence Livermore KIOST is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.5.0      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-01-01      calendar      365_day    axis      T           p   	time_bnds                             x   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           8   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  @   plev               standard_name         air_pressure   	long_name         pressure   units         Pa     positive      down   axis      Z           h   ua                        
   standard_name         eastward_wind      	long_name         Eastward Wind      units         m s-1      
_FillValue        `�x�   missing_value         `�x�   cell_methods      
time: mean     comment       .Zonal wind (positive in a eastward direction).     original_units        m/sec      history       N2019-10-28T04:14:37Z altered by CMOR: Converted units from 'm/sec' to 'm s-1'.     cell_measures         area: areacella       �  �                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @�L     @�4�    @��    @�Y     ���K�!�=�D��M���3~����>?[�m@&H�@�x�@���A�A3B�ASg�Ar^�A��3A��~A�{3A�%4A��DA��lA���An 2AC�A�A�i@�S�@�,�@�V�@�AK@��;@�c�@g�@<��@4?�a�Zx