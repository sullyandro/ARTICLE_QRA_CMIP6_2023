CDF      
      time       bnds      lon       lat             CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.0     history      5Sat Dec 31 08:18:57 2022: cdo -s -O timmean -seldate,1979-01-15,2014-12-31 ../data/era-interim//ua_2p5dg_jja_zonmean_lat-25n-75n/ua_monthly_era-interim_197901-201412_2p5dg_jja_zonmean_lat-25n-75n.nc ../data/era-interim//ua_2p5dg_jja_zonmean_lat-25n-75n_timmean-1979-2014/ua_monthly_era-interim_197901-201412_2p5dg_jja_zonmean_lat-25n-75n_timmean-1979-2014.nc
Thu Dec 29 06:39:36 2022: cdo -s -O sellonlatbox,,,25,75 tmp.nc ../data/era-interim//ua_2p5dg_jja_zonmean_lat-25n-75n/ua_monthly_era-interim_197901-201412_2p5dg_jja_zonmean_lat-25n-75n.nc
Thu Dec 29 06:39:35 2022: cdo -s -O remapbil,grid_5dg.nc ../data/era-interim//ua_2p5dg_jja_zonmean/ua_monthly_era-interim_197901-201412_2p5dg_jja_zonmean.nc tmp.nc
Sun Sep 12 07:55:49 2021: ncrename -v u,ua ../data_2/era-interim/ua/ua_monthly_era-interim_197901-201412_jja_zonmean_2.5dg.nc
Thu Jun 10 12:12:12 2021: cdo invertlat -selindexbox,1,1,1,37 -zonmean -seasmean -selmon,6,7,8 -seldate,1979-01-01,2014-12-31 uwnd.daily_300mb_1979-2016.del29feb.nc uwnd.zonmean-seasmean-NH-JJA-300mb_1979-2014.nc
Wed Mar 01 15:25:25 2017: _cdo mergetime uwnd.daily_300mb_1979-2015.del29feb.nc uwnd.300mb.2016.daily.del29feb.nc uwnd.daily_300mb_1979-2016.del29feb.nc
Wed Mar 01 15:25:02 2017: _cdo daymean uwnd.300mb.2016.del29feb.nc uwnd.300mb.2016.daily.del29feb.nc
Wed Mar 01 15:15:19 2017: _cdo sellevel,300 uwnd.2016.del29feb.nc uwnd.300mb.2016.del29feb.nc
Wed Mar 01 15:10:51 2017: _cdo selvar,u u.v.t.2016.del29feb.nc uwnd.2016.del29feb.nc
Wed Mar 01 15:10:01 2017: _cdo del29feb _grib2netcdf-atls18-95e2cf679cd58ee9b4db4dd119a05a8d-DERzQN.nc u.v.t.2016.del29feb.nc
2017-03-01 10:56:38 GMT by grib_to_netcdf-2.1.0: grib_to_netcdf /data/data01/scratch/_mars-atls19-95e2cf679cd58ee9b4db4dd119a05a8d-3M0ZYS.grib -o /data/data01/scratch/_grib2netcdf-atls18-95e2cf679cd58ee9b4db4dd119a05a8d-DERzQN.nc -utime      NCO       _netCDF Operators version 4.7.9 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         hours since 1900-1-1 00:00:00      calendar      365_day    axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           H   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         X  P   ua                        standard_name         eastward_wind      	long_name         U component of wind    units         m s**-1    
add_offset        @13.   scale_factor      ?g��34��   
_FillValue        �     missing_value         �     cell_methods      
time: mean          �@v�     @9      @>      @A�     @D      @F�     @I      @K�     @N      @P@     @Q�     @R�     A)�4    A%;    A.�d    �^�������A�������V�Q�p  