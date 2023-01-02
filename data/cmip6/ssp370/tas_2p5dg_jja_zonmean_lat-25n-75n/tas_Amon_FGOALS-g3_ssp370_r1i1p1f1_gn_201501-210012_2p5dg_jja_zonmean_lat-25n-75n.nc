CDF   V   
      time       bnds      lon       lat          0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      	Thu Dec 29 07:40:09 2022: cdo -s -O seldate,2015-01-01,2100-12-31 ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:54:35 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:54:35 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Sun Oct 16 07:53:51 2022: cdo -O cat ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-201912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_202001-202912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_203001-203912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_204001-204912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_205001-205912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_206001-206912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_207001-207912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_208001-208912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_209001-209912_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_210001-210012_2p5dg_jja_zonmean.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-210012_2p5dg_jja_zonmean.nc_tmp
Sun Oct 16 07:53:50 2022: cdo -s -O zonmean -selindexbox,1,144,37,73 -seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/CAS/FGOALS-g3/ssp370/r1i1p1f1/Amon/tas/gn/v20190820/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-201912.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-g3_ssp370_r1i1p1f1_gn_201501-201912_2p5dg_jja_zonmean.nc
2019-08-20T12:35:09Z ;rewrote data to be consistent with ScenarioMIP for variable cl found in table Amon.    source       (FGOALS-g3 (2017): 
aerosol: none
atmos: GAMIL2 (180 x 90 longitude/latitude; 26 levels; top level 2.19hPa)
atmosChem: none
land: CLM4.0
landIce: none
ocean: LICOM3.0 (LICOM3.0, tripolar primarily 1deg; 360 x 218 longitude/latitude; 30 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: CICE4.0   institution       2Chinese Academy of Sciences, Beijing 100029, China     activity_id       ScenarioMIP AerChemMIP     branch_method         standard   branch_time_in_child                 branch_time_in_parent         @�h        contact       Lijuan Li (ljli@mail.iap.ac.cn)    creation_date         2019-08-20T12:37:23Z   data_specs_version        01.00.31   
experiment        /gap-filling scenario reaching 7.0 based on SSP3    experiment_id         ssp370     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Ghttps://furtherinfo.es-doc.org/CMIP6.CAS.FGOALS-g3.ssp370.none.r1i1p1f1    grid      =native atmosphere area-weighted latxlon grid (80x180 latxlon)      
grid_label        gn     initialization_index            institution_id        CAS    mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_mip_era        CMIP6      parent_source_id      	FGOALS-g3      parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      run_variant       3rd realization    	source_id         	FGOALS-g3      source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(24 July 2019) MD5:3039b0071259358b3c55557c5f3d21bf      title         #FGOALS-g3 output prepared for CMIP6    tracking_id       1hdl:21.14100/7a457b8a-99a3-47a9-8165-c76973f24601      variable_id       tas    variant_label         r1i1p1f1   license      SCMIP6 model data produced by Lawrence Livermore PCMDI is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.5.0      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-01-01 00:00:00     calendar      365_day    axis      T           <   	time_bnds                             D   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           4   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      (area: time: mean (interval: 10 minutes)    cell_measures         area: areacella    history       �2019-08-20T12:35:08Z altered by CMOR: Treated scalar dimension: 'height'. 2019-08-20T12:37:23Z altered by CMOR: Converted type from 'd' to 'f'.       ,  T@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C�P�C���C��C�؇C�<�C�MC��xC��3C��QC��C���@��     @�      @�      C�C~C��C��C���C�(
C��C��5C���C���C��UC��	@��     @��     @�h     C�I�C��FC� C��?C�1JC���C�{�C�?�C�]tC���C���@�.     @�x     @��     C�XoC���C��5C��]C�!C���C��C�ޘC��C�&C��@��     @�,     @��     C�U�C���C��C���C�ئC��cC���C���C��pC��JC���@��     @��     @�(     C�^�C���C���C��jC��C��IC���C�n0C���C�bC�_�@��     @�J     @�     C�]�C���C���C��?C��uC���C��WC���C��&C�zxC�]�@�     @�$     @��     C�LC���C�&�C��C�G�C�jC���C��NC��C���C���@�Y     @��     @��     C�v`C���C�� C���C�2�C�1�C�
�C��_C�vC�[�C�+�@�3     @��     @��     C�f�C��C�.C���C�nC��C��C���C��:C��VC�~�@�     @��     @�j     C�Q@C��dC�8C��?C�_C��oC���C��8C�� C�4�C�D�@�s�    @�F     @��     C�m�C��"C��C���C�P�C�O�C�+C��C�#�C���C�?c@���    @��     @�     C���C���C�)�C��C�bZC�MC��C���C�C��AC���@�M�    @�      @�|     C�x@C���C��C�
C�a�C��C��C���C��>C�@�C�2
@���    @��     @��     C�xjC���C�C�ݛC�5�C��C��C���C���C�o�C�5�@�'�    @��     @�V     C�T�C��AC�8�C�"C�b�C�1�C���C�ĻC���C�-mC��@���    @�g     @��     C��eC���C��C���C�5C�6zC� C��qC�$C���C��6@��    @��     @�0     C���C���C�#�C�C�AJC�GC���C��ZC�фC�SEC�=9@�n�    @�A     @��     C��C�C�C��(C�PC�vC��C���C�HC�|BC�Z@�ۀ    @��     @�
     C�u�C�ÓC�G&C�2aC�w�C�B C��C��C��LC�hC��P@�H�    @�     @�w     C���C���C�C��)C�)�C� �C�+kC�
�C�*C�`OC�G�@���    @��     @��     C��mC���C�9@C�QC�[�C�J�C�4?C�wC�L�C��tC���@�@    @��     @�(�    C���C�ҡC�-eC���C�K^C�HC�.�C�3C�AC�w�C�T�@���    @��     @��     C���C��	C�R�C�'�C�[TC�/�C��C�=C�>C��C��n@�~@    @�g�    @���    C�}�C���C�VyC� [C�WrC�/C��C��C�7�C���C���@�4�    @�     @�L     C��C�ېC�<xC�)C�x�C�j�C�F\C�iC�!�C���C���@��@    @�Ԁ    @��    C��(C��xC�-�C�.C�`�C�x1C�k�C�K�C�~CC���C��@á�    @Ë     @ù     C��pC��gC�?�C��C�`�C�J]C�1EC��C�lC�~C�[�@�X@    @�A�    @�o�    C���C��C�F�C�/C���C�~>C�<C��C�UC��XC��`@��    @��     @�&     C��kC��C�8�C�yC�cC�r�C�R�C�JC�_C�l-C�c@��@    @Ů�    @�܀    C��qC��`C�S
C��C�v�C�j�C�B�C�C�#C��C��[@�{�    @�e     @Ɠ     C���C��xC�j�C�C�C��\C�h�C�/,C��C�T�C��C���@�2@    @��    @�I�    C��VC��ZC�zmC�k�C��<C��LC�a�C��C�2C�|�C�x@���    @��     @�      C���C�'C���C��1C��C��%C�O^C�"`C�xeC� #C�؛@ȟ@    @Ȉ�    @ȶ�    C���C��0C�u�C�j,C��EC���C�ZC�%�C�I�C���C��=@�U�    @�?     @�m     C���C��C�{eC�r/C��:C��}C�A2C���C�1�C��=C���@�@    @���    @�#�    C�̓C���C�]_C�HaC�� C��IC��C�TnC�J�C��YC���@���    @ʬ     @��     C��C�2C���C�t�C���C��}C�B�C�" C�`GC��C��=@�y@    @�b�    @ː�    C��C�/C��*C�yC��C��C���C��C�lC���C���@�/�    @�     @�G     C���C��pC�]�C�A�C��UC��rC�U�C��C�2�C��XC���@��@    @�π    @���    C���C�C�� C��zC��[C�TBC�,�C�D+C���C�.�C���@͜�    @͆     @ʹ     C��C�MC��VC�q�C���C���C�OC�*�C�m&C���C��@�S@    @�<�    @�j�    C���C��C�x|C�q�C���C���C���C�U�C�u*C�ݎC��@�	�    @��     @�!     C��JC�#�C�z&C�PpC���C�wQC�f^C�R�C�hC��WC��@��@    @ϩ�    @�׀    C���C��C�c�C�G�C��_C�^C�S~C�*�C�gC�qC��@�;`    @�0     @�G     C���C�IC�rPC�QZC���C�|�C�V$C�F�C��>C�;C�Ҵ@Ж�    @Ћ@    @Т@    C��WC��C���C�dC��C���C�j�C�B$C�T�C��C��K@���    @��    @���    C��C��C�`�C�6�C��1C��cC�j9C� �C�E�C���C��A@�M     @�A�    @�X�    C��C�C�p�C�R�C��xC��C�Z�C�"�C�_AC��C��Q@Ѩ`    @ѝ     @Ѵ     C���C��C�t�C�YEC���C��C�G�C��C�O.C�2OC�6�@��    @��@    @�@    C��6C�'C�b8C�0C��XC���C�g�C�4BC�~5C�MdC�<�@�^�    @�S�    @�j�    C��WC�.�C��C��RC��LC�̊C�� C�UxC�nhC��qC��@Һ     @Ү�    @���    C���C�1�C��vC���C�ȳC�w�C�"?C���C�B/C���C��0@�`    @�
     @�!     C���C�9�C���C���C��C��C��~C�3 C�I"C��	C��'@�p�    @�e@    @�|@    C���C�9C��!C�m8C���C��C�x�C�-�C�M�C��C��3@���    @���    @�׀    C��C�1C��C�SC���C�kVC�FZC�2C�_ZC�HC��D@�'     @��    @�2�    C��fC�2&C���C��FC��.C��|C��"C�d�C���C�
�C���@Ԃ`    @�w     @Ԏ     C�uC�ScC��<C��zC��C���C�~7C�V�C��wC�q�C��=@�ݠ    @��@    @��@    C���C�-C���C��dC��mC��>C���C�MC��/C�6�C�v@�8�    @�-�    @�D�    C���C� �C���C��C�#C��.C�o�C�0�C�V�C��IC��@Ք     @Ո�    @՟�    C�C�UCC�ɉC��2C���C��GC��AC�M�C�k\C�9�C�)�@��`    @��     @��     C��C�(�C�|!C�`cC��$C��EC���C�>�C�K9C�ЌC���@�J�    @�?@    @�V@    C��C�K�C�� C��_C��5C��VC��ZC�H C�u�C�CC�ף@֥�    @֚�    @ֱ�    C��C�CBC���C�� C���C��
C���C�lJC��rC�h�C�%)@�     @���    @��    C�!�C�H�C���C�x�C�ސC���C��tC���C���C�&�C�z@�\`    @�Q     @�h     C�&�C�\`C��jC��nC���C���C���C�k*C��4C��cC��@׷�    @׬@    @��@    C�)OC�Y�C��C��8C��\C�ЕC���C��~C�ǠC�L�C��O@��    @��    @��    C�"�C�_�C�ĊC��LC��C���C���C�\�C��nC�2_C��%@�n     @�b�    @�y�    C�,/C�xC��zC���C��C���C���C�T]C�o�C��C��"@��`    @ؾ     @��     C�3C�w�C��C��bC�lC���C���C�z)C���C�qC��@�$�    @�@    @�0@    C�7EC�z�C��C��)C�$�C���C���C��C���C�1�C���@��    @�t�    @ً�    C�L�C��RC��C��]C�FcC�:C��C���C���C�s C��@��     @���    @���    C�=C��iC���C��kC��C��rC���C���C���C���C�9|@�6`    @�+     @�B     C�A�C��qC��C���C�
�C��C���C��C���C�6C�N@ڑ�    @چ@    @ڝ@    C�JmC���C��C�ѦC�.tC��C��C���C���C�cC��@���    @��    @���    C�KNC���C�
]C��3C�<�C���C���C��!C��;C�`yC�p@�H     @�<�    @�S�    C�X&C���C�*�C��C�oC�99C���C��]C���C�G�C�1�@ۣ`    @ۘ     @ۯ     C�T�C��?C�4NC��C�5�C��C��4C��DC��C�� C���@���    @��@    @�
@    C�g�C���C��C���C�cyC�I_C� �C��nC��=C��gC�Z�@�Y�    @�N�    @�e�    C�l�C���C���C��C�5#C��C���C���C�1kC�عC��9@ܵ     @ܩ�    @���    C�RC�� C�7C�VC�k�C�MtC�&�C��C�,�C���C�t�@�`    @�     @�     C�}!C�ɀC�6�C�@C�n�C�6�C��C���C���C���C�O�@�k�    @�`@    @�w@    C�xGC��RC�+�C�'�C��/C�Z0C�{C��&C�RC��RC��t@���    @ݻ�    @�Ҁ    C���C���C�0C�C�D�C��C��C��pC��C�o�C�I�@�"     @��    @�-�    C��C���C�%�C��C�_�C�D�C� C��6C���C���C���@�}`    @�r     @މ     C�oC���C�5C��C��C�e�C��C���C��C���C��: