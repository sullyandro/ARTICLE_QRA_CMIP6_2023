CDF   V   
      time       bnds      lon       lat    %      0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      �Thu Dec 29 07:49:50 2022: cdo -s -O seldate,2015-01-01,2100-12-31 ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_MCM-UA-1-0_ssp370_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Sun Oct 16 08:17:56 2022: cdo -s -O zonmean -selindexbox,1,144,37,73 -seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/UA/MCM-UA-1-0/ssp370/r1i1p1f2/Amon/tas/gn/v20190731/tas_Amon_MCM-UA-1-0_ssp370_r1i1p1f2_gn_201501-210012.nc ../data/cmip6/ssp370/tas_2p5dg_jja_zonmean/tas_Amon_MCM-UA-1-0_ssp370_r1i1p1f2_gn_201501-210012_2p5dg_jja_zonmean.nc
File was produced by a FORTRAN program     source        BManabe Climate Model at U of Arizona                                   institution       GDepartment of Geosciences, University of Arizona, Tucson, AZ 85721, USA    activity_id       ScenarioMIP AerChemMIP     branch_method         standard   creation_date         2019-05-04T00:00:00Z   data_specs_version        01.00.28   experiment_id         ssp370     	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.UA.MCM-UA-1-0.ssp370.none.r1i1p1f2            grid      lat-lon    
grid_label        gn     initialization_index            institution_id        UA     mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_mip_era        CMIP6      parent_source_id      
MCM-UA-1-0     parent_time_units         days since 0001-01-01 (noleap)     physics_index               realization_index               realm         atmos      
references       JDelworth, Thomas L., Ronald J Stouffer, Keith W Dixon, Michael J Spelman, Thomas R Knutson, Anthony J Broccoli, P J Kushner, and Richard T Wetherald, 2002: Review of simulations of climate variability and change with the GFDL R30 coupled climate model. Climate Dynamics, 19(7), 555-574....and references therein.                       	source_id         
MCM-UA-1-0     source_type       AOGCM      tracking_id       1hdl:21.14100/092b1b9a-b21d-490c-a7a8-8ddcad42e98a      external_variables        	areacella      branch_time_in_child      @�h        branch_time_in_parent         @�h        table_id      Amon   contact       &GEOS-CMIP@email.arizona.edu                comment       } Used lowest model level about 25m above surface (sigma=0.9967), Note no diurnal variation in model, simple diffusive PBL          parent_variant_label      r1i1p1f2   variable_id       tas    
experiment        /gap-filling scenario reaching 7.0 based on SSP3    sub_experiment        none   sub_experiment_id         none   forcing_index               variant_label         r1i1p1f2   variant_info      h2015 to 2100 time varying equiv CO2 and aerosol forcing solar and volcano set to historical averages       title         (UArizona MCM-UA-1-0 ssp370                 product       model-output   license      3CMIP6 model data produced by the U of Arizona is licensed under a Creative Commons Attribution-[*]ShareAlike 4.0 International License (https://creativecommons.org/licenses/). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment.    Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file).  The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 0001-01-01 00:00:00     calendar      365_day    axis      T              	time_bnds                                lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        (  �   tas                       standard_name         air_temperature    	long_name         6Near-Surface Air Temperature                               units         K      
_FillValue        `�x�   missing_value         `�x�   cell_methods      area: time: mean   table_id      Amon      �  $                @      @      @      @$      @)      @.      @1�     @4      @6�     @9      @;�     @>      @@@     @A�     @B�     @D      @E@     @F�     @G�     @I      @J@     @K�     @L�     @N      @O@     @P@     @P�     @Q�     @R      @R�     @S`     @T      @T�     @U@     @U�     @V�     A&p�    A&p;    A&p�    C�-{C�,�C�5�C�K�C�j1C��C��]C���C��C��C���C�U�C�ȬC�8uC���C�~�C�A'C���C�YqC���C��qC�QmC���C�yC�2C���C�C�\�C�Q�C���C���C���C�VsC�Q�C�H�C�&yC�)YA&sp    A&s    A&s�    C�BC��C�C�/3C�LkC�oEC��~C���C��~C��cC��'C�bC���C�SIC���C��6C�l�C��C�wC�̎C�3BC��C�F>C�·C�8�C���C�>\C��:C�kJC���C���C���C�^�C�[�C�]�C�LC�9�A&vJ    A&u�    A&v�    C��C��C���C�C�)C�KcC�s�C��(C��-C��C���C�Z�C�� C�w�C��C���C���C�N�C���C��C�j�C��FC�?C��C��C���C�0C�Q�C�.UC��C�c�C��SC�MC�Q�C�S�C�>�C�<�A&y$    A&x�    A&y�    C��C��*C���C�%C��C�5'C�URC�zC��C��kC��bC�9NC��_C�S�C�5C��~C��)C��^C��C�^HC��(C���C�dYC��MC�?C���C�'�C�[�C�6C��8C���C��kC�b�C�XdC�ZPC�P�C�I�A&{�    A&{�    A&|[    C�ŊC�ˢC��C�܋C���C�C�@{C�w�C��sC���C��$C�+�C���C�"eC���C���C�l�C�>�C��
C�=0C��C��4C�uC��7C�f�C��0C�F�C�y�C�PC��vC�5C��C�V�C�[rC�d�C�X�C�^�A&~�    A&~}    A&5    C��|C��/C���C��C�)�C�MC�q�C��iC���C��JC��TC�O�C��kC�G�C���C���C�|�C�1C��HC��C�c�C��CC�;3C���C�-)C��'C��C�GC�fC��{C���C���C�c�C�M�C�H#C�>�C�3A&��    A&�W    A&�    C��C��C� �C�1HC�EOC�b�C���C��DC��cC���C��xC�WiC���C�8�C���C��mC�[�C�)C���C�ҴC�%�C��C�JC��uC�nC��#C�7�C���C��|C�;�C�ЈC��AC�t�C�k�C�qC�g1C�sA&��    A&�1    A&��    C��C�#�C�/�C�E?C�e�C���C��C��BC��C�$C�ۂC�{�C���C�t.C�mC��C���C�\�C���C�
�C�[�C��	C�M*C���C�.�C���C�C�`�C�UEC��C���C��{C���C�m�C�h�C�Z`C�Y7A&�f    A&�    A&��    C��C��C�C�-�C�G�C�k�C��C�ĚC��C��C�ؿC��C��DC�W�C��+C���C�RZC�\C�z�C��iC� �C���C��C���C�ZC��C���C�	C�ԱC�ATC���C��zC�sOC�a�C�T�C�8�C�&"A&�@    A&��    A&��    C�C��C��C�6�C�b�C���C��+C��C�~C��/C���C�j�C��/C�ZC��`C��PC�mAC��C���C��C�N�C��C�JJC���C�GC��GC�`�C��ZC�u�C��C��&C��[C�v^C�w�C�l(C�E�C�AaA&�    A&��    A&�w    C�C��C�#�C�5lC�N�C�q�C���C���C���C�٢C��RC�p�C��[C�l�C���C��hC���C�A�C���C��C�=�C���C�1C���C�9�C��YC�.C�luC�L*C��>C���C���C�f�C�j5C�oC�^lC�ZtA&��    A&��    A&�Q    C�)�C�0�C�7�C�D�C�YhC�wOC��/C��EC���C��C�ۆC�xjC��C�f4C��C�տC���C�q�C���C�E�C���C��bC�4�C��C��cC�PTC��%C�=�C�WC��C���C�ƦC�g�C�`DC�^�C�GC�,�A&��    A&�s    A&�+    C�+�C�3�C�<TC�G*C�Z�C�|�C���C��C��C���C�̳C�}�C�9C�zC�wC��C��%C���C�C�8GC�o[C���C�5�C���C�+eC���C�EnC��yC�_�C��|C�C���C�\�C�YC�O�C�0C�4�A&��    A&�M    A&�    C�)cC�-mC�7�C�K�C�i�C��cC��DC��C���C� �C���C��fC��C��?C��C���C��gC�A�C���C���C�@�C���C�C�C�ƭC�K�C��bC�Y�C���C�mxC���C���C��gC�m;C�Z�C�YFC�P�C�P�A&��    A&�'    A&��    C��C�#nC�1/C�IyC�nC��%C��RC��nC��C��tC���C�{�C���C�wC� ~C��C���C���C��C�0�C�_�C���C�"�C��C�]C��1C�2�C�y�C�[iC���C���C��5C�w�C�s�C�z�C�tC��[A&�\    A&�    A&��    C�>7C�G�C�[�C�w<C��C��,C��qC�4dC�^[C�cC�0KC���C��C�sUC��MC���C�|LC�(/C��4C��5C�d�C��C�ivC�ׇC�EC��C�X0C���C���C��C���C��'C�T>C�GSC�B C�,�C�, A&�6    A&��    A&��    C�#�C�/�C�?�C�YC�w>C��C���C���C��bC��C�sC��&C�'	C��C�NC�'�C�6C��ZC�!C�_.C��xC��C�T�C�ДC�TNC���C�J,C�{C�P�C��C��TC��C�`�C�U�C�T
C�DC�P�A&�    A&��    A&�m    C�,�C�/C�8C�D�C�S�C�olC���C�ݧC��C�!'C��oC���C�aC���C�1�C��C�EC���C�~�C���C��C�_-C��C�*�C���C���C�qC���C���C�A%C���C��$C��C��kC�CC�Z�C�?0A&��    A&��    A&�G    C�W�C�XcC�Y�C�b�C�~�C��C��&C�6�C�[�C�]�C�3C���C�:�C��=C�$hC���C���C���C�NC���C�,�C��C��C�k�C��3C�#�C��AC��yC��]C�]�C���C���C��C�uAC�}}C�{oC�yNA&��    A&�i    A&�!    C�/�C�8C�H�C�^ C�v�C��+C���C��CC��C�!C��PC���C�62C���C�TKC�*�C��C���C�7�C�{LC���C�$|C��TC��C��wC�\C���C��C���C�D�C���C��rC���C�]@C�O�C�AC�?�A&��    A&�C    A&��    C��MC���C�]C�#�C�?FC�dNC���C���C��C���C�ŊC�s>C� uC���C�1�C��C���C�u�C���C�,�C�g�C��?C�5YC�°C�YHC���C�~�C�еC���C�dZC�_C�
C��C�o�C�hvC�[�C�^�A&�x    A&�    A&��    C�@�C�A�C�G�C�SC�e�C��iC���C���C��C��C��rC���C�%[C���C�SC�7�C�,�C���C�tFC���C��WC�F�C���C��C�qC��jC�SC���C�|C�SC��C��EC���C�y[C�ybC�o�C�aqA&�R    A&��    A&��    C�$C�%�C�2�C�JfC�h�C���C���C��)C���C��(C��{C��C��C��C�5C��C�iC��VC�X�C���C��]C��C��2C���C�m�C���C�]_C��C���C�DwC��C�/%C���C���C���C�|�C�w9A&�,    A&��    A&��    C�eC�n�C�u�C�~�C���C��/C���C���C��C��C��XC���C�;C�|^C�rC�ˀC���C�_�C��C�K�C��@C�|C���C��C��^C��C�C���C�؁C�}~C�eC�'1C���C��5C���C�j�C�\FA&�    A&��    A&�c    C�L�C�P%C�R,C�_�C���C��C��8C�#�C�?�C�;FC�
�C��-C�'�C��KC�ZgC�=�C�-�C��vC�}�C��C�!�C�x;C�˩C��C�LdC���C�!RC��IC���C�H�C��:C���C��C�{NC�q�C�\�C�V:A&��    A&��    A&�=    C�f}C�j	C�q�C��\C���C��<C�0�C�fC�}C�o
C�5�C�˄C�9%C���C�:�C�IC���C��mC�+�C�� C��8C�E�C��+C�4C���C�C�}C���C��5C�.C���C���C��`C�hqC�ZFC�IMC�]$A&��    A&�_    A&�    C�3GC�;3C�G�C�XGC�nC��OC���C��;C�!C�&�C��]C���C�YC���C�Y�C�?�C�-oC��YC�c�C��?C�ͤC��C�W
C���C�)!C��uC�7�C���C�y�C�#�C��C��C��wC�s�C�z�C�~AC���A&��    A&�9    A&��    C�%�C�18C�@IC�R�C�iC��7C��[C��QC��C��C��C���C�+cC��9C�:uC�@C��C���C�)	C�nC��C��C���C�&C���C��C��oC�
C�1C��C��C���C��C�u�C�eC�?�C�;�A&�n    A&�    A&��    C�b/C�ejC�j�C�t�C���C���C��}C�C�7�C�=8C��C���C�7C���C�AC�C���C���C�,�C�lC��9C���C�j�C���C�Q�C��C�{;C��-C��pC��C���C��1C�{RC�(C�svC�J�C�P�A&�H    A&��    A&å    C�B�C�N@C�Z�C�i�C���C��[C��C��C�3�C�2�C��C��4C�*�C��1C�N�C�*�C��C��8C�NnC���C���C�_�C��C�/�C���C�CC�{�C���C��wC��C���C���C���C��C�w�C�\�C�Z�A&�"    A&��    A&�    C�{xC���C���C���C���C�ЃC���C� �C�=yC�B�C��C��C�C�brC��]C���C��&C�T�C��C�gC�x�C���C�g�C���C�G�C��gC�MBC��SC��C��C��YC���C��jC��hC�{nC�b�C�q9A&��    A&ȡ    A&�Y    C���C���C���C��C��rC��BC�"C�D�C�V�C�L]C�<C��C�!"C���C�,�C��PC��$C���C�YC�j|C���C�+%C��PC��C�jnC�߿C�_�C���C��C�]�C��C�FC���C��PC��GC�h`C�mbA&��    A&�{    A&�3    C�[�C�b�C�p�C���C���C�ҘC�C�4�C�XKC�c�C�D^C��C�W�C���C�A3C��C��C��#C�-�C��3C��C�>UC���C�,�C��uC�E�C�C���C��IC�'1C��+C��C���C��fC�yWC�U�C�SMA&ΰ    A&�U    A&�    C�D�C�E6C�L
C�[vC�voC���C�םC�
C�,C�4JC��C��C�R�C���C�f�C�D\C�B�C�#�C��VC�KC�E�C���C��$C��C�uHC��C�VC���C��
C�W�C�	C��C���C�tC�u�C�y�C��A&ъ    A&�/    A&��    C�/~C�4�C�K�C�k�C��aC��cC���C��C�/CC�6;C�C��uC�I�C�ŲC�m�C�N�C�=�C��C�fC���C�ߪC�C"C���C�*�C���C��C��YC��tC�ÝC�WC���C�	#C��tC��#C��DC���C�y�A&�d    A&�	    A&��    C�� C���C���C���C��7C���C��C�J C�q�C�z�C�O+C��C�JJC��gC�AC�	�C���C���C��C���C��pC�|XC��3C�]�C���C�.bC���C��C�ͷC�fnC�	KC�UC��>C��C���C�k�C�X�A&�>    A&��    A&כ    C�|HC�wPC�v�C���C���C���C���C��C�+%C�'WC���C��5C��C���C�2aC�	C��C��CC�P�C���C�#*C��C���C�l�C��C�`�C��:C��C���C��C�&C�0�C���C���C���C�kC�lA&�    A&ٽ    A&�u    C��C��`C�� C���C��:C��C�G"C�s\C��XC��?C�jFC� �C�`�C��C�J�C��C��C�ؼC�^�C��XC��C�raC���C�o�C��1C�]vC���C� 2C��C���C�~C�#rC���C���C���C��C��9A&��    A&ܗ    A&�O    C��C���C��{C��&C���C���C�7�C�c�C�zdC�uC�I#C��C�b�C���C�hC�5�C�xC��.C�d�C���C�C�d�C��~C�=�C��hC�G�C��$C�+�C��C�t�C��_C��(C���C��fC��?C�]�C�gdA&��    A&�q    A&�)    C�nFC�w�C���C��}C���C��rC�	�C�G�C�pLC�n�C�8CC�ʲC�1*C���C�{C���C��)C���C�H�C���C��C��FC��C�{C��C�a�C��+C�>C�#�C��C��C��
C���C�iC�d�C�U�C�ZxA&�    A&�K    A&�    C��rC���C���C��FC��C���C��C�C�C�d�C�j,C�AkC��C�bvC�݋C�|ZC�CBC�OC��uC�J�C���C��4C�e/C���C�F�C���C�5�C��C���C��C�O�C���C���C��C�v�C�c!C�DC�@�A&�    A&�%    A&��    C�i�C�rWC�}�C���C��aC��C��sC��C�;zC�D�C�!FC��SC�PC��dC�|[C�T�C�;/C���C��C��}C�C�q�C��mC��[C��C���C��*C���C��BC�% C�æC��C��!C�fEC�S�C�7UC�4�A&�Z    A&��    A&�    C�rC�w	C���C��9C���C�݀C��C�+�C�@eC�:�C�eC�̎C�k>C��C���C���C�O\C��hC�;�C�c~C���C��gC��nC�C���C�>)C��mC�,C��C�u5C���C��vC���C�|BC�i�C�F>C�=�A&�4    A&��    A&�    C�WC�Z�C�c�C�r�C���C��HC���C� -C�$C�->C��C���C�M�C���C��C�k^C�f�C�?�C�ʡC�	DC�&�C�Q�C���C��"C�c�C��C�k�C���C��lC�fMC��oC�C��CC�|QC�tC�^�C�K�A&�    A&��    A&�k    C�^�C�d�C�oC��C��%C�ǥC�(C�8C�[�C�`0C�;�C���C�cMC�ڃC�C�Z!C�BC��C�xbC��iC�"/C���C��C�A(C���C�+DC���C�ϞC���C�1�C��UC�oC���C��)C�t�C�kC�reA&��    A&��    A&�E    C��C��IC��OC��CC��C��C�S�C��C���C���C�U/C��.C�g+C��{C�g�C�3�C��C��"C�f�C�� C�1�C��wC��C�3C���C�C�|�C��VC���C�/�C��5C��C��BC�hOC�J�C�/�C�2A&��    A&�g    A&�    C��)C��'C��}C��DC��C�H0C�zsC���C�ǱC���C���C�<+C���C��3C�@C��C��C�q>C��[C�Y�C���C�@�C�ƝC�D C���C�Z&C��C�5�C��C���C�AC�C��&C���C�_�C�6�C�=)A&��    A&�A    A&��    C��1C���C�݅C��C���C��C�O�C���C���C���C�]�C���C�bbC��kC�C�C��C��C���C�e�C���C�3�C��C���C�G?C���C�2�C��3C��C��C�_pC�GC�%)C���C�z�C�`�C�K�C�6�A&�v    A&�    A&��    C��IC���C��>C��C��PC���C�!)C�D�C�\�C�^VC�?JC��=C��C��C��"C�{0C�_lC�!�C���C��hC�F�C��1C��mC�>-C���C��C�q�C���C�s C��C�ĿC��KC��C�o�C�P$C�+rC�AA&�P    A&��    A&��    C�T�C�_�C�x�C��C��C���C���C�,|C�N>C�WC�9�C��'C�q�C��C���C�Y%C�GXC��C���C���C��C�idC���C� �C���C��C���C���C��GC�u�C��C�#�C���C�m�C�U�C�B(C��A&�*    A&��    A&��    C�v:C�}�C���C��GC���C���C�[C�9�C�WC�]�C�B�C���C��C��oC���C�f�C�TkC�GC���C��tC�.�C���C���C�+�C���C��C�X�C��3C�}C�1�C��bC�+�C��5C���C�vC�d�C�k�A'    A'�    A'a    C���C��0C���C��C��sC��C�7�C�`�C�x�C�v�C�POC��C�{�C��C���C�V�C�?�C�)C�z�C��gC��C�UUC���C�#UC���C�
�C���C��mC��SC���C�'�C�*�C���C�{�C�gC�R�C�KfA'�    A'�    A';    C��C��FC�׃C��C�C�=�C�r�C��SC���C���C��_C�%wC���C��C�z�C�9IC�C��C�)EC��C��IC��3C��C��<C�@C���C�[C�S�C�C���C�QC�:C��TC��$C�d�C�F�C�,A'�    A']    A'    C��C��LC�͝C��:C��YC�TC�GNC�ieC�|vC�y"C�TC���C�zC��C�|nC�I�C�%�C���C�8�C�ycC��eC�F'C��C�ZnC���C�p�C���C�BC�$wC���C�Q�C�P�C�ňC���C�oxC�\xC�M�A'
�    A'
7    A'
�    C��TC��JC���C��OC���C���C�1C�kgC���C���C�p�C�|C��DC�"!C�ƢC���C�|�C�CoC��<C�,�C�zmC��0C�.�C���C��C�|�C��rC�&�C��uC��2C�0�C�:�C��sC��9C�p\C�Z�C�MfA'l    A'    A'�    C���C��8C�ȈC���C���C�{C�C!C�u�C��xC���C�e�C��C��%C�+C���C���C��GC�CEC��`C��C�hC���C�*�C��VC��C�n�C��C�+�C��C���C�B�C�;LC���C�l�C�V�C�K�C�.cA'F    A'�    A'�    C�{.C���C���C��iC���C��GC�	C�;�C�b�C�r*C�[�C�C��C��DC�{C�J�C�:<C��C���C���C�4�C���C��C�r#C��zC�S+C��2C��C�
�C��C�TgC�[@C���C��kC�}C�i�C�psA'     A'�    A'}    C��MC���C���C��C��vC���C�6cC�r{C���C��-C��0C�@C���C�VC���C�i�C�R�C�!�C��9C���C�D�C���C�&|C��C��C��_C�=C�<C��C��C�4�C�2C���C�s C�\zC�K�C�U.A'�    A'�    A'W    C��C��>C��C��2C��C�*�C�P�C�x'C���C���C�q�C�#�C��oC�FDC��FC��C���C�9�C��C��7C�&[C�|�C��-C�F|C��~C�B�C��C� �C�QC���C�WFC�SRC��~C��gC�ubC�eZC�LqA'�    A'y    A'1    C��7C��C��C�� C�C�7�C�ccC��3C��9C��C��C�>�C��C�&UC���C�"C�U�C��C�{�C�ˋC�!AC���C��C���C�)C��qC�{C�.�C��C�rC��C�(�C��mC���C��C�tuC�m A'�    A'S    A'    C��C���C��C��]C��]C�qC�49C�qaC��tC��jC���C�VEC��AC�B�C���C��C��_C�[�C�ϧC��C�cEC���C�C�W�C���C�?�C��#C�-"C�(C���C�OSC�MC���C���C�veC�s+C�v2A'�    A'-    A'�    C���C��]C��C��C�nC�$�C�NFC�v�C���C��,C�kC��C��iC�!C���C��oC�{�C�A[C�ƃC� -C�z�C��C�`�C���C�)wC��JC��C�6bC�SC���C�$pC�4C��C��;C��_C�g~C�D�A'!b    A'!    A'!�    C���C���C���C�ȋC��C��C�D%C�y-C���C���C���C�>�C��:C�5C�ĨC���C�^{C��C���C��C�b�C��4C�^8C��cC��cC�+YC���C�˩C�a2C���C��C��C���C���C��,C�l�C�G`A'$<    A'#�    A'$�    C��NC���C���C��C�FC�0fC�g5C��-C��C���C�C�)�C���C�/qC�ͫC���C���C�agC���C�_�C��	C�'�C��yC��C��SC�
�C�wUC��7C�_�C���C�R C�L#C��DC���C���C��KC�eFA''    A'&�    A''s    C�FC�C�8C�04C�SYC��pC��AC��_C��~C��$C��>C�4C��|C�YlC���C��LC�\uC�hC��$C��C��NC�-C���C�HC�xpC��C�G�C�r�C�>�C�îC�Y\C�^�C��IC��C���C���C�c�A')�    A')�    A'*M    C�<�C�9�C�A�C�XC�ztC��;C��C���C��C�zC�̎C�X�C���C�&�C��C�u�C�E�C���C���C��C�K�C��C�$kC��LC�C�C���C���C��LC�_C���C�C�&eC��>C��>C���C�a$C�z�A',�    A',o    A'-'    C��C�5C��C�.{C�UPC���C���C��=C�}C�_C��C��C���C�bC��aC���C���C�}�C�C�t7C���C�EC�b�C��&C�TC��5C�s�C��C�rC��C�eZC�^;C��:C���C��,C�e�C�LOA'/�    A'/I    A'0    C���C���C���C�	C�2C�W�C��:C��cC��dC���C�čC�jC���C�H�C��eC�ņC��(C��`C�>�C��|C�0�C��0C�_C�H�C��zC��C�H�C�w�C�IC��TC�n�C�q�C��KC���C���C���C�v4A'2~    A'2#    A'2�    C�ÃC�ǴC�۰C���C��C�9C�d�C���C��C��(C��aC�>RC��QC�PxC��C��iC��:C��]C�D�C���C��dC�Y�C��(C�;�C���C�,eC��LC��C���C�GC��C�v�C��xC���C���C��1C�aA'5X    A'4�    A'5�    C���C�ғC��iC��SC��C�.�C�[sC���C���C���C��#C�y�C�'C��xC�3C��C��2C��wC�.�C��C��C�B�C���C���C�q�C���C�a�C�o�C��C�}�C�C�(lC��C���C�w6C�sC�fxA'82    A'7�    A'8�    C��0C��7C��+C���C�
C�J C���C���C��C��\C��3C�]pC��zC�U�C��C���C���C�UC��pC�.HC�}�C���C�[C��_C�t'C�3C�u�C��C�3C��
C�1}C�;#C��{C���C�i�C�Q�C�GdA';    A':�    A';i    C�!�C��C�#�C�4'C�MYC�p�C���C���C��!C���C��&C��*C�8C�y^C� AC��C��C��HC�j�C��"C���C�C�C���C��^C�C^C���C�<C��C�qzC��C���C���C��C��C�ŻC���C���A'=�    A'=�    A'>C    C�)�C�)�C�,�C�=�C�e�C��7C���C��C�"uC��C��C���C�C�{�C��C��RC���C���C�(<C�v�C��bC�0�C���C��C�L�C��C�5C��jC�jwC��sC��C�}�C��C��uC��C��5C��A'@�    A'@e    A'A    C�	�C�wC��C�/,C�P�C�xC��!C���C��C��6C��iC��nC�	}C�s�C�TC�˼C��3C�wiC�rC�fGC��C�2�C���C���C�MC��!C�>C�QDC�6iC���C���C��-C���C���C���C���C���A'C�    A'C?    A'C�    C�NC�	8C��C�,0C�AFC�^iC���C���C��iC�أC���C�`�C��C�d�C��C���C���C�S\C�۴C�>_C���C�4�C�ϝC�X?C��~C�DhC���C��PC��=C�:uC��C��vC�VC��hC�ȩC��C�x~A'Ft    A'F    A'F�    C�aC�~C��C�2:C�I�C�m~C��KC��|C��C�&aC���C��>C��C�lfC��C�ݛC��.C��@C�2?C��kC��C�s�C��C�I[C���C���C�QDC�|�C�Q*C���C�v)C�vpC��C��C��$C���C���A'IN    A'H�    A'I�    C�PC��C��C�"dC�>�C�h�C���C�΀C��eC�<C��>C��[C�$�C���C�4�C��4C��GC��C��C�b�C��]C�OHC�ϞC�F�C��C�k�C�#C�T,C�!=C���C��2C��C�M�C�|C��C��C���A'L(    A'K�    A'L�    C�F/C�J�C�TBC�c=C�y�C���C��;C�aC�nC�C�ՃC�y�C���C���C�)C�C��EC���C�B!C���C��C�^OC���C�(!C��C���C�JC���C�l�C��C��WC��0C��C���C���C���C��4A'O    A'N�    A'O_    C�8�C�8�C�?FC�O�C�o�C���C�޻C�OC�'xC�%qC�-C��nC�@�C��EC�:�C�#C��C���C�<�C��C��[C�cC�ϕC�"C�oC��/C�C�C��CC�s�C��C��}C���C���C��JC�z�C�_C�K8A'Q�    A'Q�    A'R9    C�.�C�-HC�4,C�J�C�o[C��&C�ɮC���C�
�C�JC��TC���C�	C�{C�pC��C��C���C�U>C���C�)*C���C��C�T�C��5C�xC���C���C��C�^C���C���C��C���C��KC���C�`�A'T�    A'T[    A'U    C�VC� C�"2C�4�C�K{C�t�C���C���C�!�C�&&C��|C���C�lC���C�<pC�kC�	YC��C�eMC�ȆC�(�C���C�qC�j�C�ԝC�P&C��*C��C��pC�0wC��'C��C�ZC���C�ٞC�ӱC��OA'W�    A'W5    A'W�    C�2�C�4C�:�C�G�C�[!C�{rC��C��5C�	�C�mC��MC��hC�TC��2C�8�C�<C��
C��C�-�C�q�C��kC�)hC��3C�$TC���C�}C���C�԰C��JC�)�C���C���C�4�C���C���C�}�C�UtA'Zj    A'Z    A'Z�    C�	%C�6C��C�/[C�F C�e}C���C�ĚC���C��C��C���C�'>C���C�MeC�/�C�%�C��YC�b�C���C��C�X�C��rC�H�C��^C�8DC���C��iC��GC�7�C�� C��zC�sC���C��C�l�C�0XA']D    A'\�    A']�    C��C�PC�'�C�8,C�P�C�{C��C��rC��C��C��C���C��C�{5C��C���C��C��C�I�C���C���C�5^C���C�	7C�o�C��1C�WXC��C�7C�C��'C��iC�4�C���C��C��C��?A'`    A'_�    A'`{    C�Y�C�XFC�V�C�[>C�m�C���C��C���C��C��C��C�x�C��C�PC��C��dC��C���C�,�C��aC��#C�d�C�� C�*�C��7C���C�GvC�uC�S>C��C���C��iC�,nC���C�ѨC��?C���A'b�    A'b�    A'cU    C�n�C�u�C���C���C��MC��YC�rC�G#C�KVC�0|C� NC��;C�AC��C�U�C�1�C�%bC��C�N�C�� C���C�?�C�ʛC�I;C�ŲC�S0C�ڟC��C�ߡC�H�C���C���C�^C��JC��[C��*C���