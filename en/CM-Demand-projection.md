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
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)



## In a glance
This module generates both a heat demand density and a floor area density map in the form of raster files. The input to the module are different development scenario of the heat demand and gross floor areas at national levels and broken down to each raster element as well as user-defined parameters to describe the relative deviation to the developments in the scenarios.

[**`To Top`**](#table-of-contents)


## Introduction
For the analysis of the future potentials for the supply of heat and cold from renewable and excess heat sources it is essential to take into account potential developments in the building stock of the analysed region. Part of the buildings are renovated in order to decrease energy demand for space heating, part of the buildings are demolished and new buildings are constructed. This leads to changes in the heat demand of the buildings in a region. Furthermore, the evolution of the population and the Gross Domestic Product (GDP) in a region influences the development of the demand for building floor area and thus the demand for space heating and hot water generation.
The aim of the Calculation Module (CM) - Demand Projection is to provide scenarios of the future development of gross floor areas and heat demand in buildings for a selected area based on calculations for the EU-28 at national level. Different scenarios calculated with the Invert/EE-Lab Module are broken down to the hectare level according to the methodology developed for the default heat demand density layer (**REFERENCE**). The CM also provides the opportunity to change two basic drivers in the scenarios and generated adapted results. These two basic drivers are a) the reduction of floor area of existing buildings, and b) the reduction of the specific energy needs in the buildings.

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
  * a value of 25 means that the reduction of floor area in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the floor area of buildings constructed before 1977 decreases from 10 Mio. m² to 6 Mio m² between now and the end of the selected scenario time period. This equals a decrease of 4 Mio m². When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 4 Mio m² over this time period, but of only 1 Mio. m² (4 * 0.25). Thus, the remaining floor area of buildings constructed before 1977 at the end of the scenario time period would be 9 Mio. m².

* _Reduction of specific energy needs compared to reference scenario:_
  * with this parameter you can change the development of the specific energy needs for space heating and hot water generation of currently existing buildings compared to the development as projected in the scenario calculated with the Invert/EE-Lab model
  * you can define different relative changes for existing buildings built in different construction periods (before 1977, between 1977 and 1990, after 1990)
  * the values to be introduced have the unit [%]
  * a value of 25 means that the reduction of specific energy needs in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the specific energy need for space heating and hot water generation of buildings constructed before 1977 decreases from 200 kWh/m²yr to 120 kWh/m²yr between now and the end of the selected scenario time period. This equals a decrease of 80 kWh/m²yr. When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 80 kWh/m²yr over this time period, but of only 20 kWh/m²yr (80 * 0.25). Thus, the remaining specific energy need for space heating and hot water generation of buildings constructed before 1977 at the end of the scenario time period would be 180 kWh/m²yr.

* _Method to add newly constructed buildings to the map:_
  * here you can select the method that is applied to add newly constructed buildings to the resulting gross floor area and heat demand density maps
  * the three different methods are explained in the following:
    * No new buildings: In the maps only buildings are reflected that already exist in the current building stock and still are projected to exist at the end of the simulation period. Demolished buildings are removed from the map and no new buildings are added. The gross floor area as well as the heat demand reflected in the maps is thus remarkably lower compared to the projected values from the calcuation.
    * Replace only demolished buildings: In the maps the gross floor area of buildings does not change compared to the gross floor area in the start year of the calculation. Currently existing buildings that are projected to be demolished are replaced with newly constructed buildings. In case that the gross floor area increases in the scenarios, the increase of the gross floor area is not reflected in the maps.
    * Add all new buildings: In the maps all new buildings are added. In places where buildings are demolished these are replaced by new buildings. Additional newly buildt gross floor are due to an increase of overall gross floor area in the region is placed at different locations: part of it added on top of existing buildings, part of it is place between existing buildings, and part of it is placed in locations where currently no buildings exist.
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

** _"reference":_ **
  * In this scenario it is assumed that current efficiency policies remain in place and are effectively implemented

* _"ambitious":_
  *



[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module


[**`To Top`**](#table-of-contents)




## Sample run

to be filled 

* Test Run 1: default input values

* Test Run 2: modified input values

[**`To Top`**](#table-of-contents)


## References


[**`To Top`**](#table-of-contents)


## How to cite
Andreas Müller and Marcus Hummel, in Hotmaps-Wiki, CM-Demand-projection (October 2019)

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


## License

Copyright © 2016-2020: Andreas Müller, Marcus Hummel

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.



[**`To Top`**](#table-of-contents)



<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Demand-projection)<sup>\*</sup> 

<sup>\*</sup> machine translated
