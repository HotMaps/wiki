<h1>Concept for using Hotmaps for district cooling</h1>

## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Method](#method)
  * [Use of the default cooling density map from the Hotmaps database](#use-of-the-default-cooling-density-map-from-the-hotmaps-database)
  * [Use of the CM - Scale heat and cool density maps to adapt the default map](#use-of-the-cm-scale-heat-and-cool-density-maps-to-adapt-the-default-map)
  * [Create an individual bottom-up cooling demand density map using Hotmaps data and modules](#create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules)
  * [Use of the CM – District heating potential areas: user defined thresholds to identify potential district cooling areas](#use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance

This page aims to show how to apply the Hotmaps toolbox to carry out cooling planning. The pilot area of Aalborg Municipality is taken as a study case, as this city is working towards district cooling planning. The potential application of the Hotmaps database and toolbox is demonstrated by showing the use of different datasets and calculation modules to investigate the cooling demand and the potential for district cooling in the city.


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Introduction

The Hotmaps database and toolbox can be used for cooling planning in the following way:
* Use the default cooling demand density map for analysing district cooling potentials
* Use the CM - Scale heat and cool density maps to increase / decrease the cooling demand in the default layer in order to fit other estimations
* Use your own data regarding the building stock in the area of analysis together with data on specific cooling demand per building types from the Hotmaps database and the calculation module CM – Customised Floor area and Heat demand density maps to create a bottom-up cooling demand density map for further use 
* Use the CM – District Heating Potential Areas: user-defined thresholds to identify areas potentially interesting for district cooling

These different steps are explained in detail in the following sections. Furthermore, these are illustrated on the example of Aalborg municipality.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Method

### Use of the default cooling density map from the Hotmaps database
The Hotmaps database provides a cooling demand density map for entire EU28 countries on the level of 100 x 100 m. This raster layer is contained in the online [Hotmaps toolbox](https://www.hotmaps.eu) as well as in the data repository on gitlab. In the following it is explained how to prepare the map for being used in the CM - District heating potential areas: user defined thresholds.


#### Create an account for the Hotmaps toolbox. 
You can find a description of the procedure to do so under the following [link](/en/Introduction-to-user-interface).


#### Download a selection of the default cooling density map from the Hotmaps database
To download the cooling density map (or a selection of the map) as a raster file and save it to your computer, perform the following steps:
* Zoom to the location that you want to analyse (e.g. Aalborg).
* Click on the bounding box that contains the area of interest (make sure you remain at the scale ‘LAU2’), or select a customised area by drawing the location boundaries (make sure you remain at the scale ‘Hectare’). In this case, draw the boundaries around the area of interest using the drawing tool: <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg"/> you can choose among rectangular, circle shape, or a polygon. Then, click on the drawn bounding box to select the area.
* Select the category ‘Cooling density total’ in the left panel under ‘Layers’. 
* Download the cooling density map as a raster file and save it to your computer for the currently selected area by clicking on the ‘Download layer selection’ symbol <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/logo_download_selection_1.jpg"/> below the layer ‘Cooling density total’.


#### Upload the selected cooling demand density map to your private account
To upload the cooling demand data to the Hotmaps toolbox, perform the following steps:
* Unselect all the layers in the left panel.
* Log-in to your user account and then click on the ‘account’ button.
* Click on ‘Select files’ in the right bottom corner of the account window and proceed to your storage folder to upload your files.
* Select the raster file for the ‘Cooling Density Total’ that you have downloaded above (e.g. “cool_tot_curr_density.tif”). Select the raster file type ‘(Building) Heat density total’, despite the layer type, in fact, is ‘Cooling density total’. This way the cooling density can be used in the calculation modules for examining and assessing the district cooling potentials.
* The uploaded layer will appear at the top of the left layer panel and can be used as the embedded layers.

Now you can use the customized bottom-up cooling demand density map for district cooling planning by using the [CM - District heating potential areas: user-defined thresholds](#CM-District-heating-potential-areas-user-defined-thresholds) as described in the [third step](/en/District-cooling_Use-of-the-CM – District-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas).


<code><ins>**[To Top](#table-of-contents)**</ins></code>


### Use of the CM - Scale heat and cool density maps to adapt the default map

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
* Upload the scaled cooling demand data to the Hotmaps toolbox, as described [above](en/District-Cooling#use-of-the-default-cooling-density-map-from-the-hotmaps-database_upload-the-selected-cooling-demand-density-map-to-your-private-account).


<code><ins>**[To Top](#table-of-contents)**</ins></code>


### Create an individual bottom-up cooling demand density map using Hotmaps data and modules
To develop a customized bottom-up cooling density map based on local data, perform the following steps:

* Obtain local data on building stock (including location/coordinates, building area, building type, construction year or period).
* Download the Hotmaps Building Stock data on final energy demand for space heating (SH), space cooling (SC), and domestic hot water (DHW) for each EU28 from [here](https://gitlab.com/hotmaps/building-stock)
* Find the country that you are working with or use the EU28-average in the Hotmaps Building Stock data.
* Classify your local building stock data to the sub-sectors and building age class of the Hotmaps Building Stock data.
* Connect the cooling final energy demand for each subsector and building age class with your local building stock data for each building and calculate the cooling final energy demand.
* Convert your spreadsheet to .csv or .xls in order to create a shapefile .shp based on the coordination of each building and the final energy demand for cooling.
* Create a bottom-up cooling density map .tif using the Hotmaps CM Customized heat and gross floor area density maps. Description can be found in the Wiki page [CM - Customized heat and floor area density maps](#CM-Customized-heat-and-floor-area-density-maps), which also contains the [link to the code](https://github.com/HotMaps/customized_h_fa_dm).
* Upload the developed layer as you would do for a selection of the default layer as described in the previous section](/en/District-cooling_Upload-the-cooling-demand-density-map-to-your-private-account).

Now you can use the customized bottom-up cooling demand density map for district cooling planning by using the [CM - District heating potential areas: user-defined thresholds](#CM-District-heating-potential-areas-user-defined-thresholds) as described in the next step.

<code><ins>**[To Top](#table-of-contents)**</ins></code>


### Use of the CM – District heating potential areas: user defined thresholds to identify potential district cooling areas

The calculation module [CM - District heating potential areas: user-defined thresholds](#CM-District-heating-potential-areas-user-defined-thresholds) generates a shapefile of potential district cooling areas based on the following input data: a cooling density map with 1 hectare (ha) resolution, a cooling demand threshold for the cooling demand in each cell of the cooling density map and a cooling demand threshold for groups of connected cells with cooling demand above the previous threshold (=coherent area).

In order to calculate and compare different scenarios of potential district cooling areas based on the two threshold values used in the module, perform the following steps:
* Zoom to the location that you want to examine (e.g. Aalborg).
* Draw and select a bounding box that contains the area of interest.
* NB Make sure you are at the scale ‘Hectare’ to be able to use your uploaded layers.
* Draw the boundaries around the area of interest using the drawing tool <img height=20 width=20 src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg"/> (rectangular, circle shape or a polygon).
* Click on the drawn bounding box to select the area.
* In the left panel in the toolbox under ‘Layers’, select the tab ‘Calculation Modules’
* Select the ‘CM - District heating potential areas: user-defined thresholds’.
* Set the input parameters according to the values of choice to examine and access the district cooling potentials. The density threshold should be lower for district cooling compared to district heating, given the nature of district cooling. The parameters could be set for instance at:
  - Min. heat demand in hectare (“Min. cooling demand in hectare”): in a range between 75 to 15 MWh/ha/yr.
  - Min. heat demand in a DH area (“Min. cooling demand in a DC area”): in a range between 10 to 1 GWh/yr.
* In the INPUT TYPE SELECTION select the cooling demand density layer you have uploaded and you want to analyse.
* Type in a name for the calculation you are going to perform (you can use a random title).
* Run the CM by clicking on the button “RUN CM”.
* When the calculation is ready you can find the calculated indicators in the results section in the right panel of the toolbox. It yields 3 results:
  - Total heat (cold) demand in GWh within the selected zone
  - Total district heating (cooling) potential in GWh within the selected zone
  - Potential share of district heating (cooling) from total demand in the selected zone
* The calculation also yields 3 new layers:
  - DC areas – a raster, showing the potential DC areas,
  - Cooling density map in potential DC areas – a raster, a clipping of the input cooling density map based on the potential DC areas
  - DC areas and their potentials – a shapefile, polygons of the potential DC areas.
* These can be found in the layers section in the left panel (you have to close the calculation modules with ‘X’ and move to ‘Layers’) at the bottom of all available layers. Take a screenshot of these layers and insert it here.

[[/en/District-Cooling/DCooling_2-min.png]]
Figure 1: Identified District Cooling potential area in the city center of the Municipality of Aalborg

**IMPORTANT NOTE** 

To see these output layers, you might need to unselect the other layers. In case you still don’t see them, try to zoom-out, as there is sometimes a visualisation bug. You can also download them and reupload them using your personal account (you need to log in before), it always solves the problem. Or you can load them into your GIS-program of choice.


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
