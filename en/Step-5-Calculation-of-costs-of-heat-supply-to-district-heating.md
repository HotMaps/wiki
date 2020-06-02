<h1>Step 5: Calculation of costs of heat supply to district heating</h1>

[[/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating/Hotmaps_Local_Toolchain_Step_5.png]]
*The steps to calculate the costs of heat supply to district heating are highlighted above*

### Estimation of costs for the transport of excess heat to district heating areas
In order to estimate the costs of transporting excess heat from potential sources outside of district heating areas to potential district heating areas the [CM - Excess heat transport potential](https://wiki.hotmaps.hevs.ch/en/CM-Excess-heat-transport-potential) can be used. The module yields levelised costs of excess heat transported to the district heating grid [EUR/MWh]. This can further be used in the next step of calculating heat supply costs in district heating.

### Development of future heat load profiles
Renovation of buildings leads to reductions in energy demand for space heating. This also affects the load profiles of heat demand in the district heating systems: the peak demands in winter decrease and the full load hours increase due to higher shares of hot water generation on the overall heat demand. With the [CM - Heat load profiles](https://wiki.hotmaps.hevs.ch/en/CM-Heat-load-profiles) future heat load profiles can be developed according to different heat-saving levels. This can be done based on load profiles provided in the Hotmaps database (default profiles for all NUTS2 regions in Europe) or based on own profiles uploaded into the toolbox. The resulting load profiles are then used in the next step, the calculation of costs and emission of heat supply in district heating with the dispatch module.

### Calculation of costs and emissions of heat supply in district heating

The costs and emissions of heat supply in district heating system depends on the interaction of the different installed supply capacities. Hereby the least cost combination of capacities and their operation over time is of interest. In order to analyse the so called hourly dispatch of different supply technology combinations and the effect on the overall costs and emissions of heat supply in district heating the [CM - District heating supply dispatch](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-supply-dispatch) can be used. With the module several scenarios with the following input data combinations can be calculated in order to derive costs and benefits:

* Combinations of different technologies in supply portfolios:
  * Excess heat from industry (with or without heat pump)
  * Waste incineration
  * High efficiency cogeneration
  * Solar thermal
  * Geothermal
  * Biomass
  * Heat pumps with different heat sources as e.g.
    * wastewater treatment plants
    * river water
    * excess heat from data centers
* Prices scenarios:
  * for prices of different energy carriers 
  * for prices CO2 emissions

The calculations can be used to identify beneficial supply portfolios in the different representative cities/areas and their sensitivity to important influencing parameters like energy carrier and CO2 prices or interest rate and depreciation time.

The outcomes of this step are the heat supply costs to the district heating system [EUR/MWh] in each of the representative cities/areas and the related CO2 emissions [kt/yr]. These results will then be used in the overall [Scenario Assessment](https://wiki.hotmaps.hevs.ch/en/CM-Scenario-assessment) in [Step 6](https://wiki.hotmaps.hevs.ch/en/Step-6-Assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area).

The following figure shows the overall approach.
[[/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating/Wiki-local-detailed-Step-5.png]]
