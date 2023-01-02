CDF      
      time       bnds      lon       lat    %      0   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       SCAS-ESM 2.0 (2019): 
aerosol: IAP AACM
atmos: IAP AGCM 5.0 (Finite difference dynamical core; 256 x 128 longitude/latitude; 35 levels; top level 2.2 hPa)
atmosChem: IAP AACM
land: CoLM
landIce: none
ocean: LICOM2.0 (LICOM2.0, primarily 1deg; 362 x 196 longitude/latitude; 30 levels; top grid cell 0-10 m)
ocnBgchem: IAP OBGCM
seaIce: CICE4    institution       2Chinese Academy of Sciences, Beijing 100029, China     history      $Sat Dec 31 08:41:04 2022: cdo -s -O timmean -seldate,1979-01-15,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_CAS-ESM2-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_timmean-1979-2014/tas_Amon_CAS-ESM2-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_timmean-1979-2014.nc
Thu Dec 29 07:46:39 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_CAS-ESM2-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 15:51:22 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/CAS/CAS-ESM2-0/historical/r1i1p1f1/Amon/tas/gn/v20200302/tas_Amon_CAS-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_CAS-ESM2-0_historical_r1i1p1f1_gn_185001-201412_jja_zonmean_2.5dg.nc
2020-03-02T12:28:26Z ;rewrote data to be consistent with CMIP for variable tas found in table Amon.   activity_id       CMIP   branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact       !Zhang He (zhanghe@mail.iap.ac.cn)      creation_date         2020-03-02T12:28:26Z   data_specs_version        01.00.31   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Lhttps://furtherinfo.es-doc.org/CMIP6.CAS.CAS-ESM2-0.historical.none.r1i1p1f1   grid      0native atmosphere regular grid (128x256 latxlon)   
grid_label        gn     initialization_index            institution_id        CAS    mip_era       CMIP6      nominal_resolution        100 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      
CAS-ESM2-0     parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      run_variant       3rd realization    	source_id         
CAS-ESM2-0     source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(24 July 2019) MD5:b9834a2d0728c0da123535a4e4240b5b      title         $CAS-ESM2-0 output prepared for CMIP6   tracking_id       1hdl:21.14100/22e89a1b-f73e-45be-84dc-7d0aabbeea9d      variable_id       tas    variant_label         r1i1p1f1   license      xCMIP6 model data produced by Institute of Atmospheric Physics, Chinese Academy of Sciences is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.   cmor_version      3.5.0      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-01-01 00:00:00     calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           T   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  \   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           �   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   cell_methods      area: time: mean   comment       /near-surface (usually, 2 meter) air temperature    cell_measures         area: areacella    history       I2020-03-02T12:28:26Z altered by CMOR: Treated scalar dimension: 'height'.         �  �                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @       @�4�    @��    @�X�    C���C���C���C��C�RcC��C��BC��C�|`C�V�C�%�C��hC�gC�H�C�l�C�5C�FC���C�1FC��2C���C�x�C��C�`C��C�RsC���C��AC�DC�̖C���C�cjC�agC�m-C�jfC��WC���