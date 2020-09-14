# CM Biomass potential

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

This module calculates the energy potential from different biomass sources (forest and agricultural residues) within a NUTS3 region.

[**`To Top`**](#table-of-contents)

## Introduction

This module assess the biomass energy that might be generated from a biomass source.
The aims of this CM is to assess the electric and thermal energy that can be used from the biomass potential of NUTS3 regions. The module consider different typology of biomass that can be exploit to produce energy.
The CM use the default dataset for the whole EU that are at NUTS3 level. 
The CM do not consider which is the biomass that can be sustainable used for the energy production.



[**`To Top`**](#table-of-contents)


## Inputs and outputs

The input parameters and layers as well as output layers and parameters are as follows.


**Input layers and parameters are:**

* vector layer with the mass of biological residues that it is available, per biomass typology;
* Percentage of solid waste that can be effectively collected (default value: 90%)
* Efficiency in transforming solid waste in thermal energy (default value: 50%)
* Efficiency in transforming solid waste in eletrical energy (default value: 20%)
* Percentage of agriculture residues that can be effectively collected (default value: 60%)
* Efficiency in transforming agriculture residues in thermal energy (default value: 50%)
* Efficiency in transforming agriculture residues in eletrical energy (default value: 20%)
* Percentage of livestock effluents that can be effectively collected (default value: 50%)
* Efficiency in transforming livestock effluents in thermal energy (default value: 50%)
* Efficiency in transforming livestock effluents in eletrical energy (default value: 20%)
* Percentage of forest residues that can be effectively collected (default value: 50%)
* Efficiency in transforming forest residues in thermal energy (default value: 50%)
* Efficiency in transforming forest residues in eletrical energy (default value: 20%)

**Output layers and parameters are:**

* the total biomas heat energy potential
* the total biomas electric energy potential
* graph with the electric/thermal energy per biomass type.

[**`To Top`**](#table-of-contents)


## Method

The module for each biomass resource available apply a first percentage to reduce the total amount of biomass that can be effectively and realistically collected. For instance for the forestry biomass can have different percentage of biomass collection rate depending on the forestry ground conditions (e.g. slope, terrain roughness) and the mechanization of the process (e.g. use of cable crane, harvester and forwarder, etc.).
While for each source the user can select the efficiency in transforming the biomass energy into thermal and electricity energy. The user can select different efficiency per biomass sources, because different source might require different treatment and process.


[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/biomass_potential) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)


## Sample run

![Fig. 1-0](https://wiki.hotmaps.hevs.ch/en/CM-Biomass-potential/cm-biomass.png "Execute the Wind CM")


[**`To Top`**](#table-of-contents)


## How to cite

Pietro Zambelli, in Hotmaps-Wiki, CM-Heatsource-potential (September 2020)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page is written by Pietro Zambelli\*.
- [ ] This page was reviewed by Simon Pezzutto\*.


\* [Urban and Regional Energy System Group - EURAC Bozen](http://www.eurac.edu/en/research/technologies/renewableenergy/researchfields/Pages/Energy-strategies-and-planning.aspx)

Institute of Renewable Energy
Drususallee/Viale Druso 1
I-39100 Bozen/Bolzano
Italy

[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2019: Giulia Garegnani, Pietro Zambelli

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

[**`To Top`**](#table-of-contents)

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 Hotmaps Project (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

[**`To Top`**](#table-of-contents)