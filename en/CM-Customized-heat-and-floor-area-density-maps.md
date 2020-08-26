<h1>CM Customized heat and gross floor area density maps</h1>

## Table of Contents
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
  * [Inputs](#inputs-and-outputs_inputs)
  * [Outputs](#inputs-and-outputs_outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## Introduction
This module generates both a heat density and a floor area density map in the form of raster files. The inputs to the module are either a shapefile with required data in its attribute table or a CSV file. The input data should be sufficient for calculating floor area and heat demand densities. For example, X-coordinate and Y-coordinate of the centre of buildings that in case of shapefile, will be automatically calculated; heat demand of buildings or specific heat demand and its floor area. Instead of floor areas, the building footprint and number of floors can be provided.

This module will only be available as a stand-alone module; it will not be integrated into the toolbox.


## Inputs and outputs

### Inputs
The module accepts either shapefile or CSV file as input. The following headers are expected in case of any of the input file types (should be available in the attribute table or as the header of the CSV file):

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


**Important Note**: `The headers should be written as stated above. Otherwise, the code will return an error.`

[**`To Top`**](#table-of-contents)

### Outputs
As output, two raster files are generated:

1. Gross floor area density map with pixel values in **_m<sup>2</sup> per hectare_**
1. Heat demand density map with pixel values in **_MWh per hectare_**

[**`To Top`**](#table-of-contents)

## Method

[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module
**[Here](https://github.com/HotMaps/customized_h_fa_dm)** you get the bleeding-edge development for this calculation module.


[**`To Top`**](#table-of-contents)

## How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-District-heating-potentials (April 2019)


[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page is written by Mostafa Fallahnejad\*.

&#9744; This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)

Institute of Energy Systems and Electrical Drives

Gusshausstrasse 27-29/370

1040 Wien


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2019: Mostafa Fallahnejad

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

 [German](../de/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated
