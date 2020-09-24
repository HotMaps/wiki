<h1>CM Scenario assessment</h1>

## Table of Contents
* [At a glance](#at-a-glance)
* [Introduction](#introduction)
* [Scenario assessment inputs and outputs](#scenario-assessment-inputs-and-outputs)
* [Interpretation of input parameters](#interpretation-of-input-parameters)
* [Interpretation of results](#interpretation-of-results)
* [Sample run](#sample-run)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## At a glance

This module allows comparing different heating scenarios. The module is not integrated into the Hotmaps Toolbox, but it is provided as a separate Excel workbook that combines the results of other calculation modules to be previously run. The template as it is allows comparing up to 9 different scenarios, but if properly adapted, it can work for any number of scenarios. Separate worksheets are set up to collate the key indicators from each calculation module, while key indicators are automatically collated in the final table and represented in graphs.

[**SCENARIO ASSESSMENT WORKBOOK: CLICK HERE TO DOWNLOAD**](https://github.com/HotMaps/scenario_assessment/raw/master/data/ScenarioAssessment_Template.xlsx)


[**`To Top`**](#table-of-contents)


## Introduction

The approach to assessing a number of different heating scenarios follows this sequence of calculations:
* The building stock for the selected area,
* Costs, emissions, and energy demand for decentral heat supply,
* Costs, emissions, and energy demand for district heat supply,
* Costs of the distribution of district heat.

In each scenario a certain split between central and decentral heat supply is assumed together with assumptions on the development of the heat demand in the region. For instance, a sensitivity analysis for a set of different district heating system sizes with different supply technologies may be compared. The scenario may vary by the capacity of the heat generators in the district heating system, the conncetion rates to the district heating system or the costs and prices for different technologies. Similarly, for decentral supply various system parameters could be varied and the effects on the overall heating system in the region can be analysed.

The user independently runs the different calculations modules for each scenario under consideration, copies the results into the relevant sheets of the Excel workbook, and then compares them for different scenario settings. This procedure is described in the following sections on this wiki page.


[**`To Top`**](#table-of-contents)


## Scenario assessment inputs and outputs

The inputs compiled into the scenario assessment workbook are generated with the following calculation modules: 

**1. [CM - Decentral heating supply](/en/CM-Decentral-heating-supply)**

**2. [CM - District heating supply dispatch](/en/CM-District-heating-supply-dispatch)**

**3. [CM - District heating potential: economic assessment](/en/CM-District-heating-potential-economic-assessment)**

The inputs and outputs of these modules should be saved for each scenario and then compiled into the scenario assessment workbook. The cells to be filled are properly marked and a colour-coding legend is reported on the first sheet of the workbook, as explained in the following paragraph [Interpretation of input parameters](#interpretation-of-input-parameters). The three above-mentioned calculation modules require some inputs that you may already have, or that you may have to calculate running other modules, as specified in the following paragraph as well as in the **[Training section](/en/training-material)**.

The sheet "Final Table" calculates and shows a comparison of the following indicators for each defined scenario both in the figures and in the charts:
* Cost per year for different cost categories and technologies in _**M EUR/yr**_,
* Levelized costs of heat supply in _**EUR/MWh**_,
* CO2 emissions for the different technologies in _**tCO<sub>2</sub>/yr**_,
* Final energy demand for the different technologies in _**GWh/yr**_,
* Useful energy demand for the different technologies in _**GWh/yr**_,
* Shares of renewable energy (RES) and district heating (DH).

For each scenario, the following indicators are shown in the form of a stacked bar chart:
* Overall (aggregated) costs of heat supply by district heating system and decentral heating system in _**M EUR/yr**_
* Overall (aggregated) CO<sub>2</sub> emissions by district heating system and decentral heating system in _**tCO<sub>2</sub>/yr**_
* Overall (aggregated) final energy and useful energy demand in _**GWh/yr**_


[**`To Top`**](#table-of-contents)


## Interpretation of input parameters

The input parameters needed to run this module are divided into:

* Parameters to be selected/filled out in the calculation modules on the Toolbox: highlighted in turquoise in the workbook. 
* Parameters to be selected/filled out in the workbook, but these are already provided as default values: highlighted in green in the workbook.
* Parameters provided as output data in the Toolbox, to be copied into the workbook in the fields highlighted in yellow.
* Parameters calculated and provided as output data in the Workbook, to be copied into another sheet as input for further elaboration: highlighted in red.

On top of these, the workbook has instructions in red text and additional calculations that should not be edited in grey cells. The picture below shows how the colour-coding indicated on the front sheet of the workbook looks like.

[[/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg]]


### Final Table - Overview of assessment results

The sheet named "Final Table" mainly shows the overall output parameters both in figures and charts. Also, it has few input parameters that need to be provided by the user.

A *Scenarios Table* (R4:Z17) is ready to be filled with a short description of the different scenarios assessed. Placed right above the charts, this table can be a reminder for the user or clarification for other collaborators.

Further down in the sheet there are some parameters that have already been filled out, but can be adjusted, as long as they are not left empty:
* *Renewable factor* (F102:H116): is used to calculate the renewable final energy out of total final energy demand. 
* *General efficiency factor* (K102): is used to calculate the total useful energy demand out of total final energy demand.
* *Grid losses* (F121:N121): is used to calculate the demand for heat supply in the district heating system out of the share of useful energy supplied by district heating.


### Definition of the building stock and calculation of indicators for decentral heating supply

A set of three sheets is used to describe the building stock of the region under investigation. The three sheets are used to collect the results of the CM - Decentral heating supply for single buildings, combine the single buildings to a building stock and to calculate the indicators for decentral heating supply needed for the overall scenario assessment. The content and filling of the different sheets is described in the following.

**1. Single-family buildings**
This worksheet is prepared to collect the results of the [CM - Decentral heating supply](/en/CM-Decentral-heating-supply) for single-family buildings. Two different types of single-family buildings can be taken into account in the default version of the workbook. However, the user can adapt the workbook in order to combine any number of different single-family buildings (e.g. from different construction periods or different types like detached or semi-detached).

**2. MF & non-res buildings**
This worksheet is prepared to collect the results of the [CM - Decentral heating supply](/en/CM-Decentral-heating-supply) for multi-family as well as non-residential (non-res) buildings. 8 different types of multi-family and non-residential buildings can be taken into account in the default version of the workbook. However, the user can adapt the workbook in order to combine any number of different multi-family and non-residential buildings (e.g. from different construction periods or different types like small multi-family buildings, apartment blocks, offices, hotels & restuarants, education, etc.).

**Building stock & Dec supply**
In this sheet the building stock of the region under investigation is compiled out of the building types defined and calculated in the previous two worksheets (C15:L15). Furthermore, the split of technologies assumed to be used in the different building types is defined (C17:L25) and the indicators for decentral heating supply in the building stock are calculated (E44:E77). For this also the overall heat demand in the region under investigation (E9) as well as the assumed CO<sub>2</sub>-price (E10) have to be defined by the user.


### Ref. Decentral (Dec.) heating supply
In this worksheet various scenarios for decentral heating supply in the region under investigation can be defined. To do so, results from the calculation in the previous worksheet (Building stock & Dec supply, cells E44:E77) can be copied into the yellow marked cells in this worksheet. The worksheet in its default version is prepared to compile 9 different scenarios.
The user is free to decide on which scenarios for decentral heating supply are collected in this sheet (e.g. different technology split in the different building types, different CO<sub>2</sub> prices or different heat demands in the region).


### Ref. DH economic assessment
In this worksheet various scenarios for the construction of district heating grids in the region under investigation can be defined. To do so, the user runs different scenarios with the [CM - District heating potential: economic assessment](/en/CM-District-heating-potential-economic-assessment) and copies the results of the module from the toolbox into this worksheet (cells C29:T44). Out of broader set of calucalted scenarios the user then chooses 9 scenarios to be used for the overall scenario assessment (C52:K67).
The user is free to decide on which scenarios for the construction of district heating grids are collected in this sheet (e.g. different market shares of district heating in district heating areas, different grid cost ceilings or different overall heat demands in the region).


### Ref. DH supply dispatch
The input used to run several scenarios of the *CM DH Supply Dispatch* are to be written in the blue cells, and each run's output is to be pasted in the yellow fields. This sheet is also meant to combine a number of decentral heating scenarios that will be considered for the portion of decentral heating in each one of the scenarios assessed in the Final Table. As for the previous sheet, if the sensitivity analysis builds on one fixed decentral heating scenario and evaluates the impact of nine levels of penetration of district heating, then the Decentral Heating Economics Assessment outcome should be pasted in all the nine columns of this sheet. Conversely, if different decentral heating scenarios are compared, a separate run of the Calculation module should be complete for each scenario.

[**`To Top`**](#table-of-contents)


## Interpretation of results
After copying your results from the three modules: Decentral heating supply, district heating economic assessment and district heating supply dispatch to the corresponding sheets you will get whole scenario results in the final table sheet for your evaluated area.
The large diagram under Output data in the Final table sheet shows the results of these overall scenarios collected. The presented results can be divided into various categories. Costs, emissions, absolute energy as well as shares in the overall system are among them.
[[/en/CM-Scenario-assessment/picture1.jpg]]
In general, all these results are individually calculated for the decentral as well as the area supplied with central heat and are applied to the overall scenario using their respective shares. They are therefore listed separately as individual components of the respective parameter.
### Costs
The scenario assessment file offers two different costs which can be further analysed. The CAPEX/OPEX represent the annual absolute costs of the system. They are further subdivided into the shares of the decentralized-, centralized generation of heat and the share of the grid, which represents the distribution costs of the central heat. Taken together they make up the total costs of the respective scenario. These costs are represented in the Costs in M EUR/yr plot to the right of the table.
The second cost parameter which is provided are the LCOH (levelized costs of heat) which describes how much the supply costs per amount of energy. The division into decentralized, centralized, and total LCOH allows an interpretation of the two components and relation to the total system. This can also be done in the LCOH in EUR/MWh diagram on the right.
[[/en/CM-Scenario-assessment/picture2_new.jpg]]
### Emissions
To be able to compare the emissions of different scenarios, they are calculated under CO2 emissions. They are divided into centralized and decentralized scenarios, which in turn are divided into the technologies used. This allows a precise analysis on a technology level to evaluate them among each other or to identify large sources. Regarding central emissions, the additional emissions are also included here, which occur due to the distribution line losses. They can be adjusted in line 121, under Grid losses.
[[/en/CM-Scenario-assessment/picture3.jpg]]
Also, there is again a diagram which shows the emissions of the different scenarios. (Emissions in t CO2/yr)
### Absolute energy
To compare the energy shares of the individual scenarios, the entries Final Energy and Useful Energy are suitable.
Final Energy refers to the necessary use of energy sources to achieve useful energy with the technologies used and their efficiency. In relation to centralized, the line losses are also included here. A comparison of the final energy of the individual scenarios is again right beside the table in the diagram final energy in GWh/yr.
The portion of final energy which is available after final conversion to the consumer for the respective use is called useful energy. The parts from the different technologies are shown under in the table under useful energy or in the diagram useful energy in GWh/yr on the right side.
### Shares
Finally, the document offers a comparison of four different shares. 
Three of them are renewable shares. In the table renewable factor below, you can indicate factors for different technologies. We have provided default values here, but these can be changed as desired.
The fourth share describes the portion from final energy supplied by district heating the whole system final energy. 
All the shares can be found in the graphic Shares in % to the right of the table.
[[/en/CM-Scenario-assessment/picture4.jpg]]

[**`To Top`**](#table-of-contents)


## Sample run
(Tomaszów Mazowiecki)

With the download of the Excel file, you will receive a ready-to-fill version of the scenario assessment. 
After a successful calculation of individual scenarios using the modules decentral heating supply, district heating economic assessment and district heating supply dispatch, the respective results of the modules can be copied into the corresponding sheets of the document.
Here three scenarios for the polish city Tomaszów Mazowiecki are evaluated.

### Filling in Dec. heating supply data
As the CM Dec. Heating supply only calculates individual building classes, these must first be combined to an entire building stock of the area under investigation. This can be achieved by using the provided template. TODO 
Then the desired scenarios can be entered (copy data into the corresponding columns)
[[/en/CM-Scenario-assessment/sample_run_picture1.jpg]]

### Filling in DH economic assessment data
The next step in building the whole area scenarios is to choose the scenarios of the district heating grids. This is done by pasting the output data from the CM DH economic assessment in the corresponding sheet. Here once again, paste the data for your scenarios to the corresponding columns.
[[/en/CM-Scenario-assessment/sample_run_picture2.jpg]]

### Filling in DH supply dispatch data
The last bit of data needed are the scenarios for the supply of the district heating network. These data are obtained through calculating it with the DH supply dispatch module. Also, copy your results from that module to the corresponding scenario in the sheet DH supply dispatch. Please note hear, that you must copy in two parts of the results. After running the DH supply dispatch module, the first one is provided through export indicators and the second one through switching to the tab graphic and clicking on export graphs at the very bottom. 
[[/en/CM-Scenario-assessment/sample_run_picture3.jpg]]

### Final table 
After copying the individual data, the compiled scenarios can be examined in the Sheet final table. On the one hand there is a table showing the exact results and on the other hand you can find some graphs on the right side.
[[/en/CM-Scenario-assessment/sample_run_picture4.jpg]]



[**`To Top`**](#table-of-contents)

## How to cite

Giulia Conforto and David Schmidinger, in Hotmaps-Wiki, CM-Scenario-assessment (September 2020)


[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Giulia Conforto and David Schmidinger **[e-think](https://e-think.ac.at)**.

&#9745; This page was reviewed by Marcul Hummel **[e-think](https://e-think.ac.at)**.


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Giulia Conforto and David Schmidinger

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

 [German](../de/CM-Scenario-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated
