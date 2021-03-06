<h1>CM Scale heat and cool density maps</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Interpretation of results](#interpretation-of-results)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run: default input values](#sample-run_test-run-default-input-values)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## In a glance
This module scales the default layer with a given factor. Often heat and cold demands are reported in an aggregated manner in energy balances. Using this calculation module, it is possible to us the distribution of default Hotmaps heat and cold demand density maps to dis aggregate such values. This is done by scaling the default Hotmaps heat and cool density maps up or done to reach the desired value.


[**`To Top`**](#table-of-contents)

## Introduction

This module scales the default layer with a given factor. Often heat and cold demands are reported in an aggregated manner in energy balances. Using this calculation module, it is possible to us the distribution of default Hotmaps heat and cold demand density maps to dis aggregate such values. This is done by scaling the default Hotmaps heat and cool density maps up or done to reach the desired value.
The calculation module provides a new raster by scaling a raster density map by a user-chosen factor. It generates a new raster by multiplying each cell of the input raster by the given factor.


[**`To Top`**](#table-of-contents)

## Inputs and outputs

The input parameters and layers, as well as output layers and parameters, are as follows.

**Input layers and parameters are:**

* Multiplication factor [-]: a real value between _*0*_ and _*1000*_
  * if the multiplication factor is > 1, the output raster is greater than the input. 
  * if the multiplication factor is < 1, the output raster is smaller than the input.
* The layer to be scaled:
  * Heat or Cool density map in raster format (\*.tif): It is possible to scale personal heat and cool density maps up or down as well.  

**Output layers and parameters are:**

* An output raster (\*.tif), corresponding to the input scaled by the multiplication factor.


[**`To Top`**](#table-of-contents)

## Method
Each cell's value of the input raster is multiplied by the multiplication factor.


[**`To Top`**](#table-of-contents)

## Interpretation of results
If we know the total consumption of an area, and the indicator _Total head demand_ does not correspond this value, it is possible to scale the heat demand by the ratio (Total_real / Total_default).
The following figure gives the example of a multiplication factor value of 0.5.

<img src="/images/Wiki_CM_scale.png" alt="Fig. 1-0" title="Name the run session"/>


[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/base_calculation_module) you get the bleeding-edge development for this calculation module.


[**`To Top`**](#table-of-contents)

## Sample run

Here, the calculation module is run for the case study of Vienna, Austria. First, use the "Go To Place" bar to navigate to Vienna and select the city. Click on the "Layers" button to open the "Layers" window and then click on the "CALCULATION MODULE" tab. In the list of calculation modules, select "CM - Scale heat and cool density maps". 

### Test Run: default input values
After pressing run a new density map is calculated on the basis of the selected map. The default value here is the heat density total map. 
After the calculation, the total new heat demand is shown on the right side, under indicators. (Here the default value is 1 and therefore, no change in the indicators occurs).

<img src="/en/CM-Scale-heat-and-cool-density-maps/picture1.jpg"/>

After closing the calculation modules and switching to the layer section, the newly calculated heat density map can be found at the very bottom of the LAYERS tab. This layer can be downloaded by the user and also can be uploaded to the user account for the purpose of further calculations.

<img src="/en/CM-Scale-heat-and-cool-density-maps/picture2.jpg"/>

[**`To Top`**](#table-of-contents)

## How to cite

Thiery Bernhard, in Hotmaps-Wiki, CM Scale heat and cool density maps (April 2019)


[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Thierry Bernhard (**[CREM](https://www.crem.ch/)**).

&#9745; This page was reviewed by Lesly Houndole and Albain Dufils (**[CREM](https://www.crem.ch/)**).

[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: CREM

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

 [Bulgarian](../bg/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Czech](../cs/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Danish](../da/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [German](../de/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Greek](../el/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Spanish](../es/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Estonian](../et/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Finnish](../fi/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [French](../fr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Irish](../ga/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Croatian](../hr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Hungarian](../hu/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Italian](../it/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Polish](../pl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovenian](../sl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Swedish](../sv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated
