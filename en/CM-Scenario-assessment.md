<h1>CM Scenario assessment</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Scenario assessment inputs and outputs](#scenario-assessment-inputs-and-outputs)
* [Interpretation of input parameters](#intepretation-of-input-parameters)
* [Sample run](#sample-run)
  * [Test Run: Example of a scenario assessment](#test-run-example-of-a-scenario-assessment)
* [Interpretation of results](#interpretation-of-results)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## In a glance

This module allows comparing different scenarios. The module is not integrated into the Hotmaps Toolbox, but it is provided as a separate Excel workbook that combines the results of other calculation modules which must be previously run. The template as it is allows comparing up to 9 different scenarios, but if properly adapted, it can work for any number of scenarios. Separate worksheets are set up to collate the key indicators from each calculation module, while key indicators are automatically collated in the final table and represented in graphs.

>>> ADD ATTACHMENT WITH THE EXCEL WORKBOOK


[**`To Top`**](#table-of-contents)

## Introduction

The approach to assess a number of different scenarios in this module build on the following calculation steps:
* The building stock for the selected area
* Costs, emissions and energy parameters for decentral heating supply,
* Costs, emissions and energy parameters for an economic assessment of district heating supply
* Supply dispatch costs, based on the size of the network assumed.

This means that in each scenario a certain portion of heating is assumed to be provided through decentral heating and another through district heating. For instance, the scenarios assessment could be built upon one common business case of decentral heating with certain fixed supply options, examined in a sensitivity analysis for a set of different district heating systems, with different penetration levels and different centralised heating supply technologies that may vary by the capacity of the energy generators. Viceversa, another sensitivity assessment could be run with one centralised heat supply scenario, investigating the impact of the different decentralised technologies, or any other combination of scenarios.

The Scenario Assessment is though to have the user run independently all the calculations modules for each scenario under consideration, then report the results in the relevant sheet of Excel Workbook, and be able to compare and assess them. Bear in mind that the three above-mentioned calculation modules, require some inputs that you may already have, or that you may have to calculate running other modules, as specified in the following paragraph **Scenario assessment inputs and outputs**.


[**`To Top`**](#table-of-contents)

## Scenario assessment inputs and outputs

The inputs compiled in the scenario assessment module are produced by the following calculation modules. 

**1. [CM - Decentral heating supply](https://wiki.hotmaps.hevs.ch/en/CM-Decentral-heating-supply)**

**2. [CM - District heating supply dispatch](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-supply-dispatch)**

**3. [CM - District heating potential: economic assessment](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-potential-economic-assessment)**

These indicators should be saved for each scenario tag and later on, be compiled in the scenario assessment workbook. In case the inputs required by these modules were not available, they can be calculated using other calculation modules on the Toolbox as shown in the **[Training section]()**.

The sheet "Final Tabel" calculates and shows a comparison of these indicators both in the figures and charts for each scenario:
* Cost per year,
* Levelized costs,
* CO2 emissions,
* Final energy,
* Useful energy,
* RES/DH shares.

For each scenario tag, the following indicators are shown in the form of stacked bar chart:

* Overall (aggregated) costs of heat supply by district heating system and decentral heating system in _*M EUR/year*_
* Overall (aggregated) CO<sub>2</sub> emissions by district heating system and decentral heating system in _*tons/year*_
* Overall energy carrier mix in _*MWh*_
* Overal (aggregated) final energy and useful energy in _*GWh/year*_


[**`To Top`**](#table-of-contents)

## Interpretation of input parameters

The input parameters needed to run this module are divided into:

* Parameters to be selected from a drop-menu or filled out in the field in the calculation modules on the Toolbox. These fields are highlighted in turquoise in the workbook. 
* Parameters that can be selected either in the calculation modules on the Toolbox, or in the workbook, but that are already provided as examples and can be considered default values. These fields are highlighted in green in the workbook.
* Parameters that are calculated and provided as output data in the Toolbox, and should be copied into the workbook in the fields highlighted in yellow.
* Parameters that are calculated and provided as output data in the Workbook. These fields are highlighted in red and should be copied into another sheet as input for further elaboration.

On top of these, the workbook has instructions in red text and additional calculations that should not be edited in grey cells. The picture below shows how the color-coding indicated on the front sheet of the workbook looks like.

[[/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg]]
 
#### Final Table

This sheet mainly shows overall output parameters both in figures and charts, and it has few input parameters.

A *Scenarios Table* (R4:Z17) is ready to be filled with short description of the different scenarios object of the assessment. The table is right above the charts, it can be a reminder for the user or clarification for other collaborators.
Further down in the sheet there are some parameters that have already been filled out, but can be adjusted, as long as they are not left empty:

* *Renewable factor*: is used to calculate the green final energy out of total final energy demand. 
* *General efficiency factor*: is used to calculate the total useful energy demand out of total final energy demand.
* *Grid losses*: is used to build the decentral and district heating factor to calculate all the main overall indicators(levelized cost LCOH, CO2 emissions, Final energy, and Useful energy,)

#### Building Stock

This set of three tabs is used to build the building stock that will be used as an input parameter to calculate the output of the decentral heating supply.

**Single-family building stock**
The worksheet as it is offers to structure a building stock for single-family houses of two different ages, although the toolbox offers seven different age categories. The inputs required are structured a follows:
* INPUTS
 * Building Age
 * Interest Rate
 * Gross Floor Area
 * Building category
 * year
 * savings for space heating
* BASIC INPUTS
 * emission factor - Electricity
 * emission factor - Light fuel oil
 * emission factor - Biomass solid
 * emission factor - Natural gas
* INPUT TYPE SELECTION
 * Type: nuts_id_number

**Multi-family building stock**

**Decentral heating building stock** 


[**`To Top`**](#table-of-contents)

## Sample run


[**`To Top`**](#table-of-contents)

### Test Run: Example of a scenario assessment


[**`To Top`**](#table-of-contents)

## Interpretation of results


[**`To Top`**](#table-of-contents)

## References


[**`To Top`**](#table-of-contents)

## How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-Scenario-assessment (June 2019)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page is written by Mostafa Fallahnejad\*.

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
