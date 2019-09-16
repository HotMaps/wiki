## Table of Contents
1. [Introduction](#Introduction)
1. [Indicators for raster layers](#Indicators-for-raster-layers)
   * [Buildings](#Buildings)
   * [Population](#Population)
   * [Renewable Energy Source Potentials](#RES-Potentials)
1. [Indicators for vector layers](#Indicators-for-vector-layers)
   * [Industry](#Industry)
   * [Renewable Energy Source Potentials](#RES--Potentials)
   * [Electricity](#Electricity)
1. [Example](#Example)
1. [How to cite](#How-to-cite)
1. [Authors and reviewers](#Authors-and-reviewers)
1. [License](#License)
## Indroduction 

Depending on the layers and region you selected indicators for your configuration are shown in a sidebar at the right of your screen 

![results.png][results]

<code><ins>**[To Top](#table-of-contents)**</ins></code>

In the following we look at the indicators that are displayed for raster and vector layers.

## Indicators for raster layers 

The indicators on raster layers are different from vector layers. With different we mean in terms of aggregation and disaggregation. This different behaviour comes from the territorial resolutions. 

Raster Layers have generally a much higher resolution whereas vector layers have only attributes at points or polygons. 

That mean on the one hand for example that if you select a vector layer which is defined by NUTS3 polygons and you want for example to select a LAU region then the NUTS3 value will not be disaggregated to LAU level, instead the NUTS3 indicator where this LAU region is located will be shown in the results side bar. 

On the other hand, raster layers are aggregated and disaggregated "arbitrarily"* 

*by the containing cells within the region you selected (en-naturally within the limit of the raster resolution itself)

### Buildings

**Heat Density Map**

![hdm.png][hdm]

**Extra Feature**

When you select the heat denisity layer and the Population Layer at the same time an extra indicator is shown (en-see picture below)

![hdm2.png][hdm2]

### In General:
When one of the bulding layers and the population layer is selected at the same time, an extra indicator will be shown as described before

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Cooling Density Map**

![cdm.png][cdm]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Building Volumes**

![bvol.png][bvol]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Gross floor area**

![gfa.png][gfa]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

### Population

![pop.png][pop]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

### Climate
**Temperature**

![temp.png][temp]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Cooling Degree Days**

![cdd.png][cdd]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Heating Degree Days**

![hdd.png][hdd]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Solar Radiation**

![rad.png][rad]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Wind Speed**

![wind.png][wind]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

### RES Potentials

**Solar Radiation On Building Footprint**

![srobf.png][srobf]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Wind Potential at 50m**

![wp.png][wp]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

**Forest Residues**

![forest.png][forest]

<code><ins>**[To Chapter](#Indicators-for-raster-layers)**</ins></code>

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Indicators for vector layers 

### Industry
**Industrial Site Emissions**
![ise.png][ise]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Industrial Site Excess Heat**
![iseh.png][iseh]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Industrial Site Company Name**
![isec.png][isec]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Industrial Site Subsector**
![ises.png][ises]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

### RES- Potentials

**Waste Water Treatment Plants Power**

![wwp.png][wwp]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Waste Water Treatment Plants Capacity**

![wwc.png][wwc]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Argicultural Residues**

![ar.png][ar]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Lifestock Effluents**

![le.png][le]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Municipal Solid Waste**

![sw.png][sw]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

**Geothermal Potential Heat Conductivity**

![geothermal.png][geothermal]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

### Electricity

**Electricity C02 Emissions**

![electricity.png][electricity]

<code><ins>**[To Chapter](#Indicators-for-vector-layers)**</ins></code>

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Example 
In the picture below you can see how it looks when all layers are visualized (en-here is Austria as NUTS0 selected)

![all_map.png][all_map]

Although this maps looks pretty messy, the indicators are straight forward illustrated. See below all indicators that are described in the result sidebar when you select all layers for Austria (en-NUTS0)

![all_results.png][all_results]

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to cite

Jeton Hasani, in Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/Retrieve-indicators-of-a-selected-area (en-April 2019)


## Authors and reviewers
<code>[Review this page !](en-https://github.com/HotMaps/hotmaps_wiki/wiki/CM-Access/_edit)</code>

This page is written by Jeton Hasani\*.
- [ ] This page was reviewed by <code>....</code>\.


\* [Energy Economics Group - TU Wien](en-https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien

## License
Copyright © Hotmaps
Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.
SPDX-License-Identifier: CC-BY-4.0
License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](en-https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

<code>[Review this page](en-https://github.com/HotMaps/hotmaps_wiki/wiki/Indicator-Section/_edit)</code>

[//]: # (en-Here are all the files to the links)

[results]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/results.png

[all_results]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/all_results.png

[all_map]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/all_map.png
[hdm2]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/hdm2.png
[hdm]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/hdm.png
[cdm]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/cdm.png
[gfa]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/gfa.png
[bvol]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/bvol.png
[temp]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/temp.png
[pop]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/pop.png
[cdd]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/cdd.png
[hdd]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/hdd.png
[rad]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/rad.png
[wind]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wind.png
[temp]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/temp.png
[forest]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/forest.png
[wp]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wp.png
[srobf]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/srobf.png
[ise]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/ise.png
[iseh]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/iseh.png
[isec]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/isec.png
[ises]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/ises.png
[wwp]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wwp.png
[wwc]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wwc.png
[ar]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/ar.png
[le]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/le.png
[geothermal]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/geothermal.png
[sw]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/sw.png
[electricity]: https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/electricity.png

View in another language:

 [Bulgarian](../bg/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Croatian](../hr/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Czech](../cs/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Danish](../da/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Dutch](../nl/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Estonian](../et/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Finnish](../fi/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [French](../fr/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [German](../de/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Greek](../el/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Hungarian](../hu/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Irish](../ga/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Italian](../it/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Latvian](../lv/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Lithuanian](../lt/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Maltese](../mt/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Polish](../pl/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Portuguese (en-Portugal, Brazil)](../pt/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Romanian](../ro/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Slovak](../sk/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Slovenian](../sl/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Spanish](../es/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> [Swedish](../sv/Retrieve-indicators-of-a-selected-area.md)<sup>\*</sup> 

<sup>\*</sup>: machine translated
