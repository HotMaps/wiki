<h1>CM Decentral heating supply</h1>

## Table of Contents

* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run 1](#test-run-1)
  * [Test Run 2](#test-run-2)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction

This calclulation module calculates the levelized cost of heat (LCOH) for various technologies to supply a user definded building

![](../images/cm_decentral_heating/new/1.png)

The technologies are for example as follows:

* Heat pump air-to-air, air-to-water and Brine-to-water,
* Electric heater,
* Bio-oil boiler,
* Oil boiler,
* Biomass automatic and manual,
* Wood stove,
* Natural gas,
* Solar thermal

[**`To Top`**](#table-of-contents)

Data Sources:
=============

-   NUTS Raster
-   Building stock (NUTS0 Level): useful energy demand by building class and
    construction period
-   Load profiles (NUTS2 Level)
-   Financial Data - Heating Systems (NUTS0 Level)
-   Financial Data - Energy Carrier Prices (NUTS0 Level):

[**`To Top`**](#table-of-contents)

Inputs: 
========

-   Selection of an interested area
-   Savings in space heating,
-   Gross floor area
-   Year (for finance data)
-   Calculation interest rate,
-   Building age
-   Building Type
-   Emission factors per energy carrier

[**`To Top`**](#table-of-contents)

Outputs:
========

Indicators:
-----------

-   Corresponding NUTS Code: NUTS3 Code of the selected region (when using
    hectare level or LAU level)
-   entered savings in space heating
-   entered gross floor area
-   entered year
-   entered interest rate
-   entered building age
-   entered building type
-   annual useful energy demand of the building
-   Heat Load
-   Sector
-   Used Building type for each the financial data

[**`To Top`**](#table-of-contents)

Graphs:
-------

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

[**`To Top`**](#table-of-contents)

Methodology:
============

Based on the selected region the corresponding NUTS0 and NUTS2 Region is
determined.

Then for the selected building type and building age and NUTS0 region the
specific useful energy demand is selected and the annual heat demand calculated
by multiplying it by the gross floor area.

![](../images/cm_decentral_heating/new/2.png)

[**`To Top`**](#table-of-contents)

Based on the annual heat demand of the building and the entered savings in space
heating the heat load is calculated with the use the heat load profiles.

![](../images/cm_decentral_heating/new/3.png)

[**`To Top`**](#table-of-contents)

With the heat load, the annual heat demand and the selected year the investment
costs and operational costs and fuel costs **for each heating technology** are
determined.

The specific investment and operational costs are assumed to have an exponential
behavior:

![](../images/cm_decentral_heating/new/4.png)

[**`To Top`**](#table-of-contents)

Therefor based on the country, year and building type of the entered inputs the
factors for each technology are figured out:

![](../images/cm_decentral_heating/new/5.png)

[**`To Top`**](#table-of-contents)

With the factors determined the absolute costs can be calculated as follows:

![](../images/cm_decentral_heating/new/6.png)

[**`To Top`**](#table-of-contents)

For the fuel costs the price data of the energy carriers are needed.

![](../images/cm_decentral_heating/new/7.png)

[**`To Top`**](#table-of-contents)

Now we have all needed data and can calculate the levelized cost of heat.

The levelized cost of heat for each heating system is calculated as the net
present value of the cashflow and the heat generation over the lifetime.

The levelized cost of heat is given by:

![](../images/cm_decentral_heating/new/8.png)

[**`To Top`**](#table-of-contents)

In this calculation the yearly costs and the yearly heat production (useful
energy demand) is assumed to be constant over the life time and thus the
summations transform to a geometric series and the transforming factor is called
the annuity factor α. A graphical representation of this transforming process is
shown in the figures below

![](../images/cm_decentral_heating/new/9.png)

![](../images/cm_decentral_heating/new/10.png)

[**`To Top`**](#table-of-contents)

This assumption simplifies the calculation and the LCOH is given by following
formula:

![](../images/cm_decentral_heating/new/11.png)

[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/lcoh/tree/develop) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)


## Sample run

### Test Run 1 

[**`To Top`**](#table-of-contents)

### Test Run 2

[**`To Top`**](#table-of-contents)

## References

## How to cite
 Hotmaps-Wiki, CM-Decentral-heating-costs (November 2019)

[**`To Top`**](#table-of-contents)

## Authors and reviewers
This page is written by \*.
- [ ] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)

Institute of Energy Systems and Electrical Drives

Gusshausstrasse 27-29/370

1040 Wien

[**`To Top`**](#table-of-contents)

## License
Copyright © 2016-2019: 

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

[**`To Top`**](#table-of-contents)

