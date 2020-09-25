# CM Heat source potential

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

This module aims to highlight the heatsource that can be classify as: suitable, conditionally suitable and not suitable for an energy exploitation at urban level.

[**`To Top`**](#table-of-contents)


## Introduction

Potentially, in a urban or regional areas, there are several resources that might be used t provide thermal energy (for heating and/or cooling purpose). This module aims to classify the different heat source based on their suitability. The module classify the systems in three main categories: Suitable, Conditionally suitable, Not suitable. The module return a vector map with the classified points, and return the power as classified for each class.
This module generates a shapefile classifying the heat source potential based on the distance of the heat source from the demand, and based on the capacity of the heatsource. Each heat source is classified in three main classes:
- suitable
- conditionally suitable
- not suitable.


The module automatize the methodology as defined by:

Neugebauer, Georg, Florian Kretschmer, René Kollmann, Michael Narodoslawsky, Thomas Ertl, and Gernot Stoeglehner. ‘Mapping Thermal Energy Resource Potentials from Wastewater Treatment Plants’. Sustainability 7, no. 10 (September 2015): 12988–13010. [https://doi.org/10.3390/su71012988](https://doi.org/10.3390/su71012988).

[**`To Top`**](#table-of-contents)

## Inputs and outputs

The input parameters and layers as well as output layers and parameters are as follows.


**Input layers and parameters are:**

* Heat source capacity, is a vector map with the water flow that can be sustainable extracted / used, expressed in population equivalent (PE). The mandatory columns are: `gid`, `capacity`.
* Heat source power, is a vector map with the power that can be used. The mandatory columns are: `gid`, `capacity`, with `gid` that must beconsistent with values used in the capacity layer.

* The user can defne the maximum distance to consider the heat source **within** the urban areas (default value: 150m): `within_dist`.
* The user can defne the maximum distance to consider the heat source **near** the urban areas, all the areas above this threshold will be classified as **far** from the urban areas - (default value: 1000m): `near_dist`


**Output layers and parameters are:**

* Vector map with the heat source map classified based on the suitability.
* Group the power available based on the suitability classification.

[**`To Top`**](#table-of-contents)


## Method

We follow the methodology defined by:

Neugebauer, Georg, Florian Kretschmer, René Kollmann, Michael Narodoslawsky, Thomas Ertl, and Gernot Stoeglehner. ‘Mapping Thermal Energy Resource Potentials from Wastewater Treatment Plants’. Sustainability 7, no. 10 (September 2015): 12988–13010. [https://doi.org/10.3390/su71012988](https://doi.org/10.3390/su71012988.)

As default data sets we used the [WWTP capacity and power datasets](https://gitlab.com/hotmaps/potential/WWTP/).

The urban areas are defined from the Corine Land Cover data set, where we consider as urban anly the following categories:

* Continuous urban fabric (class 1.1.1.)
* Discontinuous urban fabric (class 1.1.2.)
* Industrial or commercial units (class 1.2.1.)

To define the urban areas, the module start from the Corine Land Cover (CLC) dataset and select the following categories:
- Continuous_urban_fabric
- Discontinuous_urban_fabric
- Industrial_or_commercial_units

Then to assess and classify the potential, the module:
- Compute buffer around the heat sources considering the distances selected by the user to consider the heatsource within the urban areas, or near the urban areas;
- extract the number of pixel that are contained in each buffer for each heat source
- Classify the heat source based on the following matrix, if within a certain distance there are at least 25 ha of urban areas.

|                                  | Within (`dist < within_dist`) | Near (`dist < near_dist`) | Far (`dist > near_dist`) |
|:---------------------------------|:------------------------------|:--------------------------|:-------------------------|
| Small        (2000 - 5000 PE)    | Conditionally                 | Conditionally             | Not suitable             |
| Medium-small (5001 - 50000 PE)   | Suitable                      | Conditionally             | Conditionally            |
| Medium-high  (50001 - 150000 PE) | Suitable                      | Suitable                  | Conditionally            |
| High         ( > 150000 PE)      | Suitable                      | Suitable                  | Suitable                 |


[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/heatsource_potential/tree/develop) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)

## Sample run

![Fig. 1-0](https://wiki.hotmaps.hevs.ch/en/CM-Heatsource-potential/cm-heat.png "Execute the Heatsource CM")


[**`To Top`**](#table-of-contents)

## How to cite

Pietro Zambelli, in Hotmaps-Wiki, CM-Heatsource-potential (September 2020)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Pietro Zambelli **[EURAC](http://www.eurac.edu)**.

&#9745; This page was reviewed by Simon Pezzutto **[EURAC](http://www.eurac.edu)**.


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

 [German](../de/CM-Heat-source-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated
