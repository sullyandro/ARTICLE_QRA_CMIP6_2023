CDF   �   
      time       bnds      lon       lat          3   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      JSat Oct 28 19:41:02 2023: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_BCC-ESM1_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Sat Oct 28 19:41:02 2023: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_BCC-ESM1_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Thu Dec 29 07:46:37 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_BCC-ESM1_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 15:50:35 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/BCC/BCC-ESM1/historical/r1i1p1f1/Amon/tas/gn/v20181214/tas_Amon_BCC-ESM1_historical_r1i1p1f1_gn_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_BCC-ESM1_historical_r1i1p1f1_gn_185001-201412_jja_zonmean_2.5dg.nc
2018-12-14T05:25:12Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.;
N/A     source       bBCC-ESM 1 (2017):   aerosol: none  atmos: BCC_AGCM3_LR (T42; 128 x 64 longitude/latitude; 26 levels; top level 2.19 hPa)  atmosChem: BCC-AGCM3-Chem  land: BCC_AVIM2  landIce: none  ocean: MOM4 (1/3 deg 10S-10N, 1/3-1 deg 10-30 N/S, and 1 deg in high latitudes; 360 x 232 longitude/latitude; 40 levels; top grid cell 0-10 m)  ocnBgchem: none  seaIce: SIS2     institution       -Beijing Climate Center, Beijing 100081, China      activity_id       CMIP   branch_method         Standard   branch_time_in_child                 branch_time_in_parent         @�|        comment       hThe model integration starts from the piControl experiment equilibrium state (1st Jan. of the year 2110)   contact       Dr. Tongwen Wu(twwu@cma.gov.cn)    creation_date         2018-12-14T05:25:12Z   data_specs_version        01.00.27   description       DECK: historical   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Jhttps://furtherinfo.es-doc.org/CMIP6.BCC.BCC-ESM1.historical.none.r1i1p1f1     grid      T42    
grid_label        gn     initialization_index            institution_id        BCC    mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      BCC-ESM1   parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        �Model described by Tongwen Wu et al. (JGR 2013; JMR 2014; submmitted to GMD,2018). Also see http://forecast.bcccsm.ncc-cma.net/htm     run_variant       Oforcing: greenhouse gases,aerosol emission,solar constant,volcano mass,land use    	source_id         BCC-ESM1   source_type       AER AOGCM CHEM     sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(30 July 2018) MD5:e53ff52009d0b97d9d867dc12b6096c7      title         "BCC-ESM1 output prepared for CMIP6     tracking_id       1hdl:21.14100/e6e5eb74-9e45-44db-9dbe-d6236596b068      variable_id       tas    variant_label         r1i1p1f1   license      >CMIP6 model data produced by BCC is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.     cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-01-01      calendar      365_day    axis      T           8   	time_bnds                             @   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           0   tas                       standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    original_name         TREFHT     cell_methods      (area: time: mean (interval: 20 minutes)    cell_measures         area: areacella    history       J2018-12-14T05:25:12Z altered by CMOR: Treated scalar dimension: 'height'.         ,  P@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C��!C�&`C���C�O C��C�o�C��gC��gC��1C�4DC��@��     @�      @�      C��OC��C���C�ELC��C�rQC���C��sC��#C�
�C��#@��     @��     @�h     C���C��>C���C�o�C�2 C���C�!�C��WC�^5C��IC���@�.     @�x     @��     C���C��C���C�a�C�
�C�X"C��OC��C�q�C��C�@��     @�,     @��     C��^C��C��sC�zC�> C��%C�
�C���C���C���C���@��     @��     @�(     C���C�7C���C�8�C��C��C���C���C���C�C��@��     @�J     @�     C���C���C��eC���C�`�C�ɢC��C�x�C�^:C��C���@�     @�$     @��     C��[C��C���C�R5C��C���C��&C���C��-C��C���@�Y     @��     @��     C���C��C���C���C�FbC��C�(C��DC���C��C��J@�3     @��     @��     C��9C�6�C���C��AC�C�C��OC��C�ؾC��C�wTC��@�     @��     @�j     C��3C��C���C�|>C�#�C�v�C��=C���C��C���C�;�@�s�    @�F     @��     C���C���C��wC��QC�e@C��5C�.3C���C�v�C�JC�#�@���    @��     @�     C��DC��C���C�z<C�/�C���C�+�C��LC�4C��C���@�M�    @�      @�|     C��]C��\C���C�m�C�[�C��C��_C���C��$C���C�Ʋ@���    @��     @��     C���C��#C�hyC��C���C��.C�0�C���C��WC�3�C���@�'�    @��     @�V     C��?C��C��C��gC�)�C��_C��aC�d�C�l�C��C���@���    @�g     @��     C��TC��C�¥C���C�OC��C��C�u�C�u�C���C��@��    @��     @�0     C��C��C��#C�D C��C��AC�TC��$C�h/C��C���@�n�    @�A     @��     C���C��C��QC���C�B[C�{�C��_C�q�C�v�C�uC���@�ۀ    @��     @�
     C��lC��C��C�A�C���C�L6C���C�ƾC���C�3C��@�H�    @�     @�w     C���C��YC��bC�egC�)�C��C��.C�[�C�H�C�֣C���@���    @��     @��     C���C���C���C�pcC�>yC���C���C�eC�7nC���C��x@�@    @��     @�(�    C��C��hC�tqC�+ C�cC��vC��C��TC��C���C�C_@���    @��     @��     C���C���C��C�0C��#C�@�C�C���C��7C��QC�ר@�~@    @�g�    @���    C��DC��#C��EC�I�C��C�dC��GC���C���C�-_C���@�4�    @�     @�L     C��C���C���C�W�C�(6C�y�C��oC��GC�v�C� �C�*@��@    @�Ԁ    @��    C��7C��"C��nC�LFC� C�z�C���C�a�C�{�C�.�C�3C@á�    @Ë     @ù     C���C��C��*C�o�C�N�C��IC�$@C���C���C�4�C��@�X@    @�A�    @�o�    C���C��C��dC��6C��]C��C�H"C���C�xhC���C��2@��    @��     @�&     C���C�C��cC�F�C��C��!C��C���C�vEC��C�؃@��@    @Ů�    @�܀    C��qC��C��%C�NcC�
�C��vC�(�C��wC��FC��C��1@�{�    @�e     @Ɠ     C��/C�*C���C���C�?{C���C�cC���C��7C�Y�C�!�@�2@    @��    @�I�    C��C�6	C���C�p:C�(�C��C�a�C��#C�΃C�99C�D@���    @��     @�      C��vC��C���C���C�D�C���C�	tC��5C�u�C��gC��R@ȟ@    @Ȉ�    @ȶ�    C�[qC��KC�>�C��C���C�>�C���C�:�C�<�C��"C���@�U�    @�?     @�m     C�{%C���C�kC��C���C�5C��.C��=C��PC��wC��3@�@    @���    @�#�    C��nC�_C���C�#FC���C���C���C�U�C�(�C��C���@���    @ʬ     @��     C��wC���C��C���C�6�C���C��C�u�C�%�C���C���@�y@    @�b�    @ː�    C��7C�7C���C�Y�C��C���C��vC�JC�2�C��C��R@�/�    @�     @�G     C���C��C���C�z�C�<�C��C� C���C�eC��;C��x@��@    @�π    @���    C���C�C��	C�sCC�92C��C�6�C��5C���C�oC��@͜�    @͆     @ʹ     C��=C��mC��?C�A�C���C�O.C��@C��[C�սC�c�C�	/@�S@    @�<�    @�j�    C��+C��C���C�TC��C�s7C���C�nOC�L�C��'C��@�	�    @��     @�!     C��NC��aC���C�b\C�C�b;C���C�m�C�w�C�:C��@��@    @ϩ�    @�׀    C���C��C���C�e�C�GC��C��C���C�ٍC�p�C�X@�;`    @�0     @�G     C��aC�gC��/C�n5C� �C��C��C�yjC�Y�C��/C��(@Ж�    @Ћ@    @Т@    C��]C��C���C�luC�C���C�^C��FC���C�gC���@���    @��    @���    C��[C��C��gC�*�C��<C�m�C�	�C��!C��.C�o6C�'�@�M     @�A�    @�X�    C���C��C��IC�\�C�C1C��7C�+C��C���C�6�C�"@Ѩ`    @ѝ     @Ѵ     C��GC�dC��tC��eC�B,C���C��FC�omC�X�C���C��I@��    @��@    @�@    C���C���C�� C�mC�'�C��lC��/C�}"C�C��$C��U@�^�    @�S�    @�j�    C��?C�C���C��pC�U�C���C���C��C�o"C���C��c@Һ     @Ү�    @���    C��C�	C���C�7DC��-C�W!C��C�hC�J�C��HC�ؼ@�`    @�
     @�!     C�^�C��jC�m�C��C���C�"C��@C�JC�zC�pC�y&@�p�    @�e@    @�|@    C���C��C�fC�$C���C�L(C�͓C�b{C�Q9C��)C���@���    @���    @�׀    C���C��C���C�LC��C�o�C��vC�1�C�$C��C���@�'     @��    @�2�    C��C��YC�cC�1C��C�F�C���C�'�C���C��C��@Ԃ`    @�w     @Ԏ     C���C� �C���C�=�C���C�R�C���C�r^C�l�C���C���@�ݠ    @��@    @��@    C���C��C�z�C��C��*C�.�C���C�� C���C�C�֤@�8�    @�-�    @�D�    C��+C�C��}C�)tC��C�\{C�ИC�N�C�B�C���C��a@Ք     @Ո�    @՟�    C��XC��C��3C�G:C�#3C���C��C��@C��NC��C��6@��`    @��     @��     C��3C�kC��dC�B2C��CC�ORC���C�DIC�IC��C��@�J�    @�?@    @�V@    C���C��C���C�E�C��:C�C��%C�8C�B�C��C��|@֥�    @֚�    @ֱ�    C��_C���C�mnC�7�C��gC�XC�ȊC�S�C�1�C��cC��b@�     @���    @��    C��pC��vC�0C�>�C���C�UVC�ЌC��C���C���C��c@�\`    @�Q     @�h     C���C��C�l�C�tC���C�ZYC�@C��)C��hC�\�C��u@׷�    @׬@    @��@    C���C���C�z�C�6�C��C�C�C�ȩC���C��xC�I�C�U@��    @��    @��    C��qC���C�u�C�$@C��gC�A	C�żC�~uC���C�IvC�#(@�n     @�b�    @�y�    C��BC���C���C�?�C��DC�L�C��C��C�n)C�vC��@��`    @ؾ     @��     C���C��hC��_C���C�z2C�ӭC�QC���C���C��7C��@�$�    @�@    @�0@    C���C�	7C���C�O!C��C�YBC��jC��[C���C�GC� *@��    @�t�    @ً�    C��xC��C���C���C�YhC��C��3C�x�C��;C�CC�)�@��     @���    @���    C��<C��C���C�{jC�K=C���C��`C�u�C�pC���C��t@�6`    @�+     @�B     C��5C�ݎC��xC�Z�C� C���C��C���C�_2C��GC���@ڑ�    @چ@    @ڝ@    C���C� |C��C�UVC�;~C���C�\�C��2C��C�>AC��E@���    @��    @���    C��wC��C��|C�P�C�dC���C�%�C�ˀC��iC��C�ܻ@�H     @�<�    @�S�    C��ZC���C���C�v�C�3�C��hC��aC�y�C�l3C���C���@ۣ`    @ۘ     @ۯ     C���C�VC��XC��!C��#C�֣C� �C���C�h�C��C���@���    @��@    @�
@    C���C� �C��C�hlC��C�ncC�֥C�f�C�O�C��:C���@�Y�    @�N�    @�e�    C��C�eC���C�r;C�5C���C�C�~�C�w_C�AC��@ܵ     @ܩ�    @���    C���C��C��#C�Q�C�wC�R�C���C�h�C�x�C��VC���@�`    @�     @�     C���C�C���C�M"C�	�C��ZC�C���C���C���C���@�k�    @�`@    @�w@    C��xC��C��C�M�C�+C���C���C���C�i8C���C��@���    @ݻ�    @�Ҁ    C�C�*C��C�NaC��C��@C���C���C��yC�@C��@�"     @��    @�-�    C��.C��C��{C�=�C�	,C���C���C�l�C�)�C��GC��@�}`    @�r     @މ     C���C�XC��C�t#C�:�C��AC���C��OC��HC�iC���@�ؠ    @��@    @��@    C��EC�7C��=C�N�C��C�s�C�؈C�P�C�U�C��7C��q@�3�    @�(�    @�?�    C�ǻC�cC���C� �C��C�&�C��C�}5C��MC�T<C�3@ߏ     @߃�    @ߚ�    C���C��C���C�{.C�&�C���C��C�j�C�OOC��C��@��`    @��     @��     C���C�%4C��C��FC�]�C���C�C���C��'C��C��@�"�    @�     @�(�    C���C�UC���C�kC��$C�J�C�ؓC�v�C�`C�ذC���@�Pp    @�J�    @�V@    C���C��C��C��C�S�C��7C���C�s�C�m C��C� |@�~    @�x`    @���    C���C���C��8C�<2C��DC�V�C��IC��~C��2C�aC��w@૰    @�     @ీ    C��SC��lC��VC�Y�C��C�?�C��C�v�C��6C�C��7@��P    @�Ӡ    @��     C��C�>C�� C�^C�"�C���C�C��1C�YnC��IC���@��    @�@    @��    C��C��C�z�C��C���C�M�C��C���C��*C�(fC��@�4�    @�.�    @�:`    C��C�C���C�TfC��C�j<C���C��7C��wC�'�C��@�b0    @�\�    @�h     C��vC��C��rC�A�C���C�Z�C�ҒC�hDC�MjC��@C��M@��    @�     @ᕠ    C��?C��QC��dC�|�C�@�C��GC�	fC��C�\�C���C�̆@�p    @��    @��@    C�èC��C���C�J�C�C�|�C��ZC�l�C���C�3)C��@��    @��`    @���    C��;C��C��:C�mLC�(�C���C��ZC�q�C�WrC��kC��g@��    @�     @��    C��XC�XC��
C�c�C�%WC���C��C�9C��(C��xC��S@�FP    @�@�    @�L     C��C�
9C���C�^�C�$�C���C��{C�yC�#�C�x�C���@�s�    @�n@    @�y�    C���C��?C��^C�W�C��C�m�C�̻C�H�C��C���C���@⡐    @��    @�`    C���C���C�_7C�gC��>C�C�}QC�8�C�Q�C��QC��@��0    @�ɀ    @��     C���C���C�l�C��C���C��dC���C�w�C��]C�M�C���@���    @��     @��    C��@C��dC�v*C�.�C��!C�]+C��C�l�C�/�C��yC���@�*p    @�$�    @�0@    C��LC��C��]C�@�C��5C�b�C��	C�d�C�@�C���C��@�X    @�R`    @�]�    C��+C��C�R:C��tC��TC�G�C��yC��ZC��C��C�ק@ㅰ    @�     @㋀    C�� C�C��dC��OC��YC��C���C�-eC�C���C��.@�P    @㭠    @�     C��wC��C�}%C�$�C��C�W�C��=C�;�C�
�C��C���@���    @��@    @���    C���C���C���C�9PC���C�0C�t1C��C��C���C��s@��    @��    @�`    C���C��C��4C�`C���C�ۦC�JTC�.C�E�C��C��M@�<0    @�6�    @�B     C���C���C�}�C�!C��{C�8�C��}C�8�C�>C���C��A@�i�    @�d     @�o�    C�|�C���C�(WC�חC��&C��*C�P�C�XC���C��zC��n@�p    @��    @�@    C���C��NC�C�C��DC���C��C��7C�;�C�)MC��oC�z0@��    @�`    @���    C���C��C�]�C���C���C�$�C���C�8�C��C�IC�%>@��    @��     @���    C���C���C�bC��C���C�U�C��wC�NC��C�u�C�pV@� P    @��    @�&     C���C��`C�Y	C��C���C�%C�~3C��%C��C��BC�u@�M�    @�H@    @�S�    C���C��=C�`>C���C���C��kC�yxC�(C�6�C��C�� @�{�    @�u�    @�`    C��-C��C�e�C�+C���C�C�C��PC�/C�MC��AC���@�0    @壀    @�     C���C���C�hC��C���C��C��3C�BC��C���C��@���    @��     @�ܠ    C��oC���C�ggC�
�C��;C��zC��C�6C�?�C���C��E@�p    @���    @�
@    C���C��C�W�C���C���C�2�C���C�8�C�6�C��TC��k@�2    @�,`    @�7�    C��xC���C�N=C���C��(C�ءC�E�C��gC�	aC��C�ճ@�_�    @�Z     @�e�    C��-C���C�=@C��JC��kC��C�bKC�
#C�,�C��QC���@�P    @懠    @�     C�wC��mC�\C��7C���C��C�P�C���C���C���C���@��    @�@    @���    C��C��rC�/�C���C�U C��C�g�C�)�C�:�C�� C��C@��    @���    @��`    C��SC��C�U�C�.C���C��C��qC�2�C� lC��]C��7@�0    @��    @�     C��}C��C�VPC���C���C���C�TC��rC��AC�aC�{�@�C�    @�>     @�I�    C���C���C�VC���C��VC�C�oC��-C��LC�AtC�j'@�qp    @�k�    @�w@    C���C��3C�v�C�9C��C�[�C���C�	�C��C�4�C�a @�    @�`    @��    C��C��C�C���C�;�C��C���C�3sC��C�~`C�m0@�̰    @��     @�Ҁ    C���C���C�_�C���C���C�EC���C�(�C�"C��uC�{ @��P    @���    @�      C���C��tC�<�C�܂C�b�C��C�g$C�-�C�:"C��yC���@�'�    @�"@    @�-�    C��C���C�s�C�$�C��C�*�C�^C��DC��1C��VC���@�U�    @�O�    @�[`    C��BC��kC�V�C��C���C��VC�b[C�	C� �C���C���@�0    @�}�    @�     C���C���C�xMC�*9C���C���C��OC�4�C�>�C��LC��,@��    @�     @趠    C���C��C���C�4�C���C��C��xC�GgC�^KC��3C���@��p    @���    @��@    C��8C��DC��kC�,�C��7C�0C��C�W�C�c]C��.C���@�    @�`    @��    C���C�"8C��|C�4�C��3C�C�C�ٔC���C�nYC���C���@�9�    @�4     @�?�    C���C�C���C�CC��C�-�C�ƿC��C���C��8C�^�@�gP    @�a�    @�m     C�t�C���C�DIC���C���C��C���C�v�C�[�C��C�Ə@��    @�@    @��    C��_C��AC�H�C���C���C�7�C���C�rdC�TVC�ĈC��U@�    @��    @��`    C��_C��C���C�S�C�@C�g�C���C�riC�xiC���C���@��0    @��    @��     C���C�NC���C�)?C���C�mYC���C�eC�RC���C���@��    @�     @�#�    C��~C�8�C���C�C�C���C�F4C��pC�U�C�8C���C��@�Kp    @�E�    @�Q@    C���C��C��+C�g�C�/�C���C��C���C�O�C��QC��@�y    @�s`    @�~�    C���C�#[C���C�m@C�6�C��'C��mC�h�C�!�C���C���@ꦰ    @�     @꬀    C���C�?QC��_C�B�C��{C�n�C�	]C��C�~�C���C�֦@��P    @�Π    @��     C��C�,nC��-C�d�C�'/C���C�C���C��DC�I�C��_@��    @��@    @��    C��C�C��fC���C��VC��*C�&jC��nC��hC�C���@�/�    @�)�    @�5`    C��	C�7�C���C��C�1EC���C��C���C�u!C�&C���@�]0    @�W�    @�c     C��C�Y�C���C��NC���C��C�>YC��nC�MnC��C��@��    @�     @될    C��HC�,UC��^C�QKC�0C�p�C���C��7C��IC�=C��z@�p    @��    @�@    C���C�46C���C�L
C�#C�z C���C���C���C�E�C���@��    @��`    @���    C��mC�/_C��oC�Q�C�NC���C�F�C��C�߅C�D|C��@��    @�     @��    C�ؖC�=C��)C�t�C�6C��C�&�C��C��jC�PpC��@�AP    @�;�    @�G     C��iC�)�C��C�Y�C��C��OC�&C��OC���C��C�w@�n�    @�i@    @�t�    C���C� C���C�~<C�%�C��C��C��$C���C�(7C���@윐    @��    @�`    C��C�+�C��C�kpC�"�C���C���C���C���C�5�C���@��0    @�Ā    @��     C�ĤC�/�C���C��C�_sC��fC�"&C���C���C�_C��#@���    @��     @���    C���C�3C���C���C�\
C���C��C�qC��lC�@C� )@�%p    @��    @�+@    C��C�W�C���C�n�C�,\C�_�C��dC�tPC��jC�q�C�5@�S    @�M`    @�X�    C��vC�C�C���C��{C�T�C���C�J�C�ߡC��0C�5<C�� 