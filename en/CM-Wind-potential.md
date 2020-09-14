# CM Wind potential

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## In a glance

This module calculates the wind energy supply potential in a selected area. Inputs to the module are a raster file with the average wind speed and the technical specification of the wind blade and turbine.

[**`To Top`**](#table-of-contents)

## Introduction

This module assess the wind energy that might be generated by a wind turbine with a yearly, monthly and hourly resolution.
The module estimated the number of turbines that might be installed in a predefined area.
It aims to compute the wind energy potential and the financial feasibility of a selected area by considering:
- the installation of new wind systems
- assess the financial feasibility of new plants

[**`To Top`**](#table-of-contents)


## Inputs and outputs

The input parameters and layers as well as output layers and parameters are as follows.

**Input layers and parameters are:**

* raster file:
     * mean wind speed [m/s] 
     * with the area available for the wind exploitation. The default raster use only the areas with low or sparse vegetation, and bare and burnt areas (classes from 3.2.1. to 3.2.4. and 3.3.3., 3.3.4. of Corine Land Cover - CLC). We then excluded the following areas according to sustainability criteria:
          * Areas above 2500 m.a.s.l.;
          * A 1 km buffer from urban areas (classes from 1.1.1. to 1.4.2. of the CLC);
          * Corridors for bird connectivity (Common Database on Designated Areas);
          * Exclusion of protected areas of the Nature 2000 network.
* Wind hub setup costs (all inclusive) price (default value: 2000 €/kWp)
* Distance among wind hubs (default value: 1000m)
* Maintenance and operation costs (default value: 2%)
* Peak power (default value: 800kW)
* Height (default value: 80m)
* Financing years (default value: 20year)
* Discount rate (default value: 4.0%)

**Output layers and parameters are:**

* the total cost of implementing wind systems
* the total yearly energy production
* the Levelized Cost of Energy
* a raster file with the most suitable areas for Wind energy production


[**`To Top`**](#table-of-contents)


## Method

The methodology used by the CM is to used the area selected by the user. The default areas are the areas identified in the wind potential layers that considered only areas with low or sparse vegetation, and bare and burnt areas (classes from 3.2.1. to 3.2.4. and 3.3.3., 3.3.4. of Corine Land Cover - CLC), these areas has been further filtered based on the following excluding criteria:
- Areas above 2500 m.a.s.l.;
- A 1 km buffer from urban areas (classes from 1.1.1. to 1.4.2. of the CLC);
- Corridors for bird connectivity (Common Database on Designated Areas [148]);
- Exclusion of protected areas of the Nature 2000 network [149].

The CM use the user defined distance among the hubs to create a grid of potential hubs in the selected areas.
Based on the number of wind turbine that might be potentially installed, based on the main characteristics of the wind system, height and technical specifications the module compute the energy that can be produced by the system. 

The module obtain the monthly and hourly profile, computing the baricenter of the selected areas and query the [RenewableNinja API](https://www.renewables.ninja/), that provide the data from the MERRAv2 dataset.

[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/wind_potential) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)

## Sample run

![Fig. 1-0](https://wiki.hotmaps.hevs.ch/en/CM-Wind-potential/cm-wind.png "Execute the Wind CM")


[**`To Top`**](#table-of-contents)

## How to cite

Pietro Zambelli, in Hotmaps-Wiki, CM-Wind-potential (September 2020)

[**`To Top`**](#table-of-contents)


## Authors and reviewers

This page is written by Giulia Garegnani and Pietro Zambelli\*.
- [ ] This page was reviewed by Simon Pezzutto\*.

\* [Urban and Regional Energy System Group - EURAC Bozen](http://www.eurac.edu/en/research/technologies/renewableenergy/researchfields/Pages/Energy-strategies-and-planning.aspx)

Institute of Renewable Energy
Drususallee/Viale Druso 1
I-39100 Bozen/Bolzano
Italy

[**`To Top`**](#table-of-contents)


## License

Copyright © 2016-2020: Pietro Zambelli

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

[**`To Top`**](#table-of-contents)


## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 Hotmaps Project (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

[**`To Top`**](#table-of-contents)