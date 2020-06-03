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

This module allows comparing different scenarios. The module is not integrated into the Hotmaps Toolbox, but it is provided as a separate Excel workbook that combines the results of other calculation modules which must be previously run. The template as it is allows comparing up to 10 different scenarios, but if properly adapted, it can work for any number of scenarios. Separate worksheets are set up to collate the key indicators from each calculation module, while key indicators are automatically collated in the final table and represented in graphs.

For instance, the scenarios assessment could be built upon one common business case of decentral heating with certain fixed supply options, examined in a sensitivity analysis for a set of different district heating systems, with different penetration levels and different centralised heating supply technologies that may vary by the capacity of the energy generators. Viceversa, another sensitivity assessment could be run with one centralised heat supply scenario, investigating the impact of the different decentralised technologies, or any other combination of scenarios.

>>> ADD ATTACHMENT WITH THE EXCEL WORKBOOK


[**`To Top`**](#table-of-contents)

## Introduction

The Scenario Assessment module offers a quick comparison of different scenarios, based on the results of the following calculation modules: 
* Decentral heating supply,
* District heating potential: economic assessment,
* District heating supply dispatch.

These modules shall be run independently for each scenario under consideration, then their results shall be reported in the relevant sheet of Excel Workbook. The cells to be filled are properly marked and a color-coding legend is reported on the first sheet of the workbook. Bear in mind that the three above-mentioned calculation modules, require some inputs that you may already have, or that you may have to calculate running other modules, as specified in the following paragraph **Scenario assessment inputs and outputs**.

The sheet "Final Tabel" calculates and shows a comparison of these indicators both in the figures and charts for each scenario:
* Cost per year,
* Levelized costs,
* CO2 emissions,
* Final energy,
* Useful energy,
* RES/DH shares.

[**`To Top`**](#table-of-contents)

## Scenario assessment inputs and outputs

The inputs compiled in the scenario assessment module are produced by the following calculation modules. 

**1. [CM - Decentral heating supply](https://wiki.hotmaps.hevs.ch/en/CM-Decentral-heating-supply)**

**2. [CM - District heating supply dispatch](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-supply-dispatch)**

**3. [CM - District heating potential: economic assessment](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-potential-economic-assessment)**

These indicators should be saved for each scenario tag and later on, be compiled in the scenario assessment workbook. In case the inputs required by these modules were not available, they can be calculated using other calculation modules on the Toolbox as shown in the **[Training section]()**.

For each scenario tag, the following indicators are shown in the form of stacked bar chart:

* Overall (aggregated) costs of heat supply by district heating system and decentral heating system in _*M EUR/year*_
* Overall (aggregated) CO<sub>2</sub> emissions by district heating system and decentral heating system in _*tons/year*_
* Overall energy carrier mix in _*MWh*_
* Overal (aggregated) final energy and useful energy in _*GWh/year*_


[**`To Top`**](#table-of-contents)

## Interpretation of input parameters


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
