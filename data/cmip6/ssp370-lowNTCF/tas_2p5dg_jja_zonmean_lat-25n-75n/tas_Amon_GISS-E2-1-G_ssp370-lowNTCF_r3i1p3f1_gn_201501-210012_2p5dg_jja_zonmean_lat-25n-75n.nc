CDF   V   
      time       bnds      lon       lat          2   CDI       <Climate Data Interface version ?? (http://mpimet.mpg.de/cdi)   Conventions       CF-1.7 CMIP-6.2    history      wSat Oct 28 07:26:27 2023: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean_lat-25n-75n/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_201501-210012_2p5dg_jja_zonmean_lat-25n-75n.nc
Sat Oct 28 07:26:27 2023: cdo -s -O remapbil,grid_5dg.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_201501-210012_2p5dg_jja_zonmean.nc tmp.nc
Sat Oct 28 07:16:52 2023: cdo -s -O zonmean -selindexbox,1,144,37,73 -seasmean -remapbil,griddes-2.5deg -selmonth,6,7,8 -selname,tas /home/dark/windows/Downloads/cmip6-ssp370-lowntcf/cdo_cat//tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_201501-210012.nc ../data/cmip6/ssp370-lowNTCF/tas_2p5dg_jja_zonmean/tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_201501-210012_2p5dg_jja_zonmean.nc
Sat Oct 28 05:37:30 2023: cdo cat tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_201501-205012.nc tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_205101-210012.nc tas_Amon_GISS-E2-1-G_ssp370-lowNTCF_r3i1p3f1_gn_201501-210012.nc
2020-08-26T09:00:53Z ; CMOR rewrote data to be consistent with CMIP6, CF-1.7 CMIP-6.2 and CF standards.    source       �GISS-E2.1G (2019): 
aerosol: Varies with physics-version (p==1 none, p==3 OMA, p==4 TOMAS, p==5 MATRIX)
atmos: GISS-E2.1 (2.5x2 degree; 144 x 90 longitude/latitude; 40 levels; top level 0.1 hPa)
atmosChem: Varies with physics-version (p==1 Non-interactive, p>1 GPUCCINI)
land: GISS LSM
landIce: none
ocean: GISS Ocean (GO1, 1 degree; 360 x 180 longitude/latitude; 40 levels; top grid cell 0-10 m)
ocnBgchem: none
seaIce: GISS SI   institution       <Goddard Institute for Space Studies, New York, NY 10025, USA   activity_id       
AerChemMIP     branch_method         standard   branch_time_in_child                 branch_time_in_parent                    contact        Kenneth Lo (cdkkl@giss.nasa.gov)   creation_date         2020-08-26T09:00:53Z   data_specs_version        01.00.23   
experiment        !SSP3-7.0, with low NTCF emissions      experiment_id         ssp370-lowNTCF     external_variables        	areacella      forcing_index               	frequency         mon    further_info_url      Whttps://furtherinfo.es-doc.org/CMIP6.NASA-GISS.GISS-E2-1-G.ssp370-lowNTCF.none.r3i1p3f1    grid      -atmospheric grid: 144x90, ocean grid: 288x180      
grid_label        gn     initialization_index            institution_id        	NASA-GISS      mip_era       CMIP6      model_id      AerChemMIP_OMA_ssp370-lowNTCFc     nominal_resolution        250 km     parent_activity_id        CMIP   parent_experiment_id      
historical     parent_experiment_rip         r1i1p3     parent_mip_era        CMIP6      parent_source_id      GISS-E2-1-G    parent_time_units         days since 2015-1-1    parent_variant_label      r1i1p3f1   physics_index               product       model-output   realization_index               realm         atmos      
references        'https://data.giss.nasa.gov/modelE/cmip6    	source_id         GISS-E2-1-G    source_type       	AOGCM AER      sub_experiment        none   sub_experiment_id         none   table_id      Amon   
table_info        BCreation Date:(21 March 2018) MD5:d211846f9d8f448e2718291a152c71ca     title         %GISS-E2-1-G output prepared for CMIP6      tracking_id       1hdl:21.14100/3cf74a67-51f3-4e21-acf1-82b4ef36a7e6      variable_id       tas    variant_label         r3i1p3f1   license      cCMIP6 model data produced by NASA Goddard Institute for Space Studies is licensed under a Creative Commons Attribution ShareAlike 4.0 International License (https://creativecommons.org/licenses). Consult https://pcmdi.llnl.gov/CMIP6/TermsOfUse for terms of use governing CMIP6 output, including citation requirements and proper acknowledgment. Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file) and at https:///pcmdi.llnl.gov/. The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.    cmor_version      3.3.2      CDO       ?Climate Data Operators version 1.9.3 (http://mpimet.mpg.de/cdo)          time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 2015-1-1    calendar      365_day    axis      T           P   	time_bnds                             X   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  �   height               standard_name         height     	long_name         height     units         m      positive      up     axis      Z           H   tas                    
   standard_name         air_temperature    	long_name         Near-Surface Air Temperature   units         K      coordinates       height     
_FillValue        `�x�   missing_value         `�x�   comment       0near-surface (usually, 2 meter) air temperature    cell_methods      area: time: mean       cell_measures         area: areacella    history       �2020-08-26T09:00:53Z altered by CMOR: Treated scalar dimension: 'height'. 2020-08-26T09:00:53Z altered by CMOR: replaced missing value flag (-1e+30) with standard missing value (1e+20).         ,  h@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     @       @h�     @b�     @n`     C��C� �C�/�C� �C�	fC���C�$�C��C�<%C���C�m@��     @�      @�      C�JC�C��C���C��7C�>�C� -C��;C�"C��CC��@��     @��     @�h     C��,C���C�>C��C��yC�16C��C�'mC�W�C��iC�rh@�.     @�x     @��     C���C���C�2�C�#�C�cC�uC�=�C�9C�G�C�x#C��@��     @�,     @��     C��nC��C�-�C��C��C���C�3C�C�/oC�wC��&@��     @��     @�(     C��!C�	�C�UC�МC��=C�G�C�
�C�	C�N�C�؍C�K�@��     @�J     @�     C�:C�?(C�G=C��KC��RC�z]C�\�C�TYC�?�C�rC�+@�     @�$     @��     C�
cC��C�"MC��C��C�x"C�(�C�� C�gC���C�c�@�Y     @��     @��     C��C�*EC�@zC��C��C�n_C��C�PC�N�C��:C��@�3     @��     @��     C�)�C�,�C�+�C��AC�ʺC�XC�9�C�G�C���C�	pC�|�@�     @��     @�j     C���C�&C�c0C��C���C�m�C�/dC�2qC�B�C��^C�$!@�s�    @�F     @��     C��=C��C�WjC�%�C�'�C���C�I�C�(�C�WTC��{C���@���    @��     @�     C�?�C�dnC���C�1=C��C�n*C�.C�O"C���C�)~C�Ǧ@�M�    @�      @�|     C�5!C�HC�l[C�2�C�8�C���C�}BC�m�C���C�ugC��@���    @��     @��     C�mC�7_C�� C�\�C���C��C��C�^}C�k?C��:C�k�@�'�    @��     @�V     C��C�0BC��TC�b�C�w�C���C���C�x�C���C��C�N@���    @�g     @��     C�.>C��C�#�C���C� 'C�ǎC���C���C��mC�A?C��@��    @��     @�0     C�e�C�u�C��3C�-�C�?�C���C���C���C���C��*C�l"@�n�    @�A     @��     C�cC�y�C��UC�H�C�1C��<C��(C��@C���C�3�C��|@�ۀ    @��     @�
     C�L�C�q�C���C�?�C�
�C��GC��'C��C��{C��gC�l�@�H�    @�     @�w     C�<,C�V�C�sC�lC���C���C��ZC��PC��iC�BC��+@���    @��     @��     C�Q~C�e�C��C�Q�C�J�C��cC��jC��]C���C���C��w@�@    @��     @�(�    C���C���C���C�9zC��C��0C�nLC���C���C���C���@���    @��     @��     C�BC�e�C��zC�m�C�kqC�XC���C��C�_C�cgC��@�~@    @�g�    @���    C�Q�C�[C�yJC�@�C�J<C��%C���C��3C�zC��KC��'@�4�    @�     @�L     C�i�C��	C��sC���C��C��C��C��
C���C�PvC��(@��@    @�Ԁ    @��    C�>�C�tZC��eC���C���C�%C��xC���C���C�C�C���@á�    @Ë     @ù     C�NWC��KC��C��@C�͕C�A�C��QC���C��?C�aC�ņ@�X@    @�A�    @�o�    C�YOC�~�C���C��MC���C�C���C���C�ӪC�ldC���@��    @��     @�&     C�|�C��C��FC���C���C��C���C�z-C���C�3�C��k@��@    @Ů�    @�܀    C�e�C��TC���C��C���C��5C��FC��VC��C��/C�B@�{�    @�e     @Ɠ     C�UC��;C��nC���C���C�.�C��C��C��C��C��@�2@    @��    @�I�    C�}VC���C���C���C���C��C���C���C��IC�o�C�ی@���    @��     @�      C���C��"C���C�v�C���C�:�C�-!C�?RC�n!C���C��@ȟ@    @Ȉ�    @ȶ�    C���C��C��6C���C��{C�_JC�-�C�2C�1�C��xC��@@�U�    @�?     @�m     C��KC���C��IC��=C���C�.:C��C��C�,�C��
C���@�@    @���    @�#�    C�}FC���C��C��C���C�M�C�
	C���C��(C�B+C���@���    @ʬ     @��     C��qC��vC���C���C���C�#�C��WC��nC��C��C��E@�y@    @�b�    @ː�    C��8C�ŅC��wC���C�C�|vC��C�HC�6wC���C�/�@�/�    @�     @�G     C��C���C��C�ʟC���C�,�C���C�&�C��C�E:C�z�@��@    @�π    @���    C�w_C�� C�!FC��XC���C�]WC���C�˜C���C�H\C��;@͜�    @͆     @ʹ     C���C���C�
RC��tC���C�AC��~C���C�aC���C���@�S@    @�<�    @�j�    C��C���C�*1C��C��C�=7C��=C��BC�4�C�ϴC��@�	�    @��     @�!     C��C��ZC�hC���C���C�-�C�	C�5C�fuC���C�x@��@    @ϩ�    @�׀    C���C��C�K	C��C�
C�Y�C��	C��C���C���C�_@�;`    @�0     @�G     C���C�<C�0�C��C�� C�_~C�:C��C�=�C���C��@Ж�    @Ћ@    @Т@    C��BC��DC�O�C��C��C��<C�-!C� �C�PC���C�@���    @��    @���    C���C��NC�?C��C��C�U�C��C��lC�FC��yC��,@�M     @�A�    @�X�    C��`C���C�یC��AC���C�{C�,�C�@7C���C�.C�I�@Ѩ`    @ѝ     @Ѵ     C�ػC�
C�S{C�0�C�P�C��#C���C�JFC�-�C�dRC��@��    @��@    @�@    C���C���C�EC�<�C�u�C��C�V�C���C���C�[^C��@�^�    @�S�    @�j�    C��C��C�|C���C���C�`�C�-0C�?C��C��C�g@Һ     @Ү�    @���    C��zC�oC�IMC�7=C�h�C�ҿC�^C�2C�gWC��C�U)@�`    @�
     @�!     C�}C��C�.?C���C�	�C��wC�WLC�H=C�}�C��FC��@�p�    @�e@    @�|@    C���C�8rC�o"C�(�C��C�s�C�XC��C�$C��mC�n�@���    @���    @�׀    C��,C��C�ciC�<�C�/C�t�C�	�C��C���C�ZC���@�'     @��    @�2�    C���C�� C�(�C�HC��C��)C�E�C�'mC�[1C��!C�7!@Ԃ`    @�w     @Ԏ     C�WC�"C�:�C�ߜC��C�cSC�@�C�eVC���C�G;C���@�ݠ    @��@    @��@    C��6C�.�C�r�C�D�C�?�C���C�^C��C�KUC���C�DL@�8�    @�-�    @�D�    C���C���C�k;C�Y�C�U�C���C�%�C��C�%QC���C�"�@Ք     @Ո�    @՟�    C��:C���C�.C�C�(gC�ĂC�I�C�	�C�;]C��eC�$�@��`    @��     @��     C���C�	�C�+0C�C�C��GC�CBC�5C�.�C��lC��@�J�    @�?@    @�V@    C��C�9C�y�C�L�C�;0C���C�+�C��C�D�C��@C�Rd@֥�    @֚�    @ֱ�    C��zC�,'C���C�D�C�&C���C�E�C�+�C�Z�C�'�C���@�     @���    @��    C��C�8�C�K�C� C��C��FC�G.C�A8C���C�QBC���@�\`    @�Q     @�h     C��C�L�C��xC�'�C��C���C�FYC��C�)C��C�i0@׷�    @׬@    @��@    C�+yC�Y�C��;C�ZC�jC���C�QuC�O=C���C��C�zY@��    @��    @��    C���C�4�C��C���C��
C� �C�Z�C�C�O@C�ދC�A�@�n     @�b�    @�y�    C��C�7iC�{C�5{C�"�C���C�`SC�Q@C���C�.C�\R@��`    @ؾ     @��     C�.�C�O7C���C�_
C�h�C��`C�\�C�3�C�cbC��C�{@�$�    @�@    @�0@    C�A�C�j!C��C�p�C�VmC��eC�jC�W�C��6C��C�hg@��    @�t�    @ً�    C�4'C�T�C��]C�T�C�9dC��C�k\C�?9C�VcC���C�Z�@��     @���    @���    C�8(C�eYC���C�hTC�OMC��1C���C�s�C��XC���C�M9@�6`    @�+     @�B     C�ZC�UEC���C�n�C�_�C���C�S#C�A�C��AC�XKC���@ڑ�    @چ@    @ڝ@    C��C�:C�a�C��C��C���C�^C�H�C���C�$LC�j�@���    @��    @���    C�2C�f�C��LC��lC��8C�ӧC�6JC�C�dAC�>�C��w@�H     @�<�    @�S�    C�4jC�l`C��0C�veC�6�C���C�B�C�@�C���C�7MC��w@ۣ`    @ۘ     @ۯ     C�($C�N�C��xC�3�C�&C��C��C��C�hLC�/�C��Q@���    @��@    @�
@    C�I(C��C���C���C��YC��C�sC�/�C�gMC���C�X�@�Y�    @�N�    @�e�    C�7�C�|9C��C�tC�XTC��"C�{�C��3C���C�xC��@ܵ     @ܩ�    @���    C�M7C�iC��>C�W�C�O=C��C�x
C�`C��9C�ltC��@�`    @�     @�     C�YC��C��nC���C��#C�	C���C��mC�ɱC�\C���@�k�    @�`@    @�w@    C�<C�|�C�?C��/C���C�nC��C�P�C�T�C��SC�iw@���    @ݻ�    @�Ҁ    C��C�VqC���C���C�{cC���C�n�C�=�C�rwC��C�z�@�"     @��    @�-�    C�I�C�{�C��	C�iC�e7C���C���C��AC��C��LC��@�}`    @�r     @މ     C�S�C�~�C��5C��bC�}�C��9C��iC�r9C���C�T�C��