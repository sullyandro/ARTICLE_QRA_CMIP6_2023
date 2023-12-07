CDF   �   
      time       bnds      lon       lat          3   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      \Sat Oct 28 19:41:01 2023: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Sat Oct 28 19:41:01 2023: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Thu Dec 29 07:46:37 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 15:49:56 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/BCC/BCC-CSM2-MR/historical/r1i1p1f1/Amon/tas/gn/v20181126/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412_jja_zonmean_2.5dg.nc
2018-11-26T05:08:26Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.;
N/A   source       ]BCC-CSM 2 MR (2017):   aerosol: none  atmos: BCC_AGCM3_MR (T106; 320 x 160 longitude/latitude; 46 levels; top level 1.46 hPa)  atmosChem: none  land: BCC_AVIM2  landIce: none  ocean: MOM4 (1/3 deg 10S-10N, 1/3-1 deg 10-30 N/S, and 1 deg in high latitudes; 360 x 232 longitude/latitude; 40 levels; top grid cell 0-10 m)  ocnBgchem: none  seaIce: SIS2      institution       -Beijing Climate Center, Beijing 100081, China      activity_id       CMIP   branch_method         Standard   branch_time_in_child                 branch_time_in_parent         @��        comment       hThe model integration starts from the piControl experiment equilibrium state (1st Jan. of the year 2289)   contact       Dr. Tongwen Wu(twwu@cma.gov.cn)    creation_date         2018-11-26T05:08:26Z   data_specs_version        01.00.27   description       DECK: historical   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.BCC.BCC-CSM2-MR.historical.none.r1i1p1f1      grid      T106   
grid_label        gn     initialization_index            institution_id        BCC    mip_era       CMIP6      nominal_resolution        100 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      BCC-CSM2-MR    parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        �Model described by Tongwen Wu et al. (JGR 2013; JMR 2014; submmitted to GMD,2018). Also see http://forecast.bcccsm.ncc-cma.net/htm     run_variant       Lforcing: greenhouse gases,solar constant,aerosol,volcano mass,land use,ozone   	source_id         BCC-CSM2-MR    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        ACreation Date:(30 July 2018) MD5:e53ff52009d0b97d9d867dc12b6096c7      title         %BCC-CSM2-MR output prepared for CMIP6      tracking_id       1hdl:21.14100/007da5e5-12bb-4fe9-8df9-5cd473280650      variable_id       tas    variant_label         r1i1p1f1   license      >CMIP6 model data produced by BCC is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.     cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1850-01-01      calendar      365_day    axis      T           H   	time_bnds                             P   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           @   tas                       standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    original_name         TREFHT     cell_methods      'area: time: mean (interval: 5 minutes)     cell_measures         area: areacella    history       J2018-11-26T05:08:26Z altered by CMOR: Treated scalar dimension: 'height'.         ,  `@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C��C�� C��FC��=C�X�C��C�8;C���C�$�C���C��@��     @�      @�      C�p�C��:C�	C���C��2C��xC�I^C��C�1|C���C���@��     @��     @�h     C��pC��FC�,�C��1C��vC���C�I�C�ݪC��C���C�X@�.     @�x     @��     C�g�C���C�'bC���C���C�?_C��uC��LC��C�\�C�u�@��     @�,     @��     C�q�C���C�qC��C��8C�Y�C���C�UC��C�d�C�_a@��     @��     @�(     C�X8C��(C�(C���C��WC�9'C��3C�'�C��;C�h4C�M�@��     @�J     @�     C��+C�ŸC�'C���C���C�ܙC�[�C���C���C�EC�x�@�     @�$     @��     C�u<C���C�+C��>C��C�M�C�ƷC�1)C��C�T�C�a�@�Y     @��     @��     C�lC���C�"�C��C���C��HC�SC�C���C��\C���@�3     @��     @��     C��C��_C�1pC��ZC��C�*�C���C�OdC�:�C���C���@�     @��     @�j     C�f�C���C���C��1C��-C�C�uC���C���C�p�C��
@�s�    @�F     @��     C��WC���C��C��dC�lpC���C�Q�C��C� C��MC���@���    @��     @�     C�]�C���C��C��C��NC��C��+C�-�C��TC�[�C�K�@�M�    @�      @�|     C�gIC��9C�!*C�թC��hC�˷C�$�C���C��nC�y8C�~5@���    @��     @��     C��C��yC��C��7C���C���C�sC� C�%JC��CC���@�'�    @��     @�V     C�|�C�ӣC�<�C�rC�ΪC�-�C���C�'�C��C���C���@���    @�g     @��     C��}C���C�-JC��iC�� C���C�~C��C�8C���C��@��    @��     @�0     C��/C��aC�B C��_C���C�+C���C�LC�D;C���C���@�n�    @�A     @��     C�x�C�˚C�~C���C�kfC��2C�|�C�0!C�J�C�
C��@�ۀ    @��     @�
     C��C��C�;C��C��oC��]C��iC�!�C��C��C���@�H�    @�     @�w     C�nTC���C�*+C���C��UC�>C��iC��C���C�O�C�s(@���    @��     @��     C��aC��C� �C���C�{gC�	�C��KC�DaC�"FC��C���@�@    @��     @�(�    C�d�C���C�B�C�'�C��C�S�C��jC�d�C�6�C��KC��z@���    @��     @��     C�q}C��/C�!
C��bC��dC�`C�j�C�]C��C���C��q@�~@    @�g�    @���    C�z�C�͎C�0�C� \C��aC���C�S4C��C��C�lYC�u�@�4�    @�     @�L     C�pC��}C�-�C���C��C�tC���C�0C�XYC��C��i@��@    @�Ԁ    @��    C��@C��pC�C��C��OC��QC�OEC��^C��C���C���@á�    @Ë     @ù     C�eAC���C�1�C�!�C�
�C�KHC��FC��DC��GC�)xC���@�X@    @�A�    @�o�    C��UC���C��C��OC���C���C�sC��C�2 C���C��#@��    @��     @�&     C���C���C�%C��lC��JC���C�D�C�JC�AtC��|C��p@��@    @Ů�    @�܀    C��wC���C�%�C��C��C�+�C�XDC��"C�k C��C�LD@�{�    @�e     @Ɠ     C���C��@C�	�C��(C�ްC�: C���C�+�C���C�a�C�w=@�2@    @��    @�I�    C�z�C�؉C�AC��C���C���C�c�C��2C� YC��HC���@���    @��     @�      C���C���C�@C��VC���C�]C���C�6�C�V�C�JC�д@ȟ@    @Ȉ�    @ȶ�    C�<�C�~xC���C�<QC�+C�z?C��C��DC���C�S�C�b�@�U�    @�?     @�m     C�\�C���C���C���C�UwC��C�S C��C��C�%�C�,�@�@    @���    @�#�    C�i�C���C��9C��!C�LC���C�q-C�@�C�0�C���C�XO@���    @ʬ     @��     C�]C��CC�
�C�ՏC���C���C�o~C�nC�(�C��pC��>@�y@    @�b�    @ː�    C�oC���C��C���C�OhC���C�_2C�F8C�x�C��C��=@�/�    @�     @�G     C���C��
C��C��{C�ӢC�3aC���C�$�C��C�~vC���@��@    @�π    @���    C��#C���C��C��C�X�C��CC�=fC��C���C���C��g@͜�    @͆     @ʹ     C�qC���C�-�C��C���C�'�C��C��C��?C�-�C�-B@�S@    @�<�    @�j�    C�]�C��C��C���C�}SC��vC�_	C�
�C�C��VC���@�	�    @��     @�!     C��{C��C�$C���C�gEC���C�)yC���C���C���C��@��@    @ϩ�    @�׀    C��lC��DC�&C�̅C���C���C�MLC��RC���C�A�C���@�;`    @�0     @�G     C��jC���C�*�C��C��PC�3�C��_C�%�C��C��C���@Ж�    @Ћ@    @Т@    C���C��9C�pC��C���C�;C�C�"�C�:C��C���@���    @��    @���    C��]C���C�'�C��yC�fC��4C�='C�߄C��4C��C���@�M     @�A�    @�X�    C�� C���C�BC��~C�MC��5C�i�C�!&C�#C�وC��@Ѩ`    @ѝ     @Ѵ     C���C���C��C�pcC�'�C��FC�U�C�7C�K�C��4C��n@��    @��@    @�@    C���C��C�G;C���C���C���C�/RC��C��C��C���@�^�    @�S�    @�j�    C���C��-C���C�zIC��C�vAC�K�C�E�C�>xC��vC��e@Һ     @Ү�    @���    C��GC�̫C��C��EC���C��xC�u\C�",C��hC���C��7@�`    @�
     @�!     C�H�C�h�C��C���C�qC���C�0&C�� C��{C�GgC��@�p�    @�e@    @�|@    C�n�C���C��C���C���C�;�C���C��VC���C�-�C�o�@���    @���    @�׀    C��+C���C��C�~7C�<8C�ǖC�OtC��6C�LC��C���@�'     @��    @�2�    C�w�C���C��C���C�{@C���C�w?C�cC�cC���C��@Ԃ`    @�w     @Ԏ     C��VC�ʩC�C��IC��uC��C���C�16C�^C��PC�x�@�ݠ    @��@    @��@    C���C��C�6[C��EC���C��C�O&C��C��C�ԡC��~@�8�    @�-�    @�D�    C��C�ۿC� �C���C��VC��C�b�C��C��C���C���@Ք     @Ո�    @՟�    C��C���C��C���C��&C�ҋC�REC� fC�
�C���C��@��`    @��     @��     C�x�C��C�
C���C���C���C�V�C���C��C��-C��t@�J�    @�?@    @�V@    C��C�ܡC� nC��YC��#C�ɰC�,-C���C��C��C��^@֥�    @֚�    @ֱ�    C�s�C���C��C��C��|C��;C�m�C��C��`C�^�C�o�@�     @���    @��    C�|�C��C���C��!C���C�6C���C�4BC��C�y�C�r�@�\`    @�Q     @�h     C�}}C��C�F~C���C���C��C��C��C���C�[QC��@׷�    @׬@    @��@    C��AC��1C�&�C��C�tC�ߠC�_C��C�}C���C���@��    @��    @��    C��zC� �C�2�C��1C��PC�	}C���C�Z~C�Y]C��{C��/@�n     @�b�    @�y�    C��rC��C�J$C��C��4C�AC��C�o�C�mC���C���@��`    @ؾ     @��     C��C���C�)NC���C���C��C�^�C���C��C�^NC��>@�$�    @�@    @�0@    C��UC��DC�(SC��GC��3C�d�C�نC�.^C��UC��cC��@��    @�t�    @ً�    C���C���C��C��sC��C��PC�X�C�cC�8�C�ϢC��@@��     @���    @���    C���C�ݴC�;�C���C���C��C���C�*xC�ܧC�ppC���@�6`    @�+     @�B     C��PC��_C�*yC���C�g�C���C�1C��C�bC��2C��6@ڑ�    @چ@    @ڝ@    C�|�C���C�[C��C�ŉC�>�C���C�>�C�BC��MC��H@���    @��    @���    C��TC���C�'�C��\C�ĠC�(PC��HC��C���C��FC��b@�H     @�<�    @�S�    C���C�ԇC�93C���C��%C�$9C�yoC��C�\C��\C�ڋ@ۣ`    @ۘ     @ۯ     C���C���C�5�C� �C��pC�-�C��FC�)�C��C���C���@���    @��@    @�
@    C���C��bC�)�C�ԭC���C�`C�{C�8�C�:C��C��A@�Y�    @�N�    @�e�    C���C��C��C���C��C��FC�J�C��uC��OC���C���@ܵ     @ܩ�    @���    C���C��\C���C��bC�gFC���C���C�o�C�P�C��C��E@�`    @�     @�     C��C��OC�%�C���C��aC�7�C��MC�:jC�$3C���C��T@�k�    @�`@    @�w@    C�� C��C�LC���C�;�C���C�i�C�99C�vlC�:�C��T@���    @ݻ�    @�Ҁ    C��C�ŻC��C���C�s?C��HC�w�C�:AC�?C���C��V@�"     @��    @�-�    C�� C��NC�C�u C��C��fC�&�C��kC��C��gC���@�}`    @�r     @މ     C��CC��^C��C��C�M�C��C���C��C�-C��C��$@�ؠ    @��@    @��@    C��VC���C�JkC��C���C��LC�v C��C�kC��[C�v�@�3�    @�(�    @�?�    C��;C���C�">C�˞C�C���C���C�>MC�{C���C���@ߏ     @߃�    @ߚ�    C��DC��JC�PC�'�C�gC�j�C�ސC�[#C��C���C�t{@��`    @��     @��     C�|,C��sC�	�C���C�{C���C�`�C�VC�E�C���C���@�"�    @�     @�(�    C�~�C��sC�:&C��C��C�7NC��SC��C��AC��{C��@�Pp    @�J�    @�V@    C�h�C���C�7�C�
cC��%C�OC�m�C�ښC��	C�T`C�u@�~    @�x`    @���    C���C��_C�+�C��yC�{�C�иC�_�C�7C�J�C�֯C���@૰    @�     @ీ    C��PC�#C�$C��]C�v�C��CC�g�C�6JC�@�C��uC��Z@��P    @�Ӡ    @��     C��RC��C�6�C��;C�|�C���C�,�C�ӕC��)C��,C���@��    @�@    @��    C��C��uC�LPC��C��,C�
�C�x�C�!!C���C�t�C��l@�4�    @�.�    @�:`    C��1C��8C�$#C���C���C��C�vC��C��C��^C���@�b0    @�\�    @�h     C�x�C��JC�?�C��C��C�:�C�xC��/C�ǏC�q�C���@��    @�     @ᕠ    C���C��C�)�C���C���C��C�s�C��C��C��BC��R@�p    @��    @��@    C�~C��wC�]�C�7�C�C�_�C��C�z�C�@�C�� C��p@��    @��`    @���    C��OC���C�N�C��KC��C��tC�V�C��C�)�C���C��@��    @�     @��    C���C���C�!�C��|C��C�2�C��WC�HsC�=�C�ݨC�͋@�FP    @�@�    @�L     C��hC�ӠC�5�C��C��C�άC�HpC��qC��C��0C���@�s�    @�n@    @�y�    C��C�ϘC�7nC� C��	C�
C�w<C� C�UC��GC���@⡐    @��    @�`    C���C��C��#C���C���C��hC�|�C�1C�"�C��C�}�@��0    @�ɀ    @��     C���C��C�2C��$C�o�C���C�r�C�3rC�0�C���C���@���    @��     @��    C��'C��aC� !C���C�^�C��/C�y C� �C��:C�cC�W@�*p    @�$�    @�0@    C��C�٩C��C�ҖC���C��!C�iC���C�eC��C�rL@�X    @�R`    @�]�    C���C���C�.�C��8C���C��C���C��C���C���C���@ㅰ    @�     @㋀    C���C���C��C���C���C�3�C���C�9�C�\OC��C���@�P    @㭠    @�     C��8C��PC�@�C� �C���C���C��C��C��_C�U�C�e�@���    @��@    @���    C��4C��TC� jC�̼C��C���C�p�C�
�C��C���C��!@��    @��    @�`    C���C��QC�\$C��C��
C�2pC��EC�C��C�KJC�I_@�<0    @�6�    @�B     C��dC��C�2OC���C��C�T*C���C�=mC��C�arC�`H@�i�    @�d     @�o�    C��<C��=C� ,C��]C�s�C���C�MC�ơC��C��cC���@�p    @��    @�@    C�qDC��C�pC���C���C���C��PC���C���C�4(C�j.@��    @�`    @���    C���C���C�dC��	C��+C��C�6�C��VC���C��C��h@��    @��     @���    C���C��iC�#PC��AC��C�%GC�x�C��zC�ʸC�UWC�{�@� P    @��    @�&     C���C��'C�#C�ſC��C�AC�s�C�C�+C���C���@�M�    @�H@    @�S�    C��8C��ZC��C���C��4C�qC�ybC���C���C�5�C�\@�{�    @�u�    @�`    C���C��eC�I.C��HC���C��C��AC�	�C���C�o�C�l7@�0    @壀    @�     C���C��C�A�C��C���C�.�C��RC�M�C��C�oC�^�@���    @��     @�ܠ    C��uC���C��C���C�k�C��4C�miC��LC�ƣC�+RC�6�@�p    @���    @�
@    C��YC��]C�$OC��JC��0C�̶C� �C�эC���C�tC�r�@�2    @�,`    @�7�    C��QC�֨C�
�C���C�cTC��,C�f�C�TC�+�C���C�ϒ@�_�    @�Z     @�e�    C���C��kC�>C���C�y�C��UC��.C�QtC�D�C��=C��@�P    @懠    @�     C��!C�ܿC��XC���C�bzC���C�rC�(VC�3]C���C��_@��    @�@    @���    C��uC���C�<�C�	aC��_C��C�w�C�	mC�OC��C�@��    @���    @��`    C��C��C�EOC��9C��C�$C���C�%C���C���C��&@�0    @��    @�     C��JC���C�8C�]C��zC�MC���C�
�C��^C��KC��'@�C�    @�>     @�I�    C���C��,C��C���C�}�C���C�@�C��eC��C���C���@�qp    @�k�    @�w@    C��kC��C�B�C��<C��C�-C���C�UC��YC�I\C�c�@�    @�`    @��    C��`C��C��C���C�|�C��MC�w�C�5�C�)PC��C�k�@�̰    @��     @�Ҁ    C���C��MC��C�ڝC��VC�C�s�C���C���C�@�C�`�@��P    @���    @�      C��C��C�2rC��4C���C�C��KC�4�C�@�C�ɭC��3@�'�    @�"@    @�-�    C��C��C�7�C��sC��pC�ӃC�B&C���C���C���C��@�U�    @�O�    @�[`    C���C�C�K�C���C��zC��C�wPC�
vC���C�UgC�c�@�0    @�}�    @�     C���C�?C�7hC���C�iXC�ӖC�cC�C���C���C���@��    @�     @趠    C��;C���C�*�C��>C��#C�GC�y�C��C�C��XC���@��p    @���    @��@    C���C�aC�bC�.�C��C�kC���C�\C�9�C��iC�|�@�    @�`    @��    C���C�)C�f�C�&&C���C�'C�H=C��C��C��C���@�9�    @�4     @�?�    C���C��C�$�C��7C��C���C�QHC��rC��6C��ZC���@�gP    @�a�    @�m     C�l7C���C�|C��xC�g�C��C��C���C��C�b�C���@��    @�@    @��    C���C��vC�-nC���C��~C��$C�d�C��sC��C�Q�C�p~@�    @��    @��`    C��>C��;C�7�C��C���C��/C��+C�S�C�0�C��MC��~@��0    @��    @��     C��uC���C�SRC�!�C��^C�FC��?C�QC��;C�_BC�y�@��    @�     @�#�    C���C�ؐC�B%C�)0C���C�2�C���C�f(C�>C�u�C�q�@�Kp    @�E�    @�Q@    C���C��*C�3�C�ϴC���C�&C��7C�H�C�a�C��C�(@�y    @�s`    @�~�    C���C��C�sC�>�C��C�g5C�|C��C��PC�WC�{�@ꦰ    @�     @꬀    C��:C��C�sLC�6�C�RC�RWC���C�kwC�eaC���C��M@��P    @�Π    @��     C�ӢC�(KC���C�OHC�/�C��C��C���C�\�C���C��:@��    @��@    @��    C���C�+}C�|�C�S�C�4�C�vC���C�hEC�`�C���C��*@�/�    @�)�    @�5`    C��C�3oC�yrC�(C���C�B�C��#C�x�C���C�qSC�6@�]0    @�W�    @�c     C��C�G�C��+C�=�C��}C�X<C��C���C��@C�3�C��@��    @�     @될    C���C�?�C�a�C��PC��eC�taC�3	C�-�C�F�C���C�F@�p    @��    @�@    C�ݗC�%C���C�b�C�MC���C�4�C���C�rC��>C��&@��    @��`    @���    C��C�A�C��tC�OC�9�C���C�jC���C���C�D�C���@��    @�     @��    C��NC�!�C�[zC�aC��`C�M�C���C�caC�]YC�8C��@�AP    @�;�    @�G     C�˾C�.C���C��rC�vxC���C��C�d�C�?zC���C���@�n�    @�i@    @�t�    C���C�:'C�o�C�*�C���C�ALC��C�+�C�UC��uC�4~@윐    @��    @�`    C�ǐC�0SC���C��TC�X�C��4C���C��JC��LC�3pC�d@��0    @�Ā    @��     C���C�	C�zC�=PC�8C���C�'C��>C��C�u�C��@���    @��     @���    C��C�I�C��"C�\C�R-C��C��^C���C���C�P�C�I�@�%p    @��    @�+@    C�(C�E�C�n)C�8\C�6�C���C�2�C���C��C���C��@�S    @�M`    @�X�    C��~C�%4C�W[C��C�gC���C�/fC��C��C��bC��K