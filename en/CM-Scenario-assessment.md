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

In each scenario, a certain split between central and decentral heat supply is assumed together with assumptions on the development of the heat demand in the region. For instance, a sensitivity analysis for a set of different district heating system sizes with different supply technologies may be compared. The scenario may vary by the capacity of the heat generators in the district heating system, the connection rates to the district heating system or the costs and prices for different technologies. Similarly, for decentral supply, various system parameters could be varied and the effects on the overall heating system in the region can be analyzed.

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


## Interpretation of input parameters

The input parameters needed to run this module are divided into:

* Parameters to be selected/filled out in the calculation modules on the Toolbox: highlighted in turquoise in the workbook. 
* Parameters to be selected/filled out in the workbook, but these are already provided as default values: highlighted in green in the workbook.
* Parameters provided as output data in the Toolbox, to be copied into the workbook in the fields highlighted in yellow.
* Parameters calculated and provided as output data in the Workbook, to be copied into another sheet as input for further elaboration: highlighted in red.

On top of these, the workbook has instructions in red text and additional calculations that should not be edited in grey cells. The picture below shows how the colour-coding indicated on the front sheet of the workbook looks like.

<img src="/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg"/>


### Final Table - Overview of assessment results

The sheet named "Final Table" mainly shows the overall output parameters both in figures and charts. Also, it has few input parameters that need to be provided by the user.

A *Scenarios Table* (R4:Z17) is ready to be filled with a short description of the different scenarios assessed. Placed right above the charts, this table can be a reminder for the user or clarification for other collaborators.

Further down in the sheet there are some parameters that have already been filled out, but can be adjusted, as long as they are not left empty:
* *Renewable factor* (F102:H116): is used to calculate the renewable final energy out of total final energy demand. 
* *General efficiency factor* (K102): is used to calculate the total useful energy demand out of total final energy demand.
* *Grid losses* (F121:N121): is used to calculate the demand for heat supply in the district heating system out of the share of useful energy supplied by district heating (see the following figure).

<img src="/en/CM-Scenario-assessment/picture3.jpg"/>


### Definition of the building stock and calculation of indicators for decentral heating supply

A set of three sheets is used to describe the building stock of the region under investigation. The three sheets are used to collect the results of the CM - Decentral heating supply for single buildings, combine the single buildings to a building stock and to calculate the indicators for decentral heating supply needed for the overall scenario assessment. The content and filling of the different sheets is described in the following.

**1. Single-family buildings**
This worksheet is prepared to collect the results of the [CM - Decentral heating supply](/en/CM-Decentral-heating-supply) for single-family buildings. Two different types of single-family buildings can be taken into account in the default version of the workbook. However, the user can adapt the workbook in order to combine any number of different single-family buildings (e.g. from different construction periods or different types like detached or semi-detached).

**2. MF & non-res buildings**
This worksheet is prepared to collect the results of the [CM - Decentral heating supply](/en/CM-Decentral-heating-supply) for multi-family as well as non-residential (non-res) buildings. 8 different types of multi-family and non-residential buildings can be taken into account in the default version of the workbook. However, the user can adapt the workbook in order to combine any number of different multi-family and non-residential buildings (e.g. from different construction periods or different types like small multi-family buildings, apartment blocks, offices, hotels & restuarants, education, etc.).

**Building stock & Dec supply**
In this sheet, the building stock of the region under investigation is compiled out of the building types defined and calculated in the previous two worksheets (C15:L15). Furthermore, the split of technologies assumed to be used in the different building types is defined (C17:L25) and the indicators for decentral heating supply in the building stock are calculated (E44:E77). For this also the overall heat demand in the region under investigation (E9) as well as the assumed CO<sub>2</sub>-price (E10) have to be defined by the user.


### Ref. Decentral (Dec.) heating supply

In this worksheet, various scenarios for decentral heating supply in the region under investigation can be defined. To do so, results from the calculation in the previous worksheet (Building stock & Dec supply, cells E44:E77) can be copied into the yellow marked cells in this worksheet. The worksheet in its default version is prepared to compile 9 different scenarios.
The user is free to decide on which scenarios for decentral heating supply are collected in this sheet (e.g. different technology split in the different building types, different CO<sub>2</sub> prices or different heat demands in the region).


### Ref. DH economic assessment

In this worksheet, various scenarios for the construction of district heating grids in the region under investigation can be defined. To do so, the user runs different scenarios with the [CM - District heating potential: economic assessment](/en/CM-District-heating-potential-economic-assessment) and copies the results of the module from the toolbox into this worksheet (cells C29:T44). Out of broader set of calucalted scenarios the user then chooses 9 scenarios to be used for the overall scenario assessment (C52:K67).
The user is free to decide on which scenarios for the construction of district heating grids are collected in this sheet (e.g. different market shares of district heating in district heating areas, different grid cost ceilings or different overall heat demands in the region).


### Ref. DH supply dispatch

In this worksheet, various scenarios for the supply of heat to potential district heating systems can be defined. To do so, the user runs different scenarios with the [CM - District heating supply dispatch](/en/CM-District-heating-supply-dispatch) and copies the results of the module from the toolbox into this worksheet (cells D84:L98 for the results in the section called "INDICATORS" and cells D104:L195 for the results in the section called "GRAPHICS").
The user is free to decide on which scenarios for the supply of heat to potential district heating systems are collected in this sheet (e.g. different combinations of technologies, different heat demands in the district heating systems, different CO<sub>2</sub> prices or different energy carrier prices).


[**`To Top`**](#table-of-contents)


## Interpretation of results

After filling in the scenario data into the three worksheets (Ref. Dec. heating supply, Ref. DH economic assessment, Ref. DH supply dispatch) the indicators for the defined scenarios are automatically calculated in the sheet "Final table". The table in the cells B7:N88 shows the results of these overall scenarios. Indicators are calculated for costs, emissions, energy demand as well as shares of renewable energy and district heating.

<img src="/en/CM-Scenario-assessment/picture1.jpg"/>

In general, all these results are individually calculated for the decentral as well as the area supplied with district heating and are applied to the overall scenario using their respective shares. They are therefore listed separately as individual components of the respective parameter.

### Costs

The scenario assessment file shows a split of the overall costs into capital expenditures (CAPEX), operational expenditures (OPEX), expenditures for energy as well as for CO<sub>2</sub>. These different cost categories are presented both for central and decentral supply in the region. Furthermore, the costs for the distribution grid are shown. All of those cost components are shown in _**M EUR/yr**_.
Besides the overall yearly costs also the levelised costs of heat supply (LCOH) are shown in the table. They are presented in _**EUR/MWh**_
Both the yearly costs as well as the LCOH are shown in figures as well. These can be found beside the table as shown in the next figure.

<img src="/en/CM-Scenario-assessment/picture2_new.jpg"/>

### Emissions

The scenario assessment file also provides the absolute amounts of CO<sub>2</sub> emissions in the different scenarios. The values are shown for the different supply technologies distinguishing between individual (decentral) and district heating (central) supply. The values are given in _**tCO<sub>2</sub>/yr**_.
Again, the amounts of emissions are also shown in the form of a diagram right beside the table.

### Energy demand (final and useful energy)

In the table also the demands for final and useful energy are presented. In the final energy demand also the losses in the district heating system are contained. Therefore, the final energy demand values for district heating (central) supply reflect the energy carrier demand in the plants of the district heating system. Both, the values for useful and for final energy demand are shown in _**GWh/yr**_.

### Shares of renewable energy and district heating

Finally, the table offers a comparison of four different shares: the share of renewable energy in decentral supply, in central supply and in the overall heat supply in the area, and the share of district heating / central supply in the area. As for the other values, these values are also presented in figures right beside the table.

<img src="/en/CM-Scenario-assessment/picture4.jpg"/>

[**`To Top`**](#table-of-contents)


## Sample run

(Tomaszów Mazowiecki)

With the download of the Excel file, you will receive a ready-to-fill version of the scenario assessment. After a successful calculation of scenarios using the modules CM - Decentral heating supply, CM - District heating potential: economic assessment and CM - District heating supply dispatch, the respective results of the modules can be copied into the corresponding sheets of the document.
In the following three scenarios for the polish city Tomaszów Mazowiecki are evaluated as an example.

### Ref. Dec. heating supply
In this example one scenario of decentral heating supply for the city of Tomaszów Mazowiecki in Poland has been calculated using the Hotmaps toolbox together with the sheets in the section building stock according to the procedure described in [this section of the page](CM-Scenario-assessment#interpretation-of-input-parameters_definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply). This scenario for decentral supply has been copied to the scenarios 1, 2 and 3 in the scenario assessment file, worksheet "Ref. Dec. heating supply" in order to use the same individual heating supply scenario in all three overall city scenarios that are compared.

<img src="/en/CM-Scenario-assessment/sample_run_picture1.jpg"/>

### Ref. DH economic assessment
In this example, one scenario of district heating grid construction for the city of Tomaszów Mazowiecki in Poland has been calculated using the Hotmaps toolbox. This scenario has been copied to scenarios 1, 2, and 3 in the scenario assessment file, worksheet "Ref. DH economic assessment" in order to use the same district heating grid construction scenario in all three overall city scenarios that are compared.

<img src="/en/CM-Scenario-assessment/sample_run_picture2.jpg"/>

### Ref. DH supply dispatch
In this example, three different scenarios of district heating supply for the city of Tomaszów Mazowiecki in Poland has been calculated using the Hotmaps toolbox. The scenarios reflect different combinations of supply technologies, namely different capacities of heat pumps, excess heat as well as heat only boilers.

<img src="/en/CM-Scenario-assessment/sample_run_picture3.jpg"/>

### Final table 
After copying the individual data, the compiled scenarios can be examined in the sheet Final Table. On the one hand, there is a table showing the exact results and on the other hand, you can find corresponding graphs on the right side of the table. In this example, the effects of using different capacities of supply technologies in the district heating system can be assessed based on the costs, emissions, energy demand, and shares of renewable energy.

<img src="/en/CM-Scenario-assessment/sample_run_picture4.jpg"/>




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

 [Bulgarian](../bg/CM-Scenario-assessment)<sup>\*</sup> [Czech](../cs/CM-Scenario-assessment)<sup>\*</sup> [Danish](../da/CM-Scenario-assessment)<sup>\*</sup> [German](../de/CM-Scenario-assessment)<sup>\*</sup> [Greek](../el/CM-Scenario-assessment)<sup>\*</sup> [Spanish](../es/CM-Scenario-assessment)<sup>\*</sup> [Estonian](../et/CM-Scenario-assessment)<sup>\*</sup> [Finnish](../fi/CM-Scenario-assessment)<sup>\*</sup> [French](../fr/CM-Scenario-assessment)<sup>\*</sup> [Irish](../ga/CM-Scenario-assessment)<sup>\*</sup> [Croatian](../hr/CM-Scenario-assessment)<sup>\*</sup> [Hungarian](../hu/CM-Scenario-assessment)<sup>\*</sup> [Italian](../it/CM-Scenario-assessment)<sup>\*</sup> [Lithuanian](../lt/CM-Scenario-assessment)<sup>\*</sup> [Latvian](../lv/CM-Scenario-assessment)<sup>\*</sup> [Maltese](../mt/CM-Scenario-assessment)<sup>\*</sup> [Dutch](../nl/CM-Scenario-assessment)<sup>\*</sup> [Polish](../pl/CM-Scenario-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scenario-assessment)<sup>\*</sup> [Romanian](../ro/CM-Scenario-assessment)<sup>\*</sup> [Slovak](../sk/CM-Scenario-assessment)<sup>\*</sup> [Slovenian](../sl/CM-Scenario-assessment)<sup>\*</sup> [Swedish](../sv/CM-Scenario-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated
