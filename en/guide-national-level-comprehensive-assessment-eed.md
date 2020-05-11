<h1>Guidelines for using the Hotmaps toolbox for analyses at national level</h1>

# Table of Contents
* [Introduction](#introduction)
* [Overview of the Hotmaps scenario toolchain](#overview-of-the-hotmaps-scenario-toolchain)
    * [Step 1: Analysis of current heat demand and available resource potentials](#step-i-analysis-of-current-heat-demand-and-available-resource-potentials)
    * [Step 2: Calculation of future heat demand and gross floor area density maps](#step-ii-calculation-of-future-heat-demand-and-gross-floor-area-density-maps)
    * [Step 3: Calculation of costs of decentral heat supply](#step-iii-calculation-of-costs-of-decentral-heat-supply)
    * [Step 4: Calculation of district heating distribution costs](#step-iv-calculation-of-district-heating-distribution-costs)
    * [Step 5: Calculation of costs of heat supply to district heating](#step-v-calculation-of-costs-of-heat-supply-to-district-heating)
    * [Step 6: Assessment of scenarios for entire heat demand and supply for the selected area](#step-vi-assessment-of-scenarios-for-entire-heat-demand-and-supply-for the-selected-area)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


# Introduction

These guidelines describe how the Hotmaps database and toolbox can be used to analyse potentials, costs, and emissions for efficient and renewable heating and cooling at local level.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

# Overview of the Hotmaps scenario toolchain

For calculating scenarios of potential future heating demand and supply in the city and the related costs and emissions we use the Hotmaps toolbox. In the toolbox, various calculation modules (CMs) are contained for analysing different parts of the heating and cooling systems. The following figure shows the different CMs (in light blue) that were used and the information that was created from or feeding into the CMs.


![](../images/Hotmaps_Local_Toolchain_Overview.png)
*Figure 1: Method for calculating scenarios and sensitivities of heating demand and supply for this strategy process*

The first step in the analysis was to generate heat demand density maps for the year 2050. This was started with analysing renovation measures in buildings of the city. The costs and effects of various different renovation options for each building in the city were calculated. Then all calculated renovation measures in all buildings of the city were ranked by their costs. Based on this ranking the cheapest renovations for reaching pre-defined saving targets were identified and applied to the buildings in the buildings database. With the “CM - Customised heat and floor area density maps”, the heat demand and gross floor area density maps for different heat-saving levels in the city were then generated.
These heat demand and gross floor area density maps were further on used to analyse the sensitivity of heat distribution costs in potential district heating (DH) networks. With the “CM - District heating potential: economic assessment” the costs and location of potential DH networks were calculated for different saving levels, DH market shares, and maximum grid costs.
With the “CM - Decentral heating costs” the heat supply costs and related emissions for decentral technologies were calculated for different types of buildings and also renovation states of the buildings. A weighting of the resulting costs according to a possible future state of the buildings in different saving scenarios as well as technologies to be used yielded average heat supply costs for decentral supply technologies in the future (decentral reference costs). These values were then used to analyse possible district heating expansion: the heat distribution costs plus the heat supply costs in potential DH systems should not exceed the reference costs from the decentral supply.
The costs of DH supply from different technologies were calculated with the “CM - DH supply dispatch”. This CM calculates the dispatch of different technologies installed in a potential DH system in order to reach minimum running costs while covering the heat demand all hours fo the year (or overall costs including investments, if the model is used in investment optimisation mode). For this strategy process, various different supply portfolia were calculated and the resulting costs and emissions were compared. Important inputs to the DH dispatch calculations are the heat demand load profiles (representing the heat demand of all consumers for each hour of the year). The change in those profiles with decreasing heat demand for space heating has been calculated with the “CM - Heat load profiles”.
The results for selected scenarios from the heat savings calculations, the decentral heating costs module, the DH supply dispatch module as well as the DH potential: economic assessment module were then compiled in the “CM - Scenario assessment”. The outcome is a comparison of the costs, the share of renewable energy, and the related CO2 emissions of different scenarios of future heating systems for the city of Bistrita for the year 2050.
More information on the methodology applied in the different calculation modules in the Hotmaps toolbox can be found in the Hotmaps wiki.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


# The different steps in the Hotmaps scenario toolchain

In the following subchapter, the different steps in generating scenarios for a selected city or region are explained.


## Step 1: Analysis of current heat demand and available resource potentials

![](../images/Hotmaps_Calulate_Scenarios.png)
*Figure 2: Method for calculating scenarios and sensitivities of heating demand and supply for this strategy process*

Analysis of potentials for excess heat and renewable energy in the identified regions with potential interest for district heating
In the next step, the potentials for excess heat and renewable energy in the regions that have been identified as potentially interesting for district heating can be analysed. These data together with the data on heat demand and heat demand density in the regions collected in the previous step can then be used to characterise representative district heating areas for further analysis steps. The following list gives an overview of the heat sources that should be taken into account and links to the default data for the respective energy source, which is available in the Hotmaps database:

* Renewable energy sources:
  * Waste water treatment plants:
    * DB - Wastewater treatment plants power
    * DB - Wastewater treatment plants capacity
  * Agricultural biomass:
    * DB - Agricultural residues
    * DB - Livestock effluents
  * Forestal biomass:
    * DB - Forest residues
  * Waste:
    * DB - Municipal solid waste
  * Geothermal energy:
    * DB - Geothermal potential heat conductivity
  * Solar thermal energy:
    * DB - Potential solar thermal collectors - rooftop
    * DB - Potential solar thermal collectors open - field
* Excess heat:
  * Large industrial sites:
    * DB - Industrial sites excess heat
  * Other excess heat sources:
    * Information on other excess heat sources like power plants, further industrial plants, low-temperature heat sources like river water, data centers, etc. can be uploaded into the toolbox. A guide on how to do this can be found here.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Step 2: Calculation of future heat demand and gross floor area density maps

![](../images/Hotmaps_Calulate_Scenarios.png)
*Figure 3: Method for calculating scenarios and sensitivities of heating demand and supply for this strategy process*

The first step in the analysis is to generate future heat demand and floor area density maps for your city/region of interest. You can use data developed in the course of the Hotmaps project for all EU-28 countries (Hotmaps default data, available in the Hotmaps database), or you can use other heat demand density maps for your region of interest.

* Use heat demand and floor area density maps developed in the course of the Hotmaps project - default data on heat demand density from the Hotmaps database:
  * For all EU 28 Member States (MS) heat demand density maps reflecting the heat demand from space heating and hot water generation in buildings have been developed. They are available as the total demand in residential and non-residential buildings, but also split between residential and non-residential buildings. All maps are all available at hectare level, i.e. with a resolution of 100x100m. The heat demand density maps can be accessed in the layers section of the Hotmaps database and more information on how to select the region of your interest can be found here.
  * It is possible to adapt the heat demand density maps according to assumptions regarding the future development of the heat demand in the buildings. Two different Calculation Modules (CMs) can be used:
    * The CM - Scale heat and cold density maps can be used to recalculate the heat demand in each hectare using the same factor for all hectare elements.
    * The CM - Demand projection can be used to generate future heat demand and floor area density maps based on default development scenarios of the building stock in the EU (link to further info on the default scenarios. It is also possible to adapt several parameters compared to the default calculations like reduction of energy demand or reduction of floor area.
* Use own data on heat demand density in your region of analysis:
  * It is possible to upload heat density maps in a raster file format (.tif) to the Hotmaps toolbox when creating a user account and logging in to the private section. Uploaded heat demand density layers can reflect the current situation of heat demand densities in the region of interest, or also a possible future scenario of heat demand densities, depending on the input data used for generating the respective layers. More information on how to create a user account and how to upload own data can be found here.
  * It is also possible to further adapt the own heat density maps with the CM - Scale heat and cold density maps or via the CM - Demand projection like the 

The developed heat demand and floor area density maps are further used in the subsequent steps in other Calculation Modules (CMs).


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Step 3: Calculation of costs of decentral heat supply


# References


<code><ins>**[To Top](#table-of-contents)**</ins></code>

# How to cite
Marcus Hummel, in Hotmaps-Wiki, Guidelines for using the Hotmaps toolbox for analyses at national level (October 2020)


<code><ins>**[To Top](#table-of-contents)**</ins></code>

# Authors and reviewers
This page is written by Marcus Hummel\*.
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
