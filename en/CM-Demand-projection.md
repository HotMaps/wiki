<h1>CM Demand projection</h1>
## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run 1: default input values](#test-run-1-default-input-values)
  * [Test Run 2: modified input values](#test-run-2-modified-input-values)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
This module generates both a heat demand density and a floor area density map in the form of raster files. The input to the module are different development scenarios of the heat demand and gross floor areas at national levels and broken down to each raster element as well as user-defined parameters to describe the relative deviation to the developments in the scenarios.


[**`To Top`**](#table-of-contents)

## Introduction
For the analysis of the future potentials for the supply of heat and cold from renewable and excess heat sources, it is essential to take into account potential developments in the building stock of the analysed region. Part of the buildings are renovated in order to decrease energy demand for space heating, part of the buildings are demolished and new buildings are constructed. This leads to changes in the heat demand of the buildings in a region. Furthermore, the evolution of the population and the Gross Domestic Product (GDP) in a region influences the development of the demand for building floor area and thus the demand for space heating and hot water generation.
The aim of the Calculation Module (CM) - Demand Projection is to provide scenarios of the future development of gross floor areas and heat demand in buildings for a selected area based on calculations for the EU-28 at the national level. Different scenarios, which are calculated using the Invert/EE-Lab module, are broken down on the level of hectares.
They differ in their thermal renovation rate, in other words how much of the gross floor area is renovated proportionally. The CM also provides the opportunity to change three basic drivers in the scenarios and generate adapted results. These three basic drivers are a) the reduction of the floor area of existing buildings, b) the reduction of the specific energy needs in the buildings, and c) the annual population growth addition to default growth


[**`To Top`**](#table-of-contents)

## Inputs and outputs

**Inputs**

* _Select scenario:_
  * here you can select between different scenarios calculated with the Invert/EE-Lab module to be used as reference development for the calculation with the module

* _Select target year:_
  * here you can select the year for which the calculations will be performed

* _Reduction of floor area compared to the reference scenario:_
  * with this parameter you can change the development of gross floor area of currently existing buildings compared to the development as projected in the scenario calculated with the Invert/EE-Lab model
  * you can define different relative changes for existing buildings built in different construction periods (before 1977, between 1977 and 1990, after 1990)
  * the values to be introduced have the unit [%]
  * a value of 25 means that the reduction of floor area in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time, is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the floor area of buildings constructed before 1977 decreases from 10 Mio. m² to 6 Mio m² between now and the end of the selected scenario time period. This equals a decrease of 4 Mio m². When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 4 Mio m² over this time period, but of only 1 Mio. m² (4 * 0.25). Thus, the remaining floor area of buildings constructed before 1977 at the end of the scenario time period would be 9 Mio. m².

* _Reduction of specific energy needs compared to reference scenario:_
  * with this parameter you can change the development of the specific energy needs for space heating and hot water generation of currently existing buildings compared to the development as projected in the scenario calculated with the Invert/EE-Lab model
  * you can define different relative changes for existing buildings built in different construction periods (before 1977, between 1977 and 1990, after 1990)
  * the values to be introduced have the unit [%]
  * a value of 25 means that the reduction of specific energy needs in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time, is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the specific energy need for space heating and hot water generation of buildings constructed before 1977 decreases from 200 kWh/m²yr to 120 kWh/m²yr between now and the end of the selected scenario time period. This equals a decrease of 80 kWh/m²yr. When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 80 kWh/m²yr over this time period but of only 20 kWh/m²yr (80 * 0.25). Thus, the remaining specific energy need for space heating and hot water generation of buildings constructed before 1977 at the end of the scenario time period would be 180 kWh/m²yr.

* _Annual population growth in addition to default growth
 * The underlying scenario provides population growth estimates at NUTS3 level. By comparing the population growth at NUTS0 and NUTS3 level using historical data, proportional population growth can be calculated. The parameter "Annual population growth in addition to default growth" can be used to influence these growth rates.In our model, population growth is directly proportional to area growth, which in turn results in a direct increase in heated area.

* _Method to add newly constructed buildings to the map:_
  * here you can select the method that is applied to add newly constructed buildings to the resulting gross floor area and heat demand density maps
  * the three different methods are explained in the following:
    * No new buildings: In the maps, only buildings are reflected that already exist in the current building stock and still are projected to exist at the end of the simulation period. Demolished buildings are removed from the map and no new buildings are added. The gross floor area, as well as the heat demand reflected in the maps, is thus remarkably lower compared to the projected values from the calculations.
    * Replace only demolished buildings: In the maps, the gross floor area of buildings does not change compared to the gross floor area in the start year of the calculation. Currently, existing buildings that are projected to be demolished are replaced with newly constructed buildings. In case that the gross floor area increases in the scenarios, the increase of the gross floor area is not reflected in the maps.
    * Add all new buildings: In the maps, all new buildings are added. In places where buildings are demolished these are replaced by new buildings. Additional newly built gross floor area due to an increase of overall gross floor area in the region is placed at different locations: part of it added on top of existing buildings, part of it is placed between existing buildings, and part of it is placed in locations where currently no buildings exist.
  * the choice of this method has no effect on the indicators shown in the results section of the calculation. I.e. this is only relevant for the creation of the maps, not for the overall results of the scenarios.


**Outputs**

* _Indicators:_
  * Heated (gross floor) area total and per construction period in the start year and at the end year of the calculation
  * Estimated final energy consumption total and per construction period in the start year and at the end year of the calculation
  * Estimated specific energy consumption per construction period in the start year and at the end year of the calculation

* _Graphics:_
  * Bar charts on heated gross floor area and final energy consumption per construction period

* _Layers:_
  * Heat demand density map reflecting the calculated developments
  * Gross floor area density map reflecting the calculated developments


[**`To Top`**](#table-of-contents)

## Method

As written before this module is based on calculations performed with the Invert/EE-Lab module for all countries of the EU 28 (see **www.invert.at** for a description of the method of the Invert/EE-Lab module). The calculated scenarios are analysed regarding the development of the following types of buildings: residential and non-residential buildings, 3 construction periods and newly constructed buildings. Then the population growth per NUTS3 region and the initial building stock (in terms of heated gross floor area & energy needs per construction period and building type) per NUTS 3 region are assessed. Based on this assessment the results of the calculated scenarios are transferred to the respective NUTS3 region. The NUTS3 results are then distributed to the different hectare elements according to the method developed in Müller et al 2019 (**REFERENCE**).

In the current state of the Toolbox (Release V3.0.0) the following two Invert/EE-Lab scenarios are available in the module:

**_"reference":_**

In this scenario, it is assumed that current efficiency policies remain in place and are effectively implemented. In particular, we assume that in general building owners and professionals comply with regulatory instruments like building codes. National differences in the policy intensity continue to exist. Therefore, the policy intensity indicates qualitatively the range of policy ambition in different countries. The energy efficiency policy mix corresponds to the current packages in place, which in most countries is a mix of regulatory approaches (building codes, nearly zero energy buildings (nZEB) definitions, RES-H obligation), economic support (subsidies for building refurbishment) and energy taxation. Main sources for implemented policies are the Mure database (www.measures-odyssee-mure.eu/) and the projects ENTRANZE (www.entranze.eu/) and Zebra2020 (www.zebra2020.eu/). 
While the scenario considers neither a strong technology improvement nor binding energy efficiency obligations, ambitious policies to foster renewable energy are in place. This has been implemented based on mandatory renewable energy quotas on the level of individual buildings.

_Energy prices:_
Energy prices increase moderately according to EU Reference Scenario 2016 (https://ec.europa.eu/energy/en/data-analysis/energy-modelling).

_Technology development:_
The assumed technological learning is very low and costs for efficient and renewable heating/cooling technologies decrease only slightly.

_Qualitative overview of policy assumptions:_
* Policy intensity for RES-H: high
* Policy intensity for buildings’ efficiency: low
* Policy intensity for district heating: medium
* Energy prices: low
* Technology development: low

_Results:_
Total final energy demand for space heating, hot water and cooling in EU-28 decreases from 3650 TWh (2012) to 2800 TWh (2050).


**_"ambitious":_**

The ambitious scenario assumes that current energy efficiency policies are fostered and are effectively implemented. This is implemented by increased energy performance standards of refurbished buildings, along with the assumption of moderate energy efficiency technology improvements. The scenario does not consider mandatory obligations to refurbish buildings. The additional drivers to increase the energy performance of buildings are increased investment subsidy budgets for thermal building renovation as well as the introduction of a CO2-tax. It is considered that the CO2-tax starts in 2025 at a level of 5 €/tCO2 and increases along a linear trajectory to 150 €/t CO2 (incl. VAT) until 2050.
Main sources for implemented policies are again the Mure database (www.measures-odyssee-mure.eu/) and the projects ENTRANZE (www.entranze.eu/) and Zebra2020 (www.zebra2020.eu/). The mandatory renewable energy quotas on the level of individual buildings are identical to the reference scenario. 

_Energy prices:_
Energy prices increase moderately according to the EU Reference Scenario 2016 (https://ec.europa.eu/energy/en/data-analysis/energy-modelling). In addition, a CO2-tax on onsite-emissions is introduced starting with 2025. Starting with 5 €/t CO2 in 2025, it increases to 150 €/tCO2 until 2050. The price increase leads to additional incentives for building renovation and renewable heating systems.

_Technology development:_
The assumed technological learning is moderate and costs for efficient and renewable heating/cooling technologies decrease remarkably until 2050.

_Qualitative overview of policy assumptions:_
* Policy intensity for RES-H: high
* Policy intensity for buildings’ efficiency: medium
* Policy intensity for district heating: medium
* Energy prices: medium
* Technology development: medium

_Results:_
Total final energy demand for space heating, hot water and cooling in EU-28 decreases from 3650 TWh (2012) to 2550 TWh (2050). 


[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module


[**`To Top`**](#table-of-contents)

## Sample run

Here, the calculation module is run for the case study of Vienna, Austria. First, use the "Go To Place" bar to navigate to Vienna and select the city. Click on the "Layers" button to open the "Layers" window and then click on the "CALCULATION MODULE" tab. In the list of calculation modules, select "CM - Demand projection".

* Test Run 1: default input values

""Picture1""

* Test Run 2: modified input values

""Picture2""

[**`To Top`**](#table-of-contents)

## How to cite

Andreas Müller and Marcus Hummel, in Hotmaps-Wiki, CM-Demand-projection (October 2019)


[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page is written by Andreas Müller and Marcus Hummel\*.


\* [e-think energy research](http://www.e-think.ac.at)

e-think energy research

Argentinierstrasse 18/10

A-1040 Vienna

Austria

\* [TU Wien - Energy Economics Group](http://www.eeg.tuwien.ac.at)

Institute of Energy Systems and Electrical Drives (ESEA)

Gußhausstraße 25 – 29/E37003

A-1040 Vienna

Austria


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Andreas Müller, Marcus Hummel

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


[**`To Top`**](#table-of-contents)

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.


[**`To Top`**](#table-of-contents)



<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Demand-projection)<sup>\*</sup> 

<sup>\*</sup> machine translated
