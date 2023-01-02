CDF   �   
      time       bnds      lon       lat    %      0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      �Thu Dec 29 07:47:00 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 15:51:48 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/CAS/FGOALS-f3-L/historical/r1i1p1f1/Amon/tas/gr/v20190927/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412_jja_zonmean_2.5dg.nc
2019-09-27T11:08:19Z ;rewrote data to be consistent with CMIP for variable tas found in table Amon.    source       AFGOALS-f3-L (2017): 
aerosol: none
atmos: FAMIL2.2 (Cubed-sphere, c96; 360 x 180 longitude/latitude; 32 levels; top level 2.16 hPa)
atmosChem: none
land: CLM4.0
landIce: none
ocean: LICOM3.0 (LICOM3.0, tripolar primarily 1deg; 360 x 218 longitude/latitude; 30 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: CICE4.0      institution       2Chinese Academy of Sciences, Beijing 100029, China     activity_id       CMIP   branch_method         Spin-up documentation      branch_time_in_child      @�        branch_time_in_parent         @��       contact       =Yongqiang Yu (yyq@lasg.iap.ac.cn);Bian He(heb@lasg.iap.ac.cn)      creation_date         2019-09-27T11:08:19Z   data_specs_version        01.00.30   
experiment        )all-forcing simulation of the recent past      experiment_id         
historical     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.CAS.FGOALS-f3-L.historical.none.r1i1p1f1      grid      gs1x1      
grid_label        gr     initialization_index            institution_id        CAS    mip_era       CMIP6      nominal_resolution        100 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      FGOALS-f3-L    parent_time_units         days since 0001-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references       ;He et al.,2019:CAS FGOALS-f3-L Model datasets for CMIP6 Historical Atmospheric Model Intercomparison Project Simulation. Adv. Atmo. Sci. doi:10.1007/s00376-019-9027-8; Bao, Q et al (2019). Outlook for El Ni?o and the Indian Ocean Dipole in autumn-winter 2018-2019. Chinese Science Bulletin, 64(1), 73-78, DOI: 10.1360/N972018-00913; Li, J., et al (2019). Evaluation of FAMIL2 in Simulating the Climatology and Seasonal-to-Interannual Variability of Tropical Cyclone Characteristics. Journal of Advances in Modeling Earth Systems, 11. https://doi.org/10.1029/2018MS001506.    	source_id         FGOALS-f3-L    source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        @Creation Date:(09 May 2019) MD5:cde930676e68ac6780d5e4c62d3898f6   title         %FGOALS-f3-L output prepared for CMIP6      tracking_id       1hdl:21.14100/3e84b755-c71f-4d12-a887-e1b4ba073f56      variable_id       tas    variant_label         r1i1p1f1   license      SCMIP6 model data produced by Lawrence Livermore PCMDI is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.5.0      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 0001-01-01 00:00:00     calendar      365_day    axis      T           (   	time_bnds                             0   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z               tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       J2019-09-27T11:08:19Z altered by CMOR: Treated scalar dimension: 'height'.         �  @                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     @       A$�    A$��    A$�e    C��C�<C�"+C�4OC�x	C��dC���C��[C���C��C�5�C�ȄC�DC�M�C�_�C�0�C���C�?GC��!C��?C�c�C���C�qyC��&C�_�C���C�C�C���C�U�C�٤C��zC��pC��C���C��lC��C��A$��    A$��    A$�?    C�<�C�WpC�P`C�c�C��aC��jC�ݭC�ӞC��mC�qVC�!�C���C��uC�:�C�WZC�28C��C�M�C���C�8C�TCC�æC�-�C���C�#C��C�'`C�WJC�+C��C�υC�s�C�e�C���C���C���C��xA$��    A$�v    A$�    C���C��C�?�C�\�C���C��kC��xC���C��C���C�^cC��6C�	RC�?�C�?WC���C��C� 1C���C���C�i C��"C�pcC��C���C���C�lmC��LC�}/C�
�C�dC��6C��C��nC��jC���C��;A$��    A$�P    A$��    C���C���C��
C��C�E�C���C���C��C�urC�G�C�	C��|C��C�A�C�]gC�#C��C�(�C�ŏC��C�b�C��XC�C�C��C�3�C��dC�D�C�|cC�O�C�ۅC��C��&C�|BC��/C��C�� C��yA$�{    A$�*    A$��    C�0RC�V�C�WC�k�C��.C��;C��tC�ݙC��!C�qVC�,\C���C���C�4tC�@C�yC��yC�6�C��uC�#C��C�`C�d�C���C�Y�C��$C�B�C�q�C�>VC��C��WC��+C���C���C��UC���C��VA$�U    A$�    A$��    C��eC�C�$�C�=�C�}TC��C�յC��jC��5C�g�C��C���C���C�;C�J^C��C�ѲC�
�C��dC���C� C���C��C���C�:�C���C�WFC��C�;
C��C��~C�z�C�u�C��tC��C��C�z�A$�/    A$��    A$��    C��C�6�C�4�C�GC��C��C�тC��C��C�r�C�/C���C��uC�4wC�<C��PC���C��C���C���C�&C��C�H�C��pC�I/C��aC�JC�7MC��XC�q&C���C�n�C�{hC��'C��C�܀C���A$�	    A$��    A$�[    C�6"C�^�C�g�C�xC��C��C��2C��0C���C�|NC�5�C���C���C� C��0C���C�P?C���C�)LC�ncC���C�u�C��GC�ZEC��(C�WUC���C�0�C��C��uC��C��RC��hC���C���C���C���A$��    A$��    A$�5    C��nC��hC��C�mC�O�C���C���C��{C���C�M�C�C��C��gC�/'C�CGC��C���C�C���C��KC�W�C��C�<{C���C�YC�z/C��.C��C���C�z�C���C�v�C�t�C���C��;C���C�wVA$��    A$�l    A$�    C�mC�2�C�0C�G@C���C���C���C��@C�� C�h�C�$�C��YC��C�2�C�FmC��C��C�@�C��XC��C�[gC��KC�4C��C��C���C�?C�8C���C��aC���C�KC�O�C���C���C���C��IA$��    A$�F    A$��    C�	C�?�C�UqC�k`C��C��6C��C��5C���C�p=C�&�C���C��7C�-�C�4�C���C��-C�nC���C��C�P�C�ӗC�9�C���C�2fC��lC�(�C�n�C�G�C��OC��rC��C���C��C��C��?C���A$�q    A$�     A$��    C���C�LC�!CC�2C�k�C��{C��)C���C��C�iC�&C��C��kC�R�C�l�C�3�C��0C�2�C��8C���C�N�C��[C�*=C���C�4C�P>C���C���C���C�pRC��C�ZPC�P�C�w�C�v�C�wCC�gA$�K    A$��    A$��    C��OC�(�C�F5C�a�C��oC���C��lC��UC���C�z�C�>�C��_C��lC�)C�$IC��C���C��WC�W�C���C��C��iC�+�C���C���C�!C���C���C��C��C��C��?C���C��wC���C�͋C�� A$�%    A$��    A$�w    C��zC���C���C�
C�J�C���C���C���C��
C�RKC��C���C��C�GqC�a�C�4}C�C�P2C���C�C�a�C��C�m�C���C�g&C�ҫC�Q�C�_�C�C���C���C�_�C�`�C��5C��C��^C��
A$��    A$��    A$�Q    C�CC�8C�3�C�C�C���C��fC��`C��C��MC�ijC�C���C��HC�FHC�W!C�.�C���C�C�C��MC��C�_CC��-C�KC��.C�+�C��CC�*�C�ckC�0�C��C��<C���C��C���C��WC�يC�ϥA$��    A$Ĉ    A$�+    C�=C�`�C�`9C�q�C���C���C���C��SC���C�nEC�$AC��'C��,C��C�XC���C��C�ޮC�~WC�̠C�>�C��eC�`�C���C�PC��C�:'C���C�vVC���C���C��!C�|*C���C���C�}C�ggA$ǳ    A$�b    A$�    C���C��C�#�C�@�C��C�ëC��(C���C���C�s.C�,�C��'C���C�G@C�b�C�2�C���C� �C��PC���C�c9C�'C�~�C���C�]�C��qC�OTC�rKC�M�C���C���C���C���C�׉C���C��SC���A$ʍ    A$�<    A$��    C��.C��C��C�,�C�n�C���C���C��TC��C�K�C�	mC��-C��3C�EC�U�C�'C��C�)�C��C�8C�h�C���C�R@C��C�3�C��=C��C�E�C��C���C��7C�{?C�p�C���C��\C���C���A$�g    A$�    A$͹    C�=�C�_�C�b�C�v�C��C���C��lC��KC��gC��C�DWC���C��C�&�C�,�C��8C��{C��kC��sC���C�\!C���C�o�C��$C���C��C��JC��TC���C�&C��C���C��4C���C�wC�3C��A$�A    A$��    A$Г    C���C�*kC�[�C�wC���C���C���C���C���C���C�U�C��-C�	kC�1uC�,�C��C���C��C���C���C�i�C��C�[tC��IC�AOC���C�6�C�vC�Q$C��"C��YC��C��}C���C���C���C�u�A$�    A$��    A$�m    C���C�ҩC��C��C�(�C�t�C��XC���C�tC�FC��C���C�C�m2C��UC�\(C��C�k�C���C�'�C�v�C���C�e�C���C�8�C���C��C��vC���C�i2C��9C�57C�9[C�{�C��&C�M�C�$TA$��    A$դ    A$�G    C�6�C�SC�I�C�^9C���C���C���C��C���C�eC�UC���C�C�RNC�pmC�G|C��C�fyC��C�5�C���C�!C��WC��uC�X>C��C�)C�<ZC�C��KC��mC���C��AC���C�ͺC���C��[A$��    A$�~    A$�!    C�KEC���C���C��4C��C�"AC�'\C��C���C���C�p�C���C�&C�/�C�/>C� }C��C��C���C��{C�K5C��MC�R�C��{C�G	C���C�6%C�pC�S�C��SC�)C��lC��/C��+C��C���C��A$۩    A$�X    A$��    C���C��rC���C�kC�VfC���C�̟C��&C��C�[�C�-C���C���C�P�C�w�C�W�C��C�\�C��|C��C�j�C���C�bDC���C�l�C��?C�a�C���C�]_C��PC���C�y-C�u�C��C��C�ȤC��uA$ރ    A$�2    A$��    C�$�C�IC�G�C�\#C���C��2C��AC��C���C�xTC�;�C��C�
C�H�C�Q�C�&C��C�J�C���C��C�Z�C��C�ivC��2C�Q*C��C�3	C�`�C�+vC��$C��JC�wC�{�C��QC�ĭC�� C���A$�]    A$�    A$�    C��)C�-C�97C�S�C���C���C���C��uC��C��,C�4C�ŻC���C�C�C�U$C�-�C�OC�X�C��VC�6aC���C�C��C���C��TC�
�C���C���C���C�dC��C��WC��EC�ڼC���C��+C��A$�7    A$��    A$�    C�C�8AC�:)C�P�C��"C�ùC��)C���C��)C�owC�,�C��oC�	C�WCC�xC�G+C�4C�\�C���C�LC�W0C��PC�#�C���C�AqC�ŇC�KkC�|�C�D�C���C���C��(C�{�C��C���C��QC��PA$�    A$��    A$�c    C�H7C�ueC�x�C��[C��zC��C��C���C��^C���C�2XC���C��nC�;�C�V�C�6�C� C�vkC�C�[UC���C�8�C��C��OC�kiC�؅C�pC���C��wC�E�C�5CC���C��bC���C��C��jC���A$��    A$�    A$�=    C��=C��C�-�C�F�C��aC���C��{C��DC��NC��%C�AC�ŷC��C�8VC�P.C�*}C��(C�F�C��#C�"�C���C�"�C���C�2C��_C�8�C�ǽC���C���C�C�3C��EC��-C���C���C�kC��A$��    A$�t    A$�    C���C�!SC�)5C�7�C�vMC���C��C��ZC���C��C�D�C��@C��C�P�C�c�C�-�C���C�C�C��^C��C�|+C�VC�~C���C�rLC�ӥC�@�C�K�C��C���C���C��sC���C��^C�C��C��A$�    A$�N    A$��    C�'tC�WNC�^C�sC��qC��jC��lC��rC��]C���C�[bC��C�aC�CC�CGC�aC���C�6jC�֩C� C�n�C�C���C��FC���C��C���C��VC���C���C��cC�|cC�q�C���C���C���C���A$�y    A$�(    A$��    C��dC�NC�,
C�BC�yUC��VC��[C��:C���C�y�C�3�C��C���C�@�C�R�C��C���C�$�C��VC��C�6�C���C�-�C��=C�DC��oC�oC���C��CC��C��C��iC���C��?C���C��?C���A$�S    A$�    A$��    C���C�3C�"�C�9MC�{�C��\C��C��/C���C�cBC�uC��*C��C�4LC�:$C��{C���C�!�C��ZC��gC�E�C���C�0�C���C�9�C���C�'C�EnC�7�C���C���C���C��`C��^C���C�عC��\A$�-    A$��    A$�    C�e�C��C�w}C��LC�ʑC��1C���C��C��2C���C�C�C���C�'C�:dC�9;C� C�ƂC�
{C���C�ˊC�'jC��hC�5�C��(C�JkC��9C�
�C��C��C���C��UC�b�C�dpC���C�s]C�h5C�V�A$�    A$��    A$�Y    C���C��C�1C�&kC�c�C��fC��|C���C��C�^C��C��EC��C��C���C��C��C���C��xC��sC�[BC��C�V�C���C�9�C���C�RlC���C�_C�܅C��_C���C���C���C���C��C���A$��    A$��    A$�3    C���C��(C��>C��C�%C�s�C��C�|�C�O�C�#-C��C��dC�рC�)�C�?�C�cC��C�dC��QC��XC��C���C�'�C���C�%.C��"C�!�C�E;C�C���C��&C�}�C�nPC���C�tUC�^�C�E�A% �    A% j    A%    C�C�4pC�15C�A�C�x�C���C���C��yC��CC�b�C�!�C��vC���C�5lC�FQC�&C��C�rC��.C��LC�0�C���C�/~C���C�:C��zC�^�C��pC��-C�-C�!QC��C���C��	C���C��~C��	A%�    A%D    A%�    C�3C�.�C�D�C�V�C��C��PC���C��aC��YC�|C�8�C��LC��C��C�"vC���C�ւC�$ZC��fC�C�oWC�cC�q8C���C�z�C�� C�V;C��C���C�-C�&EC���C���C��/C���C��=C�e�A%o    A%    A%�    C�0~C�P4C�LOC�_�C��C��VC�ڠC�ѡC��SC�k�C�IC��]C���C�/9C�KDC�!�C��C�=C��bC�RC���C�C�m�C��C�^AC��+C�0DC�T�C�|C��CC��[C�L�C�KzC�{�C�w�C�|�C�r�A%	I    A%�    A%	�    C��C�L�C�gC�FC��yC���C��C���C���C��1C�@�C��JC��C�M�C�IOC�	*C���C��UC��XC���C�X�C��C�W�C���C�a�C��tC�=3C���C�aC��HC��0C��C���C��CC��-C���C��RA%#    A%�    A%u    C��=C��NC��WC��JC�2�C���C��NC��bC���C�fC�*DC��oC���C�6�C�8�C���C�ͅC�1C���C�>@C��WC�&C���C��C��CC���C�YhC��[C�tC�JC�C��C���C��C���C��C��A%�    A%�    A%O    C��C�/�C�,�C�A�C�wEC���C��nC���C��C�cC��C���C���C�&xC�1�C��zC���C��C��jC���C�hC�lC�uSC��*C�H�C���C�%�C�XC�4zC���C���C�g�C�jlC���C���C��EC�g�A%�    A%�    A%)    C���C�/$C�IC�_�C���C���C��SC��C��>C��NC�:oC���C��C�'�C�/�C�C��C�jC��NC�C��wC�0@C��AC�C��8C���C�VC�~�C�Y"C��+C��IC��C�u�C��dC���C���C��tA%�    A%`    A%    C��YC���C��,C�SC�H�C��gC��WC���C���C�e�C�$UC��=C���C�HGC�Y:C�(lC��TC�KC���C��dC�DaC��C�|C���C��C��C�]'C���C�?�C��MC��oC���C���C��IC��6C���C�£A%�    A%:    A%�    C�_AC�v"C�q}C���C���C��C���C���C��C���C�?iC��C���C�:�C�>`C��C��SC�FC���C���C�;C�٠C�Y�C��|C���C��C�{�C�x�C��C��C���C�f,C�dcC���C���C��uC���A%e    A%    A%�    C���C�5PC�dtC��sC��\C�pC�#C��C�ȖC���C�H�C��^C�AC�^yC�oC�E�C�jC�6�C���C���C�X�C�לC�9jC���C�$C�|OC�BC�R�C�P�C��C���C���C��lC��C��C��sC��lA%?    A%�    A%�    C���C���C���C��C�W�C���C��VC��%C��C�_MC�GC��^C��	C�B�C�g�C�CnC�gC�plC�C�IC��CC���C�VVC��C�=�C��WC�.�C�U�C�=�C���C���C�c�C�[�C��pC���C��~C��cA%     A%�    A% k    C��C�@C�9�C�N�C���C���C�ђC���C��JC�j�C�+C��`C��C�OC�i�C�CC��C�Q0C�ҔC��SC�iC���C���C�l�C�qC���C�:YC���C��zC�5C�7C���C��C�ګC��iC���C���A%"�    A%"�    A%#E    C�cC�I6C�j�C���C���C�	$C��C��3C��yC���C�G�C��KC�bC�O�C�X�C��C��C�C��C�� C�#zC���C�V�C�ΓC�u!C���C�IMC�C�C��UC���C��C���C��5C��&C��$C���C���A%%�    A%%|    A%&    C���C��C��RC�JC�GC���C���C���C���C�XIC�2C��4C�fC�oVC��sC�v�C�CC��]C�C�,�C���C��C�e�C���C�7C��vC��C�صC��C�oC�áC�kWC�_�C���C��5C�z�C�d�A%(�    A%(V    A%(�    C�*<C�KxC�C�C�R�C���C��C���C��kC��vC�l�C�"gC���C��6C�8qC�H�C�#�C��&C�GeC�ܵC�MC�kDC��eC�Q�C��VC�pEC��DC�XC�pIC�[iC���C���C��|C���C�ܞC��}C��C���A%+�    A%+0    A%+�    C�r�C���C���C��C��qC�C�EC�C��GC��mC�atC��^C�GC�K�C�Y)C�0�C��C�=C��[C���C�]�C��C�H{C���C�PMC���C�n
C���C���C�,C�QC��%C��XC��hC��C���C��,A%.[    A%.
    A%.�    C���C���C���C��C�^	C��2C��CC���C���C�viC�=^C��9C�$-C�h�C�s$C�>�C��C�J�C��`C��vC�8C��jC�*�C���C�=xC��C�S�C��cC�;�C���C�ցC�}�C���C��dC���C���C���A%15    A%0�    A%1�    C��C��zC��C��C�=BC�C���C��C�n7C�;MC�� C��rC�܎C�&-C�;C�~C��C�'�C��XC�ۤC�7�C���C�9�C���C�G�C���C��C�<C�C���C��C���C���C��_C�ϬC�үC���A%4    A%3�    A%4a    C�1�C�X�C�X�C�kSC���C��4C���C�ΛC���C�h�C�'�C��C�ӂC��C��C�θC��IC��.C��kC���C�F�C��C�a	C���C�F-C��%C�-�C�kC�a@C��RC��CC���C��C���C��C��sC���A%6�    A%6�    A%7;    C�wC�5C�C�C�T�C���C��C��WC�ҘC���C�u�C�/�C���C��C�-C�3�C���C��FC���C�k�C���C� �C��C�IC��C�SVC��C�D�C�r�C�bC��C�FC��=C���C���C��1C��SC�·A%9�    A%9r    A%:    C���C� @C�:�C�S�C��~C���C���C��RC���C�xC�1�C�˶C�
�C�I�C�R�C�'�C��C�)xC��@C��C�N�C��*C�h�C��PC���C�`C��cC��AC��'C�%HC�%�C���C��`C�*C�
�C�C��)A%<�    A%<L    A%<�    C��C�4C�$~C�;C�~�C�ˣC��;C��C���C�q`C�-�C���C��C�&�C�+_C�C���C��C���C�кC�+�C���C�6�C��9C�m�C��C��VC��C�i�C��C���C���C��'C��8C���C��JC�٩A%?w    A%?&    A%?�    C��C�#cC�+�C�97C�r�C���C��0C���C���C�|�C�,;C��C�պC�
DC��C��C��KC�%|C��$C�8C�^�C���C�JC��bC�K�C��2C��C�8�C�%0C��JC��DC�w�C�s)C���C��fC��C��IA%BQ    A%B     A%B�    C�O�C�v�C�u�C���C���C���C�	ZC���C�̭C��tC�CC��(C��;C�dC���C��C���C��&C��\C��C��6C��C��iC��C�� C�"�C��2C���C���C� 3C��C��QC���C���C��~C�ԾC���A%E+    A%D�    A%E}    C��C��C�F�C�e�C���C��C��C���C��C��C�S"C���C�}C�EpC�C�C�C��C�2�C��C�)C�i�C�ZC���C��WC��NC�C��C���C��C�!1C� �C���C���C���C�C���C���A%H    A%G�    A%HW    C��RC��C�C�+�C�l0C��kC�͝C�ĉC��.C�[�C�3C���C�	EC�X�C�y C�PoC�@C�O�C���C��C�g$C��C�w�C���C��cC�@C���C��C�~�C��}C��:C���C���C���C���C��7C���A%J�    A%J�    A%K1    C�>C�d�C�jSC���C��C��tC���C���C�ŎC���C�HkC���C���C�+�C�0|C��xC���C��C��>C�͍C�:�C��}C�n�C���C�j)C�޶C�h�C���C���C�	ZC� CC���C���C�ƂC��FC���C��UA%M�    A%Mh    A%N    C���C�*�C�A�C�VXC���C��mC��C�ݻC���C��,C�K�C�ܲC�
�C�CYC�HC��C��_C�uC���C�؟C�;C��PC�;�C��.C��C��[C��C�fC�c�C��CC���C���C���C��TC��>C��@C��,A%P�    A%PB    A%P�    C��XC�MC�&C�7�C�y�C��C���C��C��C�[GC��C���C���C�M�C�f<C�7�C��wC�#�C���C��C�]�C��C�U�C��C�@~C��6C��C�.]C�%tC���C��cC���C���C���C���C��_C���A%Sm    A%S    A%S�    C�7C�9C�E�C�\�C��C��,C��hC�� C��`C�y�C�.�C���C��
C�6�C�N:C�+�C���C�8�C��-C��C�`rC��C�b-C��uC�a�C��vC�X�C���C�j�C��C��C��sC��+C���C��\C���C��WA%VG    A%U�    A%V�    C��C�8�C�BC�TjC���C�ϴC��gC�ζC���C�p#C�0%C��wC��=C�?9C�L�C��C���C�<�C��VC��tC�]�C���C�K;C���C�VbC���C�F�C��%C�U6C��C��C���C���C���C���C���C���A%Y!    A%X�    A%Ys    C�BC�f�C�gqC�|�C���C���C���C���C���C�mMC� MC���C�1C�JNC�U]C�YC�ءC�$C��xC��2C�HGC���C�rC�{�C�C�n�C��C�&!C�"$C��sC���C�}�C�zC��PC��vC��rC��A%[�    A%[�    A%\M    C�OC�ouC�k2C�~�C��oC��oC���C��C���C���C�BqC�ֹC�#C�[(C�`aC�%$C��*C�"�C���C���C�S�C��C�wgC��CC���C��C��zC��2C���C�sC�	�C���C���C��UC��;C��qC���A%^�    A%^�    A%_'    C��%C�/RC�PbC�l�C���C���C��C��C�ǛC��C�I�C��C���C�34C�.jC��C���C�	�C��C�+C��SC�3-C��FC���C���C��4C�W�C�\@C�'C��)C��OC�XUC�D�C�v�C�C�~�C�d�A%a�    A%a^    A%b    C��JC��C��C��C�['C���C��5C�ɡC���C�xVC�5�C�ŢC�	C�C�C�Y�C�3TC�C�h?C���C�,�C��6C�	iC�iuC���C�5eC���C��C�GAC�5�C��yC��0C��@C��cC��C��C��C�ѭA%d�    A%d8    A%d�    C�JC�=�C�H_C�\�C���C��"C��C��C��$C��|C�=]C��C��0C�/�C�'`C��C��qC���C���C��MC�L�C�ͨC�- C���C� C�I�C�ŦC�	0C�[C���C��_C��*C���C�ިC���C���C���A%gc    A%g    A%g�    C�0AC�TC�RHC�f�C���C��UC��OC��YC��{C�n�C�*�C���C��=C�' C�,)C���C���C�)C���C�`C�n.C��C�l�C���C�>�C��8C��QC��C��C���C���C�x)C��fC�ɒC�ηC��C���A%j=    A%i�    A%j�    C��C�BqC�[DC�oUC��/C��C��C��CC��C��C�=YC���C���C�$�C�!�C���C���C��C���C���C�fC�C�whC���C�S�C��'C�yC�:JC�!C��dC��jC���C��#C���C�� C��aC��BA%m    A%l�    A%mi    C���C���C�ͤC��fC�$C�xC���C��:C���C�V�C�3C���C���C�;�C�R4C� |C��IC�9�C�ѺC���C�VLC��!C�/�C���C�&7C���C�>�C�zC�SdC�ݔC��uC���C���C��@C��5C��*C�ұA%o�    A%o�    A%pC    C�[�C�n�C�g?C�}AC��C�ٖC���C���C���C�1C�7SC��^C���C�+�C�1�C��lC���C��C��C��C�Q4C�ҚC�G�C���C�X�C�΄C�MTC��JC�\�C���C��C��C�УC�yC�C�C��A%r�    A%rz    A%s    C��UC�.�C�Y C�v�C���C��C��KC��C��gC���C�K�C��C�C�H�C�D�C��C��C�)OC��dC��C�~�C��C�v.C���C�x�C��<C�^�C��OC�C�C��TC��LC���C��bC���C��C��-C���A%u�    A%uT    A%u�    C��=C��PC��C��C�@�C��C��SC���C���C�vzC�8�C���C�;C�Y�C�f�C�8cC��C�X�C���C��C�k�C���C�k�C��yC�uC��[C��:C��5C��C�C�C�"�C���C��C���C�@C�"C���A%x    A%x.    A%x�    C�$�C�>�C�:NC�RUC��~C���C��hC�͌C��_C�zUC�:C�яC�C�C�C�G�C��C��C�JC���C��C�eC���C�NTC���C�'`C��dC�6�C��>C��pC�TAC�BC��dC���C���C��C�!C� tA%{Y    A%{    A%{�    C�C�J�C�bC�n�C��gC���C���C��jC��tC��ZC�KC��C�C�>�C�C�C��C���C�DC��C��C�f�C�2C���C��C���C�(YC��3C� �C���C�gC�7C���C���C��hC��qC��C��#A%~3    A%}�    A%~�    C��rC��C��C�*�C�mC���C��GC��(C���C�\*C��C��zC��C�8!C�HC��C��DC� OC���C���C��C��qC�F�C��eC�f"C���C���C��wC�f�C���C��C��	C��4C���C���C���C���A%�    A%��    A%�_    C��C�D;C�LsC�Y�C���C��(C���C��dC���C��_C�<�C���C��cC�9PC�G�C�>C��zC�,qC��C�.C�C�C�RC���C�;C��BC�faC�� C�v�C��C��C���C��C��tC��AC���C���A%��    A%��    A%�9    C�>�C�g#C�o�C��dC���C���C���C��C�� C��C�AkC��bC��C��C��C���C���C��eC�wuC�΄C�X�C�5C���C�,^C��VC�5�C���C���C��FC�<�C�0C��C��IC��jC���C��C���A%��    A%�p    A%�    C�PzC�yfC�|�C���C���C���C��C���C���C��?C�>�C�¨C��C��C� �C��wC��bC�iC��~C���C�R C��|C�bC��KC�|PC��C�D�C�N�C�/ZC��|C��*C��\C��C���C���C���C���A%��    A%�J    A%��    C��C��RC��C�1�C�sgC��>C�іC��fC���C�jTC�1fC��:C��C�d0C�aVC� �C��5C�/�C��JC��{C�H�C��C���C���C��tC��VC�yC���C�BGC��nC���C���C���C��C���C�ėC���A%�u    A%�$    A%��    C��%C��C�#�C�6DC�tOC��C���C���C��TC�iC�)�C���C�C�J�C�]�C�3�C��aC�HjC��gC� �C�Q�C���C�OC��{C�WiC��C�y�C��
C�v�C���C�TC��FC��lC���C��C���C���A%�O    A%��    A%��    C�r;C��WC�{�C��WC��C���C�
CC���C���C���C�>KC���C�#C�8�C�9$C��GC��yC�-�C�ڌC�!wC��.C�XC�i�C��C�iPC��C��nC��mC��+C�QEC�8�C��C��xC���C�OC�OC���A%�)    A%��    A%�{    C�۷C�*C�N�C�u�C��,C��C��C��iC���C��yC�R�C��C�JC�CxC�N�C�"�C��#C�P�C��C��C�wC� &C�w�C���C�wVC���C��VC��C��C��2C��%C���C��C���C��xC�ԐC��VA%�    A%��    A%�U    C��$C��C� �C�GC�TqC���C���C��fC���C�hMC�%�C��dC�eC�g�C���C�Y4C�/8C�y�C���C��C�`JC�וC�QBC���C�uiC��C�q%C��C�rC��C��C���C��C��tC�ζC�ԺC���A%��    A%��    A%�/    C�JZC�n'C�iC�xGC��EC��3C��MC��OC���C���C�NFC��'C�C�O"C�YhC�"C��C��C���C���C��C��C�.C��`C�MC�ǞC�Z�C���C�k+C� *C�fC���C���C��mC��BC���C���A%��    A%�f    A%�	    C�2C�iC��C���C���C�	JC�`C��C�֧C���C�T�C���C�C�>�C�@�C���C���C�hC��C��C�SVC��2C�vC���C�qC��FC�q�C���C�pC��C���C���C���C��C��5C���C��vA%��    A%�@    A%��    C���C��C��C�$�C�h�C���C���C�ПC���C�t=C�/�C���C�6C�\�C�o�C�0�C���C�GOC���C���C�e=C��C���C��C���C��C���C���C��,C��SC��RC���C�}C���C�ƲC��C�ɕA%�k    A%�    A%��    C�-�C�QpC�Q�C�c�C��>C��MC���C�� C���C���C�I�C��VC�!�C�`=C�n�C�?�C��C�U�C��pC��!C�OC��cC�$C�y`C��FC�Z�C�äC��C��C��`C��AC�}~C�x�C��#C��(C��#C��}A%�E    A%��    A%��    C�PFC��C���C��>C��mC�_C��C�NC��GC��C�[jC���C�qC�D�C�N�C�'�C���C�0rC���C��^C�DC���C��C�s�C�C��"C�6eC�xuC�WqC�ʰC�� C�pC�tC���C��bC���C��/A%�    A%��    A%�q    C���C��1C��C� �C�ZwC��C��C���C��iC�a>C��C��uC��PC�E�C�c>C�4wC��C�\�C��C�
xC�]�C�ЦC�,@C���C�-]C���C�@�C�n�C�@GC���C��uC���C���C�֡C��ZC��C���A%��    A%��    A%�K    C�!�C�DfC�EC�V�C��wC��tC��C���C��KC���C�D8C��C���C�0�C�;�C�}C���C�2jC��$C��C�?�C���C�$lC��C�8�C���C�P�C��ZC�BXC��C���C�K�C�;KC�mOC�sC�q�C�e�A%��    A%��    A%�%    C�vmC���C��mC��MC�ߝC��C�C��C���C���C�X$C�ήC��C��C�!KC���C��7C�EC��wC�ټC�JFC��+C�n�C���C��JC�C���C���C���C�	9C�
@C���C���C�ˇC��eC��C��qA%��    A%�\    A%��    C�էC�(C�D�C�n�C��6C�C�
�C���C��2C��ZC�LgC�ۊC��C�SC�L�C�C���C���C��	C��C�I8C��OC�W�C��cC�T�C��zC�X�C��YC�P�C��0C��C���C���C���C�ƜC�ĊC��A%��    A%�6    A%��    C��?C���C��C�C�\�C��<C�C��C���C�fC�#BC���C��C�P1C�r\C�S�C��C�`%C��lC��C�r�C��eC�VC���C��C��WC�%@C�_�C�/GC��_C�ҙC�j,C�l�C���C��DC���C���A%�a    A%�    A%��    C�K�C�lxC�e�C�w9C��C��C���C��C��yC�x�C�&\C��]C��C�-C�@uC��C��C�0�C��C���C�@�C���C�+C���C�J�C��XC�OFC�|sC�@C�ǦC��iC�k�C�k�C���C���C���C��	A%�;    A%��    A%��    C�
C�ChC�_�C�o�C���C���C��7C��C��6C���C�B�C�ЏC��C�W�C�v�C�J�C��C�bdC��C�VC�WC��C��C���C�IvC��C��*C���C��qC��C��C���C��(C��C��~C���C��SA%�    A%��    A%�g    C�C�>uC�@�C�RoC��DC��C���C��~C���C��8C�<nC���C��TC�4C�!�C��C��xC�6�C��_C��C�v9C���C�L�C��C�.�C���C�#C�fnC�HUC��SC���C���C�wHC���C��C���C��A%��    A%��    A%�A    C�x�C��C��C���C���C��C�ZC��C�ީC���C�L'C��1C���C�7yC�F�C� C���C�FfC���C��C�d�C� kC��aC��C���C���C�T�C�|C�a�C���C���C��<C��(C��9C��dC���C���A%��    A%�x    A%�    C�=�C�j#C�upC���C��C� C�lC��BC���C��MC�;C�ŽC��0C�:�C�K9C�#C��rC�!~C��{C�%C�qSC���C�|$C��[C��'C���C�p�C��uC���C�&|C��C���C��C���C���C��]C��A%£    A%�R    A%��    C��.C���C�
;C�+pC�}\C���C�יC���C��CC�V�C�	�C���C��&C�7C�J�C��C�߰C�+�C��	C��aC�h�C��C���C�C���C��C��.C��AC�n�C��2C��C���C���C��wC��;C���C��]A%�}    A%�,    A%��    C�9�C�R�C�R�C�lDC��dC��0C��C��pC���C�qC�/�C��6C���C�;DC�CiC��C�ҿC�;C���C��MC�lC�C���C��jC��yC� "C��KC��.C��sC�!�C�
jC���C�k�C���C���C�|�C�m8A%�W    A%�    A%ȩ    C�^dC���C��PC��C���C�$�C�)�C��C��(C��C�BC���C��C�,C�>�C�gC���C�7C���C�ѠC�F�C���C�a�C��GC�uC��C�^sC��C�_�C��[C���C���C��QC���C���C���C��A%�1    A%��    A%˃    C���C��sC�vC�6�C���C���C���C��C���C�}�C�9�C��lC�eC�T�C�bC�,�C���C�)C���C��qC�L�C��\C�_pC���C�}�C�aC��xC��AC��%C�i�C�CdC���C��/C��C��C�0C��VA%�    A%ͺ    A%�]    C�'GC�JC�J8C�]�C��=C��,C��WC��	C���C�uVC�6�C��`C�4C��[C��.C�e�C�-lC�idC��C���C�LwC��8C�?�C��!C�B�C��C�HPC�y_C�RCC��[C��ZC�wQC�c;C���C���C��[C�~FA%��    A%Д    A%�7    C�]�C��C�|@C���C��C�
�C��C��IC��C��[C�C�C��'C��C�C��C��C��>C��SC���C��;C�[C��C�kwC��C���C��C�yHC��RC�u�C��9C��C��tC��`C��C��RC���C��QA%ӿ    A%�n    A%�    C��CC�\C�19C�PFC��qC��C��*C��dC��)C�i�C��C���C��;C�IC�\�C�'.C��C�O=C���C�%eC��QC�JC�orC��C�Z_C���C�`C�{&C�[C��C�tC���C��AC���C���C���C���A%֙    A%�H    A%��    C�OZC�h�C�eHC�}�C��CC��iC��VC��C��C��tC�KC��PC��xC�"�C�#�C��C��9C�	�C��nC���C�H�C��RC�H�C��nC���C��C��XC�ЧC���C��C�oC���C��(C�ԋC��;C��QC��&A%�s    A%�"    A%��    C�Y�C��<C���C��NC��C��C��C��pC���C���C�IJC��lC���C�/7C�4�C� �C�ڑC�7bC��C��C��WC��C�r�C��C�L�C���C�>�C�t�C�9�C��uC���C���C�&C���C��IC���C�˶A%�M    A%��    A%ܟ    C��C��C�	�C�$�C�g�C��cC��@C��=C���C�RC��C���C���C�=wC�KC�C��>C�APC��IC�\C�{;C�fC��C���C�tzC���C�Y�C���C�4pC���C��RC��]C�p�C��rC���C���C���A%�'    A%��    A%�y    C�?�C�`�C�UwC�h�C��3C���C���C��YC��C�i�C�MC��C��C�0�C�HhC�$HC��C�5�C���C��jC�;AC���C�)mC��=C��C�oZC��;C�$C��C�ПC�C���C��eC���C��&C�˃C��~A%�    A%�    A%�S    C�$'C�`�C�xoC��&C��C�fC�,C���C���C���C�/�C���C�ӌC��C�`C��=C��C�ւC�l[C���C��C���C�)nC���C�L�C���C�1AC�wHC�w<C��C��C��+C��JC��sC�jC� FC��A%��    A%�    A%�-    C��7C��4C�C�#�C�lzC��?C�˽C��lC���C�R�C��C���C���C�?�C�^1C�4C� FC�FC��*C���C�-2C��,C�YC��C�"�C���C��C�5�C�%�C�өC��C��C��C��.C���C���C���A%�    A%�d    A%�    C�,[C�G�C�H�C�^�C��1C��VC��C�ۖC���C�i�C�PC��jC��[C�>C��C��C��dC��C��'C��|C�?�C��xC�2uC��+C�8�C��LC�6�C�V�C� ?C�ǜC��C���C�x�C��1C��<C���C���A%�    A%�>    A%��    C��C�NC�l�C���C��-C��CC��C��sC��.C���C�c�C��C��7C�%^C�IC��mC��<C���C���C��C�4PC���C�KC��bC�b�C�ˊC�KkC��-C�o{C���C��C��;C��4C���C��C��C�ܪA%�i    A%�    A%��    C���C�@C��C�,�C�m�C���C��/C���C���C�gC��C��wC��EC�%hC�2eC��C�իC�&�C���C��<C�O�C��C�Y1C��BC�MC�R�C��C��C��NC��SC��gC�}C�xVC��lC���C��qC���A%�C    A%��    A%�    C�|�C���C��yC���C���C�C��C���C��C���C�5�C���C��kC��C��C���C��gC��C��9C�ۤC�QYC��QC��^C��(C��gC���C�i6C�nC�+�C��C���C���C��OC��C���C���C�ѭA%�    A%��    A%�o    C�"!C�L`C�d}C�~�C�¹C��C��C�aC��@C���C�Q�C���C��
C��C��C��C��HC��zC�m�C���C�^hC��C��fC��C���C��
C�g�C��0C�S�C��oC��jC��JC���C�ՂC��
C��C��SA%��    A%��    A%�I    C��+C�C��C�1�C�u C���C��C��\C��JC�p�C�.|C��PC��C�D.C�GC��C�ʁC��C���C��>C�R�C��C�z6C��C��rC��@C�I�C���C�npC��C�?C���C���C��#C��rC��C���A%��    A%��    A%�#    C�c[C�~�C�r�C���C���C� �C��C��/C�́C��'C�T$C��C�5C�/CC�-�C��[C��,C��C���C��C��C�&C���C��C���C�(�C���C��bC���C�RC�TC���C���C��-C��mC�ڌC��BA%��    A%�Z    A%��    C���C��wC��C���C��DC�$LC�1�C�!�C��C��C�fMC��9C���C�hC�+C���C��C��GC���C���C�O C��5C�]$C��'C��C�	ZC��C���C���C�4C�)vC��_C��eC��RC�ߏC��xC��A%��    A%�4    A%��    C��C�mC�@=C�aC��C���C��hC��:C���C��C�93C�ʫC�UC�A�C�K�C��C��"C�L�C��FC�'�C���C�C�u#C���C�z�C��GC�T�C���C�x�C��C��C��7C��lC���C�ΝC��bC���A&_    A&    A&�    C���C��C�!�C�6�C�x�C�ƆC���C��dC��-C�|lC�5�C���C���C�:C�>QC�hC��%C�)C���C��C�T�C��C�� C��CC�-C��C�w.C��|C��aC��C��C��[C��iC���C��C��[C���A&9    A&�    A&�    C�rlC��}C��=C���C���C��C�MC���C���C��sC�L�C��RC�C�EC�T�C�"�C�� C�$rC��zC��C�\*C���C�l�C��
C�j�C��%C�c�C���C���C��C�C��	C��C���C��-C��`C���A&    A&�    A&e    C�'�C�S"C�iJC��C��ZC�C�3C��6C�˫C��hC�Z�C��kC�{C�M�C�S!C��C���C��C��hC�oC�h�C��C�V*C��.C�^�C���C�XC���C�slC� C�qC���C���C���C���C��bC��YA&	�    A&	�    A&
?    C�
NC�8.C�TGC�m6C��&C��C���C���C��pC��C�D�C��C�+0C�vaC��kC�v�C�?�C���C���C��C�nC���C�m(C��lC�|�C���C���C���C�fC��bC��C���C���C��C���C��&C��;A&�    A&v    A&    C���C��C���C�ֱC��C�4C�4�C�).C���C���C�yrC���C�=C�*~C��C���C��<C��eC��lC���C�:�C��$C�`PC��C���C�"�C��yC���C���C�C�C���C��[C��C��<C�̻C�ÚA&�    A&P    A&�    C��C�01C�edC���C��GC��C�C�?C��C��lC�osC�IC�<gC�u{C�p�C�2�C��C�.iC��>C��C�u�C�oC�|`C��C���C��C���C��C�_LC���C���C��fC�~�C���C���C���C��.A&{    A&*    A&�    C�.;C�O"C�T�C�hC��C��C��C���C��aC���C�_�C�� C��C�OC�[�C�$�C���C�3�C��-C��	C�NaC���C�kPC��C��C��C��qC��'C��|C�#3C��C��C���C��C��C��%C��@A&U    A&    A&�    C�tC��XC��kC��7C�͜C���C��C��C��vC��2C�T�C�ڽC��C�8*C�;C��C��TC�%FC�ԊC��C��'C� ,C���C�bC���C��C���C��"C���C�?C�+�C���C��DC��eC���C���C��A&/    A&�    A&�    C��C�H_C�vC��C��
C�BC��C��"C��DC���C�K?C��KC��7C�9C�L2C��C��C�1�C���C��HC�4�C���C�3�C���C�X�C���C�mEC���C�T�C���C�%�C��mC�͘C��C��C��C��3A&	    A&�    A&[    C��C��C��C�(C�oC��fC���C���C���C�s�C�)�C�ğC�
�C�T�C�p�C�L�C�&�C�s�C�}C�%C�sFC���C�iWC���C���C�"lC���C��C��RC�(�C��C���C���C���C�C���C��DA&�    A&�    A&5    C�o�C���C���C��AC��HC�C�(�C��C���C���C��jC��C�'PC�Q2C�C�C�~C��wC�GC���C��1C��C��C�/$C���C�k;C��C�r�C���C��dC��C�GgC��3C���C��C�αC��C��0A& �    A& l    A&!    C�UC���C���C���C��C�%�C�9rC�'�C���C���C�s&C���C�SC�IYC�@TC��C���C�6�C��C�*	C���C��C��UC��C���C�1�C���C��C�ЉC�QJC�QC��7C��WC��0C�bC�UC���A&#�    A&#F    A&#�    C�dC�0�C�M�C�c�C��YC���C��C��C��rC��C�CC��gC� xC�f�C�z�C�LC��C�G�C��lC�	C�]�C���C�b�C��QC�}C���C�y�C���C�p�C��C��C��uC���C��1C��bC���C��A&&q    A&&     A&&�    C�e�C���C�}�C��C�ٍC�dC��C�
eC���C��YC��C�$�C�P"C�y�C�uoC�@�C���C�4�C���C�
�C�}�C�
�C���C��C��C�'aC���C���C��tC�YCC�QbC��TC��6C��C��C�#!C�A&)K    A&(�    A&)�    C��$C��C���C���C�&1C�_�C�^�C�J�C�.C��KC��%C�">C�M�C�OC�}�C�6C��C�RLC��YC�4�C��(C�,�C��C�4�C��	C�p�C��C�_�C�7�C��C�r�C��C��,C��C��C��-C��uA&,%    A&+�    A&,w    C���C�C�,:C�IC���C���C�ZC���C���C��C�g�C�C�W*C��9C���C��OC���C���C�PC���C���C���C��1C�?�C��WC�@�C��C���C���C�fC�Q�C���C�ȢC�
nC��C�C�A&.�    A&.�    A&/Q    C�?1C�[8C�R�C�i�C��iC���C���C��GC��C���C�R'C�מC�UC�H~C�NZC��C��IC�+�C���C��bC�[�C��lC�Z4C��cC�|�C� cC���C���C���C�3�C�=�C���C��JC��C��C��7C��A&1�    A&1�    A&2+    C���C���C��mC��]C��AC�*<C�/�C��C���C���C�o�C��C�+C�9AC�D�C��C��C�8NC�۬C�RC�tDC�C��C��C��?C�	fC���C�؅C���C�K�C�D_C���C���C���C��C��C���A&4�    A&4b    A&5    C�J�C�w�C���C���C�ۦC�C��C��C��>C���C�v4C���C�.C�mcC�o�C�8 C�~C�>C��OC���C�bC��C��
C��C��"C��C���C��&C��kC�5UC�F�C���C��+C���C��]C��$C�ӐA&7�    A&7<    A&7�    C�.C�U-C�`oC�v�C���C��mC��C��C��C��=C�x�C�	UC�<mC�q�C�q�C�3�C���C�H�C��!C�1�C���C�?�C��"C�6WC��sC�Q�C���C��XC���C��C�	C���C��C��FC��C��aC���A&:g    A&:    A&:�    C�k+C���C���C���C��C�+%C�3{C�%.C���C��<C��AC��C�8OC�gC�dC�,�C��XC�,�C��IC���C�_C��wC��;C�1�C��8C��gC�!�C�`�C�0/C��C�i�C��yC�ؖC���C���C��!C���A&=A    A&<�    A&=�    C�QyC�z�C��QC��C��qC�8C�9gC�9C�>C��&C��_C��C�WUC��C���C�z�C�A�C��fC�B,C��3C���C���C��_C�m^C�xC�m2C��C��C���C�@�C�F/C��bC��`C��8C���C��XC��&A&@    A&?�    A&@m    C�GfC�m�C�|�C���C�̞C�NC�3yC�(,C��C��gC�vC�	EC�F�C���C��|C�w�C�I�C���C�O%C���C��C�f�C��GC�8�C��!C�*|C��CC��C���C���C�}LC���C��6C��C���C��C��iA&B�    A&B�    A&CG    C�T�C�^C���C���C��C��C�*C�,C���C��uC�m�C���C�5�C�{�C���C�MzC�%WC�z�C��C�Z�C���C��C���C�C���C�3�C���C�C���C�� C�c�C��C��{C�!wC�C�"AC�*A&E�    A&E~    A&F!    C�24C�X�C�f�C�}�C���C�C� �C��C��>C��)C�d!C�/C�T�C��5C���C��|C�h�C��gC�5�C�a�C��uC�@�C��C�-C��>C�pFC���C�WC���C�I;C�E�C��TC��nC��C��HC��C��:A&H�    A&HX    A&H�    C�v�C��C��C��kC��AC�3�C�B�C�4�C�.C��5C���C�*�C�`�C��GC���C�X�C��C�y�C�$�C�w�C��VC�h�C��C�C���C�7C�|C��$C���C�PC�CmC���C��C�VC�#�C�!�C��A&K�    A&K2    A&K�    C�{�C��yC���C��ZC��C�T*C�Z�C�G�C�C��C���C�(�C�_�C��IC��5C��VC�JC���C�-C�_�C��qC�fC��C�]�C��eC�rUC��C�K�C� C���C��6C��C�7C�B�C�3�C�3C�GA&N]    A&N    A&N�    C�D�C�f�C�y�C��C�ҽC�HC�;NC�0CC���C���C���C��C�U�C���C��;C�|%C�C�C���C�(!C�jiC��C�mMC�އC�:�C�ͰC�8'C���C��$C��ZC�:!C�AtC��eC��(C�	�C��C��EC���A&Q7    A&P�    A&Q�    C��C��SC��^C���C�0�C�d�C�lWC�SC�(�C��fC���C�,\C�]FC��QC���C���C�Y�C���C�5VC�}'C�� C�q�C��{C�PXC��8C�U�C��`C��C���C��C�h�C��SC��\C���C��C��pC��MA&T    A&S�    A&Tc    C�_1C��WC�îC���C�pC�SEC�[`C�L�C�%�C��!C��cC�3�C�h�C��C��tC�txC�:lC�~�C�'C�y�C��TC��.C�%!C��/C�5;C���C�\�C��!C�YiC��`C��+C�2C� 'C�P'C�R�C�QC�=A&V�    A&V�    A&W=    C�	�C�0�C�>iC�Q�C���C��GC��C�C���C��C�jdC��C�YpC���C��DC���C��.C���C���C���C�:�C��TC��C�W�C��(C�.�C���C���C���C�`GC�T�C�؅C�йC�ZC�2C�C�;A&Y�    A&Yt    A&Z    C���C�؍C���C��,C�"C�L�C�U>C�E_C��C��:C���C�8oC�c)C��(C��C�s�C�D�C���C�B�C�sC��C�Z�C�ƼC�9IC�ܩC�KYC���C���C�ΠC�[�C�Z�C��C�תC�	;C�fC��C���A&\�    A&\N    A&\�    C���C���C��HC��C�*C�g�C�j�C�Q�C�"�C���C��C�6lC�v�C���C��0C��C���C�}C��C��>C�JuC���C�&BC�x�C��<C�:�C��+C��!C���C�c�C�m�C��C��QC��C��C�C���A&_y    A&_(    A&_�    C�,C�W�C�g�C�x~C��`C� C� 'C�!3C� \C���C���C�;�C���C�ϼC���C��'C��"C��/C�g�C��bC��^C��C��C�U�C��C�c%C��QC�C�C��C���C�f�C��C��C��C��
C��(C���A&bS    A&b    A&b�    C�zxC��tC���C��)C��TC�$�C�<C�3_C�
�C��GC��C�<9C�p�C��VC��]C��RC�x�C�ˤC�V�C�{�C��!C�iBC��!C�;C��'C�V�C��!C�-lC��C�P�C�K�C��aC��<C��C���C���C��iA&e-    A&d�    A&e    C���C��C���C�cC�7�C�q�C�y�C�f�C�<�C��C���C�E�C�i�C���C��pC�VUC��C�P�C�� C�,EC��C�O�C���C�n%C��C�}C��C�=�C���C�gcC�a�C� �C���C�:�C�;�C�8�C�,�A&h    A&g�    A&hY    C�%!C�d�C��[C��:C��EC�9C�LC�B:C��C���C��EC�4(C�n�C���C��C���C�e�C���C�=�C�ohC���C�|lC��VC�X�C��PC�DfC���C���C��^C�v�C�b�C��^C���C�(jC�.C�,8C��A&j�    A&j�    A&k3    C��WC��RC���C��C�	C�?�C�J�C�=�C��C�ҬC���C�!�C�cC��uC��C��VC���C���C�u9C��	C���C��#C��C�E�C�ϵC�F6C���C�7C��|C�HQC�6�C���C��C���C��C��SC��MA&m�    A&mj    A&n    C���C��C��NC��C�5�C�vmC��C�r�C�DyC��C���C�AyC�izC���C���C�tC�S�C��C�tLC���C��C��GC�<C�Z�C��C�v{C�QC�gLC�/MC�}�C��/C�%�C�"�C�P�C�L�C�EPC�+�