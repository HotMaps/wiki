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
The aim of the calculation module is to transfer the scenario results for the development of the energy demand to different regions.



[**`To Top`**](#table-of-contents)

## Inputs and outputs






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
