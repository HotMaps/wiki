# Guidelines for using the Hotmaps toolbox for analyses at national level

These guidelines describe how the Hotmaps toolbox can be used to analyse costs and potentials for efficient and renewable heating and cooling at national level. **The guide is especially oriented towards the development of results according to the comprehensive assessment of national heating and cooling potentials referred to in Article 14(1) of the Energy Efficiency Directive (EED) in its current version.**


# Table of Contents
* [Part I: Overview of heating and cooling](#Part-I-overview-of-heating-and-cooling)
* [Part III: Analysis of the economic potential for efficiency in heating and cooling](#Part-III-Analysis-of-the-economic-potential-for-efficiency-in-heating-and-cooling)
    * [Step 1: Identification of different representative cases for district heating](#Step-1-Identification-of-different-representative-cases-for-district-heating)
    * [Step 2: Costs and potentials for district heating in representative cities / regions](#Step-2-Costs-and-potentials-for-district-heating-in-representative-cities-/-regions)
    * [Step 3: Calculation of decentral heat supply](#Step-3-Calculation-of-decentral-heat-supply)
    * [Step 4: Comparison of results for different scenarios](#Step-4-Comparison-of-results-for-different-scenarios)
* [Authors and reviewers](#Authors-and-reviewers)
* [License](#License)
* [Acknowledgement](#acknowledgement)


# Part I: Overview of heating and cooling

The Hotmaps database and toolbox provides two different inputs to this part: first, the Hotmaps database provides default data for several of the data needed to include in this part I of the comprehensive assessment. Second, the Hotmaps toolbox is basically a mapping tool that allows a geographical representation of default data in the toolbox but also of other data uploaded to the toolbox. In the following we describe the different default data form Hotmaps that might be of use and we link to the descriptions of how to use the upload function of the Hotmaps toolbox.

The following data relevant for Part I of Annex VIII is available in the Hotmaps database:

* Point 2: current heating and cooling supply
  * (b) (v) industrial installations:
    * DB – Industrial sites excess heat
    * DB – Industrial sites company names 
    * DB – Industrial sites subsector
  * All other:
    * No default data is contained for supply points, but own data can uploaded and displayed
    * How to create an account
    * How to upload own data to the toolbox
* Point 3: a map covering the entire national territory
  * (a) Heating and cooling demand areas (not for industrial demand)
    * DB – Heat density residential
    * DB – Heat density non-residential
    * DB – Heat density total
  * (b) + (c) Existing and planned supply points
    * No default data is contained for supply points, but own data can uploaded and displayed
    * How to create an account
    * How to upload own data to the toolbox
* Point 4: forecast of trends in the demand for heating and cooling
  * Default scenarios for all EU28 MS are available from the H2020 project CHEETAH
  * This data is also integrated in the CM – Demand projection and used for the calculations in this module

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

# Part III: Analysis of the economic potential for efficiency in heating and cooling

The Hotmaps toolbox contains a number of calculation modules (CMs) that can be used to analyse the economic potential for efficiency in heating and cooling. In the following a possible approach for generating results for the comprehensive assessment with the Hotmaps toolbox is described also linking to the respective default data and calculation modules.

## Overview of the Hotmaps approach
To assess the economic potential for efficiency in heating and cooling it is important to distinguish between areas potentially supplied by district heating and areas where decentral supply will most probably be more economically efficient. Thus, **the Hotmaps approach strongly builds on the following four steps**:
1. Identify different representative, typical cases for district heating in the country or regions under investigation
1. Carry out analyses of district heating grid construction/expansion and district heat supply for the identified representative cases
1. Calculate indicators of decentral heat supply
1. Compare different scenarios of district heating and decentral heat supply and sensitivity calculations

The following figure shows this approach graphically. The different steps will be explained in more detail in the following chapters of these guidelines.


![](https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/Overview_HotmapsApproachNational.png)
*Figure: Hotmaps approach for analysing the economic potential for efficiency in heating and cooling in course of Article 14 of the Energy Efficiency Directive (EED)*


In all of these steps **various scenarios and sensitivities should be taken into account**:
* different levels of heat savings (implemented in step 1, 2 and 3)
* different levels of district heating shares in total heat supply (implemented in step 2)
* different future energy prices (implemented in step 2 and 3)
* different depreciation times and discount rates (socio-economic vs. private-economic calculations) (implemented in step 2 and 3)

The following resulting **indicators can be retrieved from the Hotmaps Calculation Modules** (CMs):

* Economic potential: 
  * Levelised costs of Heat (LCOH) [EUR/MWh]:
    * CM - District heating supply dispatch  for costs of heat supply to district heating
    * CM - Decentral heating supply for costs of decentral heat supply 
    * CM - Excess heat transport potential for costs of transporting excess heat to potential district heating networks
  * Specific district heating grid costs (expansion and/or new construction) [EUR/MWh]:
    * CM - District heating potential: economic assessment
* GHG emissions:
  * CO2 emissions [kt]:
    * CM - District heating supply dispatch for CO2 emissions from heat supply to district heating
    * CM - Decentral heating supply for CO2 emissions from decentral heat supply
* Impact on the share of RES can be calculated based on the results of the following CMs:
  * CM - District heating supply dispatch for share of RES from heat supply to district heating
  * CM - Decentral heating supply for share of RES from decentral heat supply

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## Step 1: Identification of different representative cases for district heating

In order to identify different, representative, typical cases for further analysis of the costs and potentials for district heating in the country / region of interest Hotmaps provides various default data layers in the Hotmaps database as well as different Calculation Modules (CMs). Also, own data can be uploaded and used. This identification procedure can consist of the following steps:
* Calculate scenarios of future heat demand and building floor area density maps for the entire country / region of interest
* Identify regions potentially interesting for district heating based on user-defined threshold values
* Analyse / collect potentials for excess heat and renewable energy in the identified regions potentially interesting for district heating
* Group / cluster similar regions and select representative cities / areas for further analysis

The following figure shows this procedure graphically and shows the various data sources and calculation modules that can be used.

![](https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/Hotmaps_ApproachNational_Step1.png)
*Figure: Identification of different representative, typical cases for district heating (Step 1)*

In the following subchapters the different steps in this procedure are described in more detail.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>


























## Authors and reviewers
This page is written by Marcus Hummel\*.
- [x] This page was reviewed by Lukas Kranzl\**.

\* [e-think](https://e-think.ac.at/)
Zentrum f. Energiewirtschaft und Umwelt
Argentinierstrasse 18/10
1040 Wien

\** [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien


<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## License
Copyright © 2016-2019: Marcus Hummel

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>





