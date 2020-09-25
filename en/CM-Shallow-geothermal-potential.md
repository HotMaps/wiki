<h1>CM Shallow geothermal potential</h1>

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
This module calculates the potential of shallow geothermal energy to be used in ground source heat pumps for selected regions in the form of a raster file. The inputs are raster files with initial ground temperatures, depth-averaged ground thermal conductivity and depth-averaged ground thermal capacity.


[**`To Top`**](#table-of-contents)

## Introduction

The calculation module aims to compute the shallow geothermal potential based on [r.green.gshp.theoretical](https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html) according to the [G.pot methodology](https://www.sciencedirect.com/science/article/pii/S0360544216303358). 
In this module, the output is the theoretical maximum energy that can be converted in the ideal case without considering the financial and spatial constraints. 


[**`To Top`**](#table-of-contents)


## Inputs and outputs

The input parameters and layers, as well as output layers and parameters, are as follows.


**Input layers and parameters are:**

* Vector with depth-averaged ground thermal conductivity [W m<sup>-1</sup> K<sup>-1</sup>]
* Value with the Heating Season [0-365] days
* Raster with the initial ground temperature T0 [°C]
* Value with depth-averaged ground thermal capacity [MJ m<sup>-3</sup> K<sup>-1</sup>]

The advance input parameters are:
* Borehole radius [m]
* Borehole thermal resistance [m K W<sup>-1</sup>]
* Borehole length [m]
* Pipe radius [m]
* Number of pipes in the borehole
* Thermal conductivity of the borehole filling (geothermal grout) [W m<sup>-1</sup> K<sup>-1</sup>]
* Minimum or maximum fluid temperature [°C]
* Simulated lifetime of the plant [years]

**Output layers and parameters are:**

* a raster map with the geothermal energy potential [MWh/(ha*yr)]
* an indicator on average energy that can be extracted per GCHP system [MWh/yr]

A deeper explanation of the default input raster is available in the [Hotmaps repository](https://gitlab.com/hotmaps/potential/potential_geothermal_raster)

It is also worth-mentioning that due to the fact that implementation of geothermal system is not always possible, specially in the a very dense city areas, the input raster file does not provide information for several large cities. This is also visible in the output files and is NOT a mistake in the calculation.

[**`To Top`**](#table-of-contents)


## Method
The method to define the energy potential is based on the [G.pot](https://www.sciencedirect.com/science/article/pii/S0360544216303358). The potential of shallow geothermal energy is computed by means of and empirical relationship proposed by [Casasso et al. (2016)](https://www.sciencedirect.com/science/article/pii/S0360544216303358).

The methodology produce a map with the power and the energy that can be extracted considering the main characteristics of the terrain (e.g. ground temperature/capacity/conductivity) and of the Borehole (e.g. length, diameter, etc).

[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/gchp_potential/tree/develop) you get the bleeding-edge development for this calculation module.


[**`To Top`**](#table-of-contents)

## Sample Run

Users can give different ground characteristics (e.g. ground temperature, ground conductivity and capacity), if available. It is also possible to define the different characteristics of the geothermal system like the Borehole geometry.

As previously mentioned, a raster layer is generated as output. This layer shows the potential in different areas. As it is difficult to estimate the potential in dense urban areas, the input raster layer does not provide information for such regions. As a result, these regions are also empty in the output layer.

[[/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png]]

[**`To Top`**](#table-of-contents)

## How to cite

Pietro Zambelli and Giulia Garegnani, in Hotmaps Wiki, CM Shallow geothermal potential (September 2020)


## Authors and reviewers

This page was written by Giulia Garegnani and Pietro Zambelli (**[EURAC](http://www.eurac.edu)**).

&#9745; This page was reviewed by Mostafa Fallahnejad (**[EEG - TU Wien](https://eeg.tuwien.ac.at/)**).


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Pietro Zambelli and Giulia Garegnani

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