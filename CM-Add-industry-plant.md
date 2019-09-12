## Table of Contents
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction
This module provides the possibility to add additional industry sites with their heating and cooling demand and excess heat potential to the HotMaps toolbox. It is possible to add additional energy-intensive as well as less-energy intensive industries. The user enters the necessary data in a stand-alone Excel-tool, which then generates a datasheet to be uploaded on the HotMaps toolbox.   

## Inputs and outputs (How-to-use)

### Data input in Excel-tool by user

Please download the provided Excel-tool here: xxx

#### Add general information
Please go to tabsheet: <figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/General_information.PNG" alt=""/></figure>

In the first step please enter all necessary general information about the sites for which heat and cooling demand and excess heat potential should be calculated. It is possible to add up to 10 industrial sites. 

<figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/General_information_Box.PNG" alt=""/></figure>

#### Choose calculation option

In the second step there are 3 options how heat and cooling demand and excess heat potential can be estimated. Please note, that it is possible to switch between the three options for the different companies but not within a company itself.

With regard to the excess heat temperature it has to be mentioned, that low temperature heat (< 100°C) can be entered into the Excel-Tool but is not yet evaluated in the HotMaps toolbox. If low temperature heat should be considered, the application of a heat pump is necessary. Therefor the user can include the electricity demand of a heat pump in the final energy demand for electricity and lift the temperature of the generated excess heat up to the range of 100-200°C.

xxx Img Steps xxx

##### Option 1: Manual input
Please go to tabsheet: <figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Option1.PNG" alt=""/></figure>

Please choose this option, if data on heat/ cooling demand and excess heat potential and temperature distribution is available for the selected company and can be filled in manually.

##### Option 2: Plant selection
Please go to tabsheet: <figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Option2.PNG" alt=""/></figure>

Please choose this option, if no information about heat/ cooling demand and excess heat potential is available for the selected company. On the basis of a plant specific database typical heat/cooling demand and excess heat potentials with temperature distribution can be selected for a number of plants and products/processes. 
As necessary input for the conversion of the product specific data a value as calculation basis needs to be entered (f. ex. production, area etc.). For more information concerning the calculation method see [Method].

##### Option 3: Sector selection
Please go to tabsheet: <figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Option3.PNG" alt=""/></figure>

Please choose this option, if your plant type is not available in option 2. On the basis of sector specific heat data typical heat/ cooling demand and excess heat potentials are calculated. As necessary input the fuel demand for heat supply (in GWh/ year) needs to be entered. For more information concerning the calculation method see [Method].

### Data upload on HotMaps toolbox
Please go to tabsheet: <figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Data_Import.PNG" alt=""/></figure>

Please note: At the moment the upload of CSV-files is not yet implemented on the HotMaps toolbox. More information coming up soon.

## Method

If the heat/ cooling demand and excess heat potential of a plant is not known, two indicator based methods are offered to the user for the calculation of heat demand and excess heat potential. 

It has to be mentioned that these values are only indicative approximate values for typical plants (option 2) or on a sectorial level (option 3) and don't replace a detailed analysis and measurement of heat demand and excess heat of a plant.


### Option 2: Plant selection
The plant specific heat data is taken from the Forecast database. (Bottom up or Top-down approach?) For a large number of different energy-intensive and less energy-intensive plant types process heat/cooling demand and excess heat potential are derived from the specific final energy demand of fuels and electricity. 
It is important to note that due to the underlying database only process heat and process cooling is covered with this method; space heating and hot water is not included here. Depending on the plant type different inputs as basis for the calculation are provided (f. ex. production volume in tonnes or area in m2).

For the calculation of heat and cooling demand it is necessary to assume conversion efficiencies from final energy to heat and cooling. Since most of the heat applications are steam-based an efficiency of 90% is assumed (Was ist mit Electricity?). For cooling applications an energy efficiency ratio (EER) of xxx is assumed (von Tobi noch auszufüllen).

The whole database used for option 2 is available here: Repository_Link

### Option 3: Sector selection
Option 3 provides a broad based assessment of heat demand and excess heat for the sectors of the manufacturing industry (according to NACE 2008). 

#### Calculation of excess heat potentials on sectorial level
For the calculation of the excess heat potential of the different sectors excess heat factors according to Brückner 2016 are used (see figure xxx). The excess heat factor is defined as waste heat generated per fuel consumption.
In Brückner 2016 the available data to determine the excess heat potential in the manufacturing industry originates from the emissions survey carried out every four years on state level in germany. 
According to the Emission Declaration Ordinance (1. BImSchG) all operators of plants, which are subject to approval, have to submit a declaration of their emissions every four years. 
For the year 2008 data on company level consisting of exhaust gas volume flows and their temperature level are evaluated. Together with available information on the type and quantitiy of fuel consumption of the plants, the excess heat factor of a plant is calculated as

Excess heat factor = Excess heat / fuel consumption

Finally the excess heat factor is calculated not only at company level but also on sector level. For detailed information see Brückner 2016.

The excess heat factors according to Brückner 2016 include excess heat coming from process heat as well as space heat generation and hot water. This is due to the fact that only an exhaust gas volume flow leaving the plant is analyzed without separating the fuel consumption into space heating, hot water and process heat.

#### Calculation of heat demand on sectorial level

to be done

The whole database used for option 3 is available here: Repository_Link

<figure><img src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Factors.PNG" alt=""/>
<figcaption><i> <br /> Muss noch übersetzt werden.</i></figcaption>
</figure>

## Authors and reviewers

This page is written by Ali Aydemir \* and Lisa Neusel \*
- [ ] This page was reviewed by Tobias Fleiter\*.

\* [Fraunhofer ISI](https://isi.fraunhofer.de/)
Fraunhofer ISI, Breslauer Str. 48, 
76139 Karlsruhe

## License
Copyright © 2016-2018: Ali Aydemir, Lisa Neusel

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

``