<h1>Guidelines for using the Hotmaps toolbox for analyses at local level</h1>

# Table of Contents
* [Introduction](#introduction)
* [The Hotmaps Scenario Toolchain: Overview](#the-hotmaps-scenario-toolchain-overview)
* [The Hotmaps Scenario Toolchain: Different Steps](#the-hotmaps-scenario-toolchain-different-steps)
  * [Step 1: Analysis of current heat demand and available resource potentials](https://wiki.hotmaps.hevs.ch/en/Step-1-Analysis-of-current-heat-demand-and-available-resource-potentials)
  * [Step 2: Calculation of future heat demand and gross floor area density maps](https://wiki.hotmaps.hevs.ch/en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)
  * [Step 3: Calculation of costs of decentral heat supply](https://wiki.hotmaps.hevs.ch/en/Step-3-Calculation-of-costs-of-decentral-heat-supply)
  * [Step 4: Calculation of district heating distribution costs](https://wiki.hotmaps.hevs.ch/en/Step-4-Calculation-of-district-heating-distribution-costs)
  * [Step 5: Calculation of costs of heat supply to district heating](https://wiki.hotmaps.hevs.ch/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)
  * [Step 6: Assessment of scenarios for entire heat demand and supply for the selected area](https://wiki.hotmaps.hevs.ch/en/Step-6-Assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


# Introduction

These guidelines describe how the Hotmaps database and toolbox can be used to analyse potentials, costs, and emissions for efficient and renewable heating and cooling at local level. The steps listed below will be recalled also as part of the process described in the [Guidelines for using the Hotmaps toolbox for analyses at national level](https://wiki.hotmaps.hevs.ch/en/guide-national-level-comprehensive-assessment-eed#introduction).

<code><ins>**[To Top](#table-of-contents)**</ins></code>

# The Hotmaps Scenario Toolchain: Overview

For calculating scenarios of potential future heating demand and supply in the city and the related costs and emissions we use the Hotmaps toolbox. In the toolbox, various calculation modules (CMs) are contained for analysing different parts of the heating and cooling systems. The following figure shows the different CMs (in light blue) that were used and the information that was created from or feeding into the CMs.
<br/>  
[[/en/guide-local-and-municipal-levels/Toolchain_29_06_2020.jpg]]
  
*Figure: Method for calculating scenarios and sensitivities of heating demand and supply for this strategy process*
<br/>  
<br/>
The first step in the analysis was to generate heat demand density maps for the year 2050. This was started with analysing renovation measures in buildings of the city. The costs and effects of various different renovation options for each building in the city were calculated. Then all calculated renovation measures in all buildings of the city were ranked by their costs. Based on this ranking the cheapest renovations for reaching pre-defined saving targets were identified and applied to the buildings in the buildings database. With the [CM - Customised heat and floor area density maps](https://wiki.hotmaps.hevs.ch/en/CM-Customized-heat-and-floor-area-density-maps), the heat demand and gross floor area density maps for different heat-saving levels in the city were then generated.
These heat demand and gross floor area density maps were further on used to analyse the sensitivity of heat distribution costs in potential district heating (DH) networks. With the [CM - District heating potential: economic assessment](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-potential-economic-assessment) the costs and location of potential DH networks were calculated for different saving levels, DH market shares, and maximum grid costs.

With the [CM - Decentral heating supply](https://wiki.hotmaps.hevs.ch/en/CM-Decentral-heating-supply) the heat supply costs and related emissions for decentral technologies were calculated for different types of buildings and also renovation states of the buildings. A weighting of the resulting costs according to a possible future state of the buildings in different saving scenarios as well as technologies to be used yielded average heat supply costs for decentral supply technologies in the future (decentral reference costs). These values were then used to analyse possible district heating expansion: the heat distribution costs plus the heat supply costs in potential DH systems should not exceed the reference costs from the decentral supply.

The costs of DH supply from different technologies were calculated with the [CM - DH supply dispatch](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-supply-dispatch). This CM calculates the dispatch of different technologies installed in a potential DH system in order to reach minimum running costs while covering the heat demand all hours fo the year (or overall costs including investments, if the model is used in investment optimisation mode). For this strategy process, various different supply portfolia were calculated and the resulting costs and emissions were compared. Important inputs to the DH dispatch calculations are the Heat demand load profiles (representing the heat demand of all consumers for each hour of the year). The change in those profiles with decreasing heat demand for space heating has been calculated with the [CM - Heat load profiles](https://wiki.hotmaps.hevs.ch/en/CM-Heat-load-profiles).

The results for selected scenarios from the heat savings calculations [(CM - Customised heat and floor area density maps)](https://wiki.hotmaps.hevs.ch/en/CM-Customized-heat-and-floor-area-density-maps), the decentral heating costs module [(CM - Decentral heating supply)](https://wiki.hotmaps.hevs.ch/en/CM-Decentral-heating-supply), the DH supply dispatch module [(CM - DH supply dispatch)](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-supply-dispatch), as well as the DH potential: economic assessment module [(CM - District heating potential: economic assessment)](https://wiki.hotmaps.hevs.ch/en/CM-District-heating-potential-economic-assessment) were then compiled in the [CM - Scenario assessment](https://wiki.hotmaps.hevs.ch/en/CM-Scenario-assessment). The outcome is a comparison of the costs, the share of renewable energy, and the related CO2 emissions of different scenarios of future heating systems.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# The Hotmaps Scenario Toolchain: Different Steps

In the following separate pages, the different steps in generating scenarios for a selected city or region are explained singularly.

* [Step 1: Analysis of current heat demand and available resource potentials](https://wiki.hotmaps.hevs.ch/en/Step-1-Analysis-of-current-heat-demand-and-available-resource-potentials)
* [Step 2: Calculation of future heat demand and gross floor area density maps](https://wiki.hotmaps.hevs.ch/en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)
* [Step 3: Calculation of costs of decentral heat supply](https://wiki.hotmaps.hevs.ch/en/Step-3-Calculation-of-costs-of-decentral-heat-supply)
* [Step 4: Calculation of district heating distribution costs](https://wiki.hotmaps.hevs.ch/en/Step-4-Calculation-of-district-heating-distribution-costs)
* [Step 5: Calculation of costs of heat supply to district heating](https://wiki.hotmaps.hevs.ch/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)
* [Step 6: Assessment of scenarios for entire heat demand and supply for the selected area](https://wiki.hotmaps.hevs.ch/en/Step-6-Assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area)

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# References

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# How to cite
Marcus Hummel, in Hotmaps-Wiki, Guidelines for using the Hotmaps toolbox for analyses at national level (October 2020)

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# Authors and reviewers
This page is written by Marcus Hummel and Giulia Conforto\*.
- [x] This page was reviewed by Lukas Kranzl\**.

\* [e-think](https://e-think.ac.at/),
Zentrum f. Energiewirtschaft und Umwelt,
Argentinierstrasse 18/10,
1040 Wien

\** [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/),
Institute of Energy Systems and Electrical Drives,
Gusshausstrasse 27-29/370,
1040 Wien

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# License
Copyright © 2016-2019: Marcus Hummel

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>




<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/GL-national)<sup>\*</sup> 

<sup>\*</sup> machine translated
