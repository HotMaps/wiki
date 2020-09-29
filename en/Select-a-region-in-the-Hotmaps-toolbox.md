<h1>Select a region in the Hotmaps toolbox</h1>

## Table of Contents
* [Introduction](#introduction)
* [Selection by NUTS boundaries](#selection-by-nuts-boundaries)
  * [NUTS 0 Selection](#selection-by-nuts-boundaries_nuts-0-selection)
  * [NUTS 1 Selection](#selection-by-nuts-boundaries_nuts-1-selection)
  * [NUTS 2 Selection](#selection-by-nuts-boundaries_nuts-2-selection)
  * [NUTS 3 Selection](#selection-by-nuts-boundaries_nuts-3-selection)
  * [LAU Selection](#selection-by-nuts-boundaries_lau-selection)
* [Custom Selection](#custom-selection)
* [Bounding Box and Area Selection Limit](#bounding-box-and-area-selection-limit)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## Introduction
There are two ways to select a region in the Hotmaps toolbox:
1. selection by the [NUTS classification (Nomenclature of territorial units for statistics))](https://ec.europa.eu/eurostat/web/nuts/background)
2. custom hectare selection

With the [radio buttons](#fig1) at the right of your screen, you can choose the territorial scale that you want to analyze (NUTS regions, [LAU (Local Administrative Units](https://ec.europa.eu/eurostat/web/nuts/local-administrative-units) or hectare level)

<a name="Fig1">![radio_buttons_png][radio_buttons]</a>

Fig.1.: Radio buttons for the territorial scale


[**`To Top`**](#table-of-contents)

## Selection by NUTS boundaries:
After selecting a region and pressing the _LOAD RESULTS Button_ the result sidebar at the right is shown and depending on what layer you selected some indicators for them are shown. You can see that by selecting another region the results will be aggregated on the fly.


[**`To Top`**](#table-of-contents)

### NUTS 0 Selection
![ selecting_nuts0_gif](https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts0.gif)

[**`To Top`**](#table-of-contents)

### NUTS 1 Selection
![ selecting_nuts1_gif](https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts1.gif)

[**`To Top`**](#table-of-contents)

### NUTS 2 Selection
![ selecting_nuts2_gif](https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts2.gif)

[**`To Top`**](#table-of-contents)

### NUTS 3 Selection
![ selecting_nuts3_gif](https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts3.gif)

[**`To Top`**](#table-of-contents)

### LAU Selection
Besides the three NUTS Levels, you have also the possibility to analyse in LAU level
![ selecting_lau_gif][selecting_lau]

[**`To Top`**](#table-of-contents)

## Custom Selection:

If you need a more flexible way and want to analyze a region that is not covered by the NUTS or LAU boundaries then it is better to specify your own customs regions. The toolbox offers multiple selection tools: rectangular, circle, or polygon. Draw the shape that you want to analyze, then click on the drawn bounding box to select the area.

Another option that is only available at the hectare level, is to upload a GeoJSON selection object. GeoJSON is a format for encoding geographic data structures. If you have created a GeoJSON object that represents a region of space, or a collection of spatially bounded entities, by uploading your GeoJSN object, this selection will be readily used in Hotmaps.

![ selecting_hectare_gif][selecting_hectare]


[**`To Top`**](#table-of-contents)

## Bounding Box and Area Selection Limit

When selecting one or more regions on the map, the box on the left side of the screen with the buttons to load results shows the following information about the current selection:

* Elements selected: the number of single zones that have been selected
* Bounding Box: the overall surface that has been selected
* Scale: the level at which the selection is done

**IMPORTANT NOTE**
The Bounding Box has a limit threshold of about 640.000km2. Calculation modules and result layers cannot be run/loaded above this threshold. Selecting an area above the selection limit will return the following error message: *You have exceeded the AREA SELECTION LIMIT for the free selection as well as for running calculation modules! Please select a smaller area.*

[**`To Top`**](#table-of-contents)

## How to cite

Jeton Hasani, in Hotmaps-Wiki, Select-a-region-in-the-Hotmaps-toolbox (April 2019)


[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Jeton Hasani **[EEG - TU Wien](https://eeg.tuwien.ac.at/)**.

&#9745; This page was reviewed by Mostafa Fallahnejad **[EEG - TU Wien](https://eeg.tuwien.ac.at/)**.


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Jeton Hasani

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


<code><ins>**[To Top](#hotmaps-toolbox)**</ins></code>

## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

[**`To Top`**](#table-of-contents)


[//]: # (Here are all the files to the links)


[radio_buttons]: ../images/general_tool_functionalities_and_structure/radio_buttons.png

[selecting_nuts0]: ../images/general_tool_functionalities_and_structure/selecting_nuts0.gif

[selecting_nuts1]: ../images/general_tool_functionalities_and_structure/selecting_nuts1.gif

[selecting_nuts2]: ../images/general_tool_functionalities_and_structure/selecting_nuts2.gif

[selecting_nuts3]: ../images/general_tool_functionalities_and_structure/selecting_nuts3.gif

[selecting_lau]: ../images/general_tool_functionalities_and_structure/selecting_lau.gif

[selecting_hectare]: ../images/general_tool_functionalities_and_structure/selecting_hectare.gif






<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> 

<sup>\*</sup> machine translated
