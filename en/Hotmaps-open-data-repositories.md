<h1>Hotmaps open data repositories</h1>

# Table of Contents

* [Introduction](#introduction)
* [Building stock](#building-stock)
  * [EU building stock](#eu-building-stock)
  * [Heating and cooling demand density map](#heating-and-cooling-demand-density-map)
  * [Gross floor area density map](#gross-floor-area-density-map)
  * [Gross volume density map](#gross-volume-density-map)
  * [Construction periods](#construction-periods)
* [Population](#population)
* [Industry](#industry)
* [Climate](#climate)
* [Renewable energy source potential](#renewable-energy-source-potential)
* [Scenario data](#scenario-data)
* [Technology data](#technology-data)
* [Profiles](#profiles)
  * [Hourly heat load profiles - Generic profiles](#hourly-heat-load-profiles---generic-profiles)
    * [Residential profiles - Generic](#residential-profiles---generic)
    * [Tertiary profiles - Generic](#tertiary-profiles---generic)
    * [Industry profiles - Generic](#industry-profiles---generic)
  * [Hourly heat load profiles - Year specific profiles](#hourly-heat-load-profiles---year-specific-profiles)
    * [Residential profiles - Year specific](#residential-profiles---year-specific)
    * [Tertiary profiles - Year specific](#tertiary-profiles---year-specific)
    * [Industry profiles - Year specific](#industry-profiles---year-specific)
  * [Electricity load profiles](#electricity-load-profiles)
  * [Temperature profiles](#temperature-profiles)
* [Transport](#transport)
* [Data sets for the operation of the Hotmaps toolbox](#data-sets-for-the-operation-of-the-hotmaps-toolbox)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)






# Introduction

Within the scope of the Hotmaps project, data has been collected at various levels (national, regional and local levels). These data  have been  generated for  four  different  sectors:  residential  (single family  houses, multifamily houses,  and  apartment  blocks),  service  (offices,  trade,  education, health, hotels and restaurants,  and other non-residential buildings),  industry (iron and steel, non-ferrous metals, paper and printing, non-metallic minerals, chemical industry, food, drink and  tobacco,  engineering  and  others  not classified),and  transport (passenger  transport -public, private, rail and freight transport -heavy goods and light commercial vehicles).

All the above-mentioned data sets are stored in Hotmaps data repositories on GitLab and can be accessed and downloaded form there. The Hotmaps data repositories are extensive and composed of more than 70 repositories. In order to provide a better overview of all Hotmaps repositories, here, we clustered them into different classes and provided the direct link to them. For detailed explanations on data collection, methodologies, references, assumptions and limitations of Hotmaps data sets refer to this [report](https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf) [1].


[**`To Top`**](#table-of-contents)

# Building stock

## EU building stock
* [Building stock at NUTS 0 level - Residential and service sectors](https://gitlab.com/hotmaps/building-stock)

[**`To Top`**](#table-of-contents)

## Heating and cooling demand density map
* [Final energy demand density for space heating and domestic hot water - **Residential**](https://gitlab.com/hotmaps/heat/heat_res_curr_density)
* [Final energy demand density for space heating and domestic hot water - **Non-Residential**](https://gitlab.com/hotmaps/heat/heat_nonres_curr_density)
* [Final energy demand density for space heating and domestic hot water - **Total**](https://gitlab.com/hotmaps/heat/heat_tot_curr_density)
* [Useful energy demand for space heating and domestic hot water at different NUTS levels](https://gitlab.com/hotmaps/regional_demand)

    🔺 `The data is coming from ESPON Project. I guess it should be final energy demand instad of useful energy demand.`

* [Useful energy demand and Final energy consumption for space heating, space cooling and domestic hot water at NUTS0 level](https://gitlab.com/hotmaps/space_heating_cooling_dhw_demand)
* [Space cooling needs density map](https://gitlab.com/hotmaps/heat/cool_tot_curr_density)


[**`To Top`**](#table-of-contents)

## Gross floor area density map
* [Building gross floor area density map - **Residential**](https://gitlab.com/hotmaps/gfa_res_curr_density)
* [Building gross floor area density map - **Non-Residential**](https://gitlab.com/hotmaps/gfa_nonres_curr_density)
* [Building gross floor area density map - **Total**](https://gitlab.com/hotmaps/gfa_tot_curr_density)

[**`To Top`**](#table-of-contents)

## Gross volume density map
* [Heated building gross volume density map - **Residential**](https://gitlab.com/hotmaps/vol_res_curr_density)
* [Heated building gross volume density map - **Non-Residential**](https://gitlab.com/hotmaps/vol_nonres_curr_density)
* [Heated building gross volume density map - **Total**](https://gitlab.com/hotmaps/vol_tot_curr_density)

[**`To Top`**](#table-of-contents)

## Construction periods
* [Share of gross floor area in construction periods](https://gitlab.com/hotmaps/construction_periods/share_gfa_per_construction_period/tree/master)

    🔺 `The README file of this repository is incomplete.`

[**`To Top`**](#table-of-contents)

# Population
* [Population distribution in EU28 on hectare (ha) level](https://gitlab.com/hotmaps/pop_tot_curr_density)

[**`To Top`**](#table-of-contents)

# Industry

* [Georeferenced energy-intensive industrial sites](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database)
* [Benchmark data on heating and cooling demand and excess heat potentials of industrial processes](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_industryBenchmarks)

[**`To Top`**](#table-of-contents)

# Climate
* [Annual average humidity at global scale](https://gitlab.com/hotmaps/climate/climate_humidity)
* [Annual average land surface temperature at global scale](https://gitlab.com/hotmaps/climate/climate_land_surface_temperature)
* [Annual average wind speed at global scale](https://gitlab.com/hotmaps/climate/climate_wind_speed)
* [Monthly average precipitation at global scale](https://gitlab.com/hotmaps/climate/climate_precipitation)
* [Monthly solar radiation on optimally inclined surfaces at global scale](https://gitlab.com/hotmaps/climate/climate_solar_radiation)

    🔺 `Readme is misleading. in the table within the readme file, it is written annual value. However, in the explanation it is written monthly values!`

* [Average heating degree days (HDD) and cooling degree days (CDD) at NUTS 3 level](https://gitlab.com/hotmaps/climate/climate_heating_cooling_degreeday)
* [Heating degree days (HDD) for the reference period 2002-2012 on hectare level](https://gitlab.com/hotmaps/climate/HDD_ha_curr)

    🔺 `Reference period in title and in the description within the readme file does not match`

* [Cooling degree days (CDD) for the reference period 1999-2014 on hectare level](https://gitlab.com/hotmaps/climate/CDD_ha_curr)

    🔺 `Reference period in title and in the description within the readme file does not match`


[**`To Top`**](#table-of-contents)

# Renewable energy source potential
* [Shallow geothermal energy potential - Based on conductivity, ground temperature and seasonal length - Theorethical](https://gitlab.com/hotmaps/potential/potential_geothermal_raster)
* [Shallow geothermal energy potential - From EC co-funded project ThermoMap](https://gitlab.com/hotmaps/potential/potential_shallowgeothermal)
* [Solar Potential - Average solar thermal potential using open-field solar thermal collector](https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_open_field)

🔺 `The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.`

* [Solar Potential - Average solar thermal potential using roof-mounted solar thermal collectors](https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_rooftop)

🔺 `The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.`

* [Solar Potential - Annual global solar radiation on globally inclined surfaces by considering the building footprint](https://gitlab.com/hotmaps/potential/potential_solar)
* [Wind Potential - Total energy potential at NUTS 3 level](https://gitlab.com/hotmaps/potential/potential_wind)
* [Municipal solid waste energy potential](https://gitlab.com/hotmaps/potential/potential_municipal_solid_waste)
* [Biomass energy potential - forest biomass potential (raster)](https://gitlab.com/hotmaps/potential/potential_forest)

    🔺 `In the readme file, explanation of agricultural residues and livestock effluents are provided; but, no data is available for this two.`

* [Biomass energy potential - Agricultural residues, livestock effluents and forestry residues](https://gitlab.com/hotmaps/potential/potential_biomass)
* [Waste water treatment plants energy potential](https://gitlab.com/hotmaps/potential/WWTP)


[**`To Top`**](#table-of-contents)


# Scenario data
* [Energy demand in **industry** until the year 2050 - **Current scenario**](https://gitlab.com/hotmaps/scen_current_industry_demand)
* [Energy demand in **industry** until the year 2050 - **Ambitious scenario**](https://gitlab.com/hotmaps/scen_ambitious_industry_demand)
* [Energy demand in **buildings** until the year 2050 - **Current scenario**](https://gitlab.com/hotmaps/scen_current_building_demand)
* [Energy demand in **buildings** until the year 2050 - **Ambitious scenario**](https://gitlab.com/hotmaps/scen_ambitious_building_demand)
* [Average CO2 emission factors for electricity generation and district heating grids at NUTS 0 level](https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_CO2)
* [Generation shares (nuclear, fossil, renewable) for electricity and district heating at NUTS 0 level](https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_generation_shares)
* [Total conversion efficiencies for electricity and district heating at NUTS 0 level](https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_efficiency_total)


[**`To Top`**](#table-of-contents)


# Technology data
* [Industrial steam generation technologies - Lifetime](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_Lifetime)
* [Industrial steam generation technologies - Capital expenditures (CAPEX)](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_CAPEX)
* [Industrial steam generation technologies - Operational expenditures (OPEX)](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_OPEX)
* [Industrial steam generation technologies - Thermal efficiency](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_ThermalEfficiency)
* [Industrial steam generation technologies - Power to Heat Ratio](https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_PowerToHeatRatio)
* [Heating technology sheet](https://gitlab.com/hotmaps/heating_technologies)

[**`To Top`**](#table-of-contents)


# Profiles

## Hourly heat load profiles - Generic profiles

### Residential profiles - Generic
* [Generic hourly profiles on NUTS 2 level in residential sector - **sanitary hot water**](https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_generic)
* [Generic hourly profiles on NUTS 2 level in residential sector - **space heating demand**](https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_generic)

    🔺 `The title of the repository does not match with the title of the readme file and is misleading!`

* [Generic hourly profiles on NUTS 2 level in residential sector - **space cooling**](https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_generic)


### Tertiary profiles - Generic
* [Generic hourly profiles on NUTS 2 level in tertiary sector - **sanitary hot water demand**](https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_generic)
* [Generic hourly profiles on NUTS 2 level in tertiary sector - **space heating demand**](https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_generic)
* [Generic hourly profiles on NUTS 2 level in tertiary sector - **space cooling demand**](https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_generic)


### Industry profiles - Generic
* [Generic hourly profiles for heat demand on NUTS 0 level in the **paper** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_generic)
* [Generic hourly profiles for heat demand on NUTS 0 level in the **iron and steel** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_generic)
* [Generic hourly profiles for heat demand on NUTS 0 level in the **food and tobacco** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_generic)
* [Generic hourly profiles for heat demand on NUTS 0 level in the **non-metallic minerals** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_generic)
* [Generic hourly profiles for heat demand on NUTS 0 level in the **chemicals and petrochemicals** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_generic)


[**`To Top`**](#table-of-contents)



## Hourly heat load profiles - Year specific profiles

### Residential profiles - Year specific
* [Hourly profile on NUTS 2 level in residential sector in year 2010 for **sanitary hot water**](https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_yearlong_2010)
* [Hourly profile on NUTS 2 level in residential sector in year 2010 for **space heating**](https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_yearlong_2010)
* [Hourly profile on NUTS 2 level in residential sector in year 2010 for **space heating and sanitary hot water**](https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_and_heating_yearlong_2010)
* [Hourly profile on NUTS 2 level in residential sector in year 2010 for **space cooling **](https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_yearlong_2010)



### Tertiary profiles - Year specific
* [Hourly profile on NUTS 2 level in tertiary sector in year 2010 for **sanitary hot water**](https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_yearlong_2010)

    🔺 `In the readme file title, it is written domestic hot water. Since this is for tertiary sector, it should be amended!`

* [Hourly profile on NUTS 2 level in tertiary sector in year 2010 for **space heating**](https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_yearlong_2010)
* [Hourly profile on NUTS 2 level in tertiary sector in year 2010 for **space heating and sanitary hot water**](https://gitlab.com/hotmaps/load_profile_tertiary_shw_and_heating_yearlong_2010)

    🔺 `In the readme file title, it is written domestic hot water. Since this is for tertiary sector, it should be amended!`

* [Hourly profile on NUTS 2 level in tertiary sector in year 2010 for **space cooling**](https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_yearlong_2010)


### Industry profiles - Year specific
* [Hourly profiles for heat demand on NUTS 0 level in year 2018 in the **paper** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_yearlong_2018)
* [Hourly profiles for heat demand on NUTS 0 level in year 2018 in the **iron and steel** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_yearlong_2018)
* [Hourly profiles for heat demand on NUTS 0 level in year 2018 in the **food and tobacco** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_yearlong_2018)
* [Hourly profiles for heat demand on NUTS 0 level in year 2018 in the  **non-metallic minerals** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_yearlong_2018)
* [Hourly profiles for heat demand on NUTS 0 level in year 2018 in the **chemicals and petrochemicals** industry](https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_yearlong_2018)

[**`To Top`**](#table-of-contents)

## Electricity load profiles
* [Annual electricity generation mix on NUTS 0 level](https://gitlab.com/hotmaps/load_electricity/electricity_generation_yearly)
* [Average hourly CO2 emission factor on NUTS 0 level](https://gitlab.com/hotmaps/load_electricity/electricity_emissions_hourly)
* [Hourly electricity prices in the year 2015 on NUTS 0 level](https://gitlab.com/hotmaps/load_electricity/electricity_prices_hourly)
* [Hourly electricity demand in years 2014 to 2017 on NUTS 0 level](https://gitlab.com/hotmaps/load_profile/load_profile_electricity_demand_yearlong_2014_2015_2016_2017)
* [Residual Electricity on NUTS 0 level](https://gitlab.com/hotmaps/load_profile/load_profile_electricity_residual_load_electricity_yearlong_2014_2015_2016_2017)
* [Electricity supply from wind onshore, wind offshore and PV in years 2014 to 2017 on NUTS 0 level](https://gitlab.com/hotmaps/load_profile/load_profile_electricity_wind_on__wind_off__solar_yearlong_2014_2015_2016_2017)


[**`To Top`**](#table-of-contents)


## Temperature profiles
* [Daily average temperature of the year 2010 on NUTS 2 level - **Residential** sites](https://gitlab.com/hotmaps/hotmaps_task_2.7_temperature_profile_daily_avg_household_yearlong_2010)
* [Daily average temperature of the year 2010 on NUTS 2 level - **Industrial** sites](https://gitlab.com/hotmaps/temperature_profile_daily_avg_industry_yearlong_2010)


[**`To Top`**](#table-of-contents)







# Transport
* [Vehicle stock and projections at NUTS 0 level](https://gitlab.com/hotmaps/transport/nuts0)
  * Vehicle stock and projections
  * Electricity need for all transportation modes (electrified transport)

* [Vehicle stock at NUTS 2 level](https://gitlab.com/hotmaps/transport/nuts2)

    🔺 `The README file of this repository is incomplete.`

* [Vehicle stock at city level](https://gitlab.com/hotmaps/transport/city)

    🔺 `The README file of this repository is incomplete.`


[**`To Top`**](#table-of-contents)

# Data sets for the operation of the Hotmaps toolbox
* [Raster for querry on NUTS IDs](https://gitlab.com/hotmaps/nuts_id_number)
* [Hotmaps Local Administrative Boundaries](https://gitlab.com/hotmaps/HotmapsLAU)
* [Hotmaps NUTS Boundaries](https://gitlab.com/hotmaps/NUTS)

    🔺 `Licens from EC is missing in this repository.`


[**`To Top`**](#table-of-contents)

# References
[1] Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Müller (e‐think), Michael Hartner (TUW), Tobias Fleiter, Anna‐Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Reviewed by Lukas Kranzl, Sara Fritz (TUW); [Online Access](https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf)

[**`To Top`**](#table-of-contents)

# How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, Hotmaps-data-repository-structure (May 2019)


[**`To Top`**](#table-of-contents)

# Authors and reviewers

This page is written by Mostafa Fallahnejad\*.

- [x] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)

Institute of Energy Systems and Electrical Drives

Gusshausstrasse 27-29/370

1040 Wien

[**`To Top`**](#table-of-contents)

# License

Copyright © 2016-2019: Mostafa Fallahnejad

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

[**`To Top`**](#table-of-contents)

# Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.



[**`To Top`**](#table-of-contents)

