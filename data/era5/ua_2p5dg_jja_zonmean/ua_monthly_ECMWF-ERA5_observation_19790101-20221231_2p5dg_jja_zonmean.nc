CDF   ,   
      time       bnds      lon       lat    %         CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.6     history      �Sun Jun 04 02:01:56 2023: cdo -s -O zonmean -selindexbox,1,144,37,73 ../data/era5/ua_2p5dg_jja/ua_monthly_ECMWF-ERA5_observation_19790101-20221231_2p5dg_jja.nc ../data/era5/ua_2p5dg_jja_zonmean/ua_monthly_ECMWF-ERA5_observation_19790101-20221231_2p5dg_jja_zonmean.nc
Sun Jun  4 01:50:24 2023: ncrename -v u300,ua ../data/era5/ua//u300_monthly_ECMWF-ERA5_observation_19790101-20221231_2p5dg_jja.nc
Sun Jun 04 01:37:04 2023: cdo -O seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,u300 /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_monthly_ECMWF-ERA5_observation_19790101-20221231_remapbil_newaxis.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_monthly_ECMWF-ERA5_observation_19790101-20221231_2p5dg_jja.nc
Sun Jun 04 01:37:00 2023: cdo -O monmean /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-20221231_remapbil_del29feb_newaxis.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_monthly_ECMWF-ERA5_observation_19790101-20221231_remapbil_newaxis.nc
Thu Mar 23 08:16:06 2023: cdo -O -setreftime,1900-01-01,00:00:00,1hour -settaxis,1979-01-01,00:00:00,1day -setcalendar,365_day /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-20221231_remapbil_del29feb.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-20221231_remapbil_del29feb_newaxis.nc
Wed Mar 22 06:42:09 2023: cdo -O -b F64 -del29feb -mergetime -setctomiss,inf /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-19791231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19800101-19801231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19810101-19811231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19820101-19821231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19830101-19831231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19840101-19841231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19850101-19851231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19860101-19861231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19870101-19871231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19880101-19881231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19890101-19891231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19900101-19901231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19910101-19911231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19920101-19921231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19930101-19931231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19940101-19941231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19950101-19951231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19960101-19961231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19970101-19971231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19980101-19981231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19990101-19991231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20000101-20001231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20010101-20011231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20020101-20021231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20030101-20031231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20040101-20041231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20050101-20051231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20060101-20061231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20070101-20071231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20080101-20081231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20090101-20091231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20100101-20101231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20110101-20111231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20120101-20121231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20130101-20131231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20140101-20141231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20150101-20151231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20160101-20161231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20170101-20171231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20180101-20181231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20190101-20191231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20200101-20201231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20210101-20211231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_20220101-20221231_remapbil.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-20221231_remapbil_del29feb.nc
Tue Mar 21 12:31:21 2023: cdo remapbil,/p/projects/climber3/sullyandro/m21/erainterim/daily/t_daily_erainterim_300mb_19790101-20191231_del29feb_filled.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-19791231.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-19791231_remapbil.nc
Tue Mar 21 12:22:33 2023: cdo daymean /p/projects/climate_data_central/reanalysis/ERA5/u300/u300_1hr_ECMWF-ERA5_observation_1979010100-1979123123.nc /p/projects/climber3/sullyandro/M22/data/era5/u300/u300_day_ECMWF-ERA5_observation_19790101-19791231.nc
Tue Jan 24 23:27:02 2023: ncrename -v u,u300 u300_1hr_ECMWF-ERA5_observation_1979010100-1979123123.nc
2023-01-18 17:07:20 GMT by grib_to_netcdf-2.25.1: /opt/ecmwf/mars-client/bin/grib_to_netcdf.bin -S param -o /cache/data6/adaptor.mars.internal-1674061275.9274719-31805-10-b9afb34d-cc31-4dca-8c0a-3ad7cdc0c63c.nc /cache/tmp/b9afb34d-cc31-4dca-8c0a-3ad7cdc0c63c-adaptor.mars.internal-1674060777.047462-31805-13-tmp.grib      NCO       4.7.2      	frequency         mon    CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         hours since 1900-1-1 00:00:00      calendar      365_day    axis      T               #   	time_bnds                                 #   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X               "p   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         �      "t   ua                        standard_name         eastward_wind      	long_name         U component of wind    units         m s**-1    
_FillValue        ����       missing_value         ����         (      #         @   @�  @�  A   AH  Ap  A�  A�  A�  A�  A�  A�  B  B  B  B   B*  B4  B>  BH  BR  B\  Bf  Bp  Bz  B�  B�  B�  B�  B�  B�  B�  B�  B�  B�  B�  A%CP    A%:�    A%K�    �|Y?C(;�ǥH(�$�뼄a���ed��-��t�
�@���z�0)���� �0����� Դ�?���my��@���RD@	�`iH@#I���@"_�h@'��B�Yy@+����@-�9U�h@.`~H�@.>���L�@.��
��@.���'�@.F���N@+��5��@(2���@$c�Gz�@ j���@�k&��@{��@L�>M-@`r��@�NzȔu@��ߖ��@=*�|�@m����@6�_�K@ ��e�\�J��-��A%��    A%P    A%�`    ��4+eZ���Bv������!k �\Z�lL��8y=��P��
V$�
�M��<���*�L�ۿ�]j�6Ե��+ש	?��e��3�@#�ǎF+@�:3�W�@"� N0�@(�b�/@-p�4�@/�"n'��@0`
�MX�@0��g�|�@0�W�'-�@/!E��Qt@+�����@'��ʑ@"�'\���@��dt�I@!a;}@�B:CE]@�y��.7@ +H��jF@!��6�t@!֨�Q��@!�L�U�@ �ٱ��D@�~�Bp-@��v�C@ ��Y�e�ŇP�  A%�0    A%��    A%��    �ͦ����r������4�=���N�?�)����]o��6AI(��	r�j������ݶpt�����Wt��Pi�ùN?��MG��\@�K]�@K�r�I�@ �<�A�@'��R[$Y@-_�8/�@0��$_IT@1�H�E�@0Bh,�D�@-���@)V�
x�4@%���;��@#U�Q
�@!��v7�@!�zه^f@!�O�I�9@"�H��$@"�@����@"�����D@!��K� @�7;	ZB@t���@�|VD@��� �?����dȴ?�����@��� A&�    A&0    A&@    �~�ԭ��Lr��C�Fd�l��$A�R~n�,��:����H/g��9_�#¿�4�"[��gi��?��
�T@��t+�@ ��n8@��+M@"�'��@)I[F.&�@.���B@0?�;0�@0����0@0|�FEA@/�����@-��|}�@*��ޗ�@'(�6�@"�@�M@��8��g@|kW@@�E�^�@���;�@9�2��k@s;�7-�@�����@&��&� @��;��M@1��@�ZFg�6?���}�l?J ��� A&U    A&L�    A&]�    �NJ,z�5���\T�c�h�+'+��h��[��/A�}�	�@�M���>+�k���w9f�$�?q����^?�*о@�����@����n�@��Z�@$&`�F�@)�ć�@.\���Y@0%5@j��@0;p���@/I#B�@,�H�q��@)�ַcB\@&�ʿ��@$���@"o܎֯�@!��l��@"�� ΁�@#M��@"������@"M��@"9�#!�I@!G�Yv@���@�&큭�@�&��@}U(e]�?�c��zU�II|\u  A&��    A&�    A&�     �e������7-[}��>���@����<`���˕-��z��#�l��s�G!����l:L��p]�p���X�2QZ?溱$�'�@A9F"1@�,`��@�h0h��@#�?�2�@*K��}�@/�A�@1fdD�@1U�	W�@0Y$`T{@,�\�"4@))nwڐA@&L�LQ@#=�ۘ'@ �4�_�@�=jޞ~@���.��@Q��A-e@j�z`�@<i��@�NQ���@@�[{@PH?)_H@F@��i�@��YiL@˻�5�T�60  A&��    A&Հ    A&�    �Ma�ۜ�a�qSw���(,�>��XW�ݼb�;U]��������%�V�ne���!���������*�I �?��;��h@*�s���@�<�ߪ@ ev*S�@'e�$f@-1~݋L@0�~��q@1�2�O@�@2[2�JP@1�����@/��BI��@*����V@&mЦ!��@"���N��@��B��@4HЎ�@x�)|�6@�牽�@0"HU�@a����@]a*~��@���,�@2a1�6�@ ���@ ��<�Z�?��F�ÿL���A'"`    A'�    A'+     �֩�k�f���I��qV2���3ͺ�s���o.����0F�����Cl�� J����� �b�A�?����}�?�5:^�l�@{t�b<�@ד'Y@�����G@%�����@+qdN�B�@/��/.HG@1�S�@1����*�@0����u@@.�}i��@*3��H�@%��*��+@"M�+�<�@�r�Z�@�0�9b%@�m��Ԗ@�=3Lc�@!_ޚpD�@!�6��@!�H�@!#w�j�@ L.�]�@�ykf�@�ttr�@��M ���)�M�  A'f�    A'^`    A'op    �+����C{�F���;2����
2a�ϴ��~��
@��į���L�\����'ڹ$?ߡ���?��3b9�@Om���@�/���@�����@$�y]e@)�&��@.(4eh��@09�c�5@0�*���@0��q�@/�0��j�@,�>侄W@)����V@&	S�mc@# ��|�@ ��ܗ�U@�����@�O��@ˏ̍S�@�M���@E�@�|@�F�Y5,@O ��@�)%�uG@d�^�Ә?��T��3K?�5�I��? ��8�  A'�@    A'��    A'��    ��H�"�9�ȡJ@|��������繫Vs������s���A���E� ���LO����X����X��o��1?�W�㣍B@�&�{ۂ@���~�@!nhbyO@&C���.�@+2@Y��*@/.GH���@0Vi{BM"@0�<g�չ@0���	E�@.w���P�@*�$Ϳ�@%�ҥ@!w�̯\?@T5�Ǘ@1�E!mH@�5���@8��vd@�=wB��@��O�~@:�% .<@~��3�@t5j�6�@�-I��@�����?�C�vn(�?4�� �  A'�    A'�@    A'�P    �|ń�u����Y���)�7�} �=Q@�G�&8`���RKv�
��J��k�oGUؿ�6c$���?��?����@
�%xӱ�@�U0lHo@!1>0�{@'"t��mI@,�3�5�@/NAY}&�@.���@��@-O�CI�@+B�q�7�@(�p���;@&R�)1@$ڑ���@$"!�?wc@"����8@!�A��@!��]�ZI@"C@���7@"���lS@#㬭�_u@%	�Qg@%|:/�y�@#��'�,@ �����@�y�B�@q�=�N�q�֥A(4     A(+�    A(<�    ��-k��,��2�"<����]9������6�6^�,������t��Ǩdm��$�m�=f��2����?���⁙?�$�M?/�@�`#O�@m�{vg@�Oh��4@%L�k1~p@+h搳��@0�"���@1^��/�H@1�]� �@1bV�ಏ@/r"���@+5�p|� @&��Bq@"���N@l�e;]�@6�R�#]@Ҳ�t5�@wkx���@<_���@%"h�@�c�Co]@/ERBn�@�`;$'@��d�'�@
��L��@�m��?+�8OjJeA(x�    A(p     A(�0    �1���d��|�Z�����E�m���~��d�����]��I��̿���Z�[D��G'�F�?�P;��\�?��];�T@w��n�T@�ICQ�@��O�R@&����@,���w�@0]M���@1.Wc��@1fR��t@0�*	U�@.��a�^@)Ĝ��j�@#��Q�7C@ʤ��_�@L��x�@U:Æ�@n��]s�@ #1����@"H	���@#��#|'@!��iYx�@�F0'>@/�d��f@�+�@�&��?�>����:V){  A(�     A(��    A(Š    �8���K���lE��%��Q\��k����0��9��v�l����:}�ڿ����`���ҙ(�H?�x�m=�U@dY�X�@$o�C�@Z��<�@$o� ��n@*:Rhj��@.�.Ȼ@0��m[@1X�vff�@1_���5@0�(Y�R�@-�0①�@)�31J&@&����@#�64��@ 6��G|-@ O.�$\@�{����@�jT7��@��/{��@!}tr�b%@#F�!#��@"Т���T@ �ψ��@�D�Ň�@�Rew;-@Z]4I7�K˱c  A)p    A(�     A)
    �7�Np��FTv2��٣�to����>k���L$��Q����b����������6[���R�^�W��:���#?�J"���@��1��@D�Dvh@%����@,!JNT@0��Yc@1�`��o$@1�,S1�@0�C��.�@.Cu��@*���v��@'U+�]�	@#����@!G����@��P�@t�����@H����_@��m@uC@�n�D�@���ߙ@܁#f��@r6?!�@м�>{@ezezW@[)��@ ҈�~�b�H<34�  A)E�    A)=p    A)N�    �G��4R� 2^��� �5rf��-9�5��� =Uh�bH������Ԡ� �w�g�〸 b?��`��?�2��O<@`F�,V@�pY��<@vDy#E@#���T� @)��P�g@.;Y��@1�R��@1Ї��$@1�����@0L����@+�B=Q�@&��xhGW@"��Ak�L@>k��� @��1%��@ &\��m@"3�N��@$U�Bn@$�z�B�=@$�)�T1@"��)&M@ Uc�T�f@)���h@�QQ�@�����ΐ  A)�P    A)��    A)��    �!K�k��d�!���U�G�!!̇�\�ڪu��_ڲ�Y��ۯ���1���y%y���;�<5��3�
z��?ܐ�)��@��C*�M@�u��i@���i�@$���O@*XEo���@.�.\@0�@�b�@0x�SD@.�r=��@,�Q2R@*yJ�K�@(���"@%1��� 7@"l$$@!��w,@ �ٸ揷@!��.��1@"������@"
_>I@r9U�֤@�]]��D@J��(d@��kztm@	�(��u�@tH��M&?�\��u4>����@  A)��    A)�P    A)�`    ������$�˰�@�gj�����j��L��X�P�sɪ�^���lj<Ŀ��ݯ!����;�T?�6WT�X?��3�kk@+(X��@n&ikRa@ >��Z��@%��8oa�@*�ߑ�ّ@-��ԉjP@/��O�y@0*]hJ�@/^9���@,�ҺU�@*����Z@(����	\@&��ݑt�@$S�xs"�@!��o@!�É2��@#�.���@$�z��<�@%Xf�pPj@$	J.]�4@"[i7R#�@ ���T�@�3!�~@ T�@	>v2�Z�?@^���  A*0    A*
�    A*�    ����t�T�rT��.�М��f-Pv���j�X��aDp����]ȿ澒�9�?�3t?�|�?�"��y�@	�2Y�@�1}�N@�����*@"}U�.Ⱦ@'�2a~�@-7�w�K@0��,���@1�V���,@1��ǋ̽@0\��N�@+�7�/�@&�l�&@@"�; gi�@�Z�T�@D�yV��@"	�d�@����X�@!@�Ǒ@"�]_��_@"�l\ʀ@ ���>x)@6|1@�@ �A��<@��p��@uzY�V?���F��w�@��)I� A*W�    A*O0    A*`@    �������^���L�ތ%a%�\��eT<���܃md���n�-�!�� ��	D���M� ���?ݿ�A�B��?�;4t��@8rɰ�@;�#~)@!�����@'��vS�W@,GEO,��@.�ɤ��`@/X�S�@.�b?�b@.S�_zd�@-?&
�I@+s�p��@(d}�tu�@$n�w:�@ �l�w�@�ļ�P@7�gmd@'̈���@N�ʽp�@�$}���@�H�b��@�-�Jp@��q��@�Ќ�C@����@g7�'�I�l&�yA*�    A*��    A*��    �5���*�j�~�N��s��_��y���N�ڱW���D���L���]������#R�����3�Rӿ� ��p��?� �|%H�@N؝\E@���֎�@�oL�R@$��x�@)�)$4q\@->����b@/�'Q�$@0���V�d@1=yĂ�@0m#�h�@-e�i�Ԕ@)O�V�MO@%���gz@#:�c&.k@ ���Q��@*���@@��ۜ@z����@����3@�J<Q@~�����@:�^�Z@ +��/\?��K��?��O��U>�`�   A*��    A*�    A*�     �N���E� ���(t�W����������[��@`��+�Rf�V��-�h�����z�P拿��aM@��(����?�C�+���?��q��_�@%Ӯ�%@���\@#2��;ē@)6�>띀@-�`�z]0@0����0@1���Å}@0��%lR�@.�+z�o	@*\��A��@&�Y�b�b@"��ϝG@ 8��L� @T$��W@��T�jw@ SD���@!�a�I�@!�B��_�@ ���.�@��Mkd�@*�.���@e7�F��@س��Vh?�%�*m�?2�]�  A+$�    A+�    A+-�    �FQ{ޡ����]FY^���M�i����kR�x>Y����Yv8�-P�
֗��ӛ�{���Hѿ�)Z�c��ǽV�_�N?�A�3]�@��,a��@���@�Φ�@%��:��@+�LO�$@0+A�1@1�$��&@1�	V��@0>G@D��@-�٣��i@*�
��7�@&�:"Ö@"�@$\�@�fI��@^��e$@����@�f�@���)��@�)���@;�ʑ1B@����p@n�q<5�@.�ȯ�@���`@��^*�A�F/ux�_A+i`    A+`�    A+r     �=��6b��3�䱄��(�(�>��Oe�q��8��������� v�w!�K��ҐX*	������c ?�!ߑ��?��z.p�t@�x̄@r�U��@!�g�&@'�pŝB@,Jb��@/.���� @0�����"@0���a��@/=��H/�@,�|-��@)�Nt9��@&����|@#��F2�@ ����?4@��r@WA�g�7@�u{ܱ@!�<$>@ ���?@�L.^5@�#\\J@�P|�D@
����@ G�f~`?�7հlGd�G���Q� A+��    A+�`    A+�p    ��o^H��D$�W�$����9���LQ�k��	#t~��n+�T��	�&ȥ�����uO�^��JP�V��Vό�R?�l��&r@Mlb���@��o�$@ ��W��@'"[��@,|y��G@0��p��@1�2}4@1a��>_�@0p`(^�l@->GM*��@(��^��@#�ȑ��3@_�~���@� �@��ξ�@�(��� @B�b/�@!��3�@#\�����@"�`*NoZ@ �B�Ǽ@�pr�@z��4�%@	����F�?��`��D�"����  A+�@    A+��    A+��    �T��藫� ���XD������&K�p�H�M%��^�˿?�B���tL���7�&�ܿ�u=�?�?�}���d@6[(bUY@r��e�@݈�0@!�յ���@'DP�5@,��,�r@03F�J�F@1�Z�(�@1NT��@0���սs@-�׮X�@(]��t@#KL&f�t@  �%@}��.��@�`��@cN�럗@�0H�@�E���W@��I���@_�4�@��i@�\�Rg)@�/ .Y:@�H�K��@��H~�r�N�4  A,6�    A,.@    A,?P    ����d�	�C׈OEW��;�`�q��V���Hֿ�;��"#u���	V��ɚ*� ;dc (R��v7�2|�?��.��߅@b�{O��@���FW@��V]�@!�Hx��-@&���n�@*����̕@-l۷��@.w�mj�@/�̕w�@/0c�$@.l702�@@,L��ҋV@(Q�*�@$@�`��!@!t�Xs��@2�2a�@��h��U@�8D��@�@���
@�
�\�@�v�)�@��6�`@�'p�rp@�*D'�Y@ބ��d@2��./��Gy	k� A,{     A,r�    A,��    �n�yH#��� UG��f �Y����;l�r�Nz}��?���i�����F��]�s���|n�?�fi�T?�>�|@��׷{@�⸚�g@��l,��@$Ƈ�ۛt@*�����@-����@/��>Ml@0P�N's�@/��01o{@-��i��@)����_4@&&���+@"�IH\�O@ �F�p�@�$3�@m��'-�@!�I^Zo@"{��r.@"��c���@"y��{r@"���d0@$���.@#�nN#�@!g7m��@MM��@�Eӯ�  A,��    A,�     A,�0    �ܪ�GY���׃(������t��47g-�s������l�e���QN�����S5��� �F����y�#�?�ެ�(@
 �JXq@4@}�P@"}Ւ�L@'�Bߗ{@,�0�� @/\;�e�@0d����@0����N@0i��)�w@-��f�$@)��9�j@%v�X��@!�u���@ٕ��W@�ӫ�m�@z< �]q@dA'���@3��c�@rB=�'@U�p��@@�e3 ��@��EN�@!�؈?﹍O�RL?���E��ӿ#�� �  A-     A,��    A-�    ��FU�}��C��������2u}��w�s����֮���Chrn��m�" E����j�D���i�����T� �?����=@� ^,@�h��U@�.�-@&I���)@+�^��$@/����b@0���V�	@1!�Jj}d@0��|@.E�&@+I@)������@%L���@"=��L�@!�@ ���H��@/�'��b@�ݰS�@:�S��@I�w��@�뮂_�@�tZ�@^)s��@�&�{@��ht?ꯨ�y�\?9r�X�  A-Hp    A-@     A-Q    ��(���(��y��%��h�e��?�< ��hX>G��.�*����h$��X��ο����|?�\qH�ْ?��նd�@�(#|�@��#��@#�1�q}2@*�4��@0K7�%t@1��v��@2��@�U@1����h�@0heWv@,�?yo�\@'��u�v�@"_�,j)�@�@f{^�@]�.R�@�,nC�@��B6�@X�� �@ (Cb��@`��@LV(��@	�X®?�t��V=?ڠ�r\����q����i�:�M�Jvn�\A-��    A-�p    A-��    �����tL� !����� I��/J���#�G���%�-C���H�Q���ʝ1��>'����g��0����Z�?���F�0�@�P��t@����w@{3�O��@$��f�D�@)��ҭ��@-}l!	@0n�Vp^@0������@0r�\+@.�
&��@+Ih|_@'��r�s@$~��/8�@!|ŚЋv@ �>�W@���=4@�=�C�I@&���#@�r��S@�N@ck�Fh(@��]��@�.r�˵@~h`Τ�@�����?J�%�A-�P    A-��    A-��    ����h
�B|��7R�(�����-���d(9/����ӆ��nv�p���&w�����m��T�?����B<�?��C[��@����]V@3��$B@M���D@%O���gJ@*�o��ئ@.�[|��@0e���@0�"�D�@0~�s�@.fS�9�@+$	��q1@'q���=@#�A��� @ +(~U-@u�bqt@�0˵_@t��$�@ÎGs�@N(���@�mQ� 3?��j!�d?�Z`כ����q�Ey����@i���)-t�*`�M@�am�A.�    A.P    A.`    �Z���4�����	z����h����)^�57�]�-]�������?�z.�����9���E��$(���?��ᦄ�?�6���@	N�ʧ#�@�("W,�@�{�i��@%G�F_�T@)�JU��@,|~O	�@.��/YP@/��C��Y@.�K��@,�_�ew@(����@%,��z��@"(��tR@ &1C

@`����@�
g�>�@�z���@ h͌2T@ �@� �b"�@ m��@Pa���@���\l@�?-}?�n���?7�R��  A.Z0    A.Q�    A.b�    �5������@b����)f�i`��GO��+�� Pfx6��m^����̰�� M�S�D���W�O�ǟc����?�"�A�i<@��D�@��pC<@�Әֽ@@%���;�@+��@0�T�r=@1$M��D@0���Q�V@/@��P�k@+�����@(����	@$�|�(=�@!5)	P@����f�@9JGЀ@ܾ���D@.om0�@!ڐ����@$rR��K�@%�����J@$�%���@#]9Zg�@![s��@��u�[�@]�	+Y�?4�P�3)A.��    A.�0    A.�@    �<=������x	����e����*^�~�\{��Q��|�Ky���Ӵ��ܿ���b��w��$�S��?�T��@p7��g@����@_�����@#^gZ�R@)a�,3|�@-�ea��@/�	��Lb@07X���@/�xs�G[@-LR��;@*��F@'c'�C��@$M�zNb@!a�b�@���=��@'�2��@ϭ�*@ xL^c<@!�1�:�@"M���@!U�ƒ�@�r��q�@)?�O�@
E "(��@ ����w?�j�(\e�Aڬ�R�A.�    A.ڠ    A.�    ���:�iW�� Q<H�.�	ol��>�:�F��3�h��	CH�,��������.��V����?�,*��l?�~7��+<@H��Oh"@������@I�`G~�@ �K���k@%�ŝL6�@*T�W@-J	�XV@/R�!F�;@0#�GG@/�K�1��@-�@�h�@*��L�U�@(e�{)9@%�6�0�!@"���~@�˼!�>@�Y����@ȁw(�L@�c�9��@C�u*Rn@6l/F�)@�u<P�9@ԖZq�7?�YLk@�?��^#p~)?�c�C��5*.~�  A/'�    A/    A/0     �#~0!����o�������ͦ�����u����I�=^���@�6U��3Vk�r�����9����ܛ��?�)_���@	�����@�h"j�@�t0wi@%l����@*G��4�*@-q- q_�@/oQ�,�g@0)�\��Y@/�5/���@-�YR��@)�2>���@%e�k�@!	��[�]@�<����@����@�j��٣@�2F=8�@#>��Wn@%����ǆ@%��ږ�@$��_�@"4����@bPd@ȿm?@I?ƿEӇ��  A/k�    A/c�    A/t�    � dTC���!+�Y�}� �hv����KB�|�s3bY����������j[�����3w�̿� �>@?���?�[E*Z%@Ǫ�@Y{1Ob�@�s[�<@%���@,@* Mz�@0aSJ���@1�z��)4@2L*���@1�hbaL@0�if[��@,�A�y�@'ᭀ�n�@"���;+x@L�{��@<�&ow�@S��[$@;$�,@!����	�@!���5^P@!����@ �Ş~Hw@����@}�'^~@&�� �@�/{N�?F���  A/�`    A/��    A/�     �	P��`
�ͫWI_R�o�_8�d��p}xWs��y|���(;Ϯ7�������I�/�����;��G���iN� .�?�5Q�
�@���@��m��@����W@"�����5@(C�i�@,�w�gق@.�)<�U@/Wf�/p�@.x��-F5@-W{2w�@+�Ye���@)\��h�5@&�H���@!�e3��@����@��t��@ <�+L��@"�x�~W�@#��`M@"�|䩸"@ hs}e�E@/9�d��@�3R��4@KH{�?�+��9�M6���A/��    A/�`    A/�p    ���#~U��۴�A��¬f�ޥ��G�����c��FD�y��a'��jB������OH��(�q��?�X y���@ �%͢�@ṑI@�����_@!�3mzu@(����@-�@G���@0�sdeݶ@1;�3��t@0�J�~A@0�9Qn@,tf��3�@'p�3��@"�Ym��w@���@��{�y�@7�����@��r�@a@Iņ��@�	��@���@�Z*X�@Fߍ<�@���l@	/Z;�Z�?�A���?� ���8�J�^��A0�    A0h    A0 �    � 2�f��3� �CQ��� �f������{��H��3��)���}��?����[�	��6/>���AN�U���,h05��?�#�@	�=|@���&;@!�^��bA@(�=d�j@-��l�@00,��@0�n
VL@0���u�@0]�%�ʰ@.R�����@+�(i
�@&ez�G|�@!�3��,�@�%�!�@���;�h@��/=@,yt�3K@�R�@S�@w0���@`�S�?���Υ޿ݨ",ջ�� ����(���V���V]?�k?0���Z%�A0>�    A0:�    A0C(    �f����dM#4����x��N�Ó$0h]�쯬Z��r{{Y���V!��w���vc���������z�?ܘ"��@7ufV@)�?���@�6�N@%��IX@+[y�Le@.�����@/ږ�E@/�g��@,����@)�J����@&/Z���@#�.���@!���j8U@!ݹ�@!YT聮@"�p>k]u@$���"T@%���v�@%pu���v@#2�d��S@]'T�@K�6��@�}��cU@Z�ge��?��1@*�ȿ7;���  A0a    A0\�    A0e`    ���e.�c�3%�a��a����������Lv���v����;���L�J�-��ї��Yt��5}���Y��EN^��{?�$S�)�@�@��+�@S�ƀ|�@$i��y�@+�	�z�@/���̌w@0�C�.@0kW+�1@.m�[��P@+_ͥSS�@(�;��a@&=�׸�6@#��4A��@!��GT��@ �g�C�L@ B����6@�DY���@��F�@MX��@4�F�b�@{[���3@�,]�ǀ@nbN�@�Ж��|?�9,���?1���