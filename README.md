# M22_QRAindex
Routines and main data for the QRA index paper


Project developed for the production of the results aiming an update on the quasi-resonant amplification paper (Mann et al., 2018), now including the outcomes from CMIP6.


- Directiory "scripts" [all routines]


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


	-> Figures
		
		plot_serie_cmips_tas.py
		plot_serie_cmips_tas_anom.py
		plot_serie_cmips_tas_anom_by_lat.py
		plot_serie_cmips_tas_anom_arctic_amplification.py
		
		plot_serie_cmips_qra_index.py
		plot_serie_cmips_qra_index_rescaled.py
		plot_serie_cmips_qra_index_onto_ua.py
		plot_serie_concatenation_cmips_qra_index_trend.py
		
		plot_map_cmips_north_hemisphere_qra_index_trend.py
		

- Directiory "data" [all data]


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
				


- Directiory "figures" [all figures]









- References:

Mann ME, Rahmstorf S, Kornhuber K, Steinman BA, Miller SK, Petri S, Coumou D. Projected changes in persistent extreme summer weather events: The role of quasi-resonant amplification. Sci Adv. 2018 Oct 31;4(10):eaat3272. https://www.science.org/doi/10.1126/sciadv.aat3272.

Mann ME, Rahmstorf S, Kornhuber K, Steinman BA, Miller SK, Petri S, Coumou D. Supplementary Materials for Projected changes in persistent extreme summer weather events: The role of quasi-resonant amplification. https://www.science.org/doi/suppl/10.1126/sciadv.aat3272/suppl_file/aat3272_sm.pdf

Mann, M., Rahmstorf, S., Kornhuber, K. et al. Influence of Anthropogenic Climate Change on Planetary Wave Resonance and Extreme Weather Events. Sci Rep 7, 45242 (2017). https://doi.org/10.1038/srep45242

Kornhuber, K., Petoukhov, V., Petri, S., Rahmstorf, S., Coumou, D. (2017). Evidence for wave resonance as a key mechanism for generating high-amplitude quasi-stationary waves in boreal summer. Climate Dynamics, 49, 5-6, 1961-1979. DOI: 10.1007/s00382-016-3399-6






























































