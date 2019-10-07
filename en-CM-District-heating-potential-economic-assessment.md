## Table of Contents

* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
  * [Solver options](#solver-options)
* [GitHub repository of this calculation module](#GitHub-Repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run: default input values](#test-run-1-default-input-values-for-the-case-study-of-Vienna)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction

This calculation module uses the [European heat density map (EHDM)](https://gitlab.com/hotmaps/heat/heat_tot_curr_density) and a [European gross floor area map (EGFAM)](https://gitlab.com/hotmaps/gfa_tot_curr_density), both of which were developed in course of the [Hotmaps project](https://www.hotmaps-project.eu/), to propose a GIS-based method for determining potential DH areas with specific focus on district heating (DH) grid costs. The DH areas are determined via performing sensitivity analyses on the EHDM under consideration of predefined upper bound of the average distribution costs. The approach additionally allows for estimation of length and diameter of transmission lines and their associated costs. The outputs are GIS layers that illustrate areas that are economically viable for construction of DH as well as the cost-minimal transmission lines connecting these regions to each other. The calculation module can be used to study the impact of parameters like grid costs ceiling and market share on potential and on expansion and extension of the DH systems.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Inputs and outputs
The input parameters and layers as well as output layers and parameters are as follows.

**Input layers and parameters are:**

* Heat density map and gross floor area density map (by default is provided by the toolbox)
  * in raster format (\*.tif)
  * with 1 hectare resolution
  * demand densities in _**MWh/ha**_ and gross floor area densities in _**m<sup>2</sup>/ha**_
* First year of investment
* Last year of investment
* Depreciation time in _**years**_
* Expected accumulated energy saving: The ratio of energy that is being saved in the **last year of investment** due to e.g. retrofitting the buildings to the heat demand in the **first year of the investment**
* DH market share at the beginning of the investment period
* Expected DH market share at the end of the investment period
* Interest rate
* DH grid cost ceiling in _**EUR/MWh**_: In potential DH areas, the distribution grid cost may not exceed the distribution grid cost ceiling.
* Construction cost **constant** in _**EUR/m**_ as well as Construction cost **coefficient** in _**EUR/m<sup>2</sup>**_ for:
  * Inner city
  * Outer city
  * Park
* Full load hours 

**Output layers and parameters are:**

* Total demand in selected region in the first year of investment in _**MWh**_
* Total demand in selected region in the last year of investment in _**MWh**_
* Maximum potential of DH system through the investment period in _**MWh**_
* Energetic specific DH grid costs in _**EUR/MWh**_
* Energetic specific DH distribution grid costs in _**EUR/MWh**_
* Energetic specific DH transmission grid costs in _**EUR/MWh**_
* Specific DH distribution grid costs per meter in _**EUR/m**_
* Specific DH transmission grid costs per meter in _**EUR/m**_
* Total grid costs - annuity in _**EUR**_
* Total distribution grid costs - annuity in _**EUR**_
* Total transmission grid costs - annuity in _**EUR**_
* Total distribution grid trench length in _**km**_
* Total transmission grid trench length in _**km**_
* Total number of coherent areas
* Number of economic coherent areas
* Heat demand density in the last year of the investment period (considering energy savings) in raster format
* DH areas (both economic and non-economic ones) in shapefile format
* Transmission lines and their capacities in shapefile format


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Method
Here, a brief explanation of methodology is provided. For a more complete explanation of the methodology and formulations, please to the [paper](https://www.sciencedirect.com/science/article/pii/S1876610218304740) published about this calculation module [[1](#References)].

The aim of the calculation module is to find regions in which DH system can be built without exceeding a user-defined average specific cost ceiling in _*EUR/MWh*_. This is done under following assumptions:

* The economic DH area with highest heat demand is considered as the only available heat source. It produces the heat for itself and all other economic coherent areas.
* between two DH areas, heat can flow in one direction,
* the annual DH demand is considered to remain constant after the last year of investment period
* market share or energy saving has the same percentages within cells of a DH area and also within different DH areas.
* The model creates only one connected DH system. It is not possible to have two networks.
* The input parameter grid cost ceiling is multiplied by ~95% to get distribution grid cost ceiling. This value is used for determination of potential DH areas.

The determination of economic DH areas is done in three steps. For more details refer to the provided test runs.

**STEP 1: Calculation of distribution grid costs based on heat demand and plot ratio using EHDM and EGFAM**

**STEP 2: Determination of potential DH areas**


**STEP 3:  Determination of economic DH areas and transmission line capacities and configuration required to connect these areas to each other.**

### Solver Options
This calculation module, uses Gurobi solver for solving the optimization problem. In order to guarantee a stable functionality of the calculation module we have introduced several options for solving the optimization problem. These options are as follows:

* The gap between the lower and upper objective bound is set to 0.01 (MIPGap = 1e-2).
* The relative difference between the primal and dual objective value was set to 0.0001 (BarConvTol = 1e-4).
* The solver focus is set to 1 to find the feasible solutions. Here, the focus is neither optimality nor objective bound (MIPFocus = 1).
* We have limited the amount of the used RAM to 500 mb in order not to enter to critical situations in case of concurrent runs by users (NodefileStart = 0.5).

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/dh_economic_assessment/tree/develop) you get the bleeding-edge development for this calculation module.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Sample run
Here, the calculation module is run for the case study of Vienna, Austria. First, use the "Go To Place" bar to navigate to Vienna and select the city. Click on the "Layers" button to open the "Layers" window and then click on the "CALCULATION MODULE" tab. In the list of calculation modules, select "CM - District heating potential: economic assessment".

<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Test Run: default input values for the case study of Vienna
The provided default values in the toolbox are basically suitable for Vienna, i.e. it may not suit for other regions and should be adapted depending on your case study.
The calculation is done for the period from 2018 to 2030 (2018 is the year 0 and 2030 is the year 12 and the investment period will be 12 years). The expected accumulated energy saving ratio shows the reduction of heat demand compared to the beginning of the investment period (year 2018).
The DH market share refers to the market share within the DH areas. Its value in the beginning of the investment period (year 2018), shows the actual market share (usually known). The expected market share at the investment period, is what you expect to reach. This value comes from road maps, scenarios, policies and etc.
For the default case, we consider the interest rate of 5 percent. The DH grid cost ceiling is multiplied by ~95% to get a cost ceiling for the distribution grid. Using this value, the potential DH areas are obtained. Within the potential areas, the average distribution grid cost may not exceed the distribution grid cost ceiling.
The value of full load hours is used to estimate the peak load and find the suitable dimension for the transmission grid.

The construction cost constant and the construction cost coefficient originate from reference [[2](#References)]. The obtained regions are very sensitive to these values. Therefore, as a general comment, we suggest to calculate with these values first and only if you think these values lead to an over- or underestimation of your results, then modify them.

By default, the heat density map and the gross floor area density map that are provided by the toolbox are used for the calculation. You can use your own uploaded layers for running the calculation. Here, we use default layers.

Now, press run button and wait until the calculation is finished.


**IMPORTANT NOTE**: Please note that this calculation module may take several minutes to find the final solution. If you calculation takes very long (more than 10 minutes), select a smaller region for your calculation. Also, using arbitrary values can lead to long calculation time. Therefore, make sure that your provided values are suitable for the selected region.


The following figure shows the obtained results for the given input parameters in Vienna. The most important indicators are demonstrated in the RESULTS window. Additionally, you can get some indicators by pressing on the each single potential areas on the map


![Figure 1](https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_econ_assessment/1.png "Figure 1: potential areas and indicators")

The output layers will appear in the LAYERS window under the Calculation module section.


<code><ins>**[To Top](#table-of-contents)**</ins></code>


## References

[1]. Fallahnejad M, Hartner M, Kranzl L, Fritz S. Impact of distribution and transmission investment costs of district heating systems on district heating potential. Energy Procedia 2018;149:141–50. doi:10.1016/j.egypro.2018.08.178.

[2]. Persson U, Werner S. Heat distribution and the future competitiveness of district heating. Appl Energy 2011;88:568–76. doi:10.1016/j.apenergy.2010.09.020.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to cite
Mostafa Fallahnejad, in Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/CM-District-heating-grid-costs (April 2019)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers
This page is written by Mostafa Fallahnejad\*.
- [ ] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## License
Copyright © 2016-2019: Mostafa Fallahnejad

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

View in another language:

 [Bulgarian](bg-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Croatian](hr-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Czech](cs-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Danish](da-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Dutch](nl-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Estonian](et-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Finnish](fi-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [French](fr-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [German](de-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Greek](el-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Hungarian](hu-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Irish](ga-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Italian](it-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Latvian](lv-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Lithuanian](lt-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Maltese](mt-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Polish](pl-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Romanian](ro-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Slovak](sk-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Slovenian](sl-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Spanish](es-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Swedish](sv-CM-District-heating-potential-economic-assessment)<sup>\*</sup>
<sup>\*</sup>: machine translated
