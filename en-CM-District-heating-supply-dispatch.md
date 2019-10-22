## Table of Contents

* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
  * [Test Run 1: default input values](#test-run-1-default-input-values)
  * [Test Run 2: modified input values](#test-run-2-modified-input-values)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction
The district heating supply module is a dispatch model which tries to find a cost optimum solution for covering the heat demand at every hour of the year.

![concept.png][concept]

&gt; The method described here is to be understood as a first concept and can deviate from the actual implementation (model complexity, inputs and outputs, etc. must be seen from this point of view).

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Inputs and outputs

### Main inputs
1. Heat demand of the grid (selected region)
1. Installed capacities of heat generators/storage
1. Technical(en-efficiencies) and fincancal paramters(opex,capex,lifetime) of heat generators/storages
1. Profiles (time series of the heat demand,solar radiation, temperature, electricity prices, etc..)
1. ...

### Main outputs
* Heat generation costs
* Investment, operation and fuel costs
* Heat generation mix per heat generator
* CO2 Emissions
* Full Load Hours, 
* etc..

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Method
The module is implemented as a linear program and can be used on the one hand as a pure dispatch model and on the other hand for investment planning to cover a load profile.
The objective function tries to find the minimum of the difference from the costs for providing the heat and revenues from electricity production.

### Equation fragments of the linear program:

![lp_fragment.png][lp_fragment]

#### The total costs <code>c<sub>total</sub></code> yield from the sum of:
 
##### investment costs <code>IC</code> (installed capacities multiplied by the annuities of the specific investment costs) 

![ic.png][ic] 

##### captial costs <code>CC</code> :

![cc.png][cc]

##### the variable costs <code>OPEX</code> :

![opex.png][opex]
    
##### ramp costs of CHP and waste incineration plants (rough Estimation) :

![ramp.png][ramp]

##### assumed costs for the peak electrical load in the winter time (rough Estimation):

![peak.png][peak]


#### The total revenues <code>rev<sub>total</sub></code> yield from::

##### the sale of electricity (for example from CHP plants and waste incineration plants).:

![rev.png][rev]

<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### Legend

![legend.png][legend]

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Sample run
<code> NOT IMPLEMENTED&gt; </code>
<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Test Run 1: default input values



<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Test Run 2: modified input values



<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References



## How to cite


## Authors and reviewers
This page is written by Jeton Hasani\*.
- [ ] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien



## License
Copyright © 2016-2018: Jeton Hasani
Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.
SPDX-License-Identifier: CC-BY-4.0
License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>
<code>[Review this page](https://github.com/HotMaps/hotmaps_wiki/wiki/CM_DH_supply/_edit)</code>


[//]: # (Here are all the files to the links)
[concept]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/concept.png
[lp_fragment]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/lp_fragment.png
[ic]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/ic.png
[cc]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/cc.png
[opex]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/opex.png
[ramp]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/ramp.png
[rev]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/rev.png
[peak]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/peak.png
[legend]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/legend.png

View in another language:

 [Bulgarian](bg-CM-District-heating-supply-dispatch)<sup>\*</sup> [Croatian](hr-CM-District-heating-supply-dispatch)<sup>\*</sup> [Czech](cs-CM-District-heating-supply-dispatch)<sup>\*</sup> [Danish](da-CM-District-heating-supply-dispatch)<sup>\*</sup> [Dutch](nl-CM-District-heating-supply-dispatch)<sup>\*</sup> [Estonian](et-CM-District-heating-supply-dispatch)<sup>\*</sup> [Finnish](fi-CM-District-heating-supply-dispatch)<sup>\*</sup> [French](fr-CM-District-heating-supply-dispatch)<sup>\*</sup> [German](de-CM-District-heating-supply-dispatch)<sup>\*</sup> [Greek](el-CM-District-heating-supply-dispatch)<sup>\*</sup> [Hungarian](hu-CM-District-heating-supply-dispatch)<sup>\*</sup> [Irish](ga-CM-District-heating-supply-dispatch)<sup>\*</sup> [Italian](it-CM-District-heating-supply-dispatch)<sup>\*</sup> [Latvian](lv-CM-District-heating-supply-dispatch)<sup>\*</sup> [Lithuanian](lt-CM-District-heating-supply-dispatch)<sup>\*</sup> [Maltese](mt-CM-District-heating-supply-dispatch)<sup>\*</sup> [Polish](pl-CM-District-heating-supply-dispatch)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-District-heating-supply-dispatch)<sup>\*</sup> [Romanian](ro-CM-District-heating-supply-dispatch)<sup>\*</sup> [Slovak](sk-CM-District-heating-supply-dispatch)<sup>\*</sup> [Slovenian](sl-CM-District-heating-supply-dispatch)<sup>\*</sup> [Spanish](es-CM-District-heating-supply-dispatch)<sup>\*</sup> [Swedish](sv-CM-District-heating-supply-dispatch)<sup>\*</sup>
<sup>\*</sup>: machine translated
