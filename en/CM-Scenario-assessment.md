<h1>CM Scenario assessment</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Calculation module: Scenario assessment inputs](#calculation-module-scenario-assessment-inputs)
* [Overall scenario assessment](#overall-scenario-assessment)
* [Interpretation of input parameters](#intepretation-of-input-parameters)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run 1: Calculation module scenario comparison](#test-run-1-calculation-module-scenario-comparison)
  * [Test Run 2: Overall scenario assessment](#test-run-2-overall-scenario-assessment)
* [Interpretation of results](#interpretation-of-results)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## In a glance

This module allows comparing up to 10 different scenarios. The module is not integrated into the Hotmaps Toolbox, but it is provided as a separate Excel sheet that combines the results of other calculation modules which must be previously run.
>>> ADD ATTACHMENT WITH THE EXCEL WORKBOOK

[**`To Top`**](#table-of-contents)

## Introduction

This module offers a quick comparison of scenarios, based on the results of the following calculation modules: Decentral heating supply, District heating potential: economic assessment, and District heating supply dispatch. These modules must be run independently for each scenario under consideration, then the results shall be reported in the Excel Workbook by compiling the relevant sheet. Bear in mind that in order to have the input for the above-mentioned calculation modules, other modules must be previously run, as specified below in the **Calculation module: Scenario assessment inputs**(#calculation-module-scenario-assessment-inputs). The overall indicators are calculated and shown in the sheet "Final Tabel" both in the form of a table and charts: cost per year, levelized costs, CO2 emissions, final energy, useful energy, and RES/DH shares.

[**`To Top`**](#table-of-contents)

## Calculation module - Scenario assessment inputs

In the following, the required indicators from each calculation module needed for the "**Calculation module - Scenario assessment**" are enumerated. These indicators should be saved for each scenario tag and later on, be compiled in the scenario assessment workbook.

### CM - Customized heat and floor area density maps

* Total floor area in _*m<sup>2</sup>*_
* Total heat demand in _*MWh*_


### CM - Demand projection

* Total floor area in _*m<sup>2</sup>*_
* Total heat demand in _*MWh*_


### CM - Renewable energy


### CM - District heating supply dispatch


### CM - Heat load profiles



### CM - District heating potential areas: user-defined thresholds

* Total heat demand in potential district heating areas in *_MWh_*
* Share of heat demand in district heating areas from the total heat demand in the selected area in _*%*_


### CM - District heating potential: economic assessment

* District heating potential in the last year of the investment in _*MWh*_
* Share of heat demand in district heating areas from the total heat demand in the selected area in _*%*_
* Average specific **distribution** grid cost in economic district heating areas in _*EUR/MWh*_


### CM - District heating supply dispatch

* Energy carrier mix in form of stacked bar chart:
  * Consumption level in _*MWh*_
  * CO<sub>2</sub> emissions in _*tons/year*_ per energy carrier
  * Overall supply cost in _*EUR/MWh*_ for the whole carrier mix: CAPEX + OPEX + Energy Costs

```
Note: the supply cost in scenario assessment may become very large if we show it in the form of bar charts for all energy carriers.
It shall be discussed further for the implementation.
```

### CM - Decentral heating supply - City level

* Energy carrier mix in form of stacked bar chart:
  * Referenced heat cost for the whole energy carrier mix in _*EUR/MWh*_: CAPEX + OPEX + Energy Costs
  * Decentral heating CO<sub>2</sub> emission per energy carrier in _*tons/year*_
* Weighted average levelized cost of heat for the building stock in _*EUR/MWh*_


### CM - Excess heat transport potential

* Available Excess heat potential in _*MWh*_
* Cost of excess heat in _*EUR/MWh*_


[**`To Top`**](#table-of-contents)

## Overall scenario assessment

The indicators for this part originate from two calculation modules:

1. CM - Decentral heating supply
1. CM - District heating potential: economic assessment
1. CM - District heating supply dispatch

For each scenario tag, the following three indicators are shown in the form of **stacked bar chart**:

* Overall (aggregated) costs of heat supply by **district heating system** and **decentral heating system** in _*EUR*_
* Overall (aggregated) CO<sub>2</sub> emissions by **district heating system** and **decentral heating system** in _*tons/year*_
* Overall energy carrier mix in _*MWh*_


[**`To Top`**](#table-of-contents)

## Interpretation of input parameters


[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module](#github-repository-of-this-calculcation-module)


[**`To Top`**](#table-of-contents)

## Sample run


[**`To Top`**](#table-of-contents)

### Test Run 1: Calculation module scenario comparison


[**`To Top`**](#table-of-contents)

### Test Run 2: Overall scenario assessment


[**`To Top`**](#table-of-contents)

## Interpretation of results](#interpretation-of-results


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
