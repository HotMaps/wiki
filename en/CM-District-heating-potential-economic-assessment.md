<h1>CM District heating potential economic assessment</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
  * [Solver options](#method_solver-options)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
  * [Test Run: default input values for the case study of Vienna](#sample-run_test-run-default-input-values-for-the-case-study-of-vienna)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
With this calculation module, you can determine potential district heating areas based on a simplified assessment of the heat distribution and transmission costs. Inputs to the module are heat demand and gross floor area density maps, costs of network expansion, development of heat demand and connection rates, depreciation time, interest rate and a threshold for the accepted heat distribution costs. Furthermore, it calculates the costs of transmission lines between identified district heating areas.

[**`To Top`**](#table-of-contents)


## Introduction

This calculation module uses a heat density map (HDM) and a gross floor area density map to propose a GIS-based method for determining potential DH areas with specific focus on district heating (DH) grid costs. In the toolbox, user has the option to use default data set provided by the toolbox, namely [heat demand density map](https://gitlab.com/hotmaps/heat/heat_tot_curr_density) and the [gross floor area density map](https://gitlab.com/hotmaps/gfa_tot_curr_density), or use own layers of the same types that are uploaded to the personal Hotmaps account.
The DH areas are determined via performing sensitivity analyses on the HDM under consideration of predefined upper bound of the average distribution costs. The approach additionally allows for the estimation of length and diameter of transmission lines and their associated costs. The outputs are GIS layers that illustrate areas that are economically viable for the construction of DH as well as the cost-minimal transmission lines connecting these regions to each other. The calculation module can be used to study the impact of parameters like grid costs ceiling and market share on potential and on expansion and extension of the DH systems.

[**`To Top`**](#table-of-contents)


## Inputs and outputs
The input layers and parameters as well as output layers and parameters for the CM are as follows.


**Input layers and parameters are:**

* Parameters:
  * First year of investment
  * Last year of investment: determines in how many years you should reach the targeted DH market share.
  * Depreciation time in _**years**_: higher depreciation time makes the overall cost lower as your system will last longer and serves more
  * Accumulated energy saving: The expected ratio of energy that is being saved in the **last year of investment** due to e.g. retrofitting the buildings compared to the heat demand in the **first year of the investment**. higher accumulated energy savings, means lower heat demand densities and probably this will lead to higher specific distribution grid costs.
  * DH market share at the beginning of the investment period: Shows the current state in the selected area.
  * DH market share at the end of the investment period: The target market share that you want to reach.
  * Interest rate
  * DH grid cost ceiling in _**EUR/MWh**_: In potential DH areas, the distribution grid cost may not exceed this defined distribution grid cost ceiling.
  * Construction cost **constant** in _**EUR/m**_ as well as Construction cost **coefficient** in _**EUR/m<sup>2</sup>**_
  * Full load hours: is used to calculate the peak load, which is important for the dimension of pipes. Here, this is used solely for the transportation grid.
  * MIPGap: an optimization solver option, with which you can determine how accurate your answer should be. Note that smaller gaps leads to higher accuracy at cost of higher CPU time.
* Layers:
  * Heat density map and gross floor area density map: default maps are provided in the toolbox; own uploaded maps can also be used in the CM
    * in raster format (\*.tif)
    * with 1 hectare resolution
    * demand densities in _**MWh/ha**_ and gross floor area densities in _**m<sup>2</sup>/ha**_


**Output layers and parameters are:**

* Parameters:
  * Total demand in the selected region in the first year of investment in _**MWh**_
  * Total demand in the selected region in the last year of investment in _**MWh**_
  * Maximum potential of DH system through the investment period in _**MWh**_
  * Energetic specific DH grid costs in _**EUR/MWh**_
  * Energetic specific DH distribution grid costs in _**EUR/MWh**_
  * Energetic specific DH transmission grid costs in _**EUR/MWh**_
  * Specific DH distribution grid costs per meter in _**EUR/m**_
  * Specific DH transmission grid costs per meter in _**EUR/m**_
  * Total grid costs - annuity in _**EUR/yr**_
  * Total distribution grid costs - annuity in _**EUR/yr**_
  * Total transmission grid costs - annuity in _**EUR/yr**_
  * Total distribution grid trench length in _**km**_
  * Total transmission grid trench length in _**km**_
  * Total number of coherent areas
  * Number of economic coherent areas
* Layers:
  * Heat demand density in the last year of the investment period (considering energy savings) in raster format
  * DH areas (both economic and non-economic ones) in shapefile format
  * Transmission lines and their capacities in shapefile format


[**`To Top`**](#table-of-contents)


## Method
Here, a brief explanation of the methodology is provided. For a more complete explanation of the methodology and formulations, please refer to the open access [paper](https://www.sciencedirect.com/science/article/pii/S1876610218304740) published about this calculation module [[1](#references)].

The aim of the calculation module is to find regions in which DH systems can be built without exceeding a user-defined average specific cost ceiling in _*EUR/MWh*_. This is done under the following assumptions:

* The economic DH area with highest heat demand is considered as the only available heat source. It produces the heat for itself and all other economic coherent areas.
* between two DH areas, heat can flow in one direction,
* the annual DH demand is considered to remain constant after the last year of investment period
* the defined market shares and relative energy savings are the same in all cells of the analysed area.
* The model creates only one connected DH system. It is not possible to have two or more independent networks.
* The input parameter "grid cost ceiling" is multiplied by ~95% to yield the distribution grid cost ceiling. This value is used for the determination of potential DH areas.

The determination of economic DH areas is done in three steps. For more details refer to the provided test runs.

**STEP 1: Calculation of distribution grid costs based on heat demand and plot ratio using selected heat density and gross floor area density maps**

**STEP 2: Determination of potential DH areas**

**STEP 3: Determination of economic DH areas and transmission line capacities and configuration required to connect these areas to each other.**


### Solver Options
This calculation module uses a Gurobi solver for solving the optimization problem. In order to guarantee a stable functionality of the calculation module, we have introduced several options for solving the optimization problem. These options are as follows:

* The gap between the lower and upper objective bound is set to 0.01 (MIPGap = 1e-2).
  * Smaller gap provides usually a more accurate answer. However, this can be very expensive from CPU time perspective.
* The relative difference between the primal and dual objective value was set to 0.0001 (BarConvTol = 1e-4).
* The solver focus is set to 1 to find the feasible solutions. Here, the focus is neither optimality nor objective bound (MIPFocus = 1).
* We have limited the amount of the used RAM to 500 MB in order not to enter to critical situations in case of concurrent runs by different users (NodefileStart = 0.5).

[**`To Top`**](#table-of-contents)


## GitHub repository of this calculation module

[Here](https://github.com/HotMaps/dh_economic_assessment/tree/develop) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)


## Sample run
Here, the calculation module is run for the case study of Vienna, Austria. First, use the "Go To Place" bar to navigate to Vienna and select the city. Click on the "LAYERS" button to open the "LAYERS" bar and then click on the "CALCULATION MODULE" tab. In the list of calculation modules, select "CM - DISTRICT HEATING POTENTIAL: ECONOMIC ASSESSMENT".

### Test Run: default input values for the case study of Vienna
The provided default values in the toolbox are basically suitable for Vienna, i.e. it may not suit for other regions and should be adapted depending on your case study.
The calculation is done for the period from 2018 to 2030 (2018 is the year 0 and 2030 is the year 12 and the investment period will be 12 years). The expected accumulated energy saving ratio shows the reduction of heat demand compared to the beginning of the investment period (year 2018).
The DH market share refers to the market share within the DH areas. Its value at the beginning of the investment period (year 2018) shows the actual market share (usually known). The expected market share at the end of the investment period is what you expect to reach. This value comes from road maps, scenarios, policies etc.
For the default case, we consider the interest rate of 5 per cent. The DH grid cost ceiling is multiplied by ~95% to yield a cost ceiling for the distribution grid. Using this value, the potential DH areas are obtained. Within the potential areas, the average distribution grid cost may not exceed the distribution grid cost ceiling.
The value of full load hours is used to estimate the peak load and find a suitable dimension for the transmission grid.

The construction cost constant and the construction cost coefficient originate from reference [[2, 3](#references)]. The obtained regions are very sensitive to these values. Therefore, as a general comment, we suggest to calculate with these values first and only if you think these values lead to an over- or underestimation of your results, then modify them.

By default, the heat density map and the gross floor area density map that are provided by the toolbox are used for the calculation. You can use your own uploaded layers for running the calculation. In this sample run we use default layers.

Now, press the "RUN CM" button and wait until the calculation is finished.


**IMPORTANT NOTE**: Please note that this calculation module may take several minutes to find the final solution. If your calculation takes very long (more than 10 minutes), select a smaller region for your calculation. Also, using arbitrary values can lead to a long calculation time. Therefore, make sure that your provided values are suitable for the selected region.


The following figure shows the obtained results for the given input parameters in Vienna. The most important indicators are demonstrated in the RESULTS window. Additionally, you can get some indicators by pressing on each single potential areas on the map.


<img src="../images/cm_econ_assessment/1.png" alt="Figure 1" title="Figure 1: potential areas and indicators"/>

The output layers will appear in the LAYERS bar under the Calculation module section.


[**`To Top`**](#table-of-contents)


## References

[1] Fallahnejad M., Hartner M., Kranzl L., Fritz S. Impact of distribution and transmission investment costs of district heating systems on district heating potential. Energy Procedia 2018;149:141–50. doi:10.1016/j.egypro.2018.08.178.

[2] Persson U., Werner S. Heat distribution and the future competitiveness of district heating. Appl Energy 2011;88:568–76. https://doi.org/10.1016/j.apenergy.2010.09.020.

[3] Persson U, Wiechers E, Möller B, Werner S. Heat Roadmap Europe: Heat distribution costs. Energy 2019;176:604–22. https://doi.org/10.1016/j.energy.2019.03.189.

[**`To Top`**](#table-of-contents)


## How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-District-heating-potential-economic-assessment (September 2020)

[**`To Top`**](#table-of-contents)


## Authors and reviewers

This page was written by Mostafa Fallahnejad (**[EEG - TU Wien](https://eeg.tuwien.ac.at/)**).

&#9745; This page was reviewed by Marcul Hummel (**[e-think](https://e-think.ac.at)**).


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Mostafa Fallahnejad

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

 [Bulgarian](../bg/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Czech](../cs/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Danish](../da/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [German](../de/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Greek](../el/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Spanish](../es/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Estonian](../et/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Finnish](../fi/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [French](../fr/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Irish](../ga/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Croatian](../hr/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Hungarian](../hu/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Italian](../it/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Lithuanian](../lt/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Latvian](../lv/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Maltese](../mt/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Dutch](../nl/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Polish](../pl/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Romanian](../ro/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Slovak](../sk/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Slovenian](../sl/CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Swedish](../sv/CM-District-heating-potential-economic-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated
