# CM Heatsource potential

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

This module generates a shapefile classifying the heat source potential based on the distance of the heat source from the demand, and based on the capacity of the heatsource. Each heat source is classified in three main classes:
- suitable
- conditionally suitable
- not suitable.


The module automatize the methodology as defined by:

Neugebauer, Georg, Florian Kretschmer, René Kollmann, Michael Narodoslawsky, Thomas Ertl, and Gernot Stoeglehner. ‘Mapping Thermal Energy Resource Potentials from Wastewater Treatment Plants’. Sustainability 7, no. 10 (September 2015): 12988–13010. [https://doi.org/10.3390/su71012988](https://doi.org/10.3390/su71012988).

[**`To Top`**](#table-of-contents)

## Inputs and outputs

Input layers and parameters are:

- Maximum distance to consider the heat source within the urban areas (`within_dist`) - (default value: 150m)
- Maximum distance to consider the heat source near the urban areas (`near_dist`), all the areas above this threshold will be classified as far;
- Heatsource capacity, default layer is the Waste Water Treatment Plants (WWTP) layer.

Output layers and parameters are:
- heatsource potential classification 

[**`To Top`**](#table-of-contents)

## Method

To define the urban areas, the module start from the Corine Land Cover (CLC) dataset and select the following categories:
- Continuous_urban_fabric
- Discontinuous_urban_fabric
- Industrial_or_commercial_units

Then to assess and classify the potential, the module:
- Compute buffer around the heat sources considering the distances selected by the user to consider the heatsource within the urban areas, or near the urban areas;
- extract the number of pixel that are contained in each buffer for each heat source
- Classify the heat source based on the following matrix, if within a certain distance there are at least 25 ha of urban areas.

|                                                     | Within (`dist <= within_dist`) | Near (`dist <= near_dist`) | Far (`dist > near_dist`) |
|:----------------------------------------------------|:-------------------------------|:---------------------------|:-------------------------|
| Small        (`2000 PE <= plant_size <= 5000 PE`)   | Conditionally                  | Conditionally              | Not suitable             |
| Medium-small (`5001 PE <= plant_size <= 50000 PE`)  | Suitable                       | Conditionally              | Conditionally            |
| Medium-high  (`50001 PE <= plant_size < 150000 PE`) | Suitable                       | Suitable                   | Conditionally            |
| High         (`plant_size > 150001 PE`)             | Suitable                       | Suitable                   | Suitable                 |

[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/heatsource_potential) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)

## Sample run

![Fig. 1-0](https://wiki.hotmaps.hevs.ch/en/CM-Heatsource-potential/cm-heat.png "Execute the Heatsource CM")


[**`To Top`**](#table-of-contents)

## How to cite

Pietro Zambelli, in Hotmaps-Wiki, CM-Heatsource-potential (September 2020)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page is written by Pietro Zambelli **[EURAC](http://www.eurac.edu)**.

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