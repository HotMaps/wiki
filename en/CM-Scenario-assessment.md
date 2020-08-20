<h1>CM Scenario assessment</h1>

## Table of Contents
* [At a glance](#at-a-glance)
* [Introduction](#introduction)
* [Scenario assessment inputs and outputs](#scenario-assessment-inputs-and-outputs)
* [Interpretation of input parameters](#intepretation-of-input-parameters)
* [Interpretation of output results](#interpretation-of-results)
* [Sample run](#sample-run)
* [References](#references)
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
* The building stock for the selected area
* Costs, emissions, and energy for decentral heating supply,
* Costs, emissions, and energy for a district heating supply economic assessment,
* Supply dispatch costs, based on the size of the network assumed.

In each scenario, a certain portion of heating is assumed to be provided through decentral heating and another through district heating. For instance, a sensitivity analysis for a set of different district heating systems, with different penetration levels and different centralised heating supply technologies that may vary by the capacity of the energy generators could be built upon one common business case of decentral heating with certain fixed supply options. Viceversa, other sensitivity assessments could be run with one centralised heat supply scenario, investigating the impact of the different decentralised technologies, or with any other combination of scenarios.

The user runs independently all the calculations modules for each scenario under consideration, reports the results in the relevant sheet of Excel Workbook, and then compares them. 


[**`To Top`**](#table-of-contents)


## Scenario assessment inputs and outputs

The inputs compiled in the scenario assessment Workbook are produced by the following calculation modules: 

**1. [CM - Decentral heating supply](https://wiki.hotmaps.hevs.ch/en/CM-Decentral-heating-supply)**

**2. [CM - District heating supply dispatch](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-supply-dispatch)**

**3. [CM - District heating potential: economic assessment](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-potential-economic-assessment)**

The input and output of these modules should be saved for each scenario and then compiled in the scenario assessment workbook.  The cells to be filled are properly marked and a colour-coding legend is reported on the first sheet of the workbook, as explained in the following paragraph [Interpretation of input parameters](#intepretation-of-input-parameters). The three above-mentioned calculation modules, require some inputs that you may already have, or that you may have to calculate running other modules, as specified in the following paragraph as well as in the **[Training section]()**.

The sheet "Final Tabel" calculates and shows a comparison of these indicators both in the figures and charts for each scenario:
* Cost per year,
* Levelized costs,
* CO2 emissions,
* Final energy,
* Useful energy,
* RES/DH shares.

For each scenario, the following indicators are shown in the form of a stacked bar chart:
* Overall (aggregated) costs of heat supply by district heating system and decentral heating system in _*M EUR/year*_
* Overall (aggregated) CO<sub>2</sub> emissions by district heating system and decentral heating system in _*tons/year*_
* Overall energy carrier mix in _*MWh*_
* Overal (aggregated) final energy and useful energy in _*GWh/year*_


[**`To Top`**](#table-of-contents)


## Interpretation of input parameters

The input parameters needed to run this module are divided into:

* Parameters to be selected/filled out in the calculation modules on the Toolbox: highlighted in turquoise in the workbook. 
* Parameters to be selected/filled out in the workbook, but these are already provided as default values: highlighted in green in the workbook.
* Parameters provided as output data in the Toolbox, to be copied into the workbook in the fields highlighted in yellow.
* Parameters calculated and provided as output data in the Workbook, to be copied into another sheet as input for further elaboration: highlighted in red.

On top of these, the workbook has instructions in red text and additional calculations that should not be edited in grey cells. The picture below shows how the colour-coding indicated on the front sheet of the workbook looks like.

[[/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg]]
 
### Final Table

This sheet mainly shows the overall output parameters both in figures and charts, and it has few input parameters.

A *Scenarios Table* (R4:Z17) is ready to be filled with a short description of the different scenarios object of the assessment. Placed right above the charts, this table can be a reminder for the user or clarification for other collaborators.

Further down in the sheet there are some parameters that have already been filled out, but can be adjusted, as long as they are not left empty:
* *Renewable factor*: is used to calculate the green final energy out of total final energy demand. 
* *General efficiency factor*: is used to calculate the total useful energy demand out of total final energy demand.
* *Grid losses*: is used to build the decentral and district heating factor to calculate all the main overall indicators(levelized cost LCOH, CO2 emissions, Final energy, and Useful energy).


### Building Stock

This set of three tabs is used to build the building stock that will be used as an input parameter to calculate the output of the decentral heating supply. Please visit the [CM - Decentral heating supply](https://wiki.hotmaps.hevs.ch/en/CM-Decentral-heating-supply) page for a deeper understanding of how the building stock feeds into that module.

**Single-family building stock**
The worksheet as it is offers to structure a building stock for single-family houses of two different types: each column is dedicated to a building type and the CM - Decentral heating supply should be run once per each type. However, the user can adapt the Workbook in order to combine any number of different building categories (e.g. per age, gross floor area, category, etc.). 

**Multi-family building stock**
The worksheet as it is offers to structure a building stock for multi-family houses of eight different types: each column is dedicated to a building type and the CM - Decentral heating supply should be run once per each type. However, the user can adapt the Workbook in order to combine any number of different building categories (e.g. per age, gross floor area, category, etc.). 


### Decentral heating supply
In this sheet, the input to enter is the *Heat demand total (Final Energy)* for the selected area and the *Share of building type on the total useful energy demand for heat in 2050* per each type of building. The template offers a set of 10 different types of building, per category and age. The user can adjust the parameters of the building types, as well as the total number of building types combined at this stage, and the *Share of total useful heat demand in the building type supplied by the different individual heating technologies*.

### Ref. Decentral heating supply
The output of the previous sheet *Decentral heating supply*, shown in fields highlighted in red, is to be copied and pasted in this sheet in the yellow fields. This sheet is meant to combine a number of decentral heating scenarios that will be considered for the portion of decentral heating in each one of the scenarios assessed in the Final Table. So for instance, if the sensitivity analysis builds on one fixed decentral heating scenario and evaluates the impact of nine levels of penetration of district heating, then the previous steps should be carried out only once and the Decentral heating supply outcome should be pasted in all the nine columns of this sheet. Conversely, if different decentral heating scenarios are compared, the three steps previously described should be repeated for each one.

### Ref. DH Economic Assessment
The input used to run several scenarios of the *CM DH Economic Assessment* are to be written in the blue cells, and each run's output is to be pasted in the yellow fields. This sheet is also meant to combine a number of decentral heating scenarios that will be considered for the portion of decentral heating in each one of the scenarios assessed in the Final Table but in relation to the economic assessment and costs. As for the previous sheet, if the sensitivity analysis builds on one fixed decentral heating scenario and evaluates the impact of nine levels of penetration of district heating, then the Decentral Heating Economics Assessment outcome should be pasted in all the nine columns of this sheet. Conversely, if different decentral heating scenarios are compared, a separate run of the Calculation module should be complete for each scenario.

### Ref. DH supply dispatch
The input used to run several scenarios of the *CM DH Supply Dispatch* are to be written in the blue cells, and each run's output is to be pasted in the yellow fields. This sheet is also meant to combine a number of decentral heating scenarios that will be considered for the portion of decentral heating in each one of the scenarios assessed in the Final Table. As for the previous sheet, if the sensitivity analysis builds on one fixed decentral heating scenario and evaluates the impact of nine levels of penetration of district heating, then the Decentral Heating Economics Assessment outcome should be pasted in all the nine columns of this sheet. Conversely, if different decentral heating scenarios are compared, a separate run of the Calculation module should be complete for each scenario.


[**`To Top`**](#table-of-contents)

## Interpretation of results

### Final Table


[**`To Top`**](#table-of-contents)


## Sample run: Tomaszów Mazowiecki


[**`To Top`**](#table-of-contents)

## References


[**`To Top`**](#table-of-contents)

## How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-Scenario-assessment (June 2019)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

- [ ] This page is written by Mostafa Fallahnejad, Giulia Conforto and David Schmidinger\*.

\* [e-think - energy research](http://e-think.ac.at/)

Argentinierstrasse 18/10

A-1040 Wien, Austria


- [ ] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)

Institute of Energy Systems and Electrical Drives

Gusshausstrasse 27-29/370

1040 Wien


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2019: Mostafa Fallahnejad

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.



[**`To Top`**](#table-of-contents)


<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Scenario-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated
