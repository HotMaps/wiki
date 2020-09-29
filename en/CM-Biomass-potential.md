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

This module assess the potential biomass energy that can be generated from a biomass source.
The aims of this CM is to assess the electric and thermal energy that can be used from the biomass potential of NUTS3 regions. The module considers different typology of biomass that can be exploit to produce energy.
The CM uses the default data set for the whole EU that are at NUTS3 level. 



[**`To Top`**](#table-of-contents)


## Inputs and outputs

The input parameters and layers as well as output layers and parameters are as follows.


**Input layers and parameters are:**

* vector layer with the mass of biological residues that it is available, per biomass typology;
* Percentage of solid waste that can be effectively collected (default value: 90%)
* Efficiency in transforming solid waste in thermal energy (default value: 50%)
* Efficiency in transforming solid waste in electrical energy (default value: 20%)
* Percentage of agriculture residues that can be effectively collected (default value: 60%)
* Efficiency in transforming agriculture residues in thermal energy (default value: 50%)
* Efficiency in transforming agriculture residues in electrical energy (default value: 20%)
* Percentage of livestock effluents that can be effectively collected (default value: 50%)
* Efficiency in transforming livestock effluents in thermal energy (default value: 50%)
* Efficiency in transforming livestock effluents in electrical energy (default value: 20%)
* Percentage of forest residues that can be effectively collected (default value: 50%)
* Efficiency in transforming forest residues in thermal energy (default value: 50%)
* Efficiency in transforming forest residues in electrical energy (default value: 20%)

**Output layers and parameters are:**

* the total biomass heat energy potential
* the total biomass electric energy potential
* graph with the electric/thermal energy per biomass type.

[**`To Top`**](#table-of-contents)


## Method

The module calculates for each available biomass resource the percentage of the total amount of biomass that can be effectively and realistically be collected. These values are provided by user as input. In providing these values, user should consider parameters such as forestry ground conditions (e.g. slope, terrain roughness) and the mechanization of the process (e.g. use of cable crane, harvester and forwarder, etc.) in order to provide a realistic estimation.
Based on the provided transformation efficiency, the energy that can be extracted from each biomass resource is calculated. Finally, the total biomass heat energy potential and total biomass electric energy potential are obtained.

[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/biomass_potential) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)


## Sample run

This calculation module can be run on NUTS 0-3 levels. Figure below shows the obtained heat and electrical potentials for each biomass resource, based on the default input parameters.

<img src="/en/CM-Biomass-potential/cm_biomass_potential.png"/>

[**`To Top`**](#table-of-contents)


## How to cite

Pietro Zambelli, in Hotmaps-Wiki, CM - Biomass potential (September 2020)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Pietro Zambelli (**[EURAC](http://www.eurac.edu)**).

&#9745; This page was reviewed by Mostafa Fallahnejad (**[EEG - TU Wien](https://eeg.tuwien.ac.at/)**).


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



<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Biomass-potential)<sup>\*</sup> [Italian](../it/CM-Biomass-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated
