<h1>National Level - Step 2: Costs and potentials for district heating in representative regions or cities</h1>

[**`Scenario Toolchain Steps`**](guide-national-level-comprehensive-assessment-eed#part-iii-analysis-of-the-economic-potential-for-efficiency-in-heating-and-cooling_different-steps)
[**`Previous step`**](step-1-identification-of-different-representative-cases-for-district-heating)
[**`Next step`**](Step-3-Calculation-of-decentral-heat-supply)
<br/>  

## Table of Contents
* [Introduction](#introduction)
* [Costs and potentials for district heating in representative regions or cities](#costs-and-potentials-for-district-heating-in-representative-regions-or-cities)
  * [Economic assessment of the potential for district heating](#costs-and-potentials-for-district-heating-in-representative-regions-or-cities_economic-assessment-of-the-potential-for-district-heating)
  * [Estimation of costs for the transport of excess heat to district heating areas](#costs-and-potentials-for-district-heating-in-representative-regions-or-cities_estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas)
  * [Development of future heat load profiles](#costs-and-potentials-for-district-heating-in-representative-regions-or-cities_development-of-future-heat-load-profiles)
  * [Calculation of costs and emissions of heat supply in district heating](#costs-and-potentials-for-district-heating-in-representative-regions-or-cities_calculation-of-costs-and-emissions-of-heat-supply-in-district-heating)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## Introduction
This is the second step of the analysis at national level.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Costs and potentials for district heating in representative regions or cities

For the identified representative cities/areas analyses on the costs and potentials for the heat supply with district heating can be performed. For these analyses, Hotmaps provides various default data layers in the Hotmaps database as well as different Calculation Modules (CMs). Also, own data can be uploaded and used. These analyses can consist of the following steps:
* Assess the economic potential for district heating networks
* Estimate the costs for the transport of excess heat to district heating areas
* Develop future heat load profiles
* Calculate costs and emissions of heat supply in district heating

The following figure shows this procedure graphically and shows the various data sources and calculation modules that can be used.

![](../images/Hotmaps_ApproachNational_Step2.png)
*Figure: Analysis of costs and potentials for district heating in representative cities/regions (Step 2)*

In the following subchapters, the different steps in this procedure are described in more detail.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Economic assessment of the potential for district heating

For the representative cities/areas, an economic assessment of district heating can be performed to gain more detailed insights on the costs and economic feasibility of district heating and the amount of heat potentially supplied by district heating in the areas. For this purpose the CM - District heating potential: economic assessment can be used. This module generates a map of potential district heating areas based on an assessment of the heat distribution costs. An analysis of the feasibility of district heating in the analysed areas can be assessed in the following way:

* Adapt network construction costs according to experiences in your region/country of interest
* Calculate the average heat distribution costs and district heating demands for different input parameters
* Vary e.g. the following important influencing factors:
    * Heat savings over the analysis period
    * Market shares of district heating
    * The threshold for acceptable heat distribution costs
    * Network construction costs
    * Depreciation time and interest rate

The scenarios can be used to analyse the influence of the different factors on the heat distribution costs in district heating systems in the different representative cities/areas. For different settings of depreciation time and interest rate, one scenario of district heating expansion per representative city/area should be selected for further analysis.

The outcomes of this step are the heat demand for district heating [GWh/yr] and the heat distribution costs [EUR/MWh] in each of the representative cities/areas. These results will then be used in the overall scenario comparison in step 4.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Estimation of costs for the transport of excess heat to district heating areas

In order to estimate the costs of transporting excess heat from potential sources outside of district heating areas to potential district heating areas, the CM - Excess heat transport potential can be used. The module yields levelised costs of excess heat transported to the district heating grid [EUR/MWh]. This can further be used in the next step of calculating heat supply costs in district heating.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Development of future heat load profiles

Renovation of buildings leads to reductions in energy demand for space heating. This also affects the load profiles of heat demand in the district heating systems: the peak demands in winter decrease and the full load hours increase due to higher shares of hot water generation on the overall heat demand. With the CM - Heat load profiles future heat load profiles can be developed according to different heat-saving levels. This can be done based on load profiles provided in the Hotmaps database (default profiles for all NUTS2 regions in Europe) or based on your own profiles uploaded into the toolbox. The resulting load profiles are then used in the next step, the calculation of costs and emission of heat supply in district heating with the dispatch module.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Calculation of costs and emissions of heat supply in district heating

The costs and emissions of heat supply in the district heating system depend on the interaction of the different installed supply capacities. Hereby the least-cost combination of capacities and their operation over time is of interest. In order to analyse the so-called hourly dispatch of different supply technology combinations and the effect on the overall costs and emissions of heat supply in district heating the CM - District heating supply dispatch can be used. With the module several scenarios with the following input data combinations can be calculated in order to derive costs and benefits:

* Combinations of different technologies in supply portfolios:
    * Excess heat from industry (with or without heat pump)
    * Waste incineration
    * High-efficiency cogeneration
    * Solar thermal
    * Geothermal
    * Biomass
    * Heat pumps with different heat sources as e.g.
        * wastewater treatment plants
        * river water
        * excess heat from data centres
* Prices scenarios:
    * for prices of different energy carriers 
    * for prices CO2 emissions

The calculations can be used to identify beneficial supply portfolios in the different representative cities/areas and their sensitivity to important influencing parameters like energy carrier and CO2 prices or interest rate and depreciation time.

The outcomes of this step are the heat supply costs to the district heating system [EUR/MWh] in each of the representative cities/areas and the related CO2 emissions [kt/yr]. These results will then be used in the overall scenario comparison in step 4.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## How to cite
Marcus Hummel, Giulia Conforto, in Hotmaps-Wiki, Guidelines for using the Hotmaps toolbox for analyses at national level (August 2020)

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Authors and reviewers
This page is written by Marcus Hummel and Giulia Conforto\*.
- This page was reviewed by ...\**.

\* [e-think](https://e-think.ac.at/),
Zentrum f. Energiewirtschaft und Umwelt,
Argentinierstrasse 18/10,
1040 Wien

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## License
Copyright © 2016-2019: Marcus Hummel

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>




<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/GL-national)<sup>\*</sup> 

<sup>\*</sup> machine translated

[**`Scenario Toolchain Steps`**](guide-national-level-comprehensive-assessment-eed#part-iii-analysis-of-the-economic-potential-for-efficiency-in-heating-and-cooling_different-steps)
[**`Previous step`**](step-1-identification-of-different-representative-cases-for-district-heating)
[**`Next step`**](Step-3-Calculation-of-decentral-heat-supply)
