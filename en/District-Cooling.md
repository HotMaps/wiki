<h1>Concept for using Hotmaps for district cooling</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Input and Output](#input-and-output)
  * [Input](#input-and-output_input)
    * [Create a user account](#input-and-output_input_create-a-user-account)
    * [Download a cooling density map](#input-and-output_input_download-a-cooling-density-map)
    * [Upload the cooling demand data](#input-and-output_input_upload-the-cooling-demand-data)
    * [Create a bottom-up cooling density map](#input-and-output_input_create-a-bottom-up-cooling-density-map)
  * [Output](#input-and-output_output)
    * [CM - District heating potential areas: user-defined thresholds](#input-and-output_output_cm-district-heating-potential-areas-user-defined-thresholds)
    * [CM - Scale heat and cool density maps](#input-and-output_output_cm-scale-heat-and-cool-density-maps)
* [Method](#method)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance

This page aims to show how to apply the Hotmaps toolbox to carry out cooling planning. The pilot area of the Aalborg Municipality is taken as a study case, as this city is working towards district cooling planning. The potential application of the Hotmaps toolbox is demonstrated by using different calculation modules to investigate the cooling demand in Aalborg and to assess the potential for district cooling in the city.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Introduction

The cooling demand in Aalborg Municipality is centred in and around the dense city centre. The following figure shows the gross floor area density in each heactare of the city based on the estimation done in course of the Hotmaps project.

[[/en/District-Cooling/DCooling_1.jpg]]
Figure 1: Gross Floor Area Density Map of the Municipality of Aalborg


The application of the Hotmaps toolbox for carrying out cooling planning entails the following steps:
* Using the existing [cooling density map](https://gitlab.com/hotmaps/heat/cool_tot_curr_density), by selecting and downloading it.
* Uploading the layer as a personal layer categorised as a “[Building] Heat density total”. This way the cooling density can be used in the existing calculation modules for examining and assessing the district cooling potentials.
* Using the layer of the cooling density map in the calculation module [CM - District Heating Potential Areas: User-Defined Thresholds](/en/CM-District-heating-potential-areas-user-defined-thresholds) to examine and access the district cooling potentials. The density threshold should be lowered for district cooling compared to district heating given the nature of district cooling.
* Developing a customized bottom-up cooling density map by using data and functionalities from the Hotmaps database and GitHub-repository. These Hotmaps data should be coupled with more detailed local data on the stock of buildings in the analysis area.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Inputs and outputs

### Inputs

In order to create and use a cooling density map, you first need to create an account, then download the default cooling density map from the database, save it locally on your computer, upload the downloaded map to your user account, and then create a bottom-up cooling demand density map. All the steps are illustrated below.


#### Create a user account

To be able to upload data, you first need to create a user account (register). This is done by performing the following steps: 
* Go to the [Hotmaps Toolbox](https://www.hotmaps.eu)
* Click on the ‘Connect’ button on the top left corner and follow the instructions. Use your email address as username. Once you have logged in to your account, the button ‘Connect’ in the top left corner should have been replaced with an ‘Account’ button. 
* The account window will pop up in the middle of the screen. From here, you can edit your user details, view the available storage space, and most importantly upload your own data.
* The accepted file formats are .tif and .csv. Press the ‘Select file’ button located at the bottom of the account window, localise the desired file on your computer, select the right category from the drop-down list to the left, and upload the file to the toolbox with the the ‘Upload Layer’ button.
* You can leave the account window by clicking at any point of the screen outside of the account window.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


#### Download a selection of the default cooling density map from the Hotmaps database

To download the cooling density map (or a selection of the map) as a raster file and save it to your computer, perform the following steps:
* Zoom to the location that you want to analyse (e.g. Aalborg).
* Click on the bounding box that contains the area of interest (make sure you remain at the scale ‘LAU2’), or select a customised area by drawing the location boundaries (make sure you remain at the scale ‘Hectare’). In this case, draw the boundaries around the area of interest using the drawing tool: <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg"/> you can choose among rectangular, circle shape, or a polygon. Then, click on the drawn bounding box to select the area.
* Select the category ‘Cooling density total’ in the left panel under ‘Layers’. 
* Download the cooling density map as a raster file and save it to your computer for the currently selected area by clicking on the ‘Download layer selection’ symbol <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/logo_download_selection_1.jpg"/> below the layer ‘Cooling density total’.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### Upload the cooling demand data

To upload the cooling demand data to the Hotmaps toolbox, perform the following steps:
* Unselect all the layers in the left panel.
* Log-in to your user account and then click on the ‘account’ button.
* Click on ‘Select files’ in the right bottom corner of the account window and proceed to your storage folder to upload your files.
* Select the raster file for the ‘Cooling Density Total’ that you have downloaded above (e.g. “cool_tot_curr_density.tif”). Select the raster file type ‘(Building) Heat density total’, despite the layer type, in fact, is ‘Cooling density total’. This way the cooling density can be used in the calculation modules for examining and assessing the district cooling potentials.
* The uploaded layer will appear at the top of the left layer panel and can be used as the embedded layers.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### Create a bottom-up cooling density map

To develop a customized bottom-up cooling density map based on local data, perform the following steps:
* Obtain local data on building stock (including location/coordinates, building area, building type, construction year or period).
* Download the Hotmaps Building Stock data on final energy demand for space heating (SH), space cooling (SC), and domestic hot water (DHW) for each EU28 from [here(folder data)](https://gitlab.com/hotmaps/building-stock)
* Find the country that you are working with or use the EU28-average in the Hotmaps Building Stock data.
* Classify your local building stock data to the sub-sectors and building age class of the Hotmaps Building Stock data.
* Connect the cooling final energy demand for each subsector and building age class with your local building stock data for each building and calculate the cooling final energy demand.
* Convert your spreadsheet to .csv or .xls in order to create a shapefile .shp based on the coordination of each building and the final energy demand for cooling.
* Creating a bottom-up cooling density map .tif using the Hotmaps CM Customized heat and gross floor area density maps. Description can be found in the Wiki page [CM - Customized heat and floor area density maps](#CM-Customized-heat-and-floor-area-density-maps), which also contains the [link the code](https://github.com/HotMaps/customized_h_fa_dm).
* Using the customized bottom-up cooling density map for district cooling planning by using the [CM - District heating potential areas: user-defined thresholds](#CM-District-heating-potential-areas-user-defined-thresholds) as described below under ‘Output’.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Output

#### CM - District heating potential areas: user-defined thresholds

This module generates a shapefile of potential district cooling areas based on the following input data: a cooling density map with 1 hectare (ha) resolution, a cooling demand threshold for the cooling demand in each cell of the cooling density map and a cooling demand threshold for groups of connected cells with cooling demand above the previous threshold (=coherent area).

In order to calculate and compare different scenarios of potential district heating areas based on the two threshold values used in the module, perform the following steps:
* Zoom to the location that you want to examine (e.g. Aalborg).
* Draw and select a bounding box that contains the area of interest.
* NB Make sure you are at the scale ‘Hectare’ to be able to use you uploaded layers.
* Draw the boundaries around the area of interest using drawing tool <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg"/> (rectangular, circle shape or a polygon).
* Click on the drawn bounding box to select the area.
* In the left panel in the toolbox under ‘Layers’, select the tab ‘Calculation Modules’
* Select the ‘CM - District heating potential areas: user-defined thresholds’.
* Set the input parameters according to the values of choice to examine and access the district cooling potentials. The density threshold should be lower for district cooling compared to district heating, given the nature of district cooling. The parameters could be set for instance at:
  - Min. heat demand in hectare (“Min. cooling demand in hectare”): in a range between 75 to 15 MWh/ha/yr.
  - Min. heat demand in a DH area (“Min. cooling demand in a DC area”): in a range between 10 to 1 GWh/yr.
* Type in a name for the calculation you are going to perform (you can use a random title).
* Run the CM by clicking on the button “RUN CM”.
* When the calculation is ready you can find the calculated indicators in the results section in the right panel of the toolbox. It yields 3 results:
  - Total heat demand in GWh within the selected zone
  - Total district heating potential in GWh within the selected zone
  - Potential share of district heating from total demand in the selected zone
* The calculation also yields 3 new layers:
  - DC areas – a raster, showing the potential DC areas,
  - Cooling density map in potential DC areas – a raster, a clipping of the input cooling density map based on the potential DC areas
  - DC areas and their potentials – a shapefile, polygons of the potential DC areas.
* These can be found in the layers section in the left panel (you have to close the calculation modules with ‘X’ and move to ‘Layers’) at the bottom of all available layers. Take a screenshot of these layers and insert it here.

[[/en/District-Cooling/DCooling_2-min.png]]
Figure 2: Zoom on the city center of the Municipality of Aalborg

**IMPORTANT NOTE** 

To see these output layers, you might need to unselect the other layers. In case you still don’t see them, try to zoom-out, as there is sometimes a visualisation bug. You can also download them and reupload them using your personal account (you need to log in before), it always solves the problem. Or you can load them into your GIS-program of choice.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

#### CM - Scale heat and cool density maps

This module scales the default layer with a given factor. The aim is to provide the possibility to generate a heat or cold demand density layer with any overall value. E.g. if you like to increase the cooling demand by 20 %.

To scale and download a cooling density map layer to be used for the CM – District heating potential areas: user-defined thresholds, perform the following steps:
* Zoom to the location that you want to analyse (e.g. Aalborg).
* Click on the bounding box that contains the area of interest. Make sure you remain at the scale ‘LAU2’.
* Or select a customised area by drawing the location boundaries. Make sure you remain at the scale ‘Hectare’.
* Draw the boundaries around the area of interest using drawing tool <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg"/>. You can choose among rectangular, circle shape or a polyline.
* Click on the drawn bounding box to select the area.
* In the left panel in the toolbox under ‘Layers’, select the tab ‘Calculation Modules’
* Select the ‘CM - Scale heat and cool density maps’.
* Set the input parameters according to your need: E.g. “1.2” to increase the cooling demand by 20 %.
* Type in a name for the calculation you are going to perform (you can use a random title).
* Run the CM by clicking on the button “RUN CM”.
* The calculation yields a new ‘cooling density layer’ with a 20 % higher cooling demand, this can be found in the layers section to the left at the bottom of all available layers.
* Download the resulting layer (and rename it if necessary).
* Upload the scaled cooling demand data to the Hotmaps toolbox, as described above.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Method

In all countries covered by Hotmaps, where you need a quick estimation of district cooling demand. Use the existing calculation modules for district cooling planning. Create your own bottom-up cooling density map, based on local building stock data and the Hotmaps database for cooling demand depending on usage and construction period: see the section on Inputs.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References

Pezzutto et. al., 2019: [D2.3 WP2 Report –Open Data Set for the EU28](https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf)

Pezzutto, Croce, Zambotti, 2019. [Building stock analysis’ – developed under D.2.3 WP2](https://gitlab.com/hotmaps/building-stock)

Mostafa Fallahnejad, 2020. [Stand-alone CM: Customized heat and floor area density maps](https://github.com/HotMaps/customized_h_fa_dm)

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-Customized heat and gross floor area density maps (April 2019).


<code><ins>**[To Top](#table-of-contents)**</ins></code

## How to cite

Anders M. Odgaard, in Hotmaps-Wiki, Concept for using Hotmaps for district cooling (September 2020)


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

This page was written by Anders M. Odgaard **[Planenergie](https://planenergi.dk/)**.

&#9745; This page was reviewed by Marcus Hummel **[e-think](https://e-think.ac.at)**.


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Anders M. Odgaard

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