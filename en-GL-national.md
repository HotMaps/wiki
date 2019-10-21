# Guidelines for using the Hotmaps toolbox for analyses at national level

These guidelines describe how the Hotmaps toolbox can be used to analyse costs and potentials for efficient and renewable heating and cooling at national level. **The guide is especially oriented towards the development of results according to the comprehensive assessment of national heating and cooling potentials referred to in Article 14(1) of the Energy Efficiency Directive (EED) in its current version.**


# Table of Contents
* [Part I: Overview of heating and cooling](#Part-I-overview-of-heating-and-cooling)
* [Part III: Analysis of the economic potential for efficiency in heating and cooling](#Part-III-Analysis-of-the-economic-potential-for-efficiency-in-heating-and-cooling)
    * [Step 1: Identification of different representative cases for district heating](#Step-1-Identification-of-different-representative-cases-for-district-heating)
        * [Calculation of future heat demand and building floor area density maps](#Calculation-of-future-heat-demand-and-building-floor-area-density-maps)
        * [Identification of regions potentially interesting for district heating](#Identification-of-regions-potentially-interesting-for-district-heating)
        * [Analysis of potentials for excess heat and renewable energy in the identified regions with potential interest for district heating](#Analysis-of-potentials-for-excess-heat-and-renewable-energy-in-the-identified-regions-with-potential-interest-for-district-heating)
        * [Identification of representative, typical district heating areas for further analysis](#Identification-of-representative-typical-district-heating-areas-for-further-analysis)
    * [Step 2: Costs and potentials for district heating in representative cities / regions](#Step-2-Costs-and-potentials-for-district-heating-in-representative-cities--regions)
        * [Economic assessment of the potential for district heating](#Economic-assessment-of-the-potential-for-district-heating)
        * [Estimation of costs for the transport of excess heat to district heating areas](#Estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas)
        * [Development of future heat load profiles](#Development-of-future-heat-load-profiles)
        * [Calculation of costs and emissions of heat supply in district heating](#Calculation-of-costs-and-emissions-of-heat-supply-in-district-heating)
    * [Step 3: Calculation of decentral heat supply](#Step-3-Calculation-of-decentral-heat-supply)
    * [Step 4: Comparison of results for different scenarios](#Step-4-Comparison-of-results-for-different-scenarios)
* [Authors and reviewers](#Authors-and-reviewers)
* [License](#License)
* [Acknowledgement](#acknowledgement)


# Part I: Overview of heating and cooling

The Hotmaps database and toolbox provides two different inputs to this part: first, the Hotmaps database provides default data for several of the data needed to include in this part I of the comprehensive assessment. Second, the Hotmaps toolbox is basically a mapping tool that allows a geographical representation of default data in the toolbox but also of other data uploaded to the toolbox. In the following we describe the different default data form Hotmaps that might be of use and we link to the descriptions of how to use the upload function of the Hotmaps toolbox.

The following data relevant for Part I of Annex VIII is available in the Hotmaps database:

* Point 2: current heating and cooling supply
  * (b) (v) industrial installations:
    * DB – Industrial sites excess heat
    * DB – Industrial sites company names 
    * DB – Industrial sites subsector
  * All other:
    * No default data is contained for supply points, but own data can uploaded and displayed
    * How to create an account
    * How to upload own data to the toolbox
* Point 3: a map covering the entire national territory
  * (a) Heating and cooling demand areas (not for industrial demand)
    * DB – Heat density residential
    * DB – Heat density non-residential
    * DB – Heat density total
  * (b) + (c) Existing and planned supply points
    * No default data is contained for supply points, but own data can uploaded and displayed
    * How to create an account
    * How to upload own data to the toolbox
* Point 4: forecast of trends in the demand for heating and cooling
  * Default scenarios for all EU28 MS are available from the H2020 project CHEETAH
  * This data is also integrated in the CM – Demand projection and used for the calculations in this module

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

# Part III: Analysis of the economic potential for efficiency in heating and cooling

The Hotmaps toolbox contains a number of calculation modules (CMs) that can be used to analyse the economic potential for efficiency in heating and cooling. In the following a possible approach for generating results for the comprehensive assessment with the Hotmaps toolbox is described also linking to the respective default data and calculation modules.

## Overview of the Hotmaps approach
To assess the economic potential for efficiency in heating and cooling it is important to distinguish between areas potentially supplied by district heating and areas where decentral supply will most probably be more economically efficient. Thus, **the Hotmaps approach strongly builds on the following four steps**:
1. Identify different representative, typical cases for district heating in the country or regions under investigation
1. Carry out analyses of district heating grid construction/expansion and district heat supply for the identified representative cases
1. Calculate indicators of decentral heat supply
1. Compare different scenarios of district heating and decentral heat supply and sensitivity calculations

The following figure shows this approach graphically. The different steps will be explained in more detail in the following chapters of these guidelines.


![](https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/Hotmaps_ApproachNational_Overview.png)
*Figure: Hotmaps approach for analysing the economic potential for efficiency in heating and cooling in course of Article 14 of the Energy Efficiency Directive (EED)*


In all of these steps **various scenarios and sensitivities should be taken into account**:
* different levels of heat savings (implemented in step 1, 2 and 3)
* different levels of district heating shares in total heat supply (implemented in step 2)
* different future energy prices (implemented in step 2 and 3)
* different depreciation times and discount rates (socio-economic vs. private-economic calculations) (implemented in step 2 and 3)

The following resulting **indicators can be retrieved from the Hotmaps Calculation Modules** (CMs):

* Economic potential: 
  * Levelised costs of Heat (LCOH) [EUR/MWh]:
    * CM - District heating supply dispatch  for costs of heat supply to district heating
    * CM - Decentral heating supply for costs of decentral heat supply 
    * CM - Excess heat transport potential for costs of transporting excess heat to potential district heating networks
  * Specific district heating grid costs (expansion and/or new construction) [EUR/MWh]:
    * CM - District heating potential: economic assessment
* GHG emissions:
  * CO2 emissions [kt]:
    * CM - District heating supply dispatch for CO2 emissions from heat supply to district heating
    * CM - Decentral heating supply for CO2 emissions from decentral heat supply
* Impact on the share of RES can be calculated based on the results of the following CMs:
  * CM - District heating supply dispatch for share of RES from heat supply to district heating
  * CM - Decentral heating supply for share of RES from decentral heat supply

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## Step 1: Identification of different representative cases for district heating

In order to identify different, representative, typical cases for further analysis of the costs and potentials for district heating in the country / region of interest Hotmaps provides various default data layers in the Hotmaps database as well as different Calculation Modules (CMs). Also, own data can be uploaded and used. This identification procedure can consist of the following steps:
* Calculate scenarios of future heat demand and building floor area density maps for the entire country / region of interest
* Identify regions potentially interesting for district heating based on user-defined threshold values
* Analyse / collect potentials for excess heat and renewable energy in the identified regions potentially interesting for district heating
* Group / cluster similar regions and select representative cities / areas for further analysis

The following figure shows this procedure graphically and shows the various data sources and calculation modules that can be used.

![](https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/Hotmaps_ApproachNational_Step1.png)
*Figure: Identification of different representative, typical cases for district heating (Step 1)*

In the following subchapters the different steps in this procedure are described in more detail.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

### Calculation of future heat demand and building floor area density maps

The first step in the analysis is to generate future heat demand and floor area density maps for your region / country of interest. You can use data developed in the course of the Hotmaps project for all EU-28 countries (Hotmaps default data, available in the Hotmaps database), or you can use other heat demand density maps for your region of interest.

* **Use heat demand and floor area density maps developed in the course of the Hotmaps project** - default data on heat demand density from the Hotmaps database:
    * For all EU 28 Member States (MS) heat demand density maps reflecting the heat demand from space heating and hot water generation in buildings have been developed. They are available as the total demand in residential and non-residential buildings, but also split between residential and non-residential buildings. All maps are all available at hectare level, i.e. with a resolution of 100x100m. The heat demand density maps can be accessed in the layers section of the Hotmaps database and more information on how to select the region of your interest can be found here.
    * It is possible to adapt the heat demand density maps according to assumptions regarding the future development of the heat demand in the buildings. Two different Calculation Modules (CMs) can be used:
        * The CM - Scale heat and cold density maps can be used to recalculate the heat demand in each hectare using the same factor for all hectare elements.
        * The CM - Demand projection can be used to generate future heat demand and floor area density maps based on default development scenarios of the building stock in the EU (link to further info on the default scenarios . It is also possible to adapt several parameters compared to the default calculations like reduction of energy demand or reduction of floor area.
* **Use own data on heat demand density in your region of analysis**:
    * It is possible to upload heat density maps in a raster file format (.tif) to the Hotmaps toolbox when creating a user account and logging in to the private section. Uploaded heat demand density layers can reflect the current situation of heat demand densities in the region of interest, or also a possible future scenario of heat demand densities, depending on the input data used for generating the respective layers. More information on how to create a user account and how to upload own data can be found here.
    * It is also possible to further adapt the own heat density maps with the CM - Scale heat and cold density maps or via the CM - Demand projection like for the default layer.

The developed heat demand and floor area density maps are further used in the subsequent steps in other Calculation Modules (CMs).

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

### Identification of regions potentially interesting for district heating

After developing possible future scenarios of heat demand and floor area density maps for the region of interest, potential district heating regions can be identified. This can be done using the CM - District heating potential areas: user-defined thresholds according to the following steps:

* The CM is possible to use at NUTS3 - NUTS0 level and also on hectare level (=own selection of a region). However, for large regions it might take a long time to calculate or the module finds too many feasible regions and is not able to display the results. In such a case the region of interest can be split up, e.g. in the different NUTS2 or NUTS3 regions and for each of these the CM can be started.
* The CM identifies potential district heating areas based on the following two threshold values: a heat demand threshold for the heat demand in each cell of the heat demand density map and a heat demand threshold for groups of connected cells with heat demand above the previous threshold (=coherent area). These two threshold values have to be defined by the user.
* Besides several other indicators the module generates a shapefile of potential district heating areas that is displayed and stored in the toolbox in the layers section. Especially of interest are the following indicators: total heat demand in the coherent area, average heat demand density in the area. 
* After having used the CM for the entire region / country of interest an overall map of potential district heating areas can be generated out of the single maps. 

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

### Analysis of potentials for excess heat and renewable energy in the identified regions with potential interest for district heating

In a next step the potentials for excess heat and renewable energy in the regions that have been identified as potentially interesting for district heating can be analysed. These data together with the data on heat demand and heat demand density in the regions collected in the previous step can then be used to characterise representative district heating areas for the further analysis steps. The following list gives an overview of the heat sources that should be taken into account and links to the default data for the respective energy source, which is available in the Hotmaps database:

* Renewable energy sources:
    * Waste water treatment plants:
        * DB - Waste water treatment plants power
        * DB - Waste water treatment plants capacity
    * Agricultural biomass:
        * DB - Agricultural residues
        * DB - Livestock effluents
    * Forestal biomass:
        * DB - Forest residues
    * Waste:
        * DB - Municipal solid waste
    * Geothermal energy:
        * DB - Geothermal potential heat conductivity
    * Solar thermal energy:
        * DB - Potential solar thermal collectors - rooftop
        * DB - Potential solar thermal collectors open - field
* Excess heat:
    * Large industrial sites:
        * DB - Industrial sites excess heat
    * Other excess heat sources:
        * Information on other excess heat sources like power plants, further industrial plants, low temperature heat sources like river water, data centers, etc. can be uploaded into the toolbox. A guide how to do this can be found here.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

### Identification of representative, typical district heating areas for further analysis

The data collected in the two previous steps can be used to define different types of representative, typical district heating (DH) areas in the region / country of interest. Regions with similar dimensions  and combinations of total heat demand, average heat demand density and potentials for renewable energy and excess heat can be grouped together.

Possible indicators for grouping of typical district heating areas:
* overall heat demand in the area [GWh/yr]
* average heat demand density in the area [MWh/(ha*yr)]
* Available potential of renewable energy sources:
    * waste water treatment plants power
    * agricultural residues
    * livestock effluents
    * forest residues
    * municipal solid waste
    * geothermal potential heat conductivity
    * potential solar thermal collectors - rooftop
    * potential solar thermal collectors open - field
* excess heat potentials:
    * large industrial sites
    * other

For each of the developed groups of typical DH areas then one or several representative cities / regions can be selected and further analysed. These can serve as representative case studies.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## Step 2: Costs and potentials for district heating in representative cities / regions

For the identified representative cities / areas analyses on the costs and potentials for the heat supply with district heating can be performed. For these analyses Hotmaps provides various default data layers in the Hotmaps database as well as different Calculation Modules (CMs). Also, own data can be uploaded and used. These analyses can consist of the following steps:
* Assess the economic potential for district heating networks
* Estimate the costs for the transport of excess heat to district heating areas
* Develop future heat load profiles
* Calculate costs and emissions of heat supply in district heating

The following figure shows this procedure graphically and shows the various data sources and calculation modules that can be used.

![](https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/Hotmaps_ApproachNational_Step2.png)
*Figure: Analysis on costs and potentials for district heating in representative cities / regions (Step 2)*

In the following subchapters the different steps in this procedure are described in more detail.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>















## Authors and reviewers
This page is written by Marcus Hummel\*.
- [x] This page was reviewed by Lukas Kranzl\**.

\* [e-think](https://e-think.ac.at/),
Zentrum f. Energiewirtschaft und Umwelt,
Argentinierstrasse 18/10,
1040 Wien

\** [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/),
Institute of Energy Systems and Electrical Drives,
Gusshausstrasse 27-29/370,
1040 Wien


<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## License
Copyright © 2016-2019: Marcus Hummel

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>

## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#Guidelines-for-using-the-Hotmaps-toolbox-for-analyses-at-national-level)**</ins></code>





