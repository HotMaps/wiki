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
The aim of the Calculation Module (CM) - Demand Projection is to provide scenarios of the future development of gross floor areas and heat demand in buildings for a selected area based on calculations for the EU-28 at national level. Different scenarios calculated with the Invert/EE-Lab Module are broken down to the hectare level according to the methodology developed for the default heat demand density layer (**reference**). The CM also provides the opportunity to change two basic drivers in the scenarios and generated adapted results. These two basic drivers are a) the reduction of floor area of existing buildings, and b) the reduction of the specific energy needs in the buildings.

[**`To Top`**](#table-of-contents)


## Inputs and outputs

**Inputs**

* _Select scenario:_
  * here you can select between different scenarios calculated with the Invert/EE-Lab module to be used as reference development for the calculation with the module

* Select target year: 
  * here you can select the year for which the calculations will be performed

* Reduction of floor area compared to the reference scenario:
  * with this parameter you can change the development of gross floor area of currently existing buildings compared to the development as projected in the scenario calculated with the Invert/EE-Lab model
  * you can define different relative changes for existing buildings built in different construction periods (before 1977, between 1977 and 1990, after 1990)
  * the values to be introduced have the unit [%]
  * a value of 25 means that the reduction of floor area in a defined construction period, e.g. before 1977, between the starting year of the calculation and the end of the selected scenario time is multiplied by 0.25. E.g. in the selected Invert/EE-Lab scenario the floor area of buildings constructed before 1977 decreases from 10 Mio. m² to 6 Mio m² between now and the end of the selected scenario time period. This equals a decrease of 4 Mio m². When choosing a value of 25 the effect of the Invert/EE-Lab scenario is changed in order to not reflect a decrease of 4 Mio m² over this time period, but of only 1 Mio. m² (4 * 0.25). Thus, the remaining floor area of buildings constructed before 1977 at the end of the scenario time period would be 9 Mio. m².

* Reduction of specific energy needs compared to reference scenario:






**Output**

* Tabular results on heated gross floor area per construction period, final energy demand per construction period and derived indicators.
* Bar charts on heated gross floor area and final energy demand per construction period
* Heat density map and map of heated gross floor area


[**`To Top`**](#table-of-contents)



## Method

**The procedure is as follows**

Workflow performed prior to the HotMaps toolbox 
1. Precalculate Invert/EE-Lab results on the Country level
2. Assessment what happens with different types of buildings: Residential and Non-Residential buildings / 3 construction Periods and newly constructed buildings on the country level
3. Assess population growth per NUTS3 region and initial building stock (heated gross floor area / energy needs per construction period and building type) per NUTS 3 region
4. Transfer the NUTS0 scenario results to the NUTS3 level
5. Integrate the NUTS3 level results in the HotMaps Toolbox

Workflow performed within to the HotMaps toolbox
1. Select regions
2. Start Calculation Module, define input parameters
3. For each raster cell, the CM calculates the estimated share of energy and heated gross floor area by building types (eg. residential building, construction period 1, unrefurbished) and apply the measures according to the national/NUTS3 development on those buildings.
4. User interaction: The user can choose to investigate the impact of more or less – relative to the selected scenario - ambitious measures, e.g. choose a higher or lower demolition rate of buildings from a certain construction period.



[**`To Top`**](#table-of-contents)




## GitHub repository of this calculation module


[**`To Top`**](#table-of-contents)




## Sample run
  * [Test Run 1: default input values
  * [Test Run 2: modified input values


[**`To Top`**](#table-of-contents)

## References





[**`To Top`**](#table-of-contents)

## How to cite
Andreas Müller, in Hotmaps-Wiki, CM-Demand-projection (October 2019)

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
