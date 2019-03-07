## Table of Contents

* [Introduction](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#introduction)
* [Method](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Method)
* [Inputs and outputs](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Inputs-and-outputs)
* [Sample run](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Sample-run)
  * [Test Run 1: default input values](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Test-Run-1-default-input-values)
  * [Test Run 2: modified input values](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Test-Run-2-modified-input-values)
* [References](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#References)
* [How to cite](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#How-to-cite)
* [Authors and reviewers](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Authors-and-reviewers)
* [License](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#License)
* [Acknowledgement](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Acknowledgement)

## Introduction
The heat demand plays an important role in determination of potential district heating (DH) areas. For example, implementation of district heating in areas with low heat demand is not economically viable. On the other hand, defining any area with high heat demand density as potential DH area can also be inaccurate. A high heat demand density in an area could be due to presence of a few consumers with a very high heat demand within that area. In contrary, a low average heat demand density could be a sign of zones with a very low heat demand within the selected area. The aim of DH potential module is to provide a reasonable balance between heat demand density in an area and its constituting zones.

The DH potential module determines the DH areas and their corresponding DH potential based on heat demand densities. The heat demand densities are obtained from the input GIS layer, namely **[European Heat Density Map (EHDM)](https://gitlab.com/hotmaps/heat/heat_tot_curr_density)**, which was developed in course of  **[Hotmaps project](https://www.hotmaps-project.eu)**. The EHDM is in raster format and has a resolution of one hectare and Coordinate Reference System (CRS) of "_*ETRS89 / LAEA Europe - EPSG 3035*_". The cells in EHDM show the heating densities in _**MWh/ha**_.

As output, one GIS layer, three indicators and two diagrams are presented. These outputs are explained in detail in [Sample Run](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Sample-Run) section. The output layer demonstrates the potential DH areas. By clicking on each area on the map, a window is popped up and the DH potential corresponding to that area is shown. Within the indicator/graph window, relevant indicators and charts regarding DH potential within the selected zone and potentials in sub-zones are illustrated.


## Method

The technological and economic potential for DH in a specific region can be defined by the overall heat demand and its spatial allocation.


Any selection or cut from EHDM is constitute from one or more one-hectare cells. The DH potential calculation module finds the suitable areas of the primary area, we show how the DH areas within a selected zone is determined. As previously mentioned, for the implementation of DH, the areas with low heat demand density are not attractive. In the EHDM, the smallest area that can be selected is equivalent to a cell of the EHDM, which has _*1ha*_ area. We define a pixel demand threshold of _*1GWh/km<sup>2*_ for removing such pixels.
By eliminating these pixels from the map, we obtain groups of pixels that are attached to each other. Each set of these attached pixels constitute small zones that here, are referred as “coherent areas”. 


This code uses the concept of connected components from image processing library of Scipy in order to detect the potential district heating areas.


## Inputs and outputs
To summarize inputs and outputs layers and parameters,

**Input layers and parameters are:**

* Heat density map (by default is provided by the toolbox)
  * in raster format (\*.tif)
  * with 1 hectare resolution
  * demand densities in _**MWh/ha**_
* Minimum heat demand in hectare [_**MWh/ha**_]: a value between _*0*_ and _*1000*_
* Minimum heat demand in a DH area [_**GWh/year**_]: a value between _*0*_ and _*500*_

**Input layers and parameters are:**

* DH areas
* DH potential in each DH area


## Sample run
Here, the calculation module is run for the case study of Aalborg in Denmark.

* First, use the "Go To Place" bar to navigate to Aalborg and select the city.

![Fig. 1](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/1.png "Navigate to a location")

* Follow the steps as shown in the figure below:
  * Click on the "Layers" button to open the "Layers" window:
  * Click on the "CALCULATION MODULE" tab.
  * Click on the "DISTRICT HEATING POTENTIAL" button.

![Fig. 2](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/2.png "Calculation module tab")

* Now, the "DISTRICT HEATING POTENTIAL" opens and is ready to run.

![Fig. 3](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/3.png "NDISTRICT HEATING POTENTIAL")


### Test Run 1: default input values

The default input values show the general conditions under which an area can be considered as a potential DH area. These values should be regarded as starting point only. You may need to set values bellow or above default values considering additional local considerations. Therefore, the user should adapt these values to find the best combination of thresholds for his or her case study.
To run the calculation module, follow the next steps:

* Assign a name to the run session (optional - here, we chose "Test Run 1") and set the input parameters (here, default values were used).

![Fig. 4-0](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/4-0.png "Name the run session")

* Wait until the process is finished.
* As output, indicators and diagrams are shown in the "RESULTS" window.

![Fig. 4-1](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/4-1.png "INDICATORS tab")

![Fig. 4-2](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/4-2.png "GRAPHICS tab")

* Also a new layer is added to the canvas showing DH areas. This layer is added to the list of layers under the "Calculation module" category. The run session name distinguishes the outputs of this run from other ones.

![Fig. 4-3](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/4-3.png "Calculation module layers")

Following these steps, you will get an impression about the input values and potential DH areas.


### Test Run 2: modified input values

Depending on your experience and  local knowledge, you may increase or decrease the input values to obtain better results. In case of Aalborg, for instance, you may know that the heat demand in outer city areas is relatively close to the central part of the city and DH system is also feasible in those areas. Therefore, you may decide to reduce the minimum heat demand in cells that are part of a DH area; however, to guarantee enough heat demand, you may increase the minimum heat demand in a DH area. Here you re-run the calculation modules with new input parameters.

* Assign a name to the run session (optional - here, we chose "Test Run 2") and set the input parameters (_*250 MWh/ha*_ for min. heat demand in hectare and _*35 GWh/year*_ for the minimum demand in DH area) as shown in [Fig. 7]().

![Fig. 5-0](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/5-0.png "Name the run session")

* Wait until the process is finished.
* As output, indicators and diagrams are shown in the "RESULTS" window ([Fig. 8]() and [Fig. 9]()).

![Fig. 5-1](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/5-1.png "INDICATORS tab")

![Fig. 5-2](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/5-2.png "GRAPHICS tab")

* Also a new layer is added to the canvas showing DH areas. This layer is added to the list of layers under the "Calculation module" category ([Fig. 10]()). The run session name distiguishes the outputs of this run from other ones.

![Fig. 5-3](https://github.com/HotMaps/hotmaps_wiki/blob/master//Images/cm_dh_potential/5-3.png "Calculation module layers")



## References

test



## How to cite

test


## Authors and reviewers
Mostafa Fallahnejad\*, Lukas Kranzl\*

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien


## License
Copyright © 2016-2018: Mostafa Fallahnejad

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.