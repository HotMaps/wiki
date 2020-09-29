<h1>CM Decentral heating supply</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
  * [Inputs](#inputs-and-outputs_inputs)
    * [Default input data](#inputs-and-outputs_inputs_default-input-data)
    * [Manual input data](#inputs-and-outputs_inputs_manual-input-data)
  * [Outputs](#inputs-and-outputs_outputs)
    * [Indicators](#inputs-and-outputs_outputs_indicators)
    * [Graphs](#inputs-and-outputs_outputs_graphs)
* [Methodology](#methodology)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run](#sample-run_test-run)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
This module calculates the costs of heat supply in buildings via decentral heat supply technologies. Inputs to the module are investment costs, O&M costs, energy prices, the hourly load profile of heat demand as well as depreciation time and interest rate. Furthermore, the composition of buildings and renovation states of the buildings in the analysed area are required. The outputs are heat supply costs of various decentral heat supply technologies for the defined buildings and price assumptions as well as reference decentral supply costs for the analysed area and related CO2 emissions.

[**`To Top`**](#table-of-contents)

## Introduction

This calculation module calculates the levelized cost of heat (LCOH) for various decentral heat supply technologies for supplying heat to a user-defined building.

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/1.png)

The technologies are for example as follows:

* Heat pump air-to-air, air-to-water and Brine-to-water,
* Electric heater,
* Bio-oil boiler,
* Oil boiler,
* Biomass automatic and manual,
* Wood-stove,
* Natural gas,
* Solar thermal

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Inputs and outputs: 

### Inputs

#### Default input data 

Part of the input data comes from the Hotmaps default data sets. These include: 
-   NUTS Raster
-   Building stock (NUTS0 Level): useful energy demand by building class and
    construction period
-   Load profiles (NUTS2 Level)
-   Financial Data - Heating Systems (NUTS0 Level)
-   Financial Data - Energy Carrier Prices (NUTS0 Level)

[**`To Top`**](#table-of-contents)

#### Manual input data 

The following input data should be entered manually after the selection of an area: 
-   Building age,
-   Interest rate,
-   Gross floor area,
-   Building Type,
-   Year (for finance data),
-   Savings in space heating,
-   Emission factors per energy carrier.

**IMPORTANT NOTE** In Hotmaps biomass emissions are not assumed zero because Hotmaps is a tool aimed at supporting the ongoing energy transition. Considering biomass as a carbon-neutral source of energy implies that burning biomass reduces the current total emissions compared to burning fossil fuels, which is not true. The storage of carbon dioxide in trees happens over decades, while its release in the atmosphere takes place all at once. Therefore, it can be concluded that the net carbon balance of biomass is zero in the long run, but not in the short run and climate change mitigation measures need to bring results in reducing carbon emissions in the short run.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Outputs:

#### Indicators:
Indicators are composed of a summary of input parameters and calculated values:

- Corresponding NUTS Code: NUTS3 Code of the selected region (when using
    hectare level or LAU level),
- entered savings in space heating,
- entered gross floor area,
- entered year,
- entered interest rate,
- entered building age,
- entered building type,
- annual useful energy demand of the building,
- Heat Load,
- Sector,
- Used Building type for each the financial data.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### Graphs:

-   LCOH
-   OPEX
-   CAPEX
-   Energy Costs
-   CO2 Emissions
-   Thermal Efficiency
-   Final Energy Demand
-   Total Costs
-   Annuity factor
-   Heat Load

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Methodology:

Based on the selected region the corresponding NUTS0 and NUTS2 Regions are
determined.

Then, for the selected building type and building age and NUTS0 region the
specific useful energy demand is selected and the annual heat demand calculated
by multiplying it by the gross floor area.

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/2.png)

Based on the annual heat demand of the building and the entered savings in space
heating the heat load is calculated with the use the heat load profiles.

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/3.png)

With the heat load, the annual heat demand and the selected year the investment
costs and operational costs and fuel costs **for each heating technology** are
determined.

The specific investment and operational costs are assumed to have an exponential
behavior:

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/4.png)

Based on the country, year and building type of the entered inputs the
factors for each technology are figured out:

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/5.png)

With the factors determined, the absolute costs can be calculated as follows:

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/6.png)

For the fuel costs, the price data of the energy carriers are needed.

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/7.png)

Now we have all the needed data and can calculate the levelized cost of heat.

The levelized cost of heat for each heating system is calculated as the net present value of the cash flow and the heat generation over the lifetime.

The levelized cost of heat is given by:

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/8.png)

In this calculation the yearly costs and the yearly heat production (useful energy demand) is assumed to be constant over the lifetime and thus the summations transform into a geometric series and the transforming factor is called the annuity factor α. A graphical representation of this transforming process is shown in the figures below

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/9.png)

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/10.png)

This assumption simplifies the calculation and the LCOH is given by the following
formula:

![](https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/11.png)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/lcoh/tree/develop) you get the bleeding-edge development for this calculation module.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Sample run

### Test Run 

#### Default Input Parameters

[[/en/CM-Decentral-heating-supply/inputs.png]]

#### Output Indicators With Default Input Parameters

[[/en/CM-Decentral-heating-supply/output_indicators_default_decentral.png]]

#### Output Charts With Default Input Parameters

[[/en/CM-Decentral-heating-supply/output_graphs_default_decentral.png]]

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to cite
Jeton Hasani in Hotmaps-Wiki, CM Decentral heating supply (November 2019)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

This page was written by Jeton Hasani **[EEG - TU Wien](https://eeg.tuwien.ac.at/)**.

&#9745; This page was reviewed by Mostafa Fallahnejad (**[EEG - TU Wien](https://eeg.tuwien.ac.at/)**).


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Jeton Hasani

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>



<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Decentral-heating-supply)<sup>\*</sup> [Italian](../it/CM-Decentral-heating-supply)<sup>\*</sup> 

<sup>\*</sup> machine translated
