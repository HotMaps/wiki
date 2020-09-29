<h1>CM Customized heat and gross floor area density maps</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
This module generates raster files both for a heat density and a gross floor area density map in the format required by the Hotmaps toolbox. The input data is provided in the form of a CSV file containing information on location, gross floor area and heat demand for each single building to be taken into account.


[**`To Top`**](#table-of-contents)


## Introduction
This module generates both a heat density and a gross floor area density map in the form of raster files. The input to the module is a CSV file with certain column headers. It should contain the following data: the X- and the Y-coordinate of the centre of the buildings in EPSG:3035 coordinate reference system, the gross floor area and the annual heat demand of the buildings. The generated raster files follow required projection and resolution by the Hotmaps toolbox and therefore, can easily be uploaded to the user accounts.

This module is only available as a stand-alone module; it is not integrated in the online version of the Hotmaps toolbox. The users of this CM should be familiar with python programming and have installed required libraries (e.g. Numpy, Pandas, GeoPandas and GDAL).

[**`To Top`**](#table-of-contents)

## Inputs and outputs

**Inputs**

The module accepts a CSV file as input. The following headers are expected in case of any of the input file types (should be available in the header of the CSV file):

* **hotmaps_ID**: provide a unique, integer ID for each feature (polygon)
* **Type**: Building type: set to 1 for service sector; other values are considered as residential (optional: can be left empty)
* **Year_Construction**: Year of construction (optional: can be left empty)
* **Address**: Address of the building (optional: can be left empty)
* **GFA**: Gross floor area in **_m<sup>2</sup>_**
* **Footprint**: footprint of the building in **_m<sup>2</sup>_** (required if values for GFA are not provided)
* **NrFloor**: number of floors (required if values for GFA are not provided)
* **spec_demand**: Specific heat demand of each feature (polygon) in **_kWh_**
* **demand**: Heat demand of each feature (polygon) in **_kWh_**
* **X_3035**: The X-Coordinate of the center of the feature (polygon) in EPSG 3035 projection (Mandatory for the CSV file: can be left empty)
* **Y_3035**: The Y-Coordinate of the center of the feature (polygon) in EPSG 3035 projection (Mandatory for the CSV file: can be left empty)


**Important Note**: `The headers should be written as stated above. Otherwise, the code will break and returns an error.`



**Outputs**

As output, two raster files are generated:

* A gross floor area density map with pixel values in **_m<sup>2</sup> per hectare_**
* A heat demand density map with pixel values in **_MWh per hectare_**

[**`To Top`**](#table-of-contents)

## Method

To visualize an own raster file in the Hotmaps toolbox, it should respect the rules defined by the toolbox. Generally, a raster should:

1. have the CRS of **ETRS89-extended / LAEA Europe - EPSG:3035**;
1. The coordinate of the raster origin (top-left corner of the raster) should be a multiplicand of 100, e.g. (4334900, 3019700);
1. The resolution of the raster map should be 100x100m;
1. The raster should refer to a location in Europe.

Based on the above criteria and coordinates given in the input CSV file, each input coordinate is allocated to a certain pixel. Entries allocated to one single pixel are aggregated. The bottom-left pixel and top-right pixel determine the extent of the pixel. The resolution of the map is 100x100m. Accordingly, a heat density map and gross floor area map is generated.

[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module
**[Here](https://github.com/HotMaps/customized_h_fa_dm)** you get the bleeding-edge development for this calculation module.


[**`To Top`**](#table-of-contents)

## How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, CM Customized heat and gross floor area density maps (September 2020)


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

 [German](../de/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Italian](../it/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated
