# Snow-Properties-Ku-Band-Backscatter-
Code and data for _Simulating snow properties and Ku-band backscatter across the forest-tundra ecotone_, Woolley et al., [2025]: 

Raw SVS2-Crocus output for multi-layer and 3-layer simulations are available on request: georgina.j.woolley@northumbria.ac.uk

# Abstract 
Sophisticated snowpack models are required to provide accurate estimation of snowpack properties across the forest-tundra ecotone where in situ measurements are sparse. As snowpack properties strongly influence radar scattering signals, accurate simulation is crucial for the success of spaceborne radar missions to retrieve snow water equivalent (SWE). In this study we evaluate the ability of default and Arctic versions of Crocus embedded within the Soil, Vegetation and Snow version 2 (SVS2-Crocus) land surface model to simulate snowpack properties (e.g. depth, density, SWE, specific surface area; SSA) across a 40-km transect of the Northwest Territories, Canada, using two winter seasons (2021-22 & 2022-23) of in situ measurements. An ensemble of simulated snowpack properties (120 members from default and Arctic SVS2-Crocus) was used in the Snow Microwave Radiative Transfer (SMRT) model to simulate Ku-band (13.5 GHz) backscatter. Modelled backscatter using multi-layer SVS2-Crocus snowpack simulations were compared to backscatter using a simplified 3-layer radar-equivalent snowpack. Results highlight that Arctic SVS2-Crocus wind-induced compaction modifications were spatially transferable across the forest-tundra ecotone, reducing the RMSE of surface density by an average of 29%. Basal vegetation modifications were less effective in simulating low-density basal snow layers at all sites (2022 & 2023; default RMSE: 67 kg m-3; Arctic RMSE: 69 kg m-3) but were necessary to simulate a physically representative Arctic density profile. SVS2-Crocus underestimated SSA leading to high errors in the simulation of snow backscatter (2022 & 2023; default RMSE 3.5 dB; Arctic RMSE: 4.8 dB). RMSE of backscatter was reduced by implementing a minimum SSA value (8.7 m2 kg-1; 2022 & 2023; default RMSE: 1.5 dB; Arctic RMSE: 1.5 dB). A radar-equivalent snowpack was effective in retaining the scattering behaviour of the multi-layer snowpack (RMSE < 1 dB) providing a means to estimate SWE with increased computational efficiency.

# Gitrepo Breakdown

## The gitrepo contains subfolders: 

- Measurements = Contains snow depth, SWE, snow temperature and profiles of density and SSA measurements at 7 sites across the forest-tundra ecotone.
- Simulated_Output = Contains Arctic and default SVS2-Crocus simulations of snow depth, SWE, bulk density and profiles of density and SSA.
- Code = Code to create figures including SMRT simulations.
- Ku-band Backscatter = Pit simulated backscatter and SVS2-Crocus simulated backscatter by Arctic and default SVS2-Crocus.
- Met_Data = Meterological forcing data for each site from the High Resolution Deterministic Prediction (HRDPS). September 2020 - July 2023 with 5 years of model spin-up (from September 2015).

- ## Matlab Functions:

*John Bockstege (2024). Shade area between two curves (https://www.mathworks.com/matlabcentral/fileexchange/13188-shade-area-between-two-curves), MATLAB Central File Exchange. Retrieved April 24, 2024.
* SMRT https://smrt-model.science/ Picard (2018) https://doi.org/10.5194/gmd-11-2763-2018
