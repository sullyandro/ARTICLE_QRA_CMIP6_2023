CDF   V   
      time       bnds      lon       lat          2   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      wSat Oct 28 07:26:25 2023: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc
Sat Oct 28 07:26:25 2023: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Sat Oct 28 07:16:50 2023: cdo -s -O zonmean -selindexbox,1,144,37,73 -seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,tas /home/dark/windows/Downloads/cmip6-ssp370-lowntcf/cdo_cat//tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_201501-210012.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc
Sat Oct 28 05:37:21 2023: cdo cat tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_201501-205012.nc tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_205101-210012.nc tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r1i1p1f2_gn_201501-210012.nc
2021-04-14T09:24:36Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.    source       �GISS-E2.1G (2019): 
aerosol: Varies with physics-version (p==1 none, p==3 OMA, p==4 TOMAS, p==5 MATRIX)
atmos: GISS-E2.1 (2.5x2 degree; 144 x 90 longitude/latitude; 40 levels; top level 0.1 hPa)
atmosChem: Varies with physics-version (p==1 Non-interactive, p>1 GPUCCINI)
land: GISS LSM
landIce: none
ocean: GISS Ocean (GO1, 1 degree; 360 x 180 longitude/latitude; 40 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: GISS SI   institution       <Goddard Institute for Space Studies, New York, NY 10025, USA   activity_id       
AerChemMIP     branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact        Kenneth Lo (cdkkl@giss.nasa.gov)   creation_date         2021-04-14T09:24:36Z   data_specs_version        01.00.23   
experiment        !SSP3-7.0, with low NTCF emissions      experiment_id         ssp370-lowNTCF     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Whttps://furtherinfo.es-doc.org/CMIP6.NASA-GISS.GISS-E2-1-G.ssp370-lowNTCF.none.r1i1p1f2    grid      -atmospheric grid: 144x90, ocean grid: 288x180      
grid_label        gn     initialization_index            institution_id        	NASA-GISS      mip_era       CMIP6      model_id      E213SSP370LOWaF40oQ40      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_experiment_rip         r1i1p1f2   parent_mip_era        CMIP6      parent_source_id      GISS-E2-1-G    parent_time_units         days since 2015-1-1    parent_variant_label      r1i1p1f2   physics_index               product       model-output   realization_index               realm         atmos      
references        'https://data.giss.nasa.gov/modelE/cmip6    	source_id         GISS-E2-1-G    source_type       	AOGCM AER      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(21 March 2018) MD5:a2d322762b918858e63dee163d841246     title         %GISS-E2-1-G output prepared for CMIP6      tracking_id       1hdl:21.14100/b484e6ab-74fb-4c8d-a73f-987700a1e46a      variable_id       tas    variant_label         r1i1p1f2   license      cCMIP6 model data produced by NASA Goddard Institute for Space Studies is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-1-1    calendar      365_day    axis      T           H   	time_bnds                             P   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           @   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       �2021-04-14T09:24:36Z altered by CMOR: Treated scalar dimension: 'height'. 2021-04-14T09:24:36Z altered by CMOR: replaced missing value flag (-1e+30) with standard missing value (1e+20).         ,  `@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C��|C��#C�ݷC�ygC�Y�C���C��iC��/C���C��C���@��     @�      @�      C��aC��)C��C���C�wgC�˖C��C�j6C�qDC���C��'@��     @��     @�h     C��WC���C��8C���C�z�C��/C���C���C���C��C���@�.     @�x     @��     C���C��nC���C��,C��jC�$�C��EC�T�C�AVC���C��@��     @�,     @��     C�� C�҆C��\C�t�C��LC�)C�͠C��IC�̑C�%KC���@��     @��     @�(     C��UC��*C��iC���C�u�C��yC���C���C���C�-C���@��     @�J     @�     C���C��zC�ۆC��C�{�C��C���C���C�6iC�{�C�lr@�     @�$     @��     C��C��1C��vC���C��{C�'�C��C��zC�y�C���C�g+@�Y     @��     @��     C���C���C�1C��,C��uC�7�C���C���C�boC��C��*@�3     @��     @��     C��PC��JC��C���C��3C��C��4C���C�^QC���C��4@�     @��     @�j     C���C�	�C��C���C��NC�KC�yC��{C�܊C��C��@�s�    @�F     @��     C��C�cC��C�ުC��C�b8C��LC�ڐC���C���C��@���    @��     @�     C��nC��sC�(eC��FC�ͩC��C���C��HC���C��C�ș@�M�    @�      @�|     C���C���C��C���C��lC�-C���C���C�¶C��C���@���    @��     @��     C�jC��C��C��C�v�C��lC���C��~C�˷C�A�C��@�'�    @��     @�V     C�(aC�9C�@�C���C���C�;4C��sC���C��ZC��&C��@���    @�g     @��     C���C��C� �C��C��C�7�C���C���C���C��<C���@��    @��     @�0     C���C�
C�AC���C��2C�tC�"�C��^C���C��7C��!@�n�    @�A     @��     C�/C��C�C��0C���C�5�C���C���C�C�jXC�;@�ۀ    @��     @�
     C�)�C�/C�/�C��fC��oC�a(C�'C�PC�%C�zaC�T@�H�    @�     @�w     C�
�C�%C�S�C��aC�դC�>�C��C��|C�&C�zC��'@���    @��     @��     C���C��C�6�C���C��FC�N C��C��C�6C���C�2@�@    @��     @�(�    C�![C�/�C�;�C��cC��~C�=C��C��rC��C���C�R�@���    @��     @��     C�M�C�WWC�G:C��1C��dC�JkC��KC�ߐC���C�|�C�$�@�~@    @�g�    @���    C�$�C�/�C�Z�C�iC���C��C�5jC�IC��LC�>�C�� @�4�    @�     @�L     C���C�lC�G+C��C��C��YC�C��}C���C��C��~@��@    @�Ԁ    @��    C�'�C�!�C�C���C���C�GOC� �C�9MC�u�C���C�_I@á�    @Ë     @ù     C�AqC�X�C�e�C�!�C�	C�a�C� �C��C�!gC��C�+}@�X@    @�A�    @�o�    C��C�!4C�Y�C��C���C�gXC�C��C�C�yC�@@��    @��     @�&     C�3C�7�C��,C�6�C��C�oC�8�C�&C�:.C��uC�G�@��@    @Ů�    @�܀    C�@�C�AC�V|C��C���C�L5C�(C���C�7C��.C�;G@�{�    @�e     @Ɠ     C�H C�M�C�W�C��C��%C�S�C�4�C�B�C��C� HC�j�@�2@    @��    @�I�    C�0�C�:}C�U�C�C�WC���C�fBC�G�C�=DC�~3C�@���    @��     @�      C�)C�7�C�xhC�4�C��C��2C�>HC�'�C�\C���C�g@ȟ@    @Ȉ�    @ȶ�    C�T�C�L�C�?�C���C�؀C�R@C�(�C�K�C��C�BC�|�@�U�    @�?     @�m     C���C��{C�|uC�3tC�3?C���C�J�C�'�C�M�C�ˌC�<�@�@    @���    @�#�    C�@LC�^�C��C�itC�LC��<C�2�C�ZC���C���C�2y@���    @ʬ     @��     C�BxC�S~C���C�_�C�fC��C�E�C�C�C���C�=n@�y@    @�b�    @ː�    C�h�C�r�C��]C�UbC�g�C��WC�=�C�
�C�2�C���C�:@�/�    @�     @�G     C�qC�o�C���C�O[C�N�C���C�F�C�TC�jC�f�C��@��@    @�π    @���    C�_�C�{�C��MC�WC�9�C���C�RXC�Q�C��9C��<C�w�@͜�    @͆     @ʹ     C�sgC���C��^C�r�C�MBC���C�(�C�C�C���C���C�_@�S@    @�<�    @�j�    C�nbC���C���C�~NC�T�C��@C�m
C�N�C�g�C��+C�m�@�	�    @��     @�!     C�s�C���C�ԾC���C�c"C���C�7�C��C��MC�QAC�/z@��@    @ϩ�    @�׀    C�x�C��C���C�MWC�;<C���C�j+C�g�C�bTC���C�N�@�;`    @�0     @�G     C�wRC��C��C��AC�GrC��>C�>#C�%C�&�C��C�'A@Ж�    @Ћ@    @Т@    C�Z�C���C���C�u�C�M4C��>C�`XC�R�C�L�C���C�_�@���    @��    @���    C��KC���C���C�`�C�I�C���C�TbC�b�C��AC�:5C��z@�M     @�A�    @�X�    C�bHC���C���C���C���C��{C�r�C�:�C�TjC��4C�~�@Ѩ`    @ѝ     @Ѵ     C�@�C�aOC���C�p�C�h�C���C�l�C�K�C�J�C��=C�Y@��    @��@    @�@    C�{�C���C��7C�AC�)rC��KC�{�C�X,C�qC�C��@�^�    @�S�    @�j�    C�n�C���C�͛C��+C�iNC���C�d�C�S�C�q!C��nC���@Һ     @Ү�    @���    C��1C��}C�˽C�w�C�caC��;C�h�C�I_C�t�C��C��?@�`    @�
     @�!     C��BC���C���C��QC�r�C���C��<C�iDC���C��C���@�p�    @�e@    @�|@    C��C��C�ޫC���C���C�xC��1C��_C���C��C���@���    @���    @�׀    C���C��rC���C���C���C��C��BC�~C�x>C���C��@�'     @��    @�2�    C��C���C��C��'C�]�C��C�̡C��hC��C�<=C��x@Ԃ`    @�w     @Ԏ     C�x�C��|C��C���C�|�C��C��zC��C�˴C�U�C���@�ݠ    @��@    @��@    C��tC��JC���C�SJC�OC���C�h�C���C��'C��+C��@�8�    @�-�    @�D�    C��+C��lC��zC��hC�XC���C�rCC���C�ѭC�gC���@Ք     @Ո�    @՟�    C���C��KC�#C���C��&C�޻C�{C��bC��_C�I9C��@��`    @��     @��     C���C���C��C���C�y�C�ΚC���C���C���C�j�C��D@�J�    @�?@    @�V@    C���C���C��C��CC���C�LC���C�f�C�p�C�`C�ٽ@֥�    @֚�    @ֱ�    C��tC���C���C��C���C��"C��$C���C�½C�`UC���@�     @���    @��    C���C���C��AC���C��MC��C���C��DC��rC�;C���@�\`    @�Q     @�h     C���C��+C��aC�� C��3C�5C��,C���C���C��C�1G@׷�    @׬@    @��@    C���C��tC�3BC��C��PC�F�C��C���C��C��WC��@��    @��    @��    C��PC��cC��C��[C���C�iC��\C�{C���C�53C��Z@�n     @�b�    @�y�    C���C��MC�"�C���C���C�gC��|C��vC��kC�g�C��@��`    @ؾ     @��     C���C�`C�>VC���C���C� !C��yC���C�иC��pC�"L@�$�    @�@    @�0@    C��bC��C�5BC��]C���C���C�{LC�g�C�w�C��C��v@��    @�t�    @ً�    C��nC�¢C���C��|C��9C�8�C�ǉC��6C��eC��C��@@��     @���    @���    C��C��C��C���C���C�FC���C��bC��_C�_�C���@�6`    @�+     @�B     C��ZC�ԺC��C��>C���C��C���C�xC��C�*�C���@ڑ�    @چ@    @ڝ@    C��C��C��C��~C��C�U�C���C���C��pC�Z6C��@���    @��    @���    C�ĪC��C�N�C�&�C�CC�[1C��`C��C���C�bsC�1@�H     @�<�    @�S�    C���C���C�LC��HC��4C�'�C��4C��$C�TC���C�ND@ۣ`    @ۘ     @ۯ     C��<C�C�"�C�ЙC��}C�)�C��cC���C�ӍC���C�=�@���    @��@    @�
@    C��UC�NC�S(C�3C��LC�-~C��SC�ʬC�C��C���@�Y�    @�N�    @�e�    C��C�DC��C���C�{�C�
C���C���C��{C���C��@ܵ     @ܩ�    @���    C��4C��aC��C���C��5C�3C��jC��9C�V�C��C�c@@�`    @�     @�     C��?C�
=C�6�C��KC���C�/aC��C��C�!�C���C���@�k�    @�`@    @�w@    C���C��C�\�C�-�C��C�t�C� @C��4C�ݴC�S�C���@���    @ݻ�    @�Ҁ    C��C�=C��C�ԜC��C�K�C��C��FC���C�k�C��@�"     @��    @�-�    C���C� �C�y�C�D�C�(�C�{�C��+C���C��C�C��$@�}`    @�r     @މ     C�˿C�
qC�_�C�`C���C�qC�jC��C��wC�#�C��~