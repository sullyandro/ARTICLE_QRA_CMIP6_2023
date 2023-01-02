CDF      
      time       bnds      lon       lat    %   plev         0   CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    source        BManabe Climate Model at U of Arizona                                   institution       GDepartment of Geosciences, University of Arizona, Tucson, AZ 85721, USA    history      �Sat Dec 31 08:41:18 2022: cdo -s -O timmean -seldate,2070-01-15,2100-12-31 ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean/ua_Amon_MCM-UA-1-0_ssp585_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean_timmean-2070-2100/ua_Amon_MCM-UA-1-0_ssp585_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean_timmean-2070-2100.nc
Thu Dec 29 07:49:27 2022: cdo -s -O seldate,2015-01-01,2100-12-31 ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean/ua_Amon_MCM-UA-1-0_ssp585_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Fri Feb 11 04:56:48 2022: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -sellevel,30000 -selname,ua /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/UA/MCM-UA-1-0/ssp585/r1i1p1f2/Amon/ua/gn/v20190731/ua_Amon_MCM-UA-1-0_ssp585_r1i1p1f2_gn_201501-210012.nc ./cmip6_2/ssp585/ua/ua_Amon_MCM-UA-1-0_ssp585_r1i1p1f2_gn_201501-210012_jja_zonmean_2.5dg.nc
File was produced by a FORTRAN program     activity_id       ScenarioMIP    branch_method         standard   creation_date         2019-05-04T00:00:00Z   data_specs_version        01.00.28   experiment_id         ssp585     	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.UA.MCM-UA-1-0.ssp585.none.r1i1p1f2            grid      lat-lon    
grid_label        gn     initialization_index            institution_id        UA     mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_mip_era        CMIP6      parent_source_id      
MCM-UA-1-0     parent_time_units         days since 0001-01-01 (noleap)     physics_index               realization_index               realm         atmos      
references       JDelworth, Thomas L., Ronald J Stouffer, Keith W Dixon, Michael J Spelman, Thomas R Knutson, Anthony J Broccoli, P J Kushner, and Richard T Wetherald, 2002: Review of simulations of climate variability and change with the GFDL R30 coupled climate model. Climate Dynamics, 19(7), 555-574....and references therein.                       	source_id         
MCM-UA-1-0     source_type       AOGCM      tracking_id       1hdl:21.14100/5e922fe8-4dfc-42aa-a8d1-9af1466f3d3a      external_variables        	areacella      branch_time_in_child      @�h        branch_time_in_parent         @�h        table_id      Amon   contact       &GEOS-CMIP@email.arizona.edu                comment       &Blank                                      parent_variant_label      r1i1p1f2   variable_id       ua     
experiment        update of RCP8.5 based on SSP5     sub_experiment        none   sub_experiment_id         none   forcing_index               variant_label         r1i1p1f2   variant_info      h2015 to 2100 time varying equiv CO2 and aerosol forcing solar and volcano set to historical averages       title         (UArizona MCM-UA-1-0 ssp585                 product       model-output   license      3CMIP6 model data produced by the U of Arizona is licensed under a Creative Commons Attribution-[*]ShareAlike 4.0 International License (https://creativecommons.org/licenses/). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment.    Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file).  The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 0001-01-01 00:00:00     calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           t   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  |   plev               standard_name         air_pressure   	long_name         pressure   units         Pa     positive      down   axis      Z           �   ua                           standard_name         eastward_wind      	long_name         6Eastward Wind                                              units         m s-1      
_FillValue        `�x�   missing_value         `�x�   cell_methods      
time: mean     table_id      Amon      �  �                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @�L     A'82    A'    A'cU    ��$��&=��[�=������C��������`�{��/�f��}V?-\J@8%S@���@���A�A=vAXAf"yAfB�A]��ARRTAE�A3j6A�)A�
@��@�gw@ז�@Ө�@��@@��7@��]@�I�@U;,@f�?���>�~`