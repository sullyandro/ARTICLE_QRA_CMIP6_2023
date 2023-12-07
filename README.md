
# Article Material

Routines and main data for the article production.

## Increased projected changes in quasi-resonant amplification and persistent summer weather extremes in the latest multimodel climate projections

### Authors
Sullyandro O. Guimarães, Michael E. Mann, Stefan Rahmstorf, Stefan Petri, Byron A. Steinman, Daniel J. Brouillette, Shannon Christiansen, and Xueke Li.

### Running head 
Scientific Reports (SREP), Collection Compound hazards, 2023.

### Goals
Our manuscript reports a further analysis of the phenomenon of quasi-resonant amplification (QRA) linked 
to persistent summer extreme weather events in the Northern Hemisphere. We compare results of high emission 
scenarios from CMIP5 and CMIP6 climate projections, using a previously developed fingerprint-based semi-empirical 
approach to project future occurrence of QRA events based on a QRA index derived from the zonally averaged surface temperature field. 


### Organizational structure of codes and data
 
 
- Directory "scripts"
	
	-> Computations and analysis
						
		[Step  1] data_comp_obs_m18_jja_zonmean_lat-25n-75n_anom.py
		[Step  2] data_comp_cmips_2p5dg_jja_zonmean_lat-25n-75n_anom_continuous.py
		[Step  3] data_comp_cmips_obs_2p5dg_jja_zonmean_lat-25n-75n_qra_index_continuous.py
		[Step  4] data_comp_cmips_obs_2p5dg_jja_zonmean_lat-25n-75n_qra_index_with_no-events_trend_continuous.py
		[Step  5] data_comp_cmips_2p5dg_jja_zonmean_lat-25n-75n_qra_index_trend_continuous.py
		[Step  6] data_comp_cmips_2p5dg_jja_zonmean_lat-25n-75n_qra_index_onto_ua_continuous.py

	-> Figures production
		
		[Step  7] plot_serie_cmips_tas_continuous.py
		[Step  8] plot_serie_cmips_tas_anom_continuous.py
		[Step  9] plot_serie_cmips_tas_anom_arctic_amplification_continuous.py
		[Step 10] plot_serie_cmips_qra_index_continuous.py
		[Step 11] plot_serie_cmips_qra_index_rescaled_continuous.py
		[Step 12] plot_serie_cmips_qra_index_onto_ua_continuous.py
		[Step 13] plot_map_cmips_north_hemisphere_qra_index_trend_continuous.py
		[Step 14] plot_series_metrics_table.py
	
	It is important to follow the sequence of steps as given by the numbers when running for the first time.
	The files generated in step 1 are required for step 2, and so on.
	
	The scripts listed here were made and executed in Python version 3.9.1.
	
	Python libraries used are listed at the beginning of each Python script.


- Directory "data"

	-> Data prepared or used.


- Directory "figures"

	-> Generated figures for the article.


### Additional information
For requesting additional material or information, contact the authors.
In this project, the authors used data from several sources, such as CMIP5, CMIP6, ERA-Interim, and ERA5.
The citation of each data source is refered in the article.
the authors are grateful to the institutes and projects that make the data available.


### Main references:

Mann ME, Rahmstorf S, Kornhuber K, Steinman BA, Miller SK, Petri S, Coumou D. Projected changes in persistent extreme summer weather events: The role of quasi-resonant amplification. Sci Adv., 4(10), eaat3272. https://www.science.org/doi/10.1126/sciadv.aat3272 (2018)

Mann ME, Rahmstorf S, Kornhuber K, Steinman BA, Miller SK, Petri S, Coumou D. Supplementary Materials for Projected changes in persistent extreme summer weather events: The role of quasi-resonant amplification. https://www.science.org/doi/suppl/10.1126/sciadv.aat3272/suppl_file/aat3272_sm.pdf (2017)

Mann, M., Rahmstorf, S., Kornhuber, K. et al. Influence of Anthropogenic Climate Change on Planetary Wave Resonance and Extreme Weather Events. Sci Rep 7, 45242. https://doi.org/10.1038/srep45242 (2017)

Kornhuber, K., Petoukhov, V., Petri, S., Rahmstorf, S., Coumou, D. Evidence for wave resonance as a key mechanism for generating high-amplitude quasi-stationary waves in boreal summer. Climate Dynamics, 49, 5-6, 1961-1979. https://doi.org/10.1007/s00382-016-3399-6 (2017)






























































