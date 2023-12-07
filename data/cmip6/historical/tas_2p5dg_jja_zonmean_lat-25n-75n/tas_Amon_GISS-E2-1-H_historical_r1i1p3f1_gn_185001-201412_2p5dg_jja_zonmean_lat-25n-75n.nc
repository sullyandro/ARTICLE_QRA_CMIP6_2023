CDF   �   
      time       bnds      lon       lat          2   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      �Sat Oct 28 19:41:37 2023: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Sat Oct 28 19:41:37 2023: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Oct 28 19:39:38 2023: cdo -s -O zonmean -selindexbox,1,144,37,73 -seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,tas /home/dark/windows/Downloads/cmip6-hist-new/cdo_cat//tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_185001-201412.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean.nc
Sat Oct 28 16:56:17 2023: cdo cat tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_185001-190012.nc tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_190101-195012.nc tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_195101-200012.nc tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_200101-201412.nc cdo_cat/tas_Amon_GISS-E2-1-H_historical_r1i1p3f1_gn_185001-201412.nc
2019-11-09T20:00:43Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.    source       �GISS-E2.1H (2016): 
aerosol: Varies with physics-version (p==1 none, p==3 OMA, p==4 TOMAS, p==5 MATRIX)
atmos: GISS-E2.1 (2.5x2 degree; 144 x 90 longitude/latitude; 40 levels; top level 0.1 hPa)
atmosChem: Varies with physics-version (p==1 Non-interactive, p>1 GPUCCINI)
land: GISS LSM
landIce: none
ocean: HYCOM Ocean (~1 degree tripolar grid; 360 x 180 latitude/longitude; 26 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: GISS SI    institution       <Goddard Institute for Space Studies, New York, NY 10025, USA   activity_id       CMIP   branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact        Kenneth Lo (cdkkl@giss.nasa.gov)   creation_date         2019-11-09T20:00:43Z   data_specs_version        01.00.23   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Shttps://furtherinfo.es-doc.org/CMIP6.NASA-GISS.GISS-E2-1-H.historical.none.r1i1p3f1    grid      -atmospheric grid: 144x90, ocean grid: 360x180      
grid_label        gn     initialization_index            institution_id        	NASA-GISS      mip_era       CMIP6      model_id      Eh212Tomaf10a_2    nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_experiment_rip         r1i1p3     parent_mip_era        CMIP6      parent_source_id      GISS-E2-1-H    parent_time_units         days since 2000-1-1    parent_variant_label      r1i1p3f1   physics_index               product       model-output   realization_index               realm         atmos      
references        'https://data.giss.nasa.gov/modelE/cmip6    	source_id         GISS-E2-1-H    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(21 March 2018) MD5:c93735846d66458966fc81f390b2d714     title         %GISS-E2-1-H output prepared for CMIP6      tracking_id       1hdl:21.14100/74fd302d-9f03-4358-b785-3b268eb433c5      variable_id       tas    variant_label         r1i1p3f1   license      cCMIP6 model data produced by NASA Goddard Institute for Space Studies is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-1-1    calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           ,   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  4   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           �   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       �2019-11-09T20:00:43Z altered by CMOR: Treated scalar dimension: 'height'. 2019-11-09T20:00:43Z altered by CMOR: replaced missing value flag (-1e+30) with standard missing value (1e+20).         ,  �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C�d+C���C��}C��EC�%_C��C�ؘC�ƳC���C���C�@��     @�      @�      C�i"C��>C��NC��jC�+FC�!�C�0%C�MC�ȲC��~C�)8@��     @��     @�h     C�WC�y�C��AC���C�qC��MC��ZC�v�C�;C�q�C��_@�.     @�x     @��     C�i{C��qC�ʜC��qC�#8C�sC��FC���C�tC���C���@��     @�,     @��     C�ecC��]C�6C��C�<�C��xC���C��nC���C��3C���@��     @��     @�(     C�Z�C��C��>C���C�=C��C��fC�ߖC�ƮC��C��@��     @�J     @�     C�t<C���C��C��C��C���C��+C��0C�|EC���C��@�     @�$     @��     C�vC��2C���C��pC�-�C��C���C���C���C�ӷC�+�@�Y     @��     @��     C�5�C�{�C��C�GZC���C���C��C�w�C�\�C��'C��z@�3     @��     @��     C�6AC�]C�ļC�ɭC�rC���C��;C�q.C�/�C�hC���@�     @��     @�j     C�_�C�w C��TC���C�ȁC���C�|1C�r"C�M:C��C�\@�s�    @�F     @��     C��|C���C���C��C��C���C��zC���C� C�F�C���@���    @��     @�     C�o"C���C��KC��}C�܁C��ZC���C��2C���C���C�@�@�M�    @�      @�|     C�O�C�w�C��EC��(C�7tC��3C��@C��YC�u C��nC�"@���    @��     @��     C�8/C�^{C��|C��C�()C��kC��vC��/C�v�C���C��s@�'�    @��     @�V     C�]6C�w�C��8C��#C��C���C��qC���C��fC���C�b@���    @�g     @��     C�P]C�g�C��2C���C�>�C��!C���C��=C���C�ɒC��@��    @��     @�0     C�\C�}~C�ĕC���C��nC��qC��#C�ɊC���C��C�I�@�n�    @�A     @��     C�b�C��-C�˴C��
C�C���C���C��#C�׉C�=�C�Y!@�ۀ    @��     @�
     C�]�C�wC���C��hC��C��C��PC�� C�q�C���C�Y@�H�    @�     @�w     C�z�C���C���C��`C���C��qC��C�ԢC���C��XC�%*@���    @��     @��     C�]�C�{�C��JC���C�5ZC���C��C��<C��C��dC��@�@    @��     @�(�    C�OC�z	C��KC��-C�(C���C���C�u�C�9�C�zC� @���    @��     @��     C�o�C��NC���C���C���C��iC���C��C�r�C���C��@�~@    @�g�    @���    C�pbC���C��=C��"C�-C���C�ޅC�ͬC���C��C�%y@�4�    @�     @�L     C�q{C��C��FC���C� C��C�ʹC���C���C�DC�Dk@��@    @�Ԁ    @��    C�P8C�w%C���C�ڼC�B�C�
�C��C���C�S�C���C��L@á�    @Ë     @ù     C�jpC�t�C���C���C�%C��C��:C��C�~�C��dC���@�X@    @�A�    @�o�    C��,C��C��C��#C���C���C���C���C��\C���C�.Q@��    @��     @�&     C�_�C���C���C��(C�,C���C��FC��4C�t~C���C�	�@��@    @Ů�    @�܀    C�7$C�d�C��C��yC�`�C��C��C���C�Z�C���C��U@�{�    @�e     @Ɠ     C�N|C�z:C�۞C���C�EYC��C�׊C���C�KkC�O�C��U@�2@    @��    @�I�    C�T�C���C���C� �C��6C�<�C���C���C�2�C�>�C�ҧ@���    @��     @�      C��C���C���C��5C�bC���C��aC��lC��8C���C�&;@ȟ@    @Ȉ�    @ȶ�    C�M~C�Z�C��{C�y�C���C�X�C�E)C�/�C���C�,UC��A@�U�    @�?     @�m     C�u�C�o�C��0C�s�C��C���C�q C�`�C�<C�x"C���@�@    @���    @�#�    C�$C�L�C���C��C�+C��WC�OC�c"C�/�C�~�C���@���    @ʬ     @��     C�.�C�WhC���C��C�>�C���C��RC�ozC� 3C�B0C��	@�y@    @�b�    @ː�    C�Q C�uC���C���C�ЖC��zC���C���C��C���C��@�/�    @�     @�G     C�~�C��+C��,C���C�ZC�ʰC���C��.C�S�C���C��^@��@    @�π    @���    C��gC���C��:C��kC�&�C���C���C���C�s{C��eC�8@͜�    @͆     @ʹ     C�\C���C���C��mC���C��C���C��*C�)�C�KHC��f@�S@    @�<�    @�j�    C�B�C�k�C��FC� �C�<�C���C�~�C�QJC��C�b7C��@�	�    @��     @�!     C�O�C�c�C���C�ϸC�,�C���C��+C�u�C�&pC�TlC���@��@    @ϩ�    @�׀    C�gTC��<C��	C�ґC��C��4C��XC��C��[C���C�!�@�;`    @�0     @�G     C�r�C�m�C��PC��qC�GC�RC��C��C��=C���C��@Ж�    @Ћ@    @Т@    C�|
C��QC�ńC��[C� KC���C���C���C�OhC��nC���@���    @��    @���    C�`�C��9C���C���C�_YC�"�C�ِC��XC�R�C���C��4@�M     @�A�    @�X�    C�_�C���C���C���C�F�C�rC��}C��:C�y*C��qC�i@Ѩ`    @ѝ     @Ѵ     C�K6C�d-C��PC��C��C���C���C��sC�^xC��OC��@��    @��@    @�@    C�gC�|/C���C��C���C��5C��\C��HC�L_C�pXC���@�^�    @�S�    @�j�    C�T�C�\C���C���C�"�C���C���C���C�g+C�t]C���@Һ     @Ү�    @���    C�g)C���C�՟C��C� �C�ńC���C�u�C�;�C�}C��@�`    @�
     @�!     C�S?C�W	C���C�pC��JC�O�C�0C�*�C�!C�P�C���@�p�    @�e@    @�|@    C�t�C�{C���C���C��OC�p�C�K�C�@IC�*�C�U�C��W@���    @���    @�׀    C�%�C�SAC���C�ׁC�+C��C��[C�o4C�BC���C�[@�'     @��    @�2�    C�IMC�oC��LC��GC��gC��WC���C�WTC�$C�Z�C��M@Ԃ`    @�w     @Ԏ     C�YC�zC���C��7C��?C��TC��rC��,C���C��<C�@�ݠ    @��@    @��@    C�~�C���C��C���C��]C���C���C���C�p|C��cC��k@�8�    @�-�    @�D�    C���C��pC���C��!C��C���C���C���C���C�ϵC�	x@Ք     @Ո�    @՟�    C�l2C��xC��C���C��C��C��7C��WC���C���C�5@��`    @��     @��     C�C_C�v@C���C���C�
C��#C��C��C��>C���C�L@�J�    @�?@    @�V@    C�;�C�C�C��rC���C��tC���C�`-C�IC��oC��C�@֥�    @֚�    @ֱ�    C�QC�WuC��C��MC�ۖC��5C��&C�jhC�C]C��gC��@�     @���    @��    C�z C�v�C���C�h�C���C��wC�āC��vC��TC��C�.@�\`    @�Q     @�h     C�:�C�l�C��XC���C��C���C��9C��jC�P$C���C��@׷�    @׬@    @��@    C�U�C�z�C���C��CC��C��C��C���C���C���C�@@��    @��    @��    C���C���C���C���C��C�ҮC��C��{C��C��=C�x@�n     @�b�    @�y�    C��^C��%C���C���C���C��C��jC��C���C�۳C�z@��`    @ؾ     @��     C�v�C�*C���C��8C�1�C��C��C��
C��C�C�
�@�$�    @�@    @�0@    C�z	C���C��!C���C� �C���C��C��C���C��TC��@��    @�t�    @ً�    C�k�C���C��jC���C�)�C��C�ΓC���C�axC��%C�4@��     @���    @���    C���C��)C��]C�s�C��KC��#C���C���C��C��aC�7@�6`    @�+     @�B     C���C��XC���C���C��!C�ϦC���C���C�]C��SC��`@ڑ�    @چ@    @ڝ@    C��nC�� C��C��C�ΥC���C��*C���C��.C��C�S,@���    @��    @���    C�{(C���C��	C��bC��C��RC�ۿC��bC���C�BQC�h�@�H     @�<�    @�S�    C�gMC���C��C� C�I�C��NC���C��nC�U5C�xFC���@ۣ`    @ۘ     @ۯ     C�pFC���C��C�ػC�1SC� �C���C���C�d7C���C��@���    @��@    @�
@    C�\�C�|�C�חC��C�*)C���C��0C���C�P�C���C�'�@�Y�    @�N�    @�e�    C��gC���C��jC��C��=C���C�ʇC��C���C��aC�>]@ܵ     @ܩ�    @���    C�q�C���C��aC�� C�bC��,C��C��:C�o�C���C��@�`    @�     @�     C�g~C���C���C��C��C��cC���C���C�VHC�z�C��)@�k�    @�`@    @�w@    C���C���C���C��2C���C��;C��C��rC�ԬC�HC�`T@���    @ݻ�    @�Ҁ    C���C��vC��bC��6C���C��jC��^C���C��jC��C�/�@�"     @��    @�-�    C��C���C���C��qC�FsC��C��C��C�ȨC��6C��@�}`    @�r     @މ     C���C��C��VC��!C�$�C�͈C���C��C��UC�C�B�@�ؠ    @��@    @��@    C�{ZC��C��9C���C�.�C��uC�ՐC���C���C���C�@�3�    @�(�    @�?�    C�|�C��UC��C��C�@�C�� C�͕C��C�]�C�t=C��7@ߏ     @߃�    @ߚ�    C�n�C���C��C�ܕC��C���C�ӱC��,C��]C�۪C�!@��`    @��     @��     C�`�C�xWC��PC���C�;C��JC���C��vC���C��8C�#f@�"�    @�     @�(�    C�^IC�u9C��FC��rC�}C�uC���C��4C�� C��QC�Y^@�Pp    @�J�    @�V@    C�a C��WC��C���C�-�C��C���C��vC��rC���C�K@�~    @�x`    @���    C�n|C���C���C���C�2 C��5C���C�SC�bC�+�C�F#@૰    @�     @ీ    C�i�C�xC���C���C�
�C��C��bC���C��C��NC�o@��P    @�Ӡ    @��     C��IC��C���C���C��C��C��C�C��5C� C��@��    @�@    @��    C�yC���C�� C��C���C���C���C��C��3C��#C�'"@�4�    @�.�    @�:`    C�r�C��]C��-C��C�RC�٘C��yC��*C���C�ۿC�@�@�b0    @�\�    @�h     C�i�C��~C��[C�͇C��C���C��C��HC���C�C�Ia@��    @�     @ᕠ    C��C���C��+C���C��`C��6C��/C���C���C��YC�
�@�p    @��    @��@    C���C���C���C���C�	�C���C��2C�� C�ȖC��cC��@��    @��`    @���    C�u%C��oC�ڷC�ƯC���C��mC���C��^C�y�C�ҴC�9A@��    @�     @��    C��3C���C��1C�r�C��C��IC��C���C���C�@5C�n�@�FP    @�@�    @�L     C��^C��dC��C��EC�ߎC���C���C���C���C��<C�v@�s�    @�n@    @�y�    C��/C�ƻC���C�{wC���C��YC���C���C���C�%C�4
@⡐    @��    @�`    C��RC���C��gC���C���C���C��jC��uC�n�C���C�3�@��0    @�ɀ    @��     C�Z�C���C��C���C��C��UC���C���C�H�C��EC�_@���    @��     @��    C�L�C�n�C��C���C��C���C��AC���C��C�НC�+�@�*p    @�$�    @�0@    C��	C���C���C��WC���C�ĊC��C��]C���C�~5C��*@�X    @�R`    @�]�    C���C��'C���C���C���C��C���C�C�^�C���C���@ㅰ    @�     @㋀    C��eC��KC�`C���C��C���C���C��~C�CC���C�(@�P    @㭠    @�     C�qZC���C��_C��@C�C���C���C��4C��C��rC�	O@���    @��@    @���    C�_qC�s�C��yC���C��C���C�ˎC��C��*C��8C�@��    @��    @�`    C�k6C�w�C���C��jC��C��mC���C�C�R�C�w[C��7@�<0    @�6�    @�B     C�>C��VC���C��$C��C�ʂC���C���C�_aC�� C��@�i�    @�d     @�o�    C�jfC�{pC���C���C��?C��%C���C���C��dC��cC���@�p    @��    @�@    C�y�C���C���C���C��"C��^C���C�i�C�LuC���C���@��    @�`    @���    C�}�C��:C���C���C��3C���C�̼C���C���C���C��@��    @��     @���    C�m�C��yC���C���C��C���C��cC���C�z�C���C��p@� P    @��    @�&     C�f<C���C���C���C��5C���C���C��C�xC��PC��@�M�    @�H@    @�S�    C�r�C�}C��#C���C���C��|C���C��EC���C���C�*�@�{�    @�u�    @�`    C���C��uC���C�n C��nC���C��FC��fC���C���C��@�0    @壀    @�     C���C��IC��\C���C�� C���C���C��C�χC�,C�R�@���    @��     @�ܠ    C�p�C��C��EC��zC�bC���C���C��}C�rzC���C��@�p    @���    @�
@    C���C���C��QC���C��$C��uC��qC���C��7C��[C�h@�2    @�,`    @�7�    C���C��QC�ȟC��PC���C���C���C���C���C���C�@�_�    @�Z     @�e�    C�w7C��C���C���C���C���C�x�C�_C�1|C�wyC� @�P    @懠    @�     C�Y-C�j�C��1C���C��C�ʛC��nC��cC�g�C��XC��@��    @�@    @���    C�w�C�{-C��2C���C��:C��"C��bC�OC�_�C�p)C���@��    @���    @��`    C��C���C���C��7C��NC���C��tC�{2C�V�C�X�C�ǲ@�0    @��    @�     C���C��0C���C��C��C��AC��pC��C���C���C�-$@�C�    @�>     @�I�    C��(C���C��aC��C��C��C�ӐC��&C��C��C�I@�qp    @�k�    @�w@    C��uC���C��dC���C��SC���C���C���C���C���C��@�    @�`    @��    C�ӣC�ɸC�ǵC��MC��YC�ʦC��#C��#C��<C��jC�	^@�̰    @��     @�Ҁ    C���C��@C��rC��XC���C�y)C�}�C�zC�QC���C�w@��P    @���    @�      C���C���C���C���C��}C��(C�~EC���C�u�C���C�AY@�'�    @�"@    @�-�    C���C��kC���C���C��9C���C���C��}C��QC��C�Fl@�U�    @�O�    @�[`    C��,C���C���C���C���C���C�جC��C��PC�`C�R�@�0    @�}�    @�     C��C���C��C���C��RC��C��XC�͡C���C�C�L'@��    @�     @趠    C��$C��*C��FC���C��>C�ŢC��3C��C���C�C�^T@��p    @���    @��@    C���C��$C��C��IC��?C���C��bC���C��C�Q�C���@�    @�`    @��    C��`C��CC���C���C�=�C�C���C��NC�ȍC���C�U�@�9�    @�4     @�?�    C��C��cC���C�� C�0C��C�эC��WC���C�C�H�@�gP    @�a�    @�m     C���C��)C��:C�s�C���C�vCC�gfC�azC�*BC�k�C�U@��    @�@    @��    C���C��hC���C���C���C��yC��C��C���C�ՅC�;�@�    @��    @��`    C��GC��DC�ƾC���C��&C���C���C���C���C���C�@4@��0    @��    @��     C��(C��C���C��C��C���C���C�͙C��iC��FC�c�@��    @�     @�#�    C��wC���C���C���C��C��'C�vDC�{�C��NC��C�m}@�Kp    @�E�    @�Q@    C�فC���C�ԷC���C��xC��SC��C�פC���C�N�C��|@�y    @�s`    @�~�    C��C��#C���C��fC�6C�jC�fC�"�C�C�DMC��-@ꦰ    @�     @꬀    C��2C�ʗC�#uC�"�C�h�C�5C�C�_C���C�%nC�q`@��P    @�Π    @��     C���C�׭C��C�C�Y�C�4�C�3SC�/�C�3C�YZC�w�@��    @��@    @��    C���C�ܟC��C���C��C���C��C��C�EC�m]C��@�/�    @�)�    @�5`    C��=C��sC��C�љC�'C��XC�/C�/�C�5�C�v�C���@�]0    @�W�    @�c     C�©C�ͅC�&�C�+�C�s�C�T�C�@C��C���C��C�f7@��    @�     @될    C���C���C��C���C�>?C��C���C�C��TC�-�C�|_@�p    @��    @�@    C��(C���C� C��C�:"C��C��C� C��^C�P�C���@��    @��`    @���    C���C��C��C��C�%IC��XC��UC��C���C�E�C���@��    @�     @��    C��C��eC�6C�~C�G�C�)C�*�C� �C���C�7iC�y�@�AP    @�;�    @�G     C��uC��|C�9iC�&�C�O�C�FC�,JC�EPC�bC��C��@�n�    @�i@    @�t�    C���C��PC�C�(C�fC�#�C�IC�=C�!&C�QC���@윐    @��    @�`    C��oC�څC�|C��5C�^.C�>�C�5?C�A_C�8eC�c�C��0@��0    @�Ā    @��     C�RC��C�+GC���C�7�C��OC��C�4�C�^�C���C�i\@���    @��     @���    C��~C��IC�+C�#�C��&C�a�C�I�C�>�C�2�C�f�C��^@�%p    @��    @�+@    C�ǳC�٬C��C�!'C���C�b�C�0C�#�C�E�C�f�C��/@�S    @�M`    @�X�    C��C���C�hC��C�uqC�BC�.cC�'�C�FC�SOC���