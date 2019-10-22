**CM Scale heat and cool density maps**

## Table of Contents

* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Application](#application)
* [GitHub repository of this calculation module](#GitHub-Repository-of-this-calculation-module)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## Introduction

The aim of the calculation module is to quickly obatin a new raster by scaling a raster density map by a user-chosen factor. It generate a new raster by multiplying each cells of the input raster by the given factor.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Inputs and outputs

The input parameters and layers as well as output layers and parameters are as follows.

**Input layers and parameters are:**

* Multiplication factor [-]: a real value between _*0*_ and _*1000*_
  * if the multiplication factor is > 1, the output raster is greater than the input. 
  * if the multiplicatino factor is < 1, the output raster is smaller than the input.
* The layer to be scaled :
  * Heat or Cool density map in raster format (\*.tif)

**Output layers and parameters are:**

* An output rasetr (\*.tif), corresponding to the input scaled by the multiplication factor.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Method
Each cell's value of the input raster is multiply by the multiplication factor.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Application
If we know the total consumption of an area, and the indicator _Total head demand_ does not correspond  this value, it is possible to scale the heat demand by the ratio (Total_real / Total_default).
The following figure gives the example for a multiplication factor value of 0.5.

![Fig. 1-0](images/Wiki_CM_scale.png "Name the run session")

## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/base_calculation_module) you get the bleeding-edge development for this calculation module.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References



<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to cite

Thiery Bernhard, in Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/en-CM-Scale-heat-and-cool-density-maps (April 2019)


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

This page is written by Thierry Bernhard\*.

This page was reviewed by Lesly Houndole\*.

\* [CREM](https://www.crem.ch/)

Centre de Recherches Energétiques et Municipales

Rue Marconi 19 - CP 256

CH-1920 Martigny


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## License

Copyright © 2016-2019: Thierry Bernhard

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.



<code><ins>**[To Top](#table-of-contents)**</ins></code>

View in another language:

 [Bulgarian](bg-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Croatian](hr-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Czech](cs-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Danish](da-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Dutch](nl-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Estonian](et-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Finnish](fi-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [French](fr-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [German](de-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Greek](el-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Hungarian](hu-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Irish](ga-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Italian](it-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Latvian](lv-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Lithuanian](lt-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Maltese](mt-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Polish](pl-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Romanian](ro-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovak](sk-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovenian](sl-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Spanish](es-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Swedish](sv-CM-Scale-heat-and-cool-density-maps)<sup>\*</sup>
<sup>\*</sup>: machine translated
