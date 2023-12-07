CDF   V   
      time       bnds      lon       lat          2   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      wSat Oct 28 07:26:27 2023: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc
Sat Oct 28 07:26:27 2023: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Sat Oct 28 07:16:52 2023: cdo -s -O zonmean -selindexbox,1,144,37,73 -seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,tas /home/dark/windows/Downloads/cmip6-ssp370-lowntcf/cdo_cat//tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_201501-210012.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc
Sat Oct 28 05:37:29 2023: cdo cat tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_201501-205012.nc tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_205101-210012.nc tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p1f2_gn_201501-210012.nc
2021-04-17T08:34:38Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.    source       �GISS-E2.1G (2019): 
aerosol: Varies with physics-version (p==1 none, p==3 OMA, p==4 TOMAS, p==5 MATRIX)
atmos: GISS-E2.1 (2.5x2 degree; 144 x 90 longitude/latitude; 40 levels; top level 0.1 hPa)
atmosChem: Varies with physics-version (p==1 Non-interactive, p>1 GPUCCINI)
land: GISS LSM
landIce: none
ocean: GISS Ocean (GO1, 1 degree; 360 x 180 longitude/latitude; 40 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: GISS SI   institution       <Goddard Institute for Space Studies, New York, NY 10025, USA   activity_id       
AerChemMIP     branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact        Kenneth Lo (cdkkl@giss.nasa.gov)   creation_date         2021-04-17T08:34:38Z   data_specs_version        01.00.23   
experiment        !SSP3-7.0, with low NTCF emissions      experiment_id         ssp370-lowNTCF     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Whttps://furtherinfo.es-doc.org/CMIP6.NASA-GISS.GISS-E2-1-G.ssp370-lowNTCF.none.r3i1p1f2    grid      -atmospheric grid: 144x90, ocean grid: 288x180      
grid_label        gn     initialization_index            institution_id        	NASA-GISS      mip_era       CMIP6      model_id      E213SSP370LOWcF40oQ40      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_experiment_rip         r3i1p1f2   parent_mip_era        CMIP6      parent_source_id      GISS-E2-1-G    parent_time_units         days since 2015-1-1    parent_variant_label      r3i1p1f2   physics_index               product       model-output   realization_index               realm         atmos      
references        'https://data.giss.nasa.gov/modelE/cmip6    	source_id         GISS-E2-1-G    source_type       	AOGCM AER      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(21 March 2018) MD5:1b661ae68e72e9edc0e6c10f51f7fd81     title         %GISS-E2-1-G output prepared for CMIP6      tracking_id       1hdl:21.14100/12a7892f-6afd-484f-b65f-b083d60b1dce      variable_id       tas    variant_label         r3i1p1f2   license      cCMIP6 model data produced by NASA Goddard Institute for Space Studies is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-1-1    calendar      365_day    axis      T           H   	time_bnds                             P   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           @   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       �2021-04-17T08:34:38Z altered by CMOR: Treated scalar dimension: 'height'. 2021-04-17T08:34:38Z altered by CMOR: replaced missing value flag (-1e+30) with standard missing value (1e+20).         ,  `@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C��TC�ؗC��C�p)C�lmC���C��8C���C�zC��-C�kV@��     @�      @�      C���C��'C���C���C��C�QC��BC�aOC�#�C�sC�~(@��     @��     @�h     C��zC��`C���C���C�
+C�qxC��nC�o�C�<�C���C��t@�.     @�x     @��     C��[C��HC���C�}�C��cC��C���C�r#C�U�C���C���@��     @�,     @��     C���C��OC��C���C�}C���C���C���C���C��TC��@��     @��     @�(     C���C��C�ۡC�uC�Z�C���C��fC��C��C�L�C��@��     @�J     @�     C��kC�ӪC�*C��bC��C�%C��MC��{C�˔C�6�C��S@�     @�$     @��     C�ϊC��LC���C���C��C��[C���C�Y�C�GC��]C�t@�Y     @��     @��     C��!C�� C��sC��_C��7C��C���C���C���C���C��`@�3     @��     @��     C��C�{C�&nC��`C��C�.�C��5C��?C�͎C�#`C��@�     @��     @�j     C���C�	�C�%�C���C���C�cC���C��
C�ujC���C��B@�s�    @�F     @��     C��C��C��	C���C���C�5aC��.C���C�0�C�oC�i�@���    @��     @�     C�{C�)C�N�C��C��<C�@�C��TC���C���C���C���@�M�    @�      @�|     C��C�$C��C��PC��SC��C���C���C�� C� �C��V@���    @��     @��     C��C��C�FC�ݿC��C��C��"C��C�
bC�Q�C��'@�'�    @��     @�V     C���C���C��C���C��QC�3XC�CC�	 C�;sC���C�#@���    @�g     @��     C��C���C�1�C���C��C�h�C�C�رC���C�C��@��    @��     @�0     C���C�"<C�P�C��5C���C��C��VC��C�93C�ϱC�O�@�n�    @�A     @��     C��C��C�6+C���C���C�<eC�lC��C�=�C��cC�&@�ۀ    @��     @�
     C�XC�6nC�T4C��C��>C�c%C��XC��!C���C� �C�ۚ@�H�    @�     @�w     C�=C�"&C�9C��C�"�C���C�ByC�'�C�6�C���C��@���    @��     @��     C�
xC��C� cC���C��C�zC��C��'C��C��C��`@�@    @��     @�(�    C�$CC�#�C�)�C��:C��*C�+�C��C���C�C�UQC���@���    @��     @��     C�6�C�7<C�$�C��]C�ҦC�OoC��C�^C�@}C��LC��@�~@    @�g�    @���    C�0NC�H�C�s�C�+�C�
{C�N�C��C��+C��C���C�@@�4�    @�     @�L     C�&C�@�C�~7C�E@C�5�C���C��C�݉C��C�:C���@��@    @�Ԁ    @��    C��C�+C�O�C�~C� �C�`�C��#C��C�l�C�̶C��M@á�    @Ë     @ù     C��C�%�C�?�C��C��LC�Y�C��C��yC��UC�i�C�-L@�X@    @�A�    @�o�    C�H{C�_�C�rrC�!�C�?C��yC�2�C�VC�"C���C�,�@��    @��     @�&     C�!�C�RGC��dC�O�C�1�C���C�'�C���C��C�p�C��@��@    @Ů�    @�܀    C�<�C�-6C�/IC��C�C��gC�*C���C��C���C�+�@�{�    @�e     @Ɠ     C�a�C�i�C�s�C�BC�D�C��wC�0<C�
�C��C��fC�H�@�2@    @��    @�I�    C�?dC�M�C��C�R]C�R�C���C�=�C��C� RC�Z9C���@���    @��     @�      C�
�C�/�C��xC�t\C���C���C�5C��C���C�;&C��@ȟ@    @Ȉ�    @ȶ�    C�3�C�CJC�m+C�0jC��C���C��C���C��RC�`ZC�p@�U�    @�?     @�m     C�H�C�Q:C���C�p:C���C�fC���C�F�C�Q3C��fC�|"@�@    @���    @�#�    C�B�C�]�C���C�w�C���C��*C�QvC�'�C�R}C���C�r�@���    @ʬ     @��     C�j�C�nyC�q�C��C�PC��C�^�C�d�C���C� �C�\u@�y@    @�b�    @ː�    C�`�C�O�C�R,C�_C�!�C��YC��SC�}�C��CC�mC�nm@�/�    @�     @�G     C�~C���C�wGC�!�C��C��XC��!C���C��CC�=zC�qC@��@    @�π    @���    C��C���C��`C�p�C�G�C��mC�T
C�O�C�~�C�կC�F�@͜�    @͆     @ʹ     C�bJC��C���C��:C���C��C���C�a�C�S�C���C���@�S@    @�<�    @�j�    C�M�C�p�C��XC�v�C�gYC���C��C�q0C�y�C�ҤC�^@�	�    @��     @�!     C�b-C�s	C���C�(<C��-C��TC�k�C�wC��C�<*C���@��@    @ϩ�    @�׀    C���C��]C���C�W&C�HCC��	C���C���C���C��EC�Tp@�;`    @�0     @�G     C���C���C�uC�)�C�+�C���C�?�C�O�C���C�#
C��i@Ж�    @Ћ@    @Т@    C�q�C��,C��VC��,C�_dC���C�WuC�.�C�)�C��C�MG@���    @��    @���    C�`C�z2C��0C�l%C�8�C���C�C�C��C��C���C�Ag@�M     @�A�    @�X�    C�vSC���C��C�H�C��C���C�l�C�t�C��C�*dC���@Ѩ`    @ѝ     @Ѵ     C�uC���C���C�?�C�[C��EC���C��2C���C�-�C���@��    @��@    @�@    C���C���C���C�E3C�/C��@C���C��WC��C�_�C���@�^�    @�S�    @�j�    C�OsC�~SC��qC��6C���C�=�C���C�N�C�=�C��oC�l}@Һ     @Ү�    @���    C�w�C�~IC���C��	C�u�C��)C���C��C���C��IC��u@�`    @�
     @�!     C��C���C��C�PlC�'$C���C���C��YC��C��+C��@�p�    @�e@    @�|@    C��wC���C��0C�A2C�3�C��HC��9C��
C��C��RC���@���    @���    @�׀    C�GGC�t�C��C��4C��C��C���C�s�C�X�C���C�s.@�'     @��    @�2�    C�}/C��C���C��<C�xyC��5C��C��)C���C��JC�y@Ԃ`    @�w     @Ԏ     C��rC���C���C�g�C�U�C���C��*C���C��C�E~C��L@�ݠ    @��@    @��@    C���C��C� C��C�dC��jC���C��tC��C���C�ۘ@�8�    @�-�    @�D�    C���C��jC���C���C��
C� �C�̤C���C���C�	9C���@Ք     @Ո�    @՟�    C���C���C��C��C�uzC�� C���C���C��7C�vC��@��`    @��     @��     C��SC��bC���C���C���C� -C���C��oC��C�o;C��)@�J�    @�?@    @�V@    C�C���C���C���C��'C�>�C���C�|�C��sC�G�C��b@֥�    @֚�    @ֱ�    C��eC���C� �C��7C��GC� PC��C��/C��C�?�C��P@�     @���    @��    C���C��/C�`C���C��}C�5C��KC�n{C���C��C���@�\`    @�Q     @�h     C���C���C���C�u�C�R#C���C���C���C�	[C���C�:�@׷�    @׬@    @��@    C��\C�ԐC���C��`C�w�C��C��>C���C��\C�@�C��@��    @��    @��    C��[C��C�1C��rC�� C��C���C��jC���C�2�C��/@�n     @�b�    @�y�    C��C��C��C�zC�S�C�݌C���C��C��qC�w�C��@��`    @ؾ     @��     C���C���C��C��FC���C���C��;C��C���C���C�&@�$�    @�@    @�0@    C��5C���C�<C��PC��C�cGC��C���C���C��C��\@��    @�t�    @ً�    C���C���C�-DC��C��C�M-C��nC�ȽC���C�$C��x@��     @���    @���    C��C��$C�#LC�� C���C�JC���C���C��2C�s�C���@�6`    @�+     @�B     C���C��=C�!iC��7C�֋C�[�C��C��C��C�<�C��G@ڑ�    @چ@    @ڝ@    C��JC��oC��C��/C��9C�-�C���C��yC��C���C��%@���    @��    @���    C��C���C�B1C� C��C�6C��C��7C��$C�C�C��@�H     @�<�    @�S�    C���C��C�@�C�-�C�0�C���C�"C���C�EC�C��@ۣ`    @ۘ     @ۯ     C��C�QC�4KC���C��=C�K�C���C��UC� 
C���C�1@���    @��@    @�
@    C���C��C�\C�C��C�LJC���C��C��C�(�C��Q@�Y�    @�N�    @�e�    C���C��C�8�C��~C��CC�d�C���C���C�ͥC�=UC��B@ܵ     @ܩ�    @���    C��C��C�A|C��#C���C�D�C��kC���C�� C�u�C��@�`    @�     @�     C���C���C���C��RC��RC�N�C�YC�GC�.C���C�$1@�k�    @�`@    @�w@    C�C�-C�cVC� eC�`C��C�1�C�
C�!�C��C��;@���    @ݻ�    @�Ҁ    C��"C�C�e�C�+C�bC�b�C��CC��,C��C�y!C�
@�"     @��    @�-�    C�	�C��C�7�C��C���C�H�C��}C���C�(�C���C��@�}`    @�r     @މ     C��C�9�C�cQC�C��
C�W�C� �C��3C�C���C��