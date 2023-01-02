CDF   V   
      time       bnds      lon       lat       plev         0   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      RThu Dec 29 07:39:49 2022: cdo -s -O seldate,2015-01-01,2100-12-31 ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_KACE-1-0-G_ssp585_r1i1p1f1_gr_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc tmp.nc
Thu Dec 29 06:53:54 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean_lat-25n-75n/ua_Amon_KACE-1-0-G_ssp585_r1i1p1f1_gr_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:53:54 2022: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/ssp585/ua_2p5dg_jja_zonmean/ua_Amon_KACE-1-0-G_ssp585_r1i1p1f1_gr_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Fri Feb 11 04:42:42 2022: cdo -s -O seasmean -zonmean -selmonth,6,7,8 -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -sellevel,30000 -selname,ua /p/projects/climate_data_central/CMIP/CMIP6/ScenarioMIP/NIMS-KMA/KACE-1-0-G/ssp585/r1i1p1f1/Amon/ua/gr/v20190920/ua_Amon_KACE-1-0-G_ssp585_r1i1p1f1_gr_201501-210012.nc ./cmip6_2/ssp585/ua/ua_Amon_KACE-1-0-G_ssp585_r1i1p1f1_gr_201501-210012_jja_zonmean_2.5dg.nc
2019-09-20T10:30:25Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.     source       �KACE1.0-G (2018): 
aerosol: UKCA-GLOMAP-mode
atmos: MetUM-HadGEM3-GA7.1 (N96; 192 x 144 longitude/latitude; 85 levels; top level 85 km)
atmosChem: none
land: JULES-HadGEM3-GL7.1
landIce: none
ocean: MOM4p1 (tripolar primarily 1deg; 360 x 200 longitude/latitude; 50 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: CICE-HadGEM3-GSI8 (tripolar primarily 1deg; 360 x 200 longitude/latitude)   institution       �National Institute of Meteorological Sciences/Korea Meteorological Administration, Climate Research Division, Seoho-bukro 33, Seogwipo-si, Jejudo 63568, Republic of Korea     activity_id       ScenarioMIP    branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact       #Yoon-Jin Lim (yoonjin.lim@korea.kr)    creation_date         2019-09-20T10:30:25Z   data_specs_version        01.00.30   
experiment        update of RCP8.5 based on SSP5     experiment_id         ssp585     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Mhttps://furtherinfo.es-doc.org/CMIP6.NIMS-KMA.KACE-1-0-G.ssp585.none.r1i1p1f1      grid      gs1x1      
grid_label        gr     initialization_index            institution_id        NIMS-KMA   mip_era       CMIP6      nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_mip_era        CMIP6      parent_source_id      
KACE-1-0-G     parent_time_units         days since 1850-01-01      parent_variant_label      r1i1p1f1   physics_index               product       model-output   realization_index               realm         atmos      
references        �Evaluation of the Korea Meteorological Administration Advanced Community Earth-system model (K-ACE): doi: 10.1007/s13143-019-00144-7. Lee et al., 2019.    	source_id         
KACE-1-0-G     source_type       AOGCM      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(30 April 2019) MD5:cc2ae51c23960ce127b4d68ab3d8ac87     title         $KACE-1-0-G output prepared for CMIP6   tracking_id       1hdl:21.14100/b7d29f45-0aa1-434b-8c7f-13e1adf8857c      variable_id       ua     variant_label         r1i1p1f1   license      #CMIP6 model data produced by NIMS-KMA is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file). The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.4.0      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-01-01      calendar      360_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           h   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  p   plev               standard_name         air_pressure   	long_name         pressure   units         Pa     positive      down   axis      Z           �   ua                        
   standard_name         eastward_wind      	long_name         Eastward Wind      units         m s-1      
_FillValue        `�x�   missing_value         `�x�   comment       /Zonal wind (positive in a eastward direction).     original_name         m01s30i201     cell_methods      time: mean (interval: 1 month)     cell_measures         area: areacella    history       _2019-09-20T10:30:24Z altered by CMOR: Reordered dimensions, original order: time plev lat lon.        ,  �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @�L     @h`     @b�     @n      @�FD@�\VA��AC�AX�A^
�AVZA8��A5@�i�@��@�X     @�     @��     @u�@W�y@��AA#�_Ar_CA��_At��A5Ѵ@��@��=@�� @��     @�0     @�      @ ·@�,@���A1�	Am#�A�KzAltAB�yA�2@��@��@��     @�8     @��     @4p.@�3uA)�!A[�AZ�tA;��A/��A)M�AX�AK�@���@��     @��     @�@     ?��	@��HA�AP��AWw<AFA:��A&�UA�?A�	A�P@�,     @�x     @��     ?�hH@�1�A:QA>T�AX��Ad�AV�;AG�@���@�_�@��@�f     @�     @��     @_��@�/�@���AVA5;�AE��Ad�AjT�AC��A!��@�r@�6     @��     @��     ?�^@]��@�:A>�QAr�yA�ߺAh>�A8�@���@���@�X�@�     @��     @�`     @�#@�mAy2A5HoAN�(ANhAR��AB7A._�A�(@�f�@��     @�|     @�0     @l��@�{*A[fAA AW��AT9�AL��A>g�A#��@�y/@f�@��     @�L     @�      @M�[@���A�AI`�A_bNAW~�AF�6A�5@���@�9�@�~�@�;     @�     @�h     @%��@��G@���A1|BA`�AmDAY|�A3B�A�>@ཻ@��E@��     @�v     @��     ?�g�@�7A��AD��Aa�qAavAW�A7AjD@�}�@��S@�     @��     @�8     @X0@�� A"�A;qIAL�AR��AM=xA7A�A�JA[@��@�s     @�F     @��     ?���@{��@�I A@)A[FA\�[Abm8AG<�A�?@��@޼�@��     @��     @�     @:w�@ȆA AAp0ARBAT��AT��A=:�A
��@��5@Y�2@�C     @�     @�p     ?�U@�L�A�XAIf�AXf,AZK*AV�A2q�A_@�)�@�8c@��     @�~     @��     @+n�@�Y.AʁA8Y,Aa3BAvr�Ad>�A? @�qC@���@�9�@�     @��     @�@     @��@���A��A:VAY��AjcA^�<A)��@�s�@���@�R
@�{     @�N     @��     @4��@��\A
��A6��AJ2�AJ�@AH�hA3��AL|@� @��H@��     @��     @�     @g_@�~�A|�A,a�A:��A@ψA=L�A)��A�iA"��A'��@�K     @�     @�x     @iX@�Z3@�٧A:�yA_� A^7[AZ�HAC�A��@�&@��@��     @��     @��     @�/�@�VnA.�A<�NA_�tA]��AKr^A%�A�@���@�5�@���    @�w     @��     @Eȯ@�V�@�,ZA76Ab��Ar�Am0EAE�qA<@�+�@V�@�A�    @�+     @�X     @Y;@�W�A*G�AKWTAO��AM��AH5�A&srA��@�Y�@��@���    @��     @�     @<�@��~@���A�vAK̷An�AsYJALS�Ah@�S�@ś�@©�    @     @��     @�#�@��p@�mA$1AP1JAuԉAg}cA(Gn@ԏ�@��@���@�]�    @�G     @�t     @m�@���@��A+�}AX�Ao��Ac��A5�@���@�n�@�Ρ@��    @��     @�(     @R�@�<�A�3AJ}"Ac �AXaA;��A�#@���@�َ@�q�@�ŀ    @į     @��     @9
�@Ɓ�A�A+�uAGOMAS//AL��A."�A�A�DA �@�y�    @�c     @Ő     @��h@�]�A&�A=��A9�RA0W�A7�rA;X�A�"AF�@�@�-�    @�     @�D     ?��J@y*�@�O+A:y�A_
AZ׶AEfA(��A	��@�
=@��m@��    @��     @��     @uM�@�1�A��A:��A\�A]_AI�A%B�@���@ّ�@���@Ǖ�    @�     @Ǭ     @n��@�(�AلAMݼAe�>AOA,AA��A�<A��@��@�I�    @�3     @�`     @��@��nA�AA	�A\98AW�WAR��A5�A��@ށ@�K�@���    @��     @�     ?��@��#@��A0�5AT�AW�AQN�AD�xA'��ADx@�/�@ɱ�    @ɛ     @��     @��8@�.AA �A5�AI'iAR?�AYlAD��A�@�M[@���@�e�    @�O     @�|     @m<^@Ԧ�A �A3�8AB~�AP�AOonA&��A��A9�@��@��    @�     @�0     @.zS@��/A08A:bAM�sA:z_A_�As2At�A�YA0�"@�̀    @˷     @��     @z�8@�HrAF~A-��A@�AGV*AH�ZA-�A	�[@��N@��@́�    @�k     @̘     @� �@��A�!A8� AH�GAG�gAK'�AC��A-A
b@�0�@�5�    @�     @�L     @p#1@�7A:2�A_ �AU2�A;�~A"VcA3@�E�@�}A�@��    @��     @�      @T`N@¶�A�<A:��AY�xAU��APi6AB~*A(0�A	�~@���@Ν�    @·     @δ     @�2@\sH@�aAJ�JA��Ayn�A;=�A��@��TAE�@�Xw@�Q�    @�;     @�h     @��@���A	�AGcAka`Ai�xAT�7A1AAF�@��@�S�@��    @��     @�     @'��@��@�bA-dAU̬AiXA[p�A/�=@�)�@�@,@؜t@�\�    @�Q�    @�h     @h��@���@�*�A��AHŬA`נA^�{AK��A��@�(�@��@ж�    @Ы�    @��     @L�@��A�~AM�bAj,vA[�?A4�0AE�A
 A�A��@��    @��    @�     ?�*�@��/A��AI3�Ab�:AM��A=�<A$DA�A �@�k&@�j�    @�_�    @�v     @;6�@��A�JALT�AL=�A;�A3",A b�Ad@��G@�v�@���    @ѹ�    @��     @_��@��P@�C�A4�_A[��AW�AL��A6țA�@���@��@��    @��    @�*     @�G@�!A�"A?�6Am�wAs�AJ�ZAN@ԥ�@�X�@���@�x�    @�m�    @҄     @D~@�@�A
N�A4u�AI�AB]�A8�MA0�A�UA�uA�@���    @�ǀ    @��     @MT5@��JA�VAI�2AZtAS��A=!A��A,@�E@�Y@�,�    @�!�    @�8     @H��@��7@�$2A*�AE�MAE�AC9A<�A+n�A�@�@ӆ�    @�{�    @Ӓ     @p��@��A~/A5� A9LAAD�AD=aA/��A
5G@�PA)z@���    @�Հ    @��     @�*�@���A!O�AK�hAV�	AB�XA2/�A#��A��@쫄@�q@�:�    @�/�    @�F     @��@�#*A3{AL_]Am�Ac��AC[EA vA�@��j@�p@Ԕ�    @ԉ�    @Ԡ     @0�@���@��Ax�A7B9AMH�AWH�AHA�aA��@�@���    @��    @��     @��@��A~A4�jAY{�A_�AK`�A#d�A��@�H@���@�H�    @�=�    @�T     @o
i@���A8�A;�A=z(A?�<AKT�A7�A��@�P@�Њ@բ�    @՗�    @ծ     @v"?@�]�A
�(A*SlA?�}A2��A'�A��ALAOOA-�@���    @��    @�     @"�5@�v�A�TA?�<AS�AV�AO��A;BAK�@�pg@��<@�V�    @�K�    @�b     @iE1@���A��A0#�AH=�AJ�A>QtAUUAVAG�A
�O@ְ�    @֥�    @ּ     @�K�@�8�A
��A#��A;�EAUv�A[̙A;-�A��@��@��E@�
�    @���    @�     @.�$@���@�=?A>WsA]�9A\�iAL��A'��A�iA	�k@܊@�d�    @�Y�    @�p     @V_�@πA$�AA�jA9�*A5��A;�A&��A�@�X�@ָq@׾�    @׳�    @��     @��@��A
��A7��AKJ�AF6AA��A)�rA�m@�)A��@��    @��    @�$     @DC@�^tA�;A0S�AJ��A`a�AU�A*K�A�L@컏@�%�@�r�    @�g�    @�~     @,�N@���ANiA3�AL�]AOuAH��A2hdA"�@�2@�3�@���    @���    @��     @�v�@�iF@�<mA��A0cAF�ATA>u�A
�@��@��8@�&�    @��    @�2     @w=�@��|A�A/�A@w�AJg]AKS�A:o�A޶@�g@@�@ـ�    @�u�    @ٌ     @�@�~�A�8A-(�A4�A5�{A;DVA7�vA)A
�@�)@���    @�π    @��     @K3v@���@���A<��A\�Ai6#AkH�A@�A��@��}@lji@�4�    @�)�    @�@     ?��k@�}pA��AA`pAGU�A5��A=�A8tdA#��A�@ʻ�@ڎ�    @ڃ�    @ښ     @M�+@�d AA�AN�zAR[�A:��A+-�A/�A��@�:�@�ڒ@���    @�݀    @��     @!@��`A�?ACS�ATn.AKH/ABeA1)�A�!@��@�r�@�B�    @�7�    @�N     ?�;�@��#A�DA8��AL��AN:!AK�KA:$�Aq�@�\@�:@ۜ�    @ۑ�    @ۨ     @0�>@�31AHATP4Ai��AT��A-h�AB@Ϸ�@�m�@ѽ�@���    @��    @�     @���@��AqA+K�A@�EAI �AF��A,XD@��@@�9@��@�P�    @�E�    @�\     @>�g@�"�@���A$�kA;��ALA�AN+pA=��A��@�y;@�@ܪ�    @ܟ�    @ܶ     @��`@���A!�A7/�A55HA**<A)!.A*�Ap�A��@���@��    @���    @�     @�T�@�.{A>A26qAXAf�~AWq�A��@�C�@�F�@��@�^�    @�S�    @�j     @�+@�HmA��A9�:A@�OA31A-��A59@�s�@��A�@ݸ�    @ݭ�    @��     @<UL@�H�A%A7��AQz�AKA8!}AܪAC_@�o�@�d@��    @��    @�     @7�G@��A�A;�=AUG�ARz�A<:A%˦A{�@�l�@�\