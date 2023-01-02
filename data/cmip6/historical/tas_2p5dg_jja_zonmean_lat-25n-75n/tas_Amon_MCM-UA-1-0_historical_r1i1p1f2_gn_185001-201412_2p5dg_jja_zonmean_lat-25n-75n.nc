CDF   �   
      time       bnds      lon       lat          0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      'Thu Dec 29 07:37:15 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_MCM-UA-1-0_historical_r1i1p1f2_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:49:32 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_MCM-UA-1-0_historical_r1i1p1f2_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:49:32 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_MCM-UA-1-0_historical_r1i1p1f2_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 21:06:38 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/UA/MCM-UA-1-0/historical/r1i1p1f2/Amon/tas/gn/v20190731/tas_Amon_MCM-UA-1-0_historical_r1i1p1f2_gn_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_MCM-UA-1-0_historical_r1i1p1f2_gn_185001-201412_jja_zonmean_2.5dg.nc
File was produced by a FORTRAN program    source        BManabe Climate Model at U of Arizona                                   institution       GDepartment of Geosciences, University of Arizona, Tucson, AZ 85721, USA    activity_id       CMIP   branch_method         standard   creation_date         2019-05-04T00:00:00Z   data_specs_version        01.00.28   
experiment        xall-forcing simulation of the recent past                                                                                  experiment_id         
historical     	frequency         mon    further_info_url      Qhttps://furtherinfo.es-doc.org/CMIP6.UA.MCM-UA-1-0.historical.none.r1i1p1f2            grid      lat-lon    
grid_label        gn     initialization_index            institution_id        UA     mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      
MCM-UA-1-0     parent_time_units         days since 0001-01-01 (noleap)     physics_index               realization_index               realm         atmos      
references       JDelworth, Thomas L., Ronald J Stouffer, Keith W Dixon, Michael J Spelman, Thomas R Knutson, Anthony J Broccoli, P J Kushner, and Richard T Wetherald, 2002: Review of simulations of climate variability and change with the GFDL R30 coupled climate model. Climate Dynamics, 19(7), 555-574....and references therein.                       	source_id         
MCM-UA-1-0     source_type       AOGCM      tracking_id       1hdl:21.14100/6bdc534a-a183-488c-9677-392dcdeddf12      external_variables        	areacella      branch_time_in_child      A7dH       branch_time_in_parent                    table_id      Amon   contact       &GEOS-CMIP@email.arizona.edu                comment       } Used lowest model level about 25m above surface (sigma=0.9967), Note no diurnal variation in model, simple diffusive PBL          parent_variant_label      r1i1p1f1   variable_id       tas    sub_experiment        none   sub_experiment_id         none   forcing_index               variant_label         r1i1p1f2   variant_info      K1850 to 2014 time varying equiv CO2, solar, volcano and aerosol forcing        title         (UArizona MCM-UA-1-0 historical             product       model-output   license      3CMIP6 model data produced by the U of Arizona is licensed under a Creative Commons Attribution-[*]ShareAlike 4.0 International License (https://creativecommons.org/licenses/). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment.    Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file).  The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 0001-01-01 00:00:00     calendar      365_day    axis      T               	time_bnds                                lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   tas                       standard_name         air_temperature    	long_name         6Near-Surface Air Temperature                               units         K      
_FillValue        `�x�   missing_value         `�x�   cell_methods      area: time: mean   table_id      Amon      ,  @v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     A$�    A$��    A$�q    C��C���C�ŗC�6C��`C�T'C�	�C��bC��+C���C���A$��    A$��    A$�K    C�1�C��,C�ԭC�@GC��C�pwC���C�ȫC��jC���C��A$��    A$�m    A$�%    C�YC��5C��nC�aC���C��|C�D�C�-�C�&�C��.C���A$��    A$�G    A$��    C�uC���C���C�/�C��C���C�FC�8pC�(SC��7C�waA$�|    A$�!    A$��    C���C�%C��C�b}C��GC�8�C���C�)C�D?C��FC���A$�V    A$��    A$��    C�=�C���C��8C�?�C��;C��qC��=C�QSC�%C��aC��DA$�0    A$��    A$��    C�"�C��C��QC��C�n�C�EDC���C��C��ZC��C��oA$�
    A$��    A$�g    C��C��IC���C��C�q�C�BC��C�7�C�,uC���C���A$��    A$��    A$�A    C�d�C���C�t%C��sC��+C��GC��FC��DC��yC���C��EA$��    A$�c    A$�    C�?{C��
C��iC�1�C��C�t$C�6�C�
�C��C���C�o�A$��    A$�=    A$��    C�G�C��C��yC�5�C���C�'RC���C��$C��C��QC���A$�r    A$�    A$��    C�\�C��C���C��C�[�C�AC��IC�#�C�58C��WC��mA$�L    A$��    A$��    C�x�C��C�ۢC��C�E�C�1C��6C�)7C�9�C��C��A$�&    A$��    A$��    C�Z�C��`C�˧C�2C�o�C�?�C��C��C��C��2C��A$�     A$��    A$�]    C�C�C��$C��PC�*�C�q:C�*�C��C�G|C�c(C��C���A$��    A$�    A$�7    C�[C��C�)C�mfC��-C��C�f�C��C���C���C�r�A$Ǵ    A$�Y    A$�    C�FC��C��C�29C���C�MGC��C��C��C���C�hFA$ʎ    A$�3    A$��    C�6�C���C���C�oC���C�_�C��SC���C��*C��RC��A$�h    A$�    A$��    C�P�C��AC�ͰC�1_C��*C���C�s�C�b�C�E�C��>C���A$�B    A$��    A$П    C�PSC��`C��C�YQC�ϷC���C�U<C�/�C�,TC��7C�{KA$�    A$��    A$�y    C�2�C���C��C�8�C��sC�_UC�LC��C���C��/C�w�A$��    A$՛    A$�S    C�s9C��C��;C�5�C�xC�LoC�(�C��C�3C��C��$A$��    A$�u    A$�-    C�ddC��C��dC�qPC��C���C�R�C�#�C��C���C�i�A$۪    A$�O    A$�    C�'C��.C��FC�jHC���C��?C�n0C�I�C�)�C��C��3A$ބ    A$�)    A$��    C�+;C���C��uC�D�C���C�XTC��C��C��hC��fC���A$�^    A$�    A$�    C�<QC���C��!C�C�z�C�f�C�$�C��)C��
C�~�C�}aA$�8    A$��    A$�    C�<C���C��rC�>�C���C�6/C���C��AC��IC��C�ʔA$�    A$�    A$�o    C�3�C���C��XC�YyC�ێC��C��C��_C���C��*C��YA$��    A$�    A$�I    C�ayC��C��DC�D�C���C��_C�,C���C��C���C�V�A$��    A$�k    A$�#    C�xAC��ZC���C���C�f�C�O�C�=�C�/aC�
�C��C��A$�    A$�E    A$��    C�N�C��OC��xC�K~C��4C��}C�;�C�#C�nC��C�ouA$�z    A$�    A$��    C���C��C�C�j�C��6C���C�BjC�C�&IC��C���A$�T    A$��    A$��    C�\�C��C��;C�hfC�֫C���C�-�C��C�؆C��jC��vA$�.    A$��    A$��    C�1�C���C���C�!C�p�C�?�C�C���C��C���C�YA$�    A$��    A$�e    C�'C���C�r_C��C��C��HC�x�C��9C�r=C�8C�5RA$��    A$��    A$�?    C�$�C��C���C��C�LSC�O9C�0iC�1C�C��C��OA% �    A% a    A%    C�$�C���C���C�9C��$C���C�vvC�U#C�61C��ZC�]wA%�    A%;    A%�    C�NQC���C���C�0&C��GC�`}C��C���C��C�ڰC��A%p    A%    A%�    C�d�C��%C��vC�0|C��nC���C�'�C���C��HC���C�{�A%	J    A%�    A%	�    C�N�C�� C��(C��C��C�U�C��C�C��C��PC���A%$    A%�    A%�    C� C��UC��C��&C�7C��C��uC��|C���C��mC���A%�    A%�    A%[    C��C�x�C��'C��C�c�C�A�C���C��C���C�^BC�1�A%�    A%}    A%5    C�%fC��C���C�LC��C�ͫC���C�ظC���C��ZC�q�A%�    A%W    A%    C�$�C��[C���C��C�~)C�M7C���C��C���C�G�C�
�A%�    A%1    A%�    C�7uC���C��_C�#�C��4C���C�JC�-
C��XC�v�C�5rA%f    A%    A%�    C�H�C��RC��MC�9CC��C��SC�YCC�.AC��+C���C�T�A%@    A%�    A%�    C�?�C��aC��(C�rC�cOC�Y�C�GC�4}C�1C��wC�okA%     A%�    A% w    C�/�C���C��rC��C�oC�.�C��C��	C���C���C�nLA%"�    A%"�    A%#Q    C���C��AC��)C�JsC��KC���C��C�юC���C�f�C�[�A%%�    A%%s    A%&+    C�b�C��TC���C�3*C��'C�yC�<�C��C���C���C�^JA%(�    A%(M    A%)    C�%�C���C��*C�pC��NC��C�-sC��[C��?C�ıC�x�A%+�    A%+'    A%+�    C�8pC��C���C���C�1�C�C��^C�'C��C���C���A%.\    A%.    A%.�    C�C�C��uC� �C��/C���C���C� �C�ݝC���C��CC�W8A%16    A%0�    A%1�    C�*C���C���C�bC�FDC���C��DC��C�<}C��iC���A%4    A%3�    A%4m    C�LwC�˨C��#C�A�C��lC���C�{�C�9�C���C���C�Y�A%6�    A%6�    A%7G    C�WC��$C��C�^�C���C���C�/�C��?C���C��-C�zBA%9�    A%9i    A%:!    C��C���C��IC�q!C� yC��C�_�C��C��SC��?C�r�A%<�    A%<C    A%<�    C�@�C�ѕC���C�FC��C�eHC� C���C��C��aC�[�A%?x    A%?    A%?�    C�L�C��C���C�W
C���C�f�C�LpC�8JC�C���C��>A%BR    A%A�    A%B�    C�0�C��^C��;C�DqC���C�DC��C�ՑC��bC���C�~4A%E,    A%D�    A%E�    C�N�C��C��C�:%C�}�C�)oC��lC��C��!C���C��A%H    A%G�    A%Hc    C��C��{C���C�BHC��\C�AHC���C���C��/C�i�C�G�A%J�    A%J�    A%K=    C�7C��
C���C��@C�|C���C��mC�ϐC��XC�ƞC��_A%M�    A%M_    A%N    C�1�C���C��C��;C�'C��C��C�4�C�8mC��EC��EA%P�    A%P9    A%P�    C�D�C�݌C���C�\C���C�;�C��C��C��pC�v�C�[FA%Sn    A%S    A%S�    C���C���C��cC�1fC��XC�x�C�Q�C�7�C� wC��iC��A%VH    A%U�    A%V�    C�m�C��yC� C�m�C�͟C��C�IC��C��C��C��oA%Y"    A%X�    A%Y    C�^C��kC��xC�JWC��^C�t�C�V�C�B�C��C���C�|�A%[�    A%[�    A%\Y    C�W}C���C�C�u�C�ۋC�x�C�{C��7C��QC���C�VqA%^�    A%^{    A%_3    C�-.C���C��<C�CnC��:C�o�C�vC���C���C���C��A%a�    A%aU    A%b    C�^�C��UC�ŃC�]�C�C��+C�<�C��C���C���C��nA%d�    A%d/    A%d�    C�\�C���C��C�2�C��SC�^OC��C��C�	aC��QC��A%gd    A%g	    A%g�    C�k�C��mC��JC��C�D&C���C��C�?C�R�C�]C���A%j>    A%i�    A%j�    C�`?C��C���C�V�C���C��zC�>~C�%�C��C���C�kA%m    A%l�    A%mu    C�f�C��xC��0C�]hC��+C�[�C�&�C�)�C�*-C��C��$A%o�    A%o�    A%pO    C���C�	]C��EC�^�C���C�`RC�iC���C���C��JC��A%r�    A%rq    A%s)    C�kC��EC�HC��oC�C��C�%�C��C���C��%C��TA%u�    A%uK    A%v    C�E�C��}C� dC�m�C��C���C�0�C�	�C��C���C��
A%x�    A%x%    A%x�    C�m�C��C�C�x�C��C���C�sC�)�C��oC��{C�e$A%{Z    A%z�    A%{�    C�IC��5C���C�-�C��>C�}C�H�C�\C���C��tC�qgA%~4    A%}�    A%~�    C�^�C���C��GC�RC��C���C�7�C��C���C��PC���A%�    A%��    A%�k    C�{�C���C��=C�CwC��;C�c�C�DXC�7kC�%�C���C�}YA%��    A%��    A%�E    C�n�C��C��?C��C�d�C�<tC�.C�RIC�O�C��C��&A%��    A%�g    A%�    C��$C���C��C�p�C��`C���C�=UC��C�4�C��C���A%��    A%�A    A%��    C�njC�
�C��C�^~C��0C�6C��C���C�)C���C��`A%�v    A%�    A%��    C�X>C��@C��C�r{C�2C��[C�g�C�wC��C���C���A%�P    A%��    A%��    C�oMC��C��*C�D�C���C�jzC�h�C�j-C�]+C�C��~A%�*    A%��    A%��    C���C�_C�PC�Z�C���C�|5C�N�C��C��C���C��A%�    A%��    A%�a    C���C�C�#dC��qC�&C��C�fDC��C�ӏC���C�i�A%��    A%��    A%�;    C�V�C��
C�ڻC�P�C�ڡC��[C�)nC�uC��dC��0C��GA%��    A%�]    A%�    C�&6C���C��.C�r�C��C���C���C�.5C���C�uC�ePA%��    A%�7    A%��    C�O?C���C��wC�WuC��XC���C�C$C��C��C���C���A%�l    A%�    A%��    C�p�C��~C�ćC��C���C��0C���C�k[C�6`C��C��!A%�F    A%��    A%��    C�cC��HC���C�;�C���C��C�J�C�^C�,�C�C�ˌA%�     A%��    A%�}    C�e#C��RC�ǍC��C�vyC�k3C�P9C�5 C��C���C���A%��    A%��    A%�W    C�bC�ͣC��CC�!�C���C�R�C��C��C� QC���C���A%��    A%�y    A%�1    C�V�C���C�
�C��C��9C���C�7cC�	lC��C���C��NA%��    A%�S    A%�    C�PbC��qC���C��C���C�T�C��C��C���C���C�r�A%��    A%�-    A%��    C�_�C��6C�ΙC�U�C�C�C���C�8�C�hC���C��FA%�b    A%�    A%��    C�Z�C���C��jC�@C��?C�]�C�6MC��C��OC��eC���A%�<    A%��    A%��    C�s�C��=C��C�h�C��bC���C�HrC�&DC�A�C�?C���A%�    A%��    A%�s    C�R%C�џC��cC�0�C�{�C�5�C�lC�)4C�V�C�0C��KA%��    A%��    A%�M    C�eC��9C��PC�&C�^ C�M�C�a*C�v_C�i�C���C��KA%��    A%�o    A%�'    C�`�C�߳C���C�`\C��LC�O�C�5C�%�C�0cC��}C��4A%¤    A%�I    A%�    C�x�C���C���C�<;C��HC�X)C�AC�:C�!�C��C��A%�~    A%�#    A%��    C��
C�RC���C�a�C��=C�~�C�C�C��C��C���C�r�A%�X    A%��    A%ȵ    C�UtC��=C��&C�n|C���C�ƺC�|OC�P�C�1�C���C��A%�2    A%��    A%ˏ    C�m{C���C��xC�>lC�óC��EC�3�C�	�C��C��C���A%�    A%ͱ    A%�i    C�Q`C��C��5C�=C��C�.cC���C��C��C���C�u�A%��    A%Ћ    A%�C    C�6C��QC��C��C���C�f.C�&�C�rC�D�C�=�C��?A%��    A%�e    A%�    C�=�C�ǂC��yC�l|C��C�WC��C��iC�ʔC���C��A%֚    A%�?    A%��    C�ZnC��@C�הC�
fC�S\C�.�C���C���C��SC��C�maA%�t    A%�    A%��    C�[^C�ݟC��C�\^C��jC���C�,/C��?C��vC�h�C�&CA%�N    A%��    A%ܫ    C�hC��{C�՞C�%'C��EC�H�C��PC��2C���C���C��FA%�(    A%��    A%߅    C�=�C��C�� C��VC�NC�6�C��C��.C���C�S�C� A%�    A%�    A%�_    C�.�C���C��C�C�X[C���C���C��C���C���C��A%��    A%�    A%�9    C�q�C���C��C���C�*�C���C��C��\C���C��*C���A%�    A%�[    A%�    C�|�C�˘C���C��zC�)�C�4C��vC�ڴC���C���C�w�A%�    A%�5    A%��    C�v�C���C�ΨC��`C�fxC�k C�LLC�)�C�� C���C�gA%�j    A%�    A%��    C��C��tC���C�B,C��iC�V�C�C��#C��C��.C�^^A%�D    A%��    A%�    C�i
C�ݐC��
C�RC�}oC�QC�&C�;�C�@�C�&�C��mA%�    A%��    A%�{    C�q�C���C��~C�L-C���C�VLC�)�C�rC��C��,C��gA%��    A%��    A%�U    C�~�C���C��#C�)�C���C���C�c|C�H�C�-�C���C��bA%��    A%�w    A%�/    C���C��C��jC�g�C��kC���C��yC�u�C�W�C��~C��<A%��    A%�Q    A%�	    C��AC��C��C�h�C��C��QC�E�C�<�C�9�C�oC�ɻA%��    A%�+    A%��    C�W�C�ͪC��KC�#C�|�C�n�C�BC�-C�4LC�oC���A&`    A&    A&�    C���C�
tC��C��WC���C��C�O�C�1�C� �C��C��+A&:    A&�    A&�    C��rC��C�mC�9C�WC��C�
C�*C�5�C�)C�ۄA&    A&�    A&q    C�d�C��=C��C�"kC���C�oC�PIC�npC�avC��C��TA&	�    A&	�    A&
K    C�j�C���C��MC�5�C��C�UC�@C�>C��C��@C��~A&�    A&m    A&%    C�FwC��DC���C�$�C���C�~qC�C��bC��|C���C��A&�    A&G    A&�    C���C��0C��C�B~C��SC��7C�N�C�@�C��C�ģC���A&|    A&!    A&�    C�a#C�׃C��PC�4�C���C�<lC��qC��\C�<C��'C���A&V    A&�    A&�    C�08C��WC���C�VC�\;C�%�C��C���C���C��C��LA&0    A&�    A&�    C�nlC��C��C�ҫC�#CC�,C�0C�@�C�iC�1cC��A&
    A&�    A&g    C�U�C���C���C�jOC��C��C�]�C�,�C�oC���C���A&�    A&�    A&A    C��JC�&yC�7�C���C��C���C���C�_�C�\�C�IC���A& �    A& c    A&!    C��C�C��C�jkC��*C��HC�ċC��)C�H�C��,C��rA&#�    A&#=    A&#�    C��
C��C��C�_�C��C�ܝC���C�];C�(PC��LC���A&&r    A&&    A&&�    C�p�C��NC�	�C���C� 7C��C�ɋC��C�0#C��qC�y�A&)L    A&(�    A&)�    C��tC��C�!�C��{C���C��7C�{lC�M�C�D`C��C��A&,&    A&+�    A&,�    C��VC��C� 3C�v�C���C�jC��C�/�C�D�C��C���A&/     A&.�    A&/]    C�~�C�C��C�6gC���C�_�C�&�C�5C�#�C��C��BA&1�    A&1    A&27    C�h�C��nC��5C�1XC��C��<C�SC�7lC��C�۬C���A&4�    A&4Y    A&5    C��C�SC���C�C�zKC�Z�C�I�C�g�C�q�C�-�C��RA&7�    A&73    A&7�    C��C�C�&�C���C��C���C�|�C�OsC�,�C���C���A&:h    A&:    A&:�    C��pC��C�QQC���C� �C��uC���C�z�C�u(C�5�C�ǍA&=B    A&<�    A&=�    C�ӦC�M�C�U�C���C�E�C��C��2C�p#C�L�C�CC���A&@    A&?�    A&@y    C��ZC�8,C�3C��dC�	JC��\C�i�C�F�C�>[C�!C���A&B�    A&B�    A&CS    C���C�+�C� �C��lC�=ZC�81C��|C�l�C�D�C�)C���A&E�    A&Eu    A&F-    C��sC�U�C�=9C��C��C��/C��yC��ZC�iPC�C���A&H�    A&HO    A&I    C���C�C�-�C��C�&�C�%C��wC��HC�tNC�2�C��FA&K�    A&K)    A&K�    C�� C�P�C�R�C��1C��C��XC���C��C��C�hC��hA&N^    A&N    A&N�    C�ΣC�[qC�yZC���C�Q�C��EC���C�JWC�-�C��C��A&Q8    A&P�    A&Q�    C��VC�kSC�[hC���C�1C�ǀC���C��ZC���C�L8C��A&T    A&S�    A&To    C���C�g^C�W0C���C�C�׏C��jC��BC���C���C�MA&V�    A&V�    A&WI    C��MC�6�C�h�C���C�RsC�C��AC���C���C�.�C���A&Y�    A&Yk    A&Z#    C��YC�H�C�e�C��C�F�C�YC���C�ԂC��C�	#C��UA&\�    A&\E    A&\�    C��pC�V�C�x�C�ކC�C?C��nC�Z�C�K�C�[�C�+�C���A&_z    A&_    A&_�    C��WC�?�C�B�C��}C��C��C���C�u�C�m0C�C��NA&bT    A&a�    A&b�    C���C�8�C�*�C��C�LRC�5�C��:C���C�fLC�,�C�7A&e.    A&d�    A&e�    C��KC�3�C�PzC��nC�1�C���C���C�p$C�A3C���C��9A&h    A&g�    A&he    C���C�p�C�i}C�ؾC�U�C�&�C��:C��	C��aC�)�C���A&j�    A&j�    A&k?    C��C�[>C�T+C��@C�)�C��IC��C��C�͟C���C�B�A&m�    A&ma    A&n    C���C�hC�S�C��-C�5YC��C�՛C��IC���C�P1C��