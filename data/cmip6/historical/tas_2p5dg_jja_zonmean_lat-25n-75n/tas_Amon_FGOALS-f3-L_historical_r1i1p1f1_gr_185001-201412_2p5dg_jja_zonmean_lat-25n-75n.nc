CDF   �   
      time       bnds      lon       lat          0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      kThu Dec 29 07:36:59 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:49:01 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:49:00 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
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
table_info        @Creation Date:(09 May 2019) MD5:cde930676e68ac6780d5e4c62d3898f6   title         %FGOALS-f3-L output prepared for CMIP6      tracking_id       1hdl:21.14100/3e84b755-c71f-4d12-a887-e1b4ba073f56      variable_id       tas    variant_label         r1i1p1f1   license      SCMIP6 model data produced by Lawrence Livermore PCMDI is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.5.0      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 0001-01-01 00:00:00     calendar      365_day    axis      T              	time_bnds                                lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           �   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       J2019-09-27T11:08:19Z altered by CMOR: Treated scalar dimension: 'height'.         ,  @v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       A$�    A$��    A$�e    C�yFC���C�<�C�-�C�QPC�jC��C��kC���C�f�C��IA$��    A$��    A$�?    C�h�C���C�+�C�-�C�^�C��C���C���C��`C�=�C�חA$��    A$�v    A$�    C��C���C�-�C��%C��C��C�� C��C��C���C�%A$��    A$�P    A$��    C�A�C��eC�0�C��C�;�C�
2C��C���C���C�aC��`A$�{    A$�*    A$��    C�l�C���C�#�C��C�J�C�)FC� pC��C��IC�V�C���A$�U    A$�    A$��    C�_�C���C�)%C�gC��C��lC��C���C��@C�h*C��A$�/    A$��    A$��    C�kC��}C�#?C���C�aC�ńC���C���C���C�3C���A$�	    A$��    A$�[    C�usC���C��~C���C��C�w#C�nC�b�C�_�C��C��vA$��    A$��    A$�5    C�F�C��C��C��C�1sC���C�҃C���C�{�C���C��=A$��    A$�l    A$�    C�bgC��C�!�C��C�Q�C��C���C���C���C�)C���A$��    A$�F    A$��    C�iC���C�*C���C��C��eC���C��mC���C�Q<C��SA$�q    A$�     A$��    C�cC��hC�?�C�1�C�G�C���C��7C���C�T�C���C��1A$�K    A$��    A$��    C�vJC��[C��C�݅C��QC���C���C�͇C��C��)C�7A$�%    A$��    A$�w    C�J�C���C�4�C�2(C�^sC��C��9C��9C��7C�GdC���A$��    A$��    A$�Q    C�cVC��:C�3_C�,C�SPC�
�C�ܐC��JC��C�F5C���A$��    A$Ĉ    A$�+    C�gmC���C��C���C��XC�ӋC���C���C��8C�jxC�"A$ǳ    A$�b    A$�    C�keC���C�6LC�,�C�6�C���C���C��C�ͬC�^C���A$ʍ    A$�<    A$��    C�F�C���C�1�C�" C�B�C�C��C���C��C�.[C��EA$�g    A$�    A$͹    C��`C��~C��C��lC�C���C��C���C�VC��C�@\A$�A    A$��    A$Г    C��	C��7C�!�C��`C��C��C��BC���C��yC�Z�C�!A$�    A$��    A$�m    C�A�C���C�Z+C�X^C�{C�.�C��C��kC���C�ΞC��BA$��    A$դ    A$�G    C�^nC���C�B�C�C�C�wC�>kC�C��MC���C�(�C��A$��    A$�~    A$�!    C��aC��^C�"AC���C�#�C��C��(C��:C��QC�XOC�(A$۩    A$�X    A$��    C�T�C���C�@�C�P�C�mC��C��C��yC���C�s�C���A$ރ    A$�2    A$��    C�q|C��.C�7$C�&C�VC��C��-C���C���C�E�C��A$�]    A$�    A$�    C�w�C���C�3C�+�C�i�C�=)C��C��C�
,C��C�1�A$�7    A$��    A$�    C�h�C��XC�FGC�F�C�l�C��C���C���C���C�`!C���A$�    A$��    A$�c    C�~�C���C�+�C�4�C��9C�aUC�-�C��;C���C��|C�^A$��    A$�    A$�=    C���C��kC�*+C�&\C�YC�+�C�C��C�7JC�ρC�1�A$��    A$�t    A$�    C���C��C�?FC�.C�VKC�LC�@C��"C��C�8�C��IA$�    A$�N    A$��    C��C��mC�3[C��C�G�C� C� \C��.C�vC���C�%A$�y    A$�(    A$��    C�rUC���C�/�C�dC�3�C���C���C���C���C��VC�"jA$�S    A$�    A$��    C�\pC���C�!"C��C�1FC��_C��iC��C��C�3C��A$�-    A$��    A$�    C�}5C��C�'�C��C�`C���C��C��TC���C�	'C���A$�    A$��    A$�Y    C�S�C�{pC��C�рC��C���C���C��C���C�u�C���A$��    A$��    A$�3    C�cC�k�C�xC�
vC��C���C��WC��AC���C�.�C��SA% �    A% j    A%    C�Z�C���C�#�C��C�%C��PC��\C��\C��kC��qC�C1A%�    A%D    A%�    C�t�C��?C�=C���C�5gC�
UC��[C��C���C�y�C�?0A%o    A%    A%�    C�c4C���C� �C��C�M�C�#�C� �C�؟C���C�;�C��HA%	I    A%�    A%	�    C���C���C�8C��C�C��C��kC�ӇC��C�e�C�	�A%#    A%�    A%u    C�_�C���C�#�C��C�FC�A�C��C��dC��gC�{�C�!A%�    A%�    A%O    C�[>C���C�	C���C�*�C�
C��#C��	C���C�@YC��RA%�    A%�    A%)    C��C��6C�C�QC�4�C�{C�$EC��C���C�h�C� A%�    A%`    A%    C�^�C��'C�60C�"fC�)�C��>C��C��{C���C�f�C���A%�    A%:    A%�    C��C��fC�(�C�
1C�#�C��uC�ЫC���C��C�^fC��rA%e    A%    A%�    C���C��`C�NQC�?�C�K�C�C�γC��QC��MC�<C�aA%?    A%�    A%�    C�X�C��C�3�C�A�C���C�KVC���C���C���C�C�C��iA%     A%�    A% k    C�eWC���C�?�C�?C�^�C��C��C�y=C���C��BC�,�A%"�    A%"�    A%#E    C���C���C�=1C��C�)C�ȮC��4C��C�ޞC�.�C���A%%�    A%%|    A%&    C�Q�C���C�]�C�pC���C�8'C��iC��C���C��TC���A%(�    A%(V    A%(�    C�c�C��1C�'�C�"�C�W�C��C���C���C���C�b�C��A%+�    A%+0    A%+�    C��RC���C�=@C�,�C�M�C��C�քC���C���C��C�1�A%.[    A%.
    A%.�    C�p�C���C�V/C�?SC�Z�C��>C��bC��OC��,C�c�C��aA%15    A%0�    A%1�    C�4UC�{C� C��C�7C��.C��_C���C���C�)�C��A%4    A%3�    A%4a    C�c�C���C��[C��<C���C��C��C��@C��+C�W'C�+A%6�    A%6�    A%7;    C�n�C��8C��C���C��uC��\C��DC���C�ĨC�`�C��A%9�    A%9r    A%:    C�q�C���C�8-C�$gC�<(C��	C��C��kC�OC���C�FJA%<�    A%<L    A%<�    C�k�C���C��C� )C�$=C�؍C���C�ŬC���C��'C�A%?w    A%?&    A%?�    C�r|C���C��>C�� C�4NC��C��C��WC���C�){C���A%BQ    A%B     A%B�    C��]C���C���C��aC��C�sC�
8C�IC�(_C��YC�A�A%E+    A%D�    A%E}    C��	C�ǍC�3�C�+C�ChC�C���C��C��C���C�A�A%H    A%G�    A%HW    C�U�C���C�I+C�K~C�_�C�C���C��VC��C��]C��A%J�    A%J�    A%K1    C��TC���C��C��	C��C���C�ۃC��HC���C���C�"�A%M�    A%Mh    A%N    C��C��|C�2;C��C�HC��?C��fC���C���C�M5C�	OA%P�    A%PB    A%P�    C�T�C��C�<(C�2jC�:<C��C��?C���C���C��C���A%Sm    A%S    A%S�    C�s1C��fC�'�C�&�C�LjC�cC��C���C�ۥC�t�C��A%VG    A%U�    A%V�    C�j�C���C�-nC�.C�LDC�C��C���C��vC�g\C���A%Y!    A%X�    A%Ys    C�f�C��C�6�C��C�7�C� �C���C���C�t�C��C��A%[�    A%[�    A%\M    C���C���C�GeC�#8C�6�C��C��^C���C��C���C�.8A%^�    A%^�    A%_'    C��(C���C� �C��C� �C�%�C�&�C��C��C�EzC���A%a�    A%a^    A%b    C�p�C��cC�4�C�4C�vbC�6C���C��rC��pC�1C���A%d�    A%d8    A%d�    C��7C��LC�C��C�^C���C�ÙC���C�T�C��fC��/A%gc    A%g    A%g�    C�h�C���C��C��VC�0tC�}C��=C��C��~C��C���A%j=    A%i�    A%j�    C�|�C�� C��C��PC��C��SC���C�� C��C�)�C��|A%m    A%l�    A%mi    C�N�C���C�()C� �C�LC��C��aC���C��WC�_DC��A%o�    A%o�    A%pC    C�xC���C��C��]C��C���C���C��C��iC�ipC�A%r�    A%rz    A%s    C���C���C�6�C��C�<�C��C���C��LC��C�g`C���A%u�    A%uT    A%u�    C�oC���C�G)C�8KC�g�C�C��rC��)C��sC���C�`MA%x    A%x.    A%x�    C�s�C��wC�1C��C�V�C�)C�ݦC��[C���C���C�b�A%{Y    A%{    A%{�    C��3C��TC�.9C��C�):C��>C��C�C�-�C��C�~8A%~3    A%}�    A%~�    C�UcC��wC�&�C��C��C��}C��8C��DC��;C���C��A%�    A%��    A%�_    C�{�C���C�(�C��C�@C�9C�#C���C��C���C�->A%��    A%��    A%�9    C��@C��C��C��C��C�فC��C�1�C�=CC�۩C�YMA%��    A%�p    A%�    C��C���C��C��[C�/C��gC���C��C��C�BC��aA%��    A%�J    A%��    C�fC���C�NAC�#VC�?�C��mC��[C� C���C�wC��CA%�u    A%�$    A%��    C�c�C���C�:`C�/�C�XC�	6C��C��C��C��OC��A%�O    A%��    A%��    C���C��C�'C� 3C�?�C�%�C��RC�ځC���C���C�i�A%�)    A%��    A%�{    C��>C���C�5YC�#C�^�C�";C��OC��NC��C��OC��A%�    A%��    A%�U    C�aC���C�U�C�Y'C���C�!�C�֚C���C���C���C�%mA%��    A%��    A%�/    C��TC���C�>�C��C�*�C�ĮC���C��KC�̋C�tC�^A%��    A%�f    A%�	    C���C���C�,�C� �C�(eC��2C��C��eC��C���C��A%��    A%�@    A%��    C�m�C��UC�K|C�3C�TXC��C���C���C��C��C��A%�k    A%�    A%��    C���C��FC�P:C�>fC�bLC�nC��?C���C�\�C��8C���A%�E    A%��    A%��    C���C��"C�78C�"�C�;�C�ҳC���C���C��C�]�C���A%�    A%��    A%�q    C�YeC��C�5�C�4@C�hVC�`C��C��C��$C�UCC��"A%��    A%��    A%�K    C�|�C��{C�#C��C�@\C��|C��'C���C���C�d�C���A%��    A%��    A%�%    C��"C��C�
C��jC�NC���C�ݍC���C��C���C�*�A%��    A%�\    A%��    C���C���C�> C�UC��C��C���C���C���C�q5C��A%��    A%�6    A%��    C�_@C���C�B-C�M�C�nWC�`C���C���C���C�B�C��A%�a    A%�    A%��    C�p�C��tC�fC��C�?lC��<C���C���C��~C�_�C��A%�;    A%��    A%��    C���C��bC�IzC�GmC�m�C��C���C���C��C���C�8�A%�    A%��    A%�g    C��tC���C��C� �C�H�C��C���C��KC���C�K�C���A%��    A%��    A%�A    C���C���C�'^C�sC�U'C�C��
C�	C��<C�izC�aA%��    A%�x    A%�    C�}�C���C�*C�UC�4*C�
jC��DC� C���C���C�7�A%£    A%�R    A%��    C�OZC���C�$AC�C�;�C��C��C�MC�'C��{C�0A%�}    A%�,    A%��    C�kYC���C�(�C�
�C�)�C��C� hC��MC�"�C���C�:3A%�W    A%�    A%ȩ    C���C��C��C��C�(�C�߀C��UC��C��FC�rLC�	A%�1    A%��    A%˃    C�w�C���C�A�C�)NC�:�C��
C���C��~C�eC�оC�y�A%�    A%ͺ    A%�]    C�q;C�ʆC�p,C�c�C�xaC�C��C��\C�C�aC�?A%��    A%Д    A%�7    C���C��#C��C���C�qC��3C���C��dC���C��C��A%ӿ    A%�n    A%�    C�a�C���C�6=C�&tC�^�C�.)C�wC���C���C�jC��A%֙    A%�H    A%��    C���C���C�;C��C�"C��C�ɒC�זC�bC��DC�)�A%�s    A%�"    A%��    C���C���C�LC�^C�G�C�$=C��C���C���C�VMC��eA%�M    A%��    A%ܟ    C�L�C���C�)�C��C�Q�C� �C��C��C��C�d�C���A%�'    A%��    A%�y    C�bC��oC�"�C� C�B�C��7C���C���C�tC� C��A%�    A%�    A%�S    C�GC��|C��pC��RC��nC���C���C���C��VC�c�C�-"A%��    A%�    A%�-    C�OC���C�0�C�0�C�S-C��UC���C���C���C�'3C��A%�    A%�d    A%�    C�c�C��OC��3C���C�(zC��GC��+C���C���C�>�C��A%�    A%�>    A%��    C��C��7C�C�֞C�8C��4C��eC���C���C�u&C�A%�i    A%�    A%��    C�_�C��XC��C��C�3uC��C��+C���C�\�C���C��NA%�C    A%��    A%�    C�~�C���C��9C�� C��C��C��bC�MC���C�Y�C��A%�    A%��    A%�o    C��SC���C�NC���C��:C��+C��C��C��;C�u�C��AA%��    A%��    A%�I    C�j�C��sC�.�C��C��C��	C���C��&C�ߦC�tGC�#{A%��    A%��    A%�#    C��dC���C�LC���C�dC��C��C��C�)�C��C�,�A%��    A%�Z    A%��    C��JC��C�VC���C���C��'C��<C��C��C��9C�NQA%��    A%�4    A%��    C�}�C���C�1kC�C�\�C�/gC���C��C��C�r�C�.�A&_    A&    A&�    C�u�C��MC�'�C��C��C��cC���C���C��RC��%C�*^A&9    A&�    A&�    C���C��GC�41C��C�6�C��yC���C��C��nC��KC�.A&    A&�    A&e    C���C�˭C�<�C��C�0^C�HC���C��C��cC�w�C�&�A&	�    A&	�    A&
?    C��BC��,C�fJC�n�C���C�$�C��C���C��<C���C�bA&�    A&v    A&    C���C��GC��C��RC�@C���C��
C�� C�"#C���C�9�A&�    A&P    A&�    C���C��EC�a�C�07C�B�C�C���C���C�
�C���C��	A&{    A&*    A&�    C��GC��C�?C�#�C�D�C��~C��C��bC�-C��{C�BlA&U    A&    A&�    C���C��GC�'C�nC�;�C�%�C�C��C� iC���C�WNA&/    A&�    A&�    C��}C��'C�+\C�C�@MC���C��VC���C���C�x�C� A&	    A&�    A&[    C�n�C��TC�EjC�K�C���C�.'C��C��C�"hC��'C�@SA&�    A&�    A&5    C��]C��C�>�C�)C�)C���C���C��\C���C��JC�;�A& �    A& l    A&!    C���C��<C�6�C��C�F{C�/�C��C��C�2,C��C�nRA&#�    A&#F    A&#�    C��C��kC�VC�E8C�Z1C�kC�޾C��oC��3C���C�+
A&&q    A&&     A&&�    C���C�C�i�C�<9C�H�C��C��C��C�*�C��cC�v�A&)K    A&(�    A&)�    C��UC��C�n[C�9�C�c�C�;YC�(�C�?9C�r�C�=�C���A&,%    A&+�    A&,w    C��C��SC���C��C�ЎC��#C�~C�L�C�DC��C�|�A&.�    A&.�    A&/Q    C��0C���C�6�C��C�=;C��C�ݬC��OC� �C���C�P�A&1�    A&1�    A&2+    C��@C�ΜC�+bC��C�KRC�WC��C�fC��C��uC�b�A&4�    A&4b    A&5    C��JC��FC�Y�C�8*C�O2C��C��6C��C�C���C�O�A&7�    A&7<    A&7�    C��2C��C�`0C�3�C�Z�C�9�C�7�C�?NC�T C��<C�)GA&:g    A&:    A&:�    C��C���C�VKC�+"C�@�C�+C��aC�<�C���C�B�C��rA&=A    A&<�    A&=�    C���C��C��IC�v�C��eC���C�}gC�uC�k5C���C�Z�A&@    A&?�    A&@m    C���C���C�z2C�u�C��IC��|C�a�C�?�C�.uC��MC���A&B�    A&B�    A&CG    C���C���C�h�C�P�C��0C�\$C�!C�C�7C��"C��~A&E�    A&E~    A&F!    C��C���C���C��0C���C�ivC�;iC�;�C�l�C��C�d�A&H�    A&HX    A&H�    C���C�C��|C�W�C���C�{%C�]RC�)�C��C���C�c'A&K�    A&K2    A&K�    C�ݣC�C��C���C���C�h$C�^{C�fC�xC�-YC��%A&N]    A&N    A&N�    C���C��$C��oC�y7C���C�rC�a�C�G C�;C��C�XA&Q7    A&P�    A&Q�    C��C�NC��C���C��C��DC�i�C�[=C�UC��C���A&T    A&S�    A&Tc    C��*C��C��/C�s	C���C���C��4C���C��7C�y:C���A&V�    A&V�    A&W=    C��|C���C���C�ǼC�RC��C��	C�d�C�/�C��'C�j%A&Y�    A&Yt    A&Z    C��C��C���C�r�C���C�{C�P�C�D?C�M�C�ܵC�u�A&\�    A&\N    A&\�    C��rC�C���C���C�lC��8C��xC�aC�?tC��<C�vYA&_y    A&_(    A&_�    C���C�#-C��*C���C���C��JC�t�C�^�C�i_C�#.C�� A&bS    A&b    A&b�    C���C� �C�� C���C�נC��~C�`vC�HsC�Z(C�	�C�s�A&e-    A&d�    A&e    C��C�*nC���C�R@C�dC�6eC�J�C�rC���C��C���A&h    A&g�    A&hY    C��C��C��"C��pC���C�}C�r�C�`�C�GPC��C���A&j�    A&j�    A&k3    C��;C�	 C���C��dC���C���C�yZC�OBC�HsC��ZC�a�A&m�    A&mj    A&n    C��C�'�C���C�tPC���C���C��C�h1C�{+C�B�C��s