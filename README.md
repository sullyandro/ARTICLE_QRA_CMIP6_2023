
# Article Material

Routines and main data for the article production.

## Increased projected changes in quasi-resonant amplification and persistent summer weather extremes in the latest multimodel climate projections

### Authors
Sullyandro Guimarães, Michael Mann, Stefan Rahmstorf, Stefan Petri, Byron A. Steinman, Daniel J. Brouillette, Shannon Christiansen, and Xueke Li.

### Running head 
Scientific Reports (SREP), Collection Compound hazards, 2023.

### Goals
Our manuscript reports a further analysis of the phenomenon of quasi-resonant amplification (QRA) linked to persistent summer extreme weather events in the Northern Hemisphere. We compare results of high emission scenarios from CMIP5 and CMIP6 climate projections, using a previously developed fingerprint-based semi-empirical approach to project future occurrence of QRA events based on a QRA index derived from the zonally averaged surface temperature field. 


### Organizational structure of codes and data
 

- Directiory "scripts"


	-> Data aquisition and preparation

		data_prep_era-interim_2p5dg_jja_zonmean.sh
		data_prep_cmips_2p5dg_jja.py        
		data_prep_cmips_2p5dg_jja_zonmean.py
		data_prep_cmips_2p5dg_jja_zonmean_lat-25n-75n.py
		

	-> Computation and analysis
						
		data_comp_obs_m18_jja_zonmean_lat-25n-75n_anom.py
		data_comp_cmips_2p5dg_jja_zonmean_lat-25n-75n_anom.py
		data_comp_cmips_obs_2p5dg_jja_zonmean_lat-25n-75n_qra_index.py
		data_comp_cmips_obs_2p5dg_jja_zonmean_lat-25n-75n_qra_index_with_no-events_trend.py
		
		data_comp_cmips_2p5dg_jja_zonmean_lat-25n-75n_qra_index_onto_ua.py
						
		** data_comp_derivative...py


	-> Figures production
		
		plot_serie_cmips_tas.py
		plot_serie_cmips_tas_anom.py
		plot_serie_cmips_tas_anom_by_lat.py
		plot_serie_cmips_tas_anom_arctic_amplification.py
		
		plot_serie_cmips_qra_index.py
		plot_serie_cmips_qra_index_rescaled.py
		plot_serie_cmips_qra_index_onto_ua.py
		plot_serie_concatenation_cmips_qra_index_trend.py
		
		plot_map_cmips_north_hemisphere_qra_index_trend.py
		

- Directiory "data"

	-> Data prepared or used.

	data/
	
		cmip5/
		
			historical/
		
				tas_2p5dg_jja/
				tas_2p5dg_jja_zonmean/
				tas_2p5dg_jja_zonmean_lat-25n-75n/
				tas_2p5dg_jja_zonmean_lat-25n-75n_anom/
				tas_2p5dg_jja_zonmean_lat-25n-75n_QRAindex/
				tas_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled_1979-2019/
					tas_Amon_ACCESS1-0_historical_r1i1p1_185001-200512_2p5dg_jja_zonmean_lat-25n-75n_QRAindex_rescaled-1979-2019.nc
					
			trend_analysis/
						
		cmip6/
		
		era-interim/
		
		Mann_et_al_2018/
		
		Kornhuber_et_al_2017/
				


- Directiory "figures"

	-> Generated figures for the article.


### Main references:

Mann ME, Rahmstorf S, Kornhuber K, Steinman BA, Miller SK, Petri S, Coumou D. Projected changes in persistent extreme summer weather events: The role of quasi-resonant amplification. Sci Adv., 4(10), eaat3272. https://www.science.org/doi/10.1126/sciadv.aat3272 (2018)

Mann ME, Rahmstorf S, Kornhuber K, Steinman BA, Miller SK, Petri S, Coumou D. Supplementary Materials for Projected changes in persistent extreme summer weather events: The role of quasi-resonant amplification. https://www.science.org/doi/suppl/10.1126/sciadv.aat3272/suppl_file/aat3272_sm.pdf (2017)

Mann, M., Rahmstorf, S., Kornhuber, K. et al. Influence of Anthropogenic Climate Change on Planetary Wave Resonance and Extreme Weather Events. Sci Rep 7, 45242. https://doi.org/10.1038/srep45242 (2017)

Kornhuber, K., Petoukhov, V., Petri, S., Rahmstorf, S., Coumou, D. Evidence for wave resonance as a key mechanism for generating high-amplitude quasi-stationary waves in boreal summer. Climate Dynamics, 49, 5-6, 1961-1979. https://doi.org/10.1007/s00382-016-3399-6 (2017)






























































