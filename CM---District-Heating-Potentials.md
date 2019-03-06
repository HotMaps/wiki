## Introduction
This calculation module determines the district heating (DH) areas and their corresponding DH potential based on heat demand densities. The heat demand densities are obtained from the input GIS layer, namely [__European Heat Density Map (EHDM)__](https://gitlab.com/hotmaps/heat/heat_tot_curr_density), which was developed in course of  [__Hotmaps__](www.hotmaps-project.eu) project. The EHDM is in raster format and has a resolution of one hectare and Coordinate Reference System (CRS) of "_*ETRS89 / LAEA Europe - EPSG 3035*_". The cells in EHDM show the heating densities in _**MWh/ha**_.

![alt text](https://gitlab.com/hotmaps_wiki/intro_gui/raw/master/data/feedback_priority.png?inline=false "Water Exploitation Index plus - WEI+")

As output, one GIS layer, three indicators and two diagrams are presented. These outputs are explained in detail in [Sample Run](https://github.com/HotMaps/hotmaps_wiki/wiki/CM---District-Heating-Potentials#Sample-Run) section. The output layer demonstrates the potential DH areas. By clicking on each area on the map, a window is popped up and the DH potential corresponding to that area is shown. Within the indicator/graph window, relevant indicators and charts regarding DH potential within the selected zone and potentials in sub-zones are illustrated.


## Method
The heat demand plays an importan role in determination of potential DH areas. For example, implementation of district heating in areas with low heat demand is not economically viable. An arbirary area selection from EHDM, may have a high average heat demand density; however, this might be as a result of a few pixels with a very high heat demand within the selected area. In contrary, if selection of an area includes a large zone with low heat demand, this can adversly affect the average heat demand density. The aim of DH potential module is to provide a reasonable balance between heat demand density in  a cell of EHDM (with _*1ha*_ resolution) and cells in the neighbouring areas.


In the EHDM, pixels with low heat demand have high distribution costs and therefore, it is not economic to connect them to the DH system. We define a pixel demand threshold of _*1GWh/km<sup>2*_ for removing such pixels. By eliminating these pixels from the map, we obtain groups of pixels that are attached to each other. Each set of these attached pixels constitute small zones that in this paper, are referred as “coherent areas”. Afterwards, the distribution costs in each coherent area are calculated and the ones with costs of below the upper bound (c\_dist\_max) are extracted. Subsequently, the pixel threshold is increased with a small step (_*0.1GWh/km<sup>2*_) and the previous step is repeated. This process is continued until no pixel above the threshold remains. The result would be a set of coherent areas, all with distribution costs of bellow the defined distribution cost ceiling. Fig. 1 shows the flowchart of these steps.

In practice, determination of coherent areas starts by selecting regions with higher heat densities. Here, this process is done the other way around in order to speed up the calculation process. It should be noted that this has no influence on determination of coherent areas since the distribution cost upper bound is considered in each loop.

This code uses the concept of connected components from image processing library of Scipy in order to detect the potential district heating areas.


## Inputs and Outputs

To summarize inputs and outputs layers and parameters, 

__Input layers and parameters are:__

- Heat density map
 - in raster format
 - with 1 hectare resolution
 - demand densities in _**MWh/ha**_

- Pixel Threshold _**GWh/km<sup>2**_

- DH Threshold _**GWh/a**_


__Input layers and parameters are:__


- DH areas
- DH potential in each DH area


## Sample Run

Here, the calculation module is run for the case study of Aalborg in Denmark.