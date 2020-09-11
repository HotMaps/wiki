<h1>CM Shallow geothermal potential</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
  * [Test Run 1: default input values](#sample-run_test-run-1-default-input-values)
  * [Test Run 2: modified input values](#sample-run_test-run-2-modified-input-values)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
This module calculates the potential of shallow geothermal energy to be used in ground source heat pumps for selected regions in the form of a raster file. The inputs are raster files with initial ground temperatures, depth-averaged ground thermal conductivity and depth-averaged ground thermal capacity.


[**`To Top`**](#table-of-contents)

## Introduction

It aims to compute the shallow geothermal potential based on [r.green.gshp.theoretical](https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html) according to the [G.pot methodology](https://www.sciencedirect.com/science/article/pii/S0360544216303358). 
In this module, the output is the theoretical maximum energy that can be converted in the ideal case without considering the financial and spatial constraints. 


[**`To Top`**](#table-of-contents)


## Inputs and outputs

The input parameters and layers, as well as output layers and parameters, are as follows.


**Input layers and parameters are:**

* Vector with depth-averaged ground thermal conductivity [W m-1 K-1]
* Value with the Heating Season [0-365] days
* Raster with the initial ground temperature T0 [°C]
* Value with depth-averaged ground thermal capacity [MJ m-3 K-1]
* Value with depth-averaged ground thermal capacity [MJ m<sup>-3</sup> K<sup>-1</sup>]

The advanced input is:
* Borehole radius [m]
* Borehole thermal resistance [m K W<sup>-1</sup>]
* Borehole length [m]
* Pipe radius [m]
* Number of pipes in the borehole
* Thermal conductivity of the borehole filling (geothermal grout) [W m-1 K-1]
* Minimum or maximum fluid temperature [°C]
* Simulated lifetime of the plant [years]

**Output layers and parameters are:**

* a raster map with the geothermal power potential [W]
* a raster map with the geothermal energy potential [MWh]

A deeper explanation of the default input raster is available in the [Hotmaps repository](https://gitlab.com/hotmaps/potential/potential_geothermal_raster)

[**`To Top`**](#table-of-contents)


## Method
The method to define the energy potential is based on the [G.pot](https://www.sciencedirect.com/science/article/pii/S0360544216303358). The potential of shallow geothermal energy is computed by means of and empirical relationship proposed by [Casasso et al. (2016)](https://www.sciencedirect.com/science/article/pii/S0360544216303358).

The methodology produce a map with the power and the energy that can be extracted considering the main characteristics of the terrain (e.g. ground temperature/capacity/conductivity) and of the Borehole (e.g. lenght, diameter, etc).

[**`To Top`**](#table-of-contents)

## Sample Run

Users can give different ground characteristics (e.g. ground temperature, ground conductivity and capacity), if available.
Users can also define the different characteristics of the geothermal system like the Borehole geometry.


[**`To Top`**](#table-of-contents)

## How to cite

Pietro Zambelli and Giulia Garegnani, in Hotmaps Wiki, CM Shallow geothermal potential (September 2020)


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

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.


[**`To Top`**](#table-of-contents)







<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated