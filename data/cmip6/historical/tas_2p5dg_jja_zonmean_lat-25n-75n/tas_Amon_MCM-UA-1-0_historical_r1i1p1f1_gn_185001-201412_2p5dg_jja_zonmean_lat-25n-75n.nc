CDF   �   
      time       bnds      lon       lat          0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      'Thu Dec 29 07:37:14 2022: cdo -s -O seldate,1850-01-01,2014-12-31 ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_MCM-UA-1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:49:31 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_MCM-UA-1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:49:31 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/historical/tas_2p5dg_jja_zonmean/tas_Amon_MCM-UA-1-0_historical_r1i1p1f1_gn_185001-201412_2p5dg_jja_zonmean.nc tmp.nc
Sat Sep 11 21:06:17 2021: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -selname,tas /p/projects/climate_data_central/CMIP/CMIP6/CMIP/UA/MCM-UA-1-0/historical/r1i1p1f1/Amon/tas/gn/v20190731/tas_Amon_MCM-UA-1-0_historical_r1i1p1f1_gn_185001-201412.nc ./cmip6_2/historical/tas/tas_Amon_MCM-UA-1-0_historical_r1i1p1f1_gn_185001-201412_jja_zonmean_2.5dg.nc
File was produced by a FORTRAN program    source        BManabe Climate Model at U of Arizona                                   institution       GDepartment of Geosciences, University of Arizona, Tucson, AZ 85721, USA    activity_id       CMIP   branch_method         standard   creation_date         2019-05-04T00:00:00Z   data_specs_version        01.00.28   
experiment        xall-forcing simulation of the recent past                                                                                  experiment_id         
historical     forcing_index               	frequency         mon    further_info_url      Qhttps://furtherinfo.es-doc.org/CMIP6.UA.MCM-UA-1-0.historical.none.r1i1p1f1            grid      lat-lon    
grid_label        gn     initialization_index            institution_id        UA     mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      	piControl      parent_mip_era        CMIP6      parent_source_id      
MCM-UA-1-0     parent_time_units         days since 0001-01-01 (noleap)     physics_index               realization_index               realm         atmos      
references       JDelworth, Thomas L., Ronald J Stouffer, Keith W Dixon, Michael J Spelman, Thomas R Knutson, Anthony J Broccoli, P J Kushner, and Richard T Wetherald, 2002: Review of simulations of climate variability and change with the GFDL R30 coupled climate model. Climate Dynamics, 19(7), 555-574....and references therein.                       	source_id         
MCM-UA-1-0     source_type       AOGCM      tracking_id       1hdl:21.14100/845f86f0-0714-47d2-bf92-b976d8cf951b      variant_label         r1i1p1f1   external_variables        	areacella      branch_time_in_child      A7dH       branch_time_in_parent                    table_id      Amon   contact       &GEOS-CMIP@email.arizona.edu                comment       } Used lowest model level about 25m above surface (sigma=0.9967), Note no diurnal variation in model, simple diffusive PBL          parent_variant_label      r1i1p1f1   variable_id       tas    sub_experiment        none   sub_experiment_id         none   variant_info      &1850 equiv CO2 and aerosol forcing         title         (UArizona MCM-UA-1-0 historical             product       model-output   license      3CMIP6 model data produced by the U of Arizona is licensed under a Creative Commons Attribution-[*]ShareAlike 4.0 International License (https://creativecommons.org/licenses/). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment.    Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file).  The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 0001-01-01 00:00:00     calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           |   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   tas                       standard_name         air_temperature    	long_name         6Near-Surface Air Temperature                               units         K      
_FillValue        `�x�   missing_value         `�x�   cell_methods      area: time: mean   table_id      Amon      ,  �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     A$�    A$��    A$�q    C�<?C��.C���C�NC��>C�1C��1C��C���C���C��5A$��    A$��    A$�K    C�-�C��lC���C�TwC���C�CCC���C��C��/C���C�c�A$��    A$�m    A$�%    C�VyC��|C��4C�\�C��}C���C��C�בC���C���C�l�A$��    A$�G    A$��    C�U�C���C��1C�&aC��C�i�C�*=C��C���C��?C��%A$�|    A$�!    A$��    C�N8C�ϡC��$C��
C�:�C���C��hC���C�ʚC��6C�j/A$�V    A$��    A$��    C�1"C���C��^C�
�C�mGC��C��C��/C���C�b�C�V�A$�0    A$��    A$��    C�8�C���C���C���C�>rC��`C��"C��C��9C�}6C�V�A$�
    A$��    A$�g    C��C��C�v�C��(C�6�C��C���C���C���C�vSC�j�A$��    A$��    A$�A    C�-EC��LC���C��oC�@eC�HC��kC���C��rC���C��dA$��    A$�c    A$�    C�όC�Y�C�n�C��gC�n�C�7<C�@C��yC��C��4C�r�A$��    A$�=    A$��    C��C��oC���C�C�_�C�"�C���C�ʗC��]C�k�C�c�A$�r    A$�    A$��    C�]�C��C���C��C���C��YC��C��$C�NC���C�^�A$�L    A$��    A$��    C�8�C���C���C��dC�C�ʺC��KC���C��IC�s�C�[�A$�&    A$��    A$��    C�yMC���C�|C�G�C��BC�L�C�,C��C�.C��#C�~�A$�     A$��    A$�]    C�
LC���C��FC�(�C�pEC���C���C��C��C���C���A$��    A$�    A$�7    C�D[C���C���C�$,C���C�e�C�юC��C��IC���C�mA$Ǵ    A$�Y    A$�    C��C��	C�ˊC�.dC��C�aC�"�C���C���C���C��A$ʎ    A$�3    A$��    C�SC�֩C��]C�9C�N�C�%�C��&C�	�C�yC�̌C��A$�h    A$�    A$��    C��C���C���C�;C�{�C�f[C�+1C��:C���C�xRC�X�A$�B    A$��    A$П    C�E�C��NC���C��C�c�C�ZC��<C��/C���C���C�{�A$�    A$��    A$�y    C��3C��C��<C��C�_�C�0C��C�D�C�FYC��)C�q#A$��    A$՛    A$�S    C�gC���C���C���C�<[C��?C���C��TC���C��C��A$��    A$�u    A$�-    C�ZC��wC��pC�?�C���C�v>C�/�C�C�'{C�ٗC��BA$۪    A$�O    A$�    C��C��C���C�*�C�v~C�OC���C���C��qC�T�C�H�A$ބ    A$�)    A$��    C�
^C���C��kC���C�L�C�+OC��	C�ԵC���C��cC���A$�^    A$�    A$�    C�`C���C���C�"�C��JC�\�C���C���C��@C���C���A$�8    A$��    A$�    C�5�C���C��6C�YC���C�B%C�ZC��C�ţC��ZC�� A$�    A$�    A$�o    C�'>C��ZC��jC�'�C��C�7�C��_C��wC��dC�k�C�N�A$��    A$�    A$�I    C��C���C��"C�"C���C�H�C�eC��hC��eC�c�C�7[A$��    A$�k    A$�#    C�8&C��0C���C�3�C��uC�`�C���C���C��C�m�C�Q|A$�    A$�E    A$��    C�VC��C�ƯC�$C���C�\�C�%�C���C��BC���C�6�A$�z    A$�    A$��    C��C��iC���C���C�Y�C�5/C��wC��;C���C�h<C�1"A$�T    A$��    A$��    C�M�C��\C���C��C�cFC�oC���C��C��dC��dC�j�A$�.    A$��    A$��    C��C��/C��XC�4�C��C�K�C��zC��bC��C��LC��yA$�    A$��    A$�e    C��HC�D�C�?=C��C��*C��TC�^�C�T�C�D
C��C�=NA$��    A$��    A$�?    C��mC�bHC�c;C��nC�� C���C��@C��C�u�C�8�C�4�A% �    A% a    A%    C� �C��dC���C��C�K�C��tC��fC��:C��C��_C�?�A%�    A%;    A%�    C�8C��MC�{aC���C��C�ňC���C���C���C�n�C�a�A%p    A%    A%�    C�3{C��4C���C��C�[�C� C��iC���C��&C��tC�~�A%	J    A%�    A%	�    C���C��^C���C�#�C���C�}WC�)�C��#C��bC�slC�FAA%$    A%�    A%�    C��C�n�C�~�C��
C�l�C�>6C���C�ڳC���C�jC�`A%�    A%�    A%[    C�)iC��WC���C���C�U�C�5KC��C��C��C���C�~�A%�    A%}    A%5    C��C�l�C�xkC��VC��C�q�C��C��C���C�\C�=6A%�    A%W    A%    C��yC�yHC�Y�C��tC�7AC��C���C��9C��'C��GC�sHA%�    A%1    A%�    C��C���C��sC�#�C��4C��C�2�C��fC��tC�y�C�D4A%f    A%    A%�    C���C�w?C�w1C��C��EC�u�C�C�C��zC�2jC��A%@    A%�    A%�    C�
�C��C�}<C��PC�E�C��C��@C�� C���C�x�C�f!A%     A%�    A% w    C�,_C���C��fC�
�C�B
C��=C��RC���C���C�y�C�IvA%"�    A%"�    A%#Q    C� �C��VC���C��C�q�C�7C�ݟC��oC��)C�G�C�)�A%%�    A%%s    A%&+    C�'�C���C���C�RC��C�PC��wC��HC��vC�o�C�W^A%(�    A%(M    A%)    C�Z�C���C���C��C�jC�'&C���C��!C��C��?C�A%+�    A%+'    A%+�    C�EbC���C���C��C�V�C�%�C��C���C�ԺC���C�a%A%.\    A%.    A%.�    C�[}C��C���C�@aC���C�R�C��	C��C��WC�S�C�dA%16    A%0�    A%1�    C�>3C��fC�i�C�y�C���C��C��!C���C�
C�ݹC�t8A%4    A%3�    A%4m    C���C�u+C�p�C��C��'C�U{C��C���C��kC�JVC�C	A%6�    A%6�    A%7G    C���C��4C���C��C��C��gC��C��`C���C�nuC�7A%9�    A%9i    A%:!    C��C���C���C���C�MgC�6C�ΊC�̻C��{C�`LC�f?A%<�    A%<C    A%<�    C��C�� C��NC�C��C�>C��!C��C��kC�l�C�h=A%?x    A%?    A%?�    C�*�C��GC���C��(C�LrC���C�ĲC��C�cC�υC��;A%BR    A%A�    A%B�    C�A�C��C���C��1C�R�C��C��IC�߬C��7C��7C�u�A%E,    A%D�    A%E�    C�l�C���C��|C�<C���C���C��\C�4�C��C���C�e�A%H    A%G�    A%Hc    C�9�C���C��C�(zC��C�t~C�>C�)C�	6C�ڝC���A%J�    A%J�    A%K=    C�@�C���C�ÚC��C���C�r�C�B�C�3�C��C���C�u�A%M�    A%M_    A%N    C�T*C�ҧC���C��C�tC�L�C�?oC�9�C�'3C��C��A%P�    A%P9    A%P�    C��C��C���C��C�q�C� �C���C�DC�C�ȝC���A%Sn    A%S    A%S�    C���C�!C���C��C���C�IC���C��MC�e$C�*LC�F�A%VH    A%U�    A%V�    C�C���C��C��2C�C_C��C��C�aC���C��C��rA%Y"    A%X�    A%Y    C�VoC��oC��MC�>IC���C�BqC���C��7C�C��]C��A%[�    A%[�    A%\Y    C�=�C��)C��rC�?�C��UC�{�C��C��GC��C��:C��A%^�    A%^{    A%_3    C�)�C��fC���C�C�ueC�M;C�oC��sC���C��/C�e�A%a�    A%aU    A%b    C�'C��C��'C��/C�b�C��C��OC���C���C��(C��
A%d�    A%d/    A%d�    C�X�C��xC���C�1;C���C�FuC��C���C��C���C�edA%gd    A%g	    A%g�    C�~+C��C���C��C�ZHC�C��C�ĿC���C��5C��7A%j>    A%i�    A%j�    C�r�C��-C���C�"C�g�C�d2C�HC�:5C�PC�>�C�iA%m    A%l�    A%mu    C�1�C��=C��C�%ZC���C�ZlC��C��kC��\C��,C�WgA%o�    A%o�    A%pO    C�?2C��NC�ȉC�-�C��vC�v�C� "C��yC�˰C���C�gYA%r�    A%rq    A%s)    C��C���C��$C��C�ocC��C��C���C�{�C�EqC�KdA%u�    A%uK    A%v    C�AZC�ÇC���C��C���C�lxC�F�C�1	C���C��sC�t�A%x�    A%x%    A%x�    C�QC��:C�՗C�'nC��C��C�7�C���C��xC���C���A%{Z    A%z�    A%{�    C�:�C��WC��=C�gC�boC�:C��jC���C��C��SC��cA%~4    A%}�    A%~�    C�-'C��BC���C���C�GqC�*0C���C��uC��5C���C��A%�    A%��    A%�k    C�]XC���C��C���C��C��WC��"C�"*C�,�C��C���A%��    A%��    A%�E    C�]C�ǟC��>C���C�i)C�woC�b�C�g�C�s9C�>C���A%��    A%�g    A%�    C�4�C���C�©C�@rC��qC���C�U1C�!�C��C���C��;A%��    A%�A    A%��    C�-�C���C���C�3�C��C�rRC� tC�ͣC�ƌC��/C�i�A%�v    A%�    A%��    C��C���C���C��C�vC�8YC��C�GC�2�C��C��NA%�P    A%��    A%��    C�$fC���C���C�4�C���C�3C��C���C��tC���C���A%�*    A%��    A%��    C� C���C���C�"C�y"C�0C��<C���C���C��+C���A%�    A%��    A%�a    C�*NC��C���C�&�C���C�NpC�qC��C��2C��C�UA%��    A%��    A%�;    C�D�C���C��\C�5�C���C�q�C�C��0C�ۍC��.C���A%��    A%�]    A%�    C�R C��^C���C�k0C�� C���C�//C�:C�"C��HC��DA%��    A%�7    A%��    C�=$C��C�ʒC�S|C��C���C�)�C��oC��eC���C�x!A%�l    A%�    A%��    C�S�C���C��C�:�C���C�Y�C�$�C���C�׌C��7C��-A%�F    A%��    A%��    C�]#C���C��KC�/�C���C�z`C�aC�Y�C�P�C�KC���A%�     A%��    A%�}    C�|�C��#C��\C��C�l�C�P*C�&C���C��,C�]�C�8TA%��    A%��    A%�W    C�n�C��bC��C�
�C�I�C�tC��NC�'C�&
C��EC��+A%��    A%�y    A%�1    C�d7C���C��C� �C�ZC�RC���C��WC���C��C�8�A%��    A%�S    A%�    C�^�C��kC�ϾC�!�C�]�C�C��$C��C��C���C�:2A%��    A%�-    A%��    C���C���C��bC�3C�[C�9C�5MC�TNC�4KC��4C�bXA%�b    A%�    A%��    C���C��C�3C�@C��C�UC�	zC��C��C��%C��)A%�<    A%��    A%��    C�f�C��C���C��C�h;C�,�C��C��C���C��\C�_�A%�    A%��    A%�s    C�k$C��uC��YC�vC�ZLC�6�C�pC�6C�BC��,C�i�A%��    A%��    A%�M    C�RkC���C��@C�]�C��_C���C���C�t]C���C�-FC��A%��    A%�o    A%�'    C�OEC��PC�FC�s�C��sC�_�C�C��C��C��C���A%¤    A%�I    A%�    C�>=C��5C�vC���C�vC��jC���C�,�C��C���C�S�A%�~    A%�#    A%��    C�@�C���C�ęC�/�C���C�C4C�-C��iC���C���C�b-A%�X    A%��    A%ȵ    C�SC���C��0C�3aC��&C���C�kSC�_C�;�C���C��A%�2    A%��    A%ˏ    C�M C��fC�˯C�DXC��C��VC�V�C�;�C�J
C�#kC�ŚA%�    A%ͱ    A%�i    C�l�C��C�XC�b�C��C�d�C� �C��C�!&C��C�{�A%��    A%Ћ    A%�C    C��C��C��C�F�C��yC�W�C�(�C�*�C��C�͎C���A%��    A%�e    A%�    C�u1C��aC�C�o�C���C��}C�<eC��C��C��^C��:A%֚    A%�?    A%��    C�L�C��C���C�RC��C�m)C�MC�rC�!FC��IC��&A%�t    A%�    A%��    C�m�C��&C�fC�{jC��BC���C�0�C��C���C�r�C�:A%�N    A%��    A%ܫ    C���C��C��C�*�C�|�C��C��WC���C���C�zuC�n�A%�(    A%��    A%߅    C�M�C���C�j�C���C�[C��C�.SC�8�C���C��C��4A%�    A%�    A%�_    C��C���C���C���C�m8C�XyC�+>C�UC��.C���C��(A%��    A%�    A%�9    C�m�C��7C���C�%�C�[�C�(SC�VC���C��PC�rAC�WEA%�    A%�[    A%�    C�V�C��;C���C�&�C�zC�1�C��C��C��YC���C��cA%�    A%�5    A%��    C�T�C��C��C�GtC��TC�YVC�:C�кC�UC�@C��A%�j    A%�    A%��    C�f�C��WC�͑C�"RC�s�C�7�C��(C���C��C���C�qvA%�D    A%��    A%�    C�y0C��\C���C�C��nC�V�C��C��VC�ժC��iC��A%�    A%��    A%�{    C��C��C��/C���C�4�C�:C�h]C�p6C�M}C�BC��vA%��    A%��    A%�U    C�bnC��6C��wC���C�eC�¸C�<C�%�C�JC���C���A%��    A%�w    A%�/    C�q�C��rC���C�d�C��C���C�G�C��C��7C�{�C�RA%��    A%�Q    A%�	    C�^mC��C���C�*�C�ouC��C��/C��,C��]C���C���A%��    A%�+    A%��    C�L[C���C���C�;YC���C���C�_�C�&�C��C���C�Y�A&`    A&    A&�    C�e<C��CC���C�8�C��,C�r�C�<C�+�C��	C��ZC�p.A&:    A&�    A&�    C�qyC��=C��tC�?C���C���C�pC�M�C��C��}C�]+A&    A&�    A&q    C�VpC���C�C�n�C��ZC��$C� �C��?C���C��C�|A&	�    A&	�    A&
K    C�fC��C���C��C�f;C�oC���C���C��YC�tfC�'�A&�    A&m    A&%    C�hC��DC��C�E�C�r�C��C�ԖC��C��C�ЧC���A&�    A&G    A&�    C���C�IC�C�vC�ӖC�s�C�wC��C�pC��C���A&|    A&!    A&�    C�{pC��C��C�Z�C���C�RCC���C��HC�ѧC���C�~�A&V    A&�    A&�    C�8C��{C�{�C���C�%�C��C�C�
C��C�~�C�`4A&0    A&�    A&�    C�r�C���C�ɑC�eYC��C��PC��C�0�C���C��#C��A&
    A&�    A&g    C��WC��C�CC�� C�7�C��C��#C�oC�I�C��C���A&�    A&�    A&A    C���C�0�C�$<C�cC��C�yHC�2|C��C��C��C��VA& �    A& c    A&!    C��CC�J�C�5)C�p@C��*C��HC�QuC�8@C�;cC�kC���A&#�    A&#=    A&#�    C��-C�:C�$�C�N�C��NC���C�WwC�>�C�I�C��C���A&&r    A&&    A&&�    C���C�!CC�4�C���C��C��PC��C�s�C�z�C�>JC���A&)L    A&(�    A&)�    C�\�C�`C�:�C��C��LC��+C�<5C�C�~C���C��OA&,&    A&+�    A&,�    C��C��C�%�C�VLC���C�e|C�8HC�b�C���C�O-C��$A&/     A&.�    A&/]    C�PiC���C���C��C�UFC�C��qC���C���C�r[C�I�A&1�    A&1    A&27    C��C��C��5C��C�qUC�P�C�9�C�J�C�XC���C�m�A&4�    A&4Y    A&5    C��bC�"`C��LC�MC�O�C�%�C�$\C�YQC�~fC�GC���A&7�    A&73    A&7�    C�aHC���C���C�mNC�C��~C�f�C�!�C���C��cC��;A&:h    A&:    A&:�    C�t�C�yC�%�C��C��CC�_�C�"WC�7�C�cC�<�C��dA&=B    A&<�    A&=�    C�S�C�еC���C�I:C��C���C�k�C�@%C�;eC��C��A&@    A&?�    A&@y    C��kC��C��C�^�C��C���C�G�C�MC��}C��hC���A&B�    A&B�    A&CS    C��3C�!#C�5C�{�C��C���C���C�p7C�]�C��#C�{�A&E�    A&Eu    A&F-    C���C�C�$UC���C� JC�;C��
C�spC�H�C���C��UA&H�    A&HO    A&I    C��bC�C� \C��NC�J�C�.C��8C�cwC�#�C���C���A&K�    A&K)    A&K�    C��C�#C��C�z�C�ܽC���C��EC�g�C�9C��jC���A&N^    A&N    A&N�    C���C��C�C�|XC�C�գC�`C�:�C�N�C��C�ϬA&Q8    A&P�    A&Q�    C���C��C�)C�|�C��8C��'C��C�XC���C��C�zyA&T    A&S�    A&To    C��TC��C�-�C���C�
^C���C��zC�{C�M9C��PC���A&V�    A&V�    A&WI    C��C�6NC��C�Z5C���C�z�C�?�C�9kC�GlC�JC�¡A&Y�    A&Yk    A&Z#    C���C�<�C�3�C���C�9�C�#JC��`C���C���C�1�C���A&\�    A&\E    A&\�    C��GC�@C�=�C���C�WIC�D�C��C���C�W C��cC���A&_z    A&_    A&_�    C��C�7�C�"lC���C��C��_C���C�v9C�i�C�6�C��lA&bT    A&a�    A&b�    C���C�L�C�.[C�j�C��C���C�C��C���C�i`C��A&e.    A&d�    A&e�    C���C�Q�C�\�C���C�)�C�rC���C���C�~�C�'7C�� A&h    A&g�    A&he    C��lC�#8C�I�C���C�
�C���C��C���C��oC��C�oA&j�    A&j�    A&k?    C�ķC�F^C�S�C��NC��C���C�զC��C��C��C�=A&m�    A&ma    A&n    C���C�3(C�:C���C��C��C��vC��dC���C�U>C��