## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)



## In a glance
This module calculates the cost-minimal operation of a portfolio of heat supply technologies in a defined district heating system for each hour of the year. The inputs to the module are hourly profiles for the heat demand in the network, for the potential heat supply from different sources and for energy carrier prices. Furthermore, cost and efficiency parameters for each technology are required. The module yields the costs of heat supply, the share of energy carriers used and the implied CO2 emissions. The module can also be used to optimise the capacities of installed heat supply technologies.

[**`To Top`**](#table-of-contents)



## Introduction
The district heating supply module is a dispatch model which tries to find a cost optimum solution for covering the heat demand at every hour of the year.

![concept.png][concept]

&gt; The method described here is to be understood as a first concept and can deviate from the actual implementation (model complexity, inputs and outputs, etc. must be seen from this point of view).

[**`To Top`**](#table-of-contents)

## Inputs and outputs

### Main inputs
1. Heat demand of the grid (selected region)
1. Installed capacities of heat generators/storage
1. Technical(en-efficiencies) and financial parameters(opex,capex,lifetime) of heat generators/storages
1. Profiles (time series of the heat demand, solar radiation, temperature, electricity prices, etc..)
1. ...

### Main outputs
* Heat generation costs
* Investment, operation and fuel costs
* Heat generation mix per heat generator
* CO2 Emissions
* Full Load Hours, 
* etc..

**IMPORTANT NOTE** Biomass emissions are not assumed zero in this and other calculation modules. The storage of carbon dioxide in trees happens over decades, while its release in the atmosphere takes place all at once. Therefore, the net carbon balance of biomass is zero in the long run, but positive in the short run. Hotmaps is aimed at supporting the ongoing energy transition and considering biomass carbon neutral would be a potential step backwards for climate change mitigation efforts. 

[**`To Top`**](#table-of-contents)

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

[**`To Top`**](#table-of-contents)

#### Legend

![legend.png][legend]

[**`To Top`**](#table-of-contents)

## Sample run

After you select a region and make no changes to the default parameters, the model will run in investment mode. This means that the installed capacities are also optimized for the optimal cost coverage of the heat demand. 


Below you can see all input parameters that can be changed

[[/en/CM-District-heating-supply-dispatch/inpt.png]]


#### Output Indicators

[[/en/CM-District-heating-supply-dispatch/indicators.png]]

#### Output Charts

[[/en/CM-District-heating-supply-dispatch/charts.png]]

[**`To Top`**](#table-of-contents)

## How to cite

Jeton Hasani, in Hotmaps Wiki, CM District heating supply dispatch (September 2020)


[**`To Top`**](#table-of-contents)

## Authors and reviewers
This page is written by Jeton Hasani\*.
- [ ] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien


[**`To Top`**](#table-of-contents)

## License
Copyright © 2016-2018: Jeton Hasani
Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.
SPDX-License-Identifier: CC-BY-4.0
License-Text: https://spdx.org/licenses/CC-BY-4.0.html


[**`To Top`**](#table-of-contents)

## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

[**`To Top`**](#table-of-contents)
<code>[Review this page](CM_DH_supply/_edit)</code>


[//]: # (Here are all the files to the links)
[concept]: ../images/dh_supply/concept.png
[lp_fragment]: ../images/dh_supply/lp_fragment.png
[ic]: ../images/dh_supply/ic.png
[cc]: ../images/dh_supply/cc.png
[opex]: ../images/dh_supply/opex.png
[ramp]: ../images/dh_supply/ramp.png
[rev]: ../images/dh_supply/rev.png
[peak]: ../images/dh_supply/peak.png
[legend]: ../images/dh_supply/legend.png


<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-District-heating-supply-dispatch)<sup>\*</sup> 

<sup>\*</sup> machine translated