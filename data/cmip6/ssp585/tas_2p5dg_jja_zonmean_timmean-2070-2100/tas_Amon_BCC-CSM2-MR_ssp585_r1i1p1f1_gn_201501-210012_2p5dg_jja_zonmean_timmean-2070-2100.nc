CDF      
      time       bnds      lon       lat    %      3   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source       ]BCC-CSM 2 MR (2017):   aerosol: none  atmos: BCC_AGCM3_MR (T106; 320 x 160 longitude/latitude; 46 levels; top level 1.46 hPa)  atmosChem: none  land: BCC_AVIM2  landIce: none  ocean: MOM4 (1/3 deg 10S-10N, 1/3-1 deg 10-30 N/S, and 1 deg in high latitudes; 360 x 232 longitude/latitude; 40 levels; top grid cell 0-10 m)  ocnBgchem: none  seaIce: SIS2      institution       -Beijing Climate Center, Beijing 100081, China      history      Sat Dec 31 08:41:13 2022: cdo -s -O timmean -seldate,2070-01-15,2100-12-31 ../data/cmip6/ssp585/tas_2p5dg_jja_zonmean/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean.nc ../data/cmip6/ssp585/tas_2p5dg_jja_zonmean_timmean-2070-2100/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_timmean-2070-2100.nc
Thu Dec 29 07:48:31 2022: cdo -s -O seldate,2015-01-01,2100-12-31 ../data/cmip6/ssp585/tas_2p5dg_jja_zonmean/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Fri Feb 11 01:28:49 2022: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/BCC/BCC-CSM2-MR/ssp585/r1i1p1f1/Amon/tas/gn/v20190314/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc ./cmip6_2/ssp585/tas/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012_jja_zonmean_2.5dg.nc
2019-03-14T01:11:27Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.      activity_id       ScenarioMIP    branch_method         Standard   branch_time_in_child                 branch_time_in_parent         @�|        comment       ^This is an extension of historical simulation (r1i1p1f1) with prescribed scenario of SSP5-8.5.     contact       Dr. Tongwen Wu(twwu@cma.gov.cn)    creation_date         2019-03-14T01:11:27Z   data_specs_version        01.00.27   description       SSP5-8.5   
experiment        update of RCP8.5 based on SSP5     experiment_id         ssp585     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Ihttps://furtherinfo.es-doc.org/CMIP6.BCC.BCC-CSM2-MR.ssp585.none.r1i1p1f1      grid      T106   
grid_label        gn     initialization_index            institution_id        BCC    mip_era       CMIP6      nominal_resolution        100 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_mip_era        CMIP6      parent_source_id      BCC-CSM2-MR    parent_time_units         days since 2015-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        tModel described by Tongwen Wu et al. (JGR 2013; JMR 2014; GMD 2019). Also see http://forecast.bcccsm.ncc-cma.net/htm   run_variant       Lforcing: greenhouse gases,solar constant,aerosol,volcano mass,land use,ozone   	source_id         BCC-CSM2-MR    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(30 July 2018) MD5:e53ff52009d0b97d9d867dc12b6096c7      title         %BCC-CSM2-MR output prepared for CMIP6      tracking_id       1hdl:21.14100/b4c1b72a-72b7-4ded-868b-b0f00c5b4738      variable_id       tas    variant_label         r1i1p1f1   license      >CMIP6 model data produced by BCC is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.     cmor_version      3.3.2      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-01-01      calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           l   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  t   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           �   tas                       standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   cell_methods      &area: time: mean (interval: 5 minutes)     comment       /near-surface (usually, 2 meter) air temperature    original_name         TREFHT     cell_measures         area: areacella    history       I2019-03-14T01:11:27Z altered by CMOR: Treated scalar dimension: 'height'.         �  �                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @       @�$�    @���    @މ     C���C��<C���C��PC�XC�;!C�L2C�b�C�h"C�W�C�.C��&C�"�C�XC���C�5�C��4C�,$C���C���C��nC�>C�<`C��AC��C���C��C�b�C��C��PC�CC���C���C��(C�r�C�b�C�cE