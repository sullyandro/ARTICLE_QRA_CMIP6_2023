################################################################################
# Author: Sullyandro Guimaraes (sullyandro@gmail.com)
# Date:   13.10.2022
# Type:   bash
#
# Description:
# Script to get Era-Interim data from PIK database, interpolate to 2.5dg, compute JJA mean, and zonmean.
# 
################################################################################


# tas

cdo -O -f nc -t ecmwf chname,T2M,tas -seasmean -zonmean -selindexbox,1,144,37,73 -remapbil,griddes-2.5deg -invertlat -cat \
/p/projects/climber3/petri/QRA-CMIP6/ECMWF/t2m-*.grib \
../data/era-interim/tas_2p5dg_jja_zonmean/tas_monthly_era-interim_197901-201412_2p5dg_jja_zonmean.nc


# ua

cdo -O chname,u,ua -zonmean -yearmean -selmonth,6,7,8 -seldate,1979-01-15,2014-12-15 -remapbil,griddes-2.5deg -sellevel,300 \
/p/projects/climber3/atm_data/ERA_Interim/ua/monthly/ERA_Interim_ua_1979-2014_allPr.nc \
../data/era-interim/ua_2p5dg_jja_zonmean/ua_monthly_era-interim_300mb_197901-201412_2p5dg_jja_zonmean.nc

