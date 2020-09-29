<h1>CM Demand projection</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
  * [Inputs](#inputs-and-outputs_inputs)
  * [Outputs](#inputs-and-outputs_outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run: default input values](#sample-run_test-run-default-input-values)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
This module generates both a heat demand density and a gross floor area density map in the form of raster files. The input to the module are different development scenarios of the heat demand and gross floor areas at national levels and broken down to each raster element as well as user-defined parameters to describe the relative deviation to the developments in the scenarios.


[**`To Top`**](#table-of-contents)

## Introduction
For the analysis of the future potentials for the supply of heat and cold from renewable and excess heat sources, it is essential to take into account potential developments in the building stock of the analysed region. Part of the buildings are renovated in order to decrease energy demand for space heating, part of the buildings are demolished and new buildings are constructed. This leads to changes in the heat demand of the buildings in a region. Furthermore, the evolution of the population and the Gross Domestic Product (GDP) in a region influences the development of the demand for building gross floor area and thus the demand for space heating and hot water generation.
The aim of the Calculation Module (CM) - Demand Projection is to provide scenarios of the future development of gross floor areas and heat demand in buildings for a selected area based on calculations for the EU-28 at the national level. Different scenarios, which are calculated using the Invert/EE-Lab module, are broken down on the level of hectares.
They differ in their thermal renovation rate, in other words how much of the gross floor area is renovated proportionally. The CM also provides the opportunity to change three basic drivers in the scenarios and generate adapted results. These three basic drivers are a) the reduction of the gross floor area of existing buildings, b) the reduction of the specific energy needs in the buildings, and c) the annual population growth addition to default growth


[**`To Top`**](#table-of-contents)

## Inputs and outputs

### Inputs

* _Select scenario:_
  * here you can select between different scenarios calculated with the Invert/EE-Lab module to be used as reference development for the calculation with the module

* _Select target year:_
  * here you can select the year for which the calculations will be performed

* _Scale up or down the reduction of gross floor area compared to reference scenario:_
  * with this parameter you can change the development of gross floor area of currently existing buildings compared to the development as projected in the scenario calculated with the Invert/EE-Lab model
  * you can define different relative changes for existing buildings built in different construction periods (before 1977, between 1977 and 1990, after 1990)
  * the values to be introduced have the unit [%]
  * a value of 25 means that the reduction of gross floor area in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time, is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the gross floor area of buildings constructed before 1977 decreases from 10 Mio. m² to 6 Mio m² between now and the end of the selected scenario time period. This equals a decrease of 4 Mio m². When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 4 Mio m² over this time period, but of only 1 Mio. m² (4 * 0.25). Thus, the remaining gross floor area of buildings constructed before 1977 at the end of the scenario time period would be 9 Mio. m².

* _Scale up or down the reduction of specific energy needs compared to reference scenario:_
  * with this parameter you can change the development of the specific energy needs for space heating and hot water generation of currently existing buildings compared to the development as projected in the scenario calculated with the Invert/EE-Lab model
  * you can define different relative changes for existing buildings built in different construction periods (before 1977, between 1977 and 1990, after 1990)
  * the values to be introduced have the unit [%]
  * a value of 25 means that the reduction of specific energy needs in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time, is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the specific energy need for space heating and hot water generation of buildings constructed before 1977 decreases from 200 kWh/m²yr to 120 kWh/m²yr between now and the end of the selected scenario time period. This equals a decrease of 80 kWh/m²yr. When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 80 kWh/m²yr over this time period but of only 20 kWh/m²yr (80 * 0.25). Thus, the remaining specific energy need for space heating and hot water generation of buildings constructed before 1977 at the end of the scenario time period would be 180 kWh/m²yr.

* _Annual population growth in addition to default growth:_
 * The underlying scenario provides population growth estimates at NUTS3 level. By comparing the population growth at NUTS0 and NUTS3 level using historical data, proportional population growth can be calculated. The parameter "Annual population growth in addition to default growth" can be used to influence these growth rates.In our model, population growth is directly proportional to area growth, which in turn results in a direct increase in heated area.

* _Method to add newly constructed buildings to the map:_
  * here you can select the method that is applied to add newly constructed buildings to the resulting gross floor area and heat demand density maps
  * the three different methods are explained in the following:
    * No new buildings: In the maps, only buildings are reflected that already exist in the current building stock and still are projected to exist at the end of the simulation period. Demolished buildings are removed from the map and no new buildings are added. The gross floor area, as well as the heat demand reflected in the maps, is thus remarkably lower compared to the projected values from the calculations.
    * Replace only demolished buildings: In the maps, the gross floor area of buildings does not change compared to the gross floor area in the start year of the calculation. Currently, existing buildings that are projected to be demolished are replaced with newly constructed buildings. In case that the gross floor area increases in the scenarios, the increase of the gross floor area is not reflected in the maps.
    * Add all new buildings: In the maps, all new buildings are added. In places where buildings are demolished these are replaced by new buildings. Additional newly built gross floor area due to an increase of overall gross floor area in the region is placed at different locations: part of it added on top of existing buildings, part of it is placed between existing buildings, and part of it is placed in locations where currently no buildings exist.
  * the choice of this method has no effect on the indicators shown in the results section of the calculation. I.e. this is only relevant for the creation of the maps, not for the overall results of the scenarios.


### Outputs

* _Indicators:_
  * Underlying population growth assumptions from start to target year in a 5-year increment
  * Heated (gross floor) area total and per capita in the start year and at the end year of the calculation (Due to the varying availability of different datasets for different years, the area for 2014 is shown here at the start value.)
  * Estimated (final) energy consumption total and per Area in the start year and at the end year of the calculation
  * Estimated area, total energy consumption and specific energy consumption per construction period in the start year and at the end year of the calculation
  * Share of newly constructed buildings shown in the raster map for the target year

* _Graphics:_
  * Bar charts on heated gross floor area and final energy consumption per construction period

* _Layers:_
  * Heat demand density map reflecting the calculated developments
  * Gross floor area density map reflecting the calculated developments

[**`To Top`**](#table-of-contents)

## Method

As written before this module is based on calculations performed with the Invert/EE-Lab module for all countries of the EU 28 (see **www.invert.at** for a description of the method of the Invert/EE-Lab module). The calculated scenarios are analysed regarding the development of the following types of buildings: residential and non-residential buildings, 3 construction periods and newly constructed buildings. Then the population growth per NUTS3 region and the initial building stock (in terms of heated gross floor area & energy needs per construction period and building type) per NUTS 3 region are assessed. Based on this assessment the results of the calculated scenarios are transferred to the respective NUTS3 region. The NUTS3 results are then distributed to the different hectare elements according to the method developed in Müller et al 2019 (**REFERENCE**).

## Provided scenarios

The module provides 4 different scenarios, which vary in their renovation rates. Through a selection, either 0.5%, 1%, 2% or 3% of the total gross floor area is renovated annually. It is to be noted that the saved heating requirement is not directly proportional to an increase in the renovation rate since different effective renovations are permitted. With a small renovation rate, mainly buildings are renovated, where favourable measures can achieve large savings. With a high renovation rate, buildings with a higher thermal quality are also increasingly being renovated and their saved heating energy is lower in comparison. The base scenario behind the different scenarios is the reference scenario which is described in the following part. 

**_"reference":_**
Current efficiency policies remain in place and are effectively implemented. We assume that in general, building owners and professionals comply with regulatory instruments like building codes. National differences in the policy intensity continue to exist. Therefore, the policy intensity indicates qualitatively the range of policy ambition in different countries. The energy efficiency policy mix corresponds to the current packages in place, which in most countries is a mix of regulatory approaches (building codes, nearly zero energy buildings (nZEB) definitions, RES-H obligation), economic support (subsidies for building refurbishment) and energy taxation. Main sources for implemented policies are the Mure database (www.measures-odyssee-mure.eu/) and the projects ENTRANZE (www.entranze.eu/) and Zebra2020 (www.zebra2020.eu/). 
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
Total final energy demand for space heating, hot water, cooling, and auxiliary energy demand in EU-28 amounts to approximately 3850 TWh for all renovation rates in 2015 and decreases to 2800TWh to 2250 TWh in 2050, depending on the renovation rate.

**_EU-28:_**
[[/en/CM-Demand-projection/final_energy_EU28.jpg]]
*Figure: Final energy demand in EU-28 from 2015 to 2050 for different renovation rates*

The following six graphs depict the development of the final energy demand for space heating, cooling, and domestic hot water preparation for the individual EU member states.

**_DE, FR, GB, IT and PL:_**
[[/en/CM-Demand-projection/final_absolute_DE.jpg]]
*Figure: Final energy demand in DE, FR, GB, IT and PL for 2015 and 2050 with different renovation rates*

[[/en/CM-Demand-projection/final_relative_DE.jpg]]
*Figure: Portion of Final energy demand in 2050 for DE, FR, GB, IT and PL relative to 2015*

**_NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK and GK:_**
[[/en/CM-Demand-projection/final_absolute_NL.jpg]]
*Figure: Final energy demand in NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK and GK for 2015 and 2050 with different renovation rates*

[[/en/CM-Demand-projection/final_relative_NL.jpg]]
*Figure: Portion of Final energy demand in 2050 for NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK and GK relative to 2015*

**_SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY and MT:_**
[[/en/CM-Demand-projection/final_absolute_SK.jpg]]
*Figure: Final energy demand in SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY and MT for 2015 and 2050 with different renovation rates*

[[/en/CM-Demand-projection/final_relative_SK.jpg]]
*Figure: Portion of Final energy demand in 2050 for SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY and MT relative to 2015*

[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module
**[Here](https://github.com/HotMaps/renovation_effect)** you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)

## Sample run

Here, the calculation module is run for the case study of Vienna, Austria. First, use the "Go To Place" bar to navigate to Vienna and select the city. Click on the "Layers" button to open the "Layers" window and then click on the "CALCULATION MODULE" tab. In the list of calculation modules, select "CM - Demand projection".

### Test Run: default input values

The default input values generate a heat demand density map for 2017. These values should be regarded as starting point only. You may need to set values below or above default values considering additional local considerations. The scenario used also has a strong effect on the output. Therefore, the user should adapt these values to find the best combination of inputs for her or his case study.

To run the calculation module, follow the next steps:

* Assign a name to the run session (optional) and set the input parameters (here, default values were used) and then press “RUN CM” at the end of the CM input.
* Wait until the process is finished.
* You can immediately see that the Heat density map has been added to the map. As output, indicators are shown in the "RESULTS" window and on the map the new heat density map and gross floor area are shown.

<img src="/en/CM-Demand-projection/default-sample-run_jpg-min.jpg"/>
*Figure: Demand projection after running with default parameter*
* Additionally, also two diagrams are generated. The first one shows the Heated gross floor area for different building periods. The second diagram illustrates the energy consumption for heating and domestic hot water for also divided fort different building periods.

<img src="/en/CM-Demand-projection/default-sample-run_graphs_jpeg.jpg"/>
*Figure: Demand projection after running with a default parameter, switching to graphics*

* After running the calculation and closing the calculation module two new layers can be found at the very bottom under the Layers list. On the one hand the new heating density map and on the other hand the new gross floor area map. If you want to save them and use them in further calculations, you have to download and upload them again.

<img src="/en/CM-Demand-projection/default-sample-run_layers_jpg-min.jpg"/>
*Figure: Demand projection after running with a default parameter, switching to result layers*

As mentioned before, it may be necessary to adjust the input parameters to the own data situation or to check sensitivities.

[**`To Top`**](#table-of-contents)

## How to cite

Andreas Müller and Marcus Hummel, in Hotmaps-Wiki, CM-Demand-projection (October 2019)


[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Andreas Müller, Marcus Hummel , Giulia Conforto and David Schmidinger(**[e-think](https://e-think.ac.at)**).

&#9745; This page was reviewed by Mostafa Fallahnejad (**[EEG - TU Wien](https://eeg.tuwien.ac.at/)**).


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Andreas Müller and Marcus Hummel

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
