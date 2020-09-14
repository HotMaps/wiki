<h1>District Cooling</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Input and Output](#input-and-output)
  * [Input](#input-and-output_input)
    * [User account, Download & Upload cooling density map](#input-and-output_input_user-account-download-&-upload-cooling-density-map)
    * [Creating a bottom-up cooling density map](#input-and-output_input_creating-a-bottom-up-cooling-density-map)
  * [Output](#input-and-output_output)
    * [CM - District heating potential areas: user-defined thresholds](#input-and-output_output_cm-district-heating-potential-areas-user-defined-thresholds)
    * [CM - Scale heat and cool density maps](#input-and-output_output_cm-scale-heat-and-cool-density-maps)
* [Method](#method)
* [Application](#application)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance

This description aims to show how to apply the Hotmaps toolbox to carrying out cooling planning with the pilot area Aalborg Municipality as a case. This is done to explore the application of the Hotmaps Toolbox as the city works towards district cooling planning (Task 6.3). In this description this will be demonstrated by using the functionalities of the calculation modules investigating the cooling demands in Aalborg and the potential for district cooling.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Introduction

The cooling demand in Aalborg Municipality is centred in and around of the dense city centre.

This description aims to show how to apply the Hotmaps toolbox for carrying out cooling planning with the pilot area Aalborg Municipality as a case. Brief the concept consists of:

Using the existing Cooling Density Map, by selecting and downloading it.

Uploading the layer as a personal layer categorised as a “[Building] Heat density total”.

This way the cooling density can be used in the existing calculation modules for examining and assessing the district cooling potentials.

First the cooling layer is used in the calculation module “CM - District Heating Potential Areas: User-Defined Thresholds” for examining and accessing the district cooling potentials. The density threshold should of be lowered for district cooling compared to district heating given the nature of district cooling.

As a next step it is described how to develop your own customized bottom-up cooling density map by using data and functionalities from the Hotmaps database and GitHub-repository. These Hotmaps data should be coupled with more detailed local data on building stock.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Inputs and outputs

### Inputs

#### User account & Download & Upload cooling density map

1. To do: Create a user account (register) in order to be able to upload the cooling demand data.

Steps in more detail: Go onto the Hotmaps toolbox at: https://www.hotmaps.eu

Click at the ‘Connect’ button at the top left corner and follow the instructions. The username is your email address.

Once you created an account, go again to the top left corner where button ‘Connect’ has been replaced now with ‘Account’. The account window will pop up in the middle of the screen.

From this place, it is possible to amend user details, preview available storage space and most importantly to upload own data from local drive.

The acceptable files have the format of .tif and .csv. These can be localised on the computer and uploaded to the toolbox using the ‘Select file’ button located at the bottom of the account window. Simultaneously, the right category of data needs to be specified from the drop-down list, placed to the left from the ‘Select file’ button. The process finishes with the ‘Upload layer’.

You can also leave the account window by clicking in the random place of the screen outside of the account window.

2. To do: Select the area (e.g. Aalborg Municipality) and download the cooling density map as a raster file and save it to your computer.

Steps in more detail:

Zoom to the location that you want to analyse (e.g. Aalborg).

Click on the bounding box that contains the area of interest. Make sure you remain at the scale ‘LAU2’.

Or select a customised area by drawing the location boundaries. Make sure you remain at the scale ‘Hectare’.

Draw the boundaries around the area of interest using drawing tool . You can choose among rectangular, circle shape or a polyline.

Click on the drawn bounding box to select the area.

Select the following category in the left panel under ‘Layers’:

‘Cooling density total’

Download the cooling density map as a raster file and save it to your computer for the currently selected area by clicking on the ‘Download layer selection’ symbol below the layer ‘Cooling density total’.

3. To do: Upload the cooling demand data to the Hotmaps toolbox.

Steps in more detail:

Unselect all the layers in the left panel.

Log-in to your user account and then click on the ‘account’ button.

Click on ‘Select files’ in the right bottom corner of the account window and proceed to your storage folder to upload your files.

Select the raster file for the ‘Cooling Density Total’ that you have downloaded above (e.g. “cool_tot_curr_density.tif”).

When uploading the raster file, from the drop down list, you have to select that the raster file type is ‘[Building] Heat density total’ despite the layer type in fact is ‘Cooling density total’. This way the cooling density can be used in the calculation modules for examining and assessing the district cooling potentials.

The uploaded layer will emerge on at the top of the left layer panel and can be used in analogical way as the embedded layers.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### Creating a bottom-up cooling density map

To do: Develop a customized bottom-up cooling density map based on local data.

1. Obtain local data on building stock (including location [coordinates], building area, building type, construction year or period).

2. Download the Hotmaps Building Stock data on final energy demand for space heating (SH), space cooling (SC), and domestic hot water (DHW) for each EU28 from here (look under the folder data): https://gitlab.com/hotmaps/building-stock

3. Find the country that you are working with or use the EU28-average in the Hotmaps Building Stock data.

4. Classify your local building stock data to the sub sectors and building age class of the Hotmaps Building Stock data.

5. Connect the final energy demand for cooling for each subsector and building age class with your local building stock data for each building and calculate the final energy demand for cooling.

6. Convert your spreadsheet to .csv or .xls in order to create a shapefile .shp based on the coordination of each building and the final energy demand for cooling.

7. Creating a bottom-up cooling density map .tif using the Hotmaps CM Customized heat and gross floor area density maps. Description can be found in the Wiki here: https://wiki.hotmaps.eu/en/CM-Customized-heat-and-floor-area-density-maps, which also contains the link the code found here: https://github.com/HotMaps/customized_h_fa_dm

8. Using the customized bottom-up cooling density map for district cooling planning by using the CM - District heating potential areas: user-defined thresholds as described below under ‘Outputs’.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Outputs

#### CM - District heating potential areas: user-defined thresholds

This module generates a shapefile of potential district cooling areas based on the following input data: a cooling density map with 1 hectare (ha) resolution, a cooling demand threshold

for the cooling demand in each cell of the cooling density map and a cooling demand threshold for groups of connected cells with cooling demand above the previous threshold (=coherent area).

To do: Calculate and compare different scenarios of potential district heating areas based on the two threshold values used in the module.

Steps in more detail:

Zoom to the location that you want to calculate (e.g. Aalborg).

Draw and select a bounding box that contains the area of interest.

NB Make sure you are at the scale ‘Hectare’. In order to used you uploaded layers.

Draw the boundaries around the the area of interest using drawing tool You can choose among rectangular, circle shape or a polyline.

Click on the drawn bounding box to select the area.

In the left panel in the toolbox under ‘Layers’, select the tab ‘Calculation Modules’

Select the ‘CM - District heating potential areas: user-defined thresholds’.

Set the input parameters according to the values of choice to examining and accessing the district cooling potentials. The density threshold should be lowered for district cooling compared to district heating given the nature of district cooling. The parameters could e.g. be set to:

- Min. heat demand in hectare (“Min. cooling demand in hectare”) to a range between 75 to 15 MWh/ha/yr.

- Min. heat demand in a DH area (“Min. cooling demand in a DC area”) to a range between 10 to 1 GWh/yr.

Type in a name for the calculation you are going to perform (you can use a random title).

Run the CM by clicking on the button “RUN CM”.

When the calculation is ready you can find the calculated indicators in the results section in the right panel of the toolbox. It yields 3 results:

- Total heat demand in GWh within the selected zone

- Total district heating potential in GWh within the selected zone

- Potential share of district heating from total demand in selected zone

The calculation also yields 3 new layers:

- DC areas – a raster, showing the potential DC areas,

- Cooling density map in potential DC areas – a raster, a clipping of the input cooling density map based on the potential DC areas

- DC areas and their potentials – a shapefile, polygons of the potential DC areas.

These can be found in the layers section in the left panel (you have to close the calculation modules with ‘X’ and move to ‘Layers’) at the bottom of all available layers. Take a screenshot of these layers and insert it here.

IMPORTANT NOT

o see these output layers, you might need to unselect the other layers. In case you still don’t see them, try to zoom-out, as there is sometimes a visualisation bug. You can also download them and reupload them using your personal account (you need to log in before), it always solves the problem. Or you can load them into your GIS-program of choice.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### CM - Scale heat and cool density maps

This module scales the default layer with a given factor. The aim is to provide the possibility to generate a heat or cold demand density layer with any overall value. E.g. if you like to increase the cooling demand by 20 %.

To do: Scale and download a cooling density map layer to be used for the CM – District heating potential areas: user-defined thresholds.

Steps in more detail:

Zoom to the location that you want to analyse (e.g. Aalborg).

Click on the bounding box that contains the area of interest. Make sure you remain at the scale ‘LAU2’.

Or select a customised area by drawing the location boundaries. Make sure you remain at the scale ‘Hectare’.

Draw the boundaries around the area of interest using drawing tool . You can choose among rectangular, circle shape or a polyline.

Click on the drawn bounding box to select the area.

In the left panel in the toolbox under ‘Layers’, select the tab ‘Calculation Modules’

Select the ‘CM - Scale heat and cool density maps’.

Set the input parameters according to your need: E.g. “1.2” to increase the cooling demand by 20 %.

Type in a name for the calculation you are going to perform (you can use a random title).

Run the CM by clicking on the button “RUN CM”.

The calculation yields a new ‘cooling density layer’ with a 20 % higher cooling demand, this can be found in the layers section to the left at the bottom of all available layers.

Download the resulting layer (and rename it if necessary).

Upload the scaled cooling demand data to the Hotmaps toolbox, as described above.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Method

Using existing CMs (calculation modules) for district cooling planning: See section on Inputs.

Create your own bottom-up cooling density map, based on local building stock data and the Hotmaps database for cooling demand depending on usage and construction period: See section on Inputs.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Application

In all countries covered by Hotmaps, where you need a quick estimation of district cooling demand.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References

Pezzutto et. al., 2019: ‘D2.3 WP2 Report –Open Data Set for the EU28’. Retrieved from: https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf

Pezzutto, Croce, Zambotti, 2019. ‘Building stock analysis’ – developed under D.2.3 WP2. Retrieved from: https://gitlab.com/hotmaps/building-stock

Mostafa Fallahnejad, 2020. ‘Stand-alone CM: Customized heat and floor area density maps’. Retrieved from: https://github.com/HotMaps/customized_h_fa_dm

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-Customized heat and gross floor area density maps (April 2019).


<code><ins>**[To Top](#table-of-contents)**</ins></code

## How to cite

Fallahnejad et. al., in Hotmaps-Wiki, Hotmaps - District Cooling Concept (August 2020)


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

This page is written by Anders M. Odgaard*.

This page was reviewed by Mostafa Fallahnejad** and Marcus Hummel ***.

* PlanEnergi

Jyllandsgade 1

DK-9520 Skørping

** Energy Economics Group - TU Wien

Institute of Energy Systems and Electrical Drives

Gusshausstrasse 27-29/370

AT-1040 Wien

*** e-think

Zentrum f. Energiewirtschaft und Umwelt

Argentinierstrasse 18/10

AT-1040 Wien


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## License

Copyright © 2016-2019: Anders M. Odgaard

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/GL-national)<sup>\*</sup> 

<sup>\*</sup> machine translated