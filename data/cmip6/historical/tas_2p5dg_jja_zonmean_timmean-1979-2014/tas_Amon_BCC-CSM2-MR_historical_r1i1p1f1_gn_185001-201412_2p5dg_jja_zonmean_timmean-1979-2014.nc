CDF      
      time       bnds      lon       lat    %      3   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       ]BCC-CSM 2 MR (2017):   aerosol: none  atmos: BCC_AGCM3_MR (T106; 320 x 160 longitude/latitude; 46 levels; top level 1.46 hPa)  atmosChem: none  land: BCC_AVIM2  landIce: none  ocean: MOM4 (1/3 deg 10S-10N, 1/3-1 deg 10-30 N/S, and 1 deg in high latitudes; 360 x 232 longitude/latitude; 40 levels; top grid cell 0-10 m)  ocnBgchem: none  seaIce: SIS2      institution       -Beijing Climate Center, Beijing 100081, China      history      3Sat Dec 31 08:41:04 2022: cdo -s -O timmean -seldate,1979-01-15,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_timmean-1979-2014/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_timmean-1979-2014.nc
Thu Dec 29 07:46:37 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 15:49:56 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/BCC/BCC-CSM2-MR/historical/r1i1p1f1/Amon/tas/gn/v20181126/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_jja_zonmean_2.5dg.nc
2018-11-26T05:08:26Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.;
N/A    activity_id       CMIP   branch_method         Standard   branch_time_in_child                 branch_time_in_parent         @��        comment       hThe model integration starts from the piControl experiment equilibrium state (1st Jan. of the year 2289)   contact       Dr. Tongwen Wu(twwu@cma.gov.cn)    creation_date         2018-11-26T05:08:26Z   data_specs_version        01.00.27   description       DECK: historical   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.BCC.BCC-CSM2-MR.historical.none.r1i1p1f1      grid      T106   
grid_label        gn     initialization_index            institution_id        BCC    mip_era       CMIP6      nominal_resolution        100 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      BCC-CSM2-MR    parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        �Model described by Tongwen Wu et al. (JGR 2013; JMR 2014; submmitted to GMD,2018). Also see http://forecast.bcccsm.ncc-cma.net/htm     run_variant       Lforcing: greenhouse gases,solar constant,aerosol,volcano mass,land use,ozone   	source_id         BCC-CSM2-MR    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(30 July 2018) MD5:e53ff52009d0b97d9d867dc12b6096c7      title         %BCC-CSM2-MR output prepared for CMIP6      tracking_id       1hdl:21.14100/007da5e5-12bb-4fe9-8df9-5cd473280650      variable_id       tas    variant_label         r1i1p1f1   license      >CMIP6 model data produced by BCC is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.     cmor_version      3.3.2      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-01-01      calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           �   tas                       standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   cell_methods      &area: time: mean (interval: 5 minutes)     comment       /near-surface (usually, 2 meter) air temperature    original_name         TREFHT     cell_measures         area: areacella    history       I2018-11-26T05:08:26Z altered by CMOR: Treated scalar dimension: 'height'.         �                  @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @       @�4�    @��    @�X�    C�CC�X�C���C��{C���C��sC��C��C��fC�̈́C��gC�2�C�DGC�`�C�q�C�>C��pC��wC�&(C�>C�lTC���C���C�@�C�͡C�C�C��qC��C��7C��:C���C���C���C���C���C��=C��