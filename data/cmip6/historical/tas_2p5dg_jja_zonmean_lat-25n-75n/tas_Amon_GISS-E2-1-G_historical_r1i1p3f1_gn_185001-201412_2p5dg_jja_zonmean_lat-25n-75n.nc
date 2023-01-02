CDF   �   
      time       bnds      lon       lat          2   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      �Thu Dec 29 07:37:04 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:49:12 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:49:11 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 20:11:46 2021: cdo -O cat ./cmip6_2/historical/tas/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-190012_jja_zonmean_2.5dg.nc ./cmip6_2/historical/tas/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_190101-195012_jja_zonmean_2.5dg.nc ./cmip6_2/historical/tas/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_195101-200012_jja_zonmean_2.5dg.nc ./cmip6_2/historical/tas/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_200101-201412_jja_zonmean_2.5dg.nc ./cmip6_2/historical/tas/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-201412_jja_zonmean_2.5dg.nc_tmp
Sat Sep 11 20:11:44 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/NASA-GISS/GISS-E2-1-G/historical/r1i1p3f1/Amon/tas/gn/v20190702/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-190012.nc ./cmip6_2/historical/tas/tas_Amon_GISS-E2-1-G_historical_r1i1p3f1_gn_185001-190012_jja_zonmean_2.5dg.nc
2019-11-25T10:53:02Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.     source       �GISS-E2.1G (2019): 
aerosol: Varies with physics-version (p==1 none, p==3 OMA, p==4 TOMAS, p==5 MATRIX)
atmos: GISS-E2.1 (2.5x2 degree; 144 x 90 longitude/latitude; 40 levels; top level 0.1 hPa)
atmosChem: Varies with physics-version (p==1 Non-interactive, p>1 GPUCCINI)
land: GISS LSM
landIce: none
ocean: GISS Ocean (GO1, 1 degree; 360 x 180 longitude/latitude; 40 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: GISS SI   institution       <Goddard Institute for Space Studies, New York, NY 10025, USA   activity_id       CMIP   branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact        Kenneth Lo (cdkkl@giss.nasa.gov)   creation_date         2019-11-25T10:53:02Z   data_specs_version        01.00.23   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Shttps://furtherinfo.es-doc.org/CMIP6.NASA-GISS.GISS-E2-1-G.historical.none.r1i1p3f1    grid      -atmospheric grid: 144x90, ocean grid: 288x180      
grid_label        gn     initialization_index            institution_id        	NASA-GISS      mip_era       CMIP6      model_id      E212Tomaf10aF40oQ40_2      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_experiment_rip         r1i1p3     parent_mip_era        CMIP6      parent_source_id      GISS-E2-1-G    parent_time_units         days since 2000-1-1    parent_variant_label      r1i1p3f1   physics_index               product       model-output   realization_index               realm         atmos      
references        'https://data.giss.nasa.gov/modelE/cmip6    	source_id         GISS-E2-1-G    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(21 March 2018) MD5:c93735846d66458966fc81f390b2d714     title         %GISS-E2-1-G output prepared for CMIP6      tracking_id       1hdl:21.14100/03921dfe-b850-4b14-9bfc-2c3d57f9cca1      variable_id       tas    variant_label         r1i1p3f1   license      cCMIP6 model data produced by NASA Goddard Institute for Space Studies is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-1-1    calendar      365_day    axis      T           l   	time_bnds                             t   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X              lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X     height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           d   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       �2019-11-25T10:53:02Z altered by CMOR: Treated scalar dimension: 'height'. 2019-11-25T10:53:02Z altered by CMOR: replaced missing value flag (-1e+30) with standard missing value (1e+20).         ,  �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C���C��8C��C���C��>C�c�C��C�ݍC��C���C��@��     @�      @�      C���C��.C��C��pC��yC�V�C���C���C�AC�w�C��G@��     @��     @�h     C�U7C��VC�
1C��C��C�i�C��bC�dOC�O�C��dC���@�.     @�x     @��     C�o�C��hC���C��4C��JC�AC��C��C��C�n�C��0@��     @�,     @��     C���C���C���C���C�ʺC�4C�БC��HC��#C�i�C��\@��     @��     @�(     C��9C���C���C���C���C�pKC��C��.C��C�5 C���@��     @�J     @�     C�c2C��~C��C��%C��C�R�C�˟C��{C��EC���C��e@�     @�$     @��     C�|yC���C���C���C���C�'>C��tC��*C���C�&�C��@�Y     @��     @��     C���C� C���C���C��qC�INC�� C���C� �C�e�C��h@�3     @��     @��     C��VC��7C���C���C���C�=:C��C���C��iC�(C��g@�     @��     @�j     C�`MC��.C���C���C��eC�:�C��HC��BC�mC��BC�r�@�s�    @�F     @��     C�e\C�v�C��)C���C��gC�>NC��C��SC�xyC���C�X=@���    @��     @�     C�s�C�z�C��cC�b{C�u_C�C���C��7C���C���C���@�M�    @�      @�|     C�k�C��AC��C���C�MC���C���C�d�C�VMC��{C��@@���    @��     @��     C��uC���C���C�zpC��C�*IC��FC��aC��C�G�C���@�'�    @��     @�V     C�y3C���C��\C��4C���C�6�C�:C��C��C�x^C�׍@���    @�g     @��     C�K�C�{�C��fC��C���C�T$C��C���C���C��C��_@��    @��     @�0     C�=�C�l�C�� C��"C�$DC��@C��C���C��C��C���@�n�    @�A     @��     C�`	C�wSC���C���C���C�\C��}C�u�C�Y�C���C��]@�ۀ    @��     @�
     C��GC���C��{C��-C���C�	,C���C���C��WC��oC� @�H�    @�     @�w     C�zVC��
C��C��C���C�w�C�$�C��C��5C�T�C�Ԥ@���    @��     @��     C�]�C���C��UC���C���C�tC��LC���C��5C�LbC�̝@�@    @��     @�(�    C�aXC�|�C��?C���C���C��C��uC��`C��C�{�C��@���    @��     @��     C��C��}C��]C��QC��KC�`C�ټC��qC��C�r C��o@�~@    @�g�    @���    C��^C���C�kC��BC��C�P�C���C���C���C�bC��@�4�    @�     @�L     C�R�C��BC��C� C�DC�xeC��qC���C�e�C��0C���@��@    @�Ԁ    @��    C�E�C��rC��C��EC���C�obC��C���C��kC�8C�֫@á�    @Ë     @ù     C���C���C���C��wC��5C�K�C��C�ٰC��C���C�t@�X@    @�A�    @�o�    C��C�ѧC��C���C��C�Z�C�#gC��UC��C�d$C�@��    @��     @�&     C�u�C���C��C��_C�|�C�� C��C���C���C�j%C���@��@    @Ů�    @�܀    C�VsC���C��JC��@C��7C�VC���C��iC���C��{C���@�{�    @�e     @Ɠ     C��|C��xC���C�y�C�z�C��C��FC�u�C�k�C���C���@�2@    @��    @�I�    C��yC��EC���C�i�C��C�:�C��C��C��1C�UC��m@���    @��     @�      C�xC��C���C�fjC��fC�7C���C��C���C�FC��N@ȟ@    @Ȉ�    @ȶ�    C�GC�+qC�h�C�FEC�fBC��C��C�R�C�$�C�`'C�c}@�U�    @�?     @�m     C�@C�@YC��nC�tnC���C��C��iC�BLC�=C��C�J�@�@    @���    @�#�    C�IzC�u�C�£C��`C���C�R�C��TC�z-C�Y�C���C�y@���    @ʬ     @��     C��KC��eC���C��DC��zC�RC�RC��C�זC�	�C���@�y@    @�b�    @ː�    C���C��C��BC���C���C�)�C��C��oC��xC�?EC�Ą@�/�    @�     @�G     C�yDC��yC��PC��tC��3C�[�C��C���C�R�C��,C�fz@��@    @�π    @���    C�[�C��;C��nC��:C�};C���C���C�r�C�nFC��aC��v@͜�    @͆     @ʹ     C�~?C��gC��?C��TC�YC��C��+C�v8C��jC��AC���@�S@    @�<�    @�j�    C���C��PC��C���C��<C�.C��>C�z�C�y�C�ҬC��m@�	�    @��     @�!     C��yC���C�߮C���C���C�^C���C�ѝC�ʋC���C��8@��@    @ϩ�    @�׀    C���C��HC�ıC���C��\C�1�C�ͽC��8C���C�ޥC��3@�;`    @�0     @�G     C�DZC�jC��	C���C��@C��C���C���C��C���C���@Ж�    @Ћ@    @Т@    C�e*C���C��C��OC���C�:�C��C���C���C���C���@���    @��    @���    C�v�C���C���C�s"C�s8C�}C���C��/C�ɝC�/�C���@�M     @�A�    @�X�    C���C���C��C���C��PC�!XC���C��qC�rC�w�C��*@Ѩ`    @ѝ     @Ѵ     C�vpC��$C���C��C���C���C���C��C���C��3C��Z@��    @��@    @�@    C�dC��kC��?C��5C�� C��C��pC���C���C��}C���@�^�    @�S�    @�j�    C�E�C�t�C���C��9C���C�;�C�� C���C�r�C��jC��%@Һ     @Ү�    @���    C�|C�k�C�h�C��C��C���C��C��vC�C�r�C���@�`    @�
     @�!     C�eC�]�C��AC�^�C�Z�C��C���C�QRC�B]C���C���@�p�    @�e@    @�|@    C�}hC���C�v�C�`C�"�C��OC���C�*C��SC��6C��9@���    @���    @�׀    C���C��C��wC�w�C�RhC���C�}|C�o�C��C��C��(@�'     @��    @�2�    C�t�C��^C��C��9C���C�C���C��C�ϼC�jyC���@Ԃ`    @�w     @Ԏ     C�HC�mpC��C��C�ʜC�-�C��MC�yC�wZC��xC���@�ݠ    @��@    @��@    C�jhC��C��'C�n�C���C���C���C�|C���C�	C��	@�8�    @�-�    @�D�    C���C���C���C�ZCC�v�C�4C�֢C��+C�cC�c�C��;@Ք     @Ո�    @՟�    C���C��AC��NC��CC���C���C���C��C���C�veC�۰@��`    @��     @��     C�d�C��C�ɪC��C��jC�1-C���C���C��C��C���@�J�    @�?@    @�V@    C�i�C�~�C��NC�VC�2+C��kC�_�C�T�C�Z�C���C��|@֥�    @֚�    @ֱ�    C�E�C�pC���C�q4C�tYC��rC���C���C���C�EC�ޜ@�     @���    @��    C��}C��YC���C�Z�C�owC��C�ޭC��C�UC�`C�ع@�\`    @�Q     @�h     C�Z�C���C���C��oC���C���C���C���C���C��C��@@׷�    @׬@    @��@    C�W�C���C���C���C��8C�:dC���C��vC���C��C���@��    @��    @��    C�� C���C��SC�gC��,C�5�C���C��C��eC�')C��@�n     @�b�    @�y�    C��rC��oC��rC��
C���C�6JC��C�BC�XC��>C��@��`    @ؾ     @��     C�g�C���C�vC���C���C�?iC��2C��_C�іC�/C�� @�$�    @�@    @�0@    C�q�C��vC��MC���C��C��_C�s�C�>�C�d�C���C��r@��    @�t�    @ً�    C���C���C��C� zC��C�ӦC��]C�ԺC�|C�c�C��#@��     @���    @���    C��#C���C���C�l�C�wEC��C��C��|C�C��dC��R@�6`    @�+     @�B     C��C�ǇC��C��<C�~�C���C��C���C�дC�3SC��@ڑ�    @چ@    @ڝ@    C�r�C��2C��C��2C��GC�'�C���C���C��[C�YC��N@���    @��    @���    C�e�C��kC�ȚC���C�3C��C��C��C�UC���C��@�H     @�<�    @�S�    C��.C��xC��MC��tC���C��C��NC���C��C���C��@ۣ`    @ۘ     @ۯ     C���C��pC���C�x�C�u�C� �C���C��C�0�C���C��@���    @��@    @�
@    C�{DC���C��zC���C��C�R+C�YC���C���C�!uC���@�Y�    @�N�    @�e�    C�vC��C��6C�p�C��_C��C��C��kC���C��tC���@ܵ     @ܩ�    @���    C�wVC�|�C���C�TgC�V�C��C��C���C���C�(�C��`@�`    @�     @�     C���C��C�� C�_�C�c�C��C��C��C�%
C��OC�-�@�k�    @�`@    @�w@    C��>C�ݢC�wC�νC��eC�?YC���C��C���C�\cC��@���    @ݻ�    @�Ҁ    C���C��IC��C���C��OC��C��C���C�͍C�+�C�Ȁ@�"     @��    @�-�    C�z;C���C��,C���C���C�2�C��C��KC���C�8�C��4@�}`    @�r     @މ     C��C���C�نC��C��5C�� C���C��SC���C� �C��@�ؠ    @��@    @��@    C���C��+C���C�ưC��6C�P�C��sC��|C�{:C��C��@�3�    @�(�    @�?�    C�{�C���C���C�ܳC��@C�]�C��C��^C�JC���C�qs@ߏ     @߃�    @ߚ�    C�u�C��.C��C���C��LC�
�C��C�~�C�|GC�ͲC���@��`    @��     @��     C��C���C��ZC���C��HC�$C��?C���C��6C���C��?@�"�    @�     @�(�    C��\C��$C� C���C���C��C���C�͋C���C�RC��@�Pp    @�J�    @�V@    C�W�C���C���C��,C��C�`�C��C���C���C��C���@�~    @�x`    @���    C�dC���C��2C�v=C��QC��C���C�m�C�X�C��C�i�@૰    @�     @ీ    C��~C��9C���C�ҘC��gC�SC��TC��2C���C��,C��P@��P    @�Ӡ    @��     C���C���C��OC�_�C���C�9�C��,C���C��C�V�C��@��    @�@    @��    C��C���C���C��C�ŲC�L�C���C��WC��C�b�C���@�4�    @�.�    @�:`    C�y`C���C���C���C��sC�X�C���C���C�˩C�A-C���@�b0    @�\�    @�h     C���C���C��C��:C��C�@�C���C���C��C�%�C��C@��    @�     @ᕠ    C���C���C���C���C�w�C�ZC��sC��UC�ųC�8�C��v@�p    @��    @��@    C���C���C��C��&C��C�+�C���C��hC��C���C�9�@��    @��`    @���    C���C���C���C��SC��PC�@C���C���C���C��C��@��    @�     @��    C��]C���C���C��C�u�C�'C���C���C���C�`'C���@�FP    @�@�    @�L     C���C���C��C���C���C�#�C���C��6C��C��C�t@�s�    @�n@    @�y�    C��NC��uC���C���C�szC�ߎC��C��sC��C��C���@⡐    @��    @�`    C�`�C���C��C�C���C�'1C���C��=C�k�C��9C���@��0    @�ɀ    @��     C�`�C�o�C��*C���C���C�.�C���C�mC�Z�C���C��.@���    @��     @��    C���C���C��C�X�C�6�C���C���C��YC��SC�8dC�Ң@�*p    @�$�    @�0@    C���C���C��8C��/C��aC��C��8C���C��CC��\C�˯@�X    @�R`    @�]�    C���C���C���C��C�q1C�AC���C���C���C�1�C���@ㅰ    @�     @㋀    C���C���C���C���C�n�C��C���C���C��fC��VC���@�P    @㭠    @�     C��C���C���C�beC�DHC��-C��TC��oC���C�SC��(@���    @��@    @���    C���C���C��pC���C��FC���C���C���C���C���C���@��    @��    @�`    C��pC���C�ӼC��PC�X\C��C��UC��KC��bC�>C��_@�<0    @�6�    @�B     C�c�C���C��C��#C���C��C��[C��UC���C�uRC�@�i�    @�d     @�o�    C�^�C�f�C��C�t�C��lC�)C��NC���C��+C��RC�j�@�p    @��    @�@    C�y	C�u%C�zjC�0<C�9�C�ּC��C���C���C��C���@��    @�`    @���    C���C��dC��LC��.C�r�C��C��C��rC��NC�UUC��}@��    @��     @���    C�TzC��C��fC���C��pC��C���C��\C�ՋC�Q�C��3@� P    @��    @�&     C�o3C���C���C��C�`,C��CC��/C���C���C�RgC��:@�M�    @�H@    @�S�    C�t�C��YC��YC���C�e�C��bC���C��$C���C�jC��@�{�    @�u�    @�`    C���C��C���C�[�C�T�C�'C�C�C�+@C���C�>�@�0    @壀    @�     C��*C��MC��C���C�lXC��uC��+C��(C�ĳC�4�C��@���    @��     @�ܠ    C���C��.C��3C��2C�{�C��C��}C��C�ڭC�P�C��q@�p    @���    @�
@    C��rC��$C���C�t�C�U(C��kC���C���C�ĮC��C��@�2    @�,`    @�7�    C��;C���C� PC�̪C��C� JC��'C��FC���C�O[C��@�_�    @�Z     @�e�    C��C�ˋC���C��eC�bvC��TC��
C��NC��$C�\�C���@�P    @懠    @�     C�{~C���C���C���C���C��C���C��PC��!C��C���@��    @�@    @���    C�n�C���C��PC�lXC�Z4C��CC���C���C��BC�*4C��L@��    @���    @��`    C�v�C��RC��9C�r�C�PBC��xC��kC��]C���C�U8C��>@�0    @��    @�     C���C���C���C���C��zC���C���C���C��&C�QC���@�C�    @�>     @�I�    C���C��C��C���C�ˍC�(�C���C��-C��TC��C�ҕ@�qp    @�k�    @�w@    C��pC���C��.C�q�C�k�C��C��aC��;C��C��C��E@�    @�`    @��    C��_C���C��nC�USC�N�C��sC��jC���C���C�F�C���@�̰    @��     @�Ҁ    C���C��QC���C�"�C�$�C��dC���C��EC�� C�=�C��2@��P    @���    @�      C��C�ˋC�ڄC��C�r�C��C��7C���C��bC�h�C���@�'�    @�"@    @�-�    C��4C��\C��C���C���C�C��;C���C��-C��C��;@�U�    @�O�    @�[`    C�~�C��OC��
C��RC���C�]C�ՂC��CC��C��7C���@�0    @�}�    @�     C���C���C���C�j�C�_kC���C���C���C��C�u�C��@��    @�     @趠    C�ʈC���C�	AC��C���C�%C�֚C��C��C�\�C��H@��p    @���    @��@    C���C��GC��)C�U�C�G�C�1C�$C��C�6�C��|C��@�    @�`    @��    C�ѨC��C��oC��C�NfC���C��C��C��C�JC���@�9�    @�4     @�?�    C���C���C��C��nC��sC�8
C���C�� C��C�H�C�Ϟ@�gP    @�a�    @�m     C�`�C�n�C���C�^	C�N�C�ĞC�j�C�tC���C��C��A@��    @�@    @��    C���C�}�C�q�C�LC�UC��>C��C���C��*C�� C���@�    @��    @��`    C�� C�ņC���C���C��C�!�C�4C��C�dC�vkC�4�@��0    @��    @��     C���C���C��]C��uC���C�]C���C���C��C�`=C�8;@��    @�     @�#�    C��C���C��DC���C���C�	�C��xC���C���C�\�C���@�Kp    @�E�    @�Q@    C���C���C��,C��kC���C�1�C��fC��C���C�g&C�Y@�y    @�s`    @�~�    C��*C�۸C���C��C��C�4RC���C��C�.�C���C�O�@ꦰ    @�     @꬀    C��{C�ޱC�C��6C��YC�_C�.�C��C��C�5DC���@��P    @�Π    @��     C���C��AC�'OC���C��C�P�C��C���C���C�NAC���@��    @��@    @��    C��2C��C���C���C��wC�AC�eC�+C�P@C��PC� @�/�    @�)�    @�5`    C���C��
C��C���C���C� �C��C�C�,)C���C�-a@�]0    @�W�    @�c     C�݉C��C�
�C���C���C�R�C�vC�('C�]�C�܌C�Y@��    @�     @될    C��C��fC�BC��XC��C�E�C��C�fC�IC��EC�1T@�p    @��    @�@    C���C�֠C��C��9C��~C��C��)C�mC�3�C��C��@��    @��`    @���    C��eC���C���C���C��oC�npC�*cC�C�OC��`C�p�@��    @�     @��    C��>C��C�$�C��qC�ȝC�_gC�,�C�'�C�C�C���C�;�@�AP    @�;�    @�G     C��C��C�N�C��fC��IC�W C�C��C�/�C���C�n@�n�    @�i@    @�t�    C��EC���C�ݏC��}C��;C�B�C�zC�*C�E�C��OC�<S@윐    @��    @�`    C���C�߱C���C���C���C�zC��>C�mC�M�C���C�(�@��0    @�Ā    @��     C��NC��oC��C���C��LC�(BC��C��C��C�q�C�6�@���    @��     @���    C���C��OC��C��C�ivC���C��:C���C�H�C��2C�H�@�%p    @��    @�+@    C���C�	C�sC��C��[C�<�C�	�C���C��C��}C�-�@�S    @�M`    @�X�    C���C�φC�>vC�)�C�%�C�u�C���C���C���C��C�ɖ