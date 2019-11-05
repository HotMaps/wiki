<h1>CM Heat load profiles</h1>

<h1>CM Heat load profiles</h1>

## Table of Contents
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction
Calculation of heat demand load profiles for selected regions.

## Inputs and outputs

### Input layers and parameters
* Heat density residential sector
* Heat density non-residential sector
* Gross floor area residential
* Gross floor area non-residential
* Industrial database
* Load profiles for industry
* Load profiles for residential heating
* Load profiles for tertiary heating
* Load profiles for residential domestic hot water
* Load profiles for tertiary domestic hot water

#### Provided by user
* Residential heating factor

  The residential heating demand is multiplied with this factor.

* Tertiary heating factor

  The tertiary heating demand is multiplied with this factor.

* Residential hot water supply factor

  The residential hot water demand is multiplied with this factor.

* Tertiary hot water supply factor

  The tertiary hot water demand is multiplied with this factor.

### Output

#### Indicators

* Heat demand by industry

  Yearly heat demand by industry in selected area.

* Heat demand by residential heating

  Yearly heat required for residential heating in selected area.

* Heat demand by residential warm water supply

  Yearly heat required for residential warm water supply in selected area.

* Heat demand by tertiary sector heating

  Yearly heat required for tertiary sector heating in selected area.

* Heat demand by tertiary sector warm water supply

  Yearly heat required for tertiary sector warm water supply in selected area.

* Total head demand

  Yearly total heat required in selected area.

#### Graphics

* Heat demand profiles

  Graphic showing above listed indicators over the year. Details can be found [here](https://github.com/HotMaps/hotmaps_wiki/wiki/en-CM-Heat-load-profiles#heat-demand-profiles)

#### Examples of Graphics

##### Heat demand profiles

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/profile.PNG"/>
<figcaption><i>Graphic showing the heat demand of the different sectors over the year.</i></figcaption>
</figure>

The x-axis represents time and the y-axis power. It can be helpful to hide certain sectors to better see others.

## Method
### Overview
Corresponding load profiles are assigned to industrial sites, residential and tertiary buildings in the user selection.

### Details
#### Residential warm water supply
Based on the gross floor area of residential buildings and their Nuts0 ID the energy used for warm water supply is computed with the following list. With the Nuts2 ID of a specific area a load profile is assigned.  The residential hot water supply is multiplied with the residential hot water supply factor in case the user wants to adjust the value.

*Specific energy per area for warm water supply in residential buildings in different countries*

| Nuts0 ID  | Warm water supply in kWh/m²/a |
| ------------- |:-------------:|
| AT            | 21.67         |
| BE            | 31.95         |
| BG            | 12.93         |
| HR            | 21.38         |
| CY            | 8.80          |
| CZ            | 22.83         |
| DK            | 9.64          |
| EE            | 14.35         |
| FI            | 10.15         |
| FR            | 9.66          |
| DE            | 8.27          |
| EL            | 12.51         |
| HU            | 13.66         |
| IE            | 15.91         |
| IT            | 14.01         |
| LV            | 15.71         |
| LT            | 13.36         |
| LU            | 8.29          |
| MT            | 10.99         |
| NL            | 8.91          |
| PL            | 10.00         |
| PT            | 9.48          |
| RO            | 11.48         |
| SK            | 21.51         |
| SI            | 21.74         |
| ES            | 23.34         |
| SE            | 13.54         |
| UK            | 49.03         |

#### Residential heating
The heat density for the residential sector is used. Since this dataset already contains the energy used for warm water, the previous computed warm water energy is substracted from it. Based on the Nuts2 ID a residential heating profile is assigned for each tile of the heat density in the user selection.  The residential heating is multiplied with the residential heating factor in case the user wants to adjusts the value.

#### Tertiary warm water supply
Similar to the residential warm water supply the energy needed is computed with a table. With the Nuts2 ID of a specific area a load profile is assigned.  The tertiary warm water supply is multiplied with the tertiary hot water supply factor in case the user wants to adjusts the value.

*Specific energy per area for warm water supply in tertiary buildings in different countries*

| Nuts0 ID  | Warm water supply in kWh/m²/a |
| ------------- |:-------------:|
| AT            | 6.57          |
| BE            | 13.88         |
| BG            | 15.88         |
| HR            | 9.42          |
| CY            | 6.26          |
| CZ            | 9.18          |
| DK            | 8.03          |
| EE            | 14.13         |
| FI            | 10.52         |
| FR            | 9.57          |
| DE            | 3.05          |
| EL            | 6.99          |
| HU            | 9.51          |
| IE            | 10.87         |
| IT            | 5.62          |
| LV            | 7.16          |
| LT            | 10.46         |
| LU            | 7.20          |
| MT            | 10.45         |
| NL            | 6.89          |
| PL            | 9.55          |
| PT            | 21.47         |
| RO            | 13.85         |
| SK            | 8.49          |
| SI            | 27.73         |
| ES            | 12.44         |
| SE            | 19.62         |
| UK            | 13.45         |

#### Tertiary heating
The tertiary heating is computed similar to the residential heating. The tertiary heating is multiplied with the tertiary heating factor in case the user wants to adjusts the value.

#### Industrial heat demand
The heat demand by industry is looked up the industrial database and based on the Nuts0 ID and the subsector a load profile is assigned.

#### Summation
The five resulting profiles are added together in an absolute way.

### Implementation

#### Load profiles

The mentioned load profiles consist of 8760 points which represent the load for every hour of the 365 days. Further information about the **[load profiles can be found here.](https://gitlab.com/hotmaps/load_profile)**
All load profiles are normalized so that the integral is equal to 1.

#### Industrial sites

The heat sources are taken from the **[industrial database.]( https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database)** Based on their excess heat, Nuts0 ID and industrial sector a load profile covering every hour of the year is created for each site.

#### Heat densities

The heat density residential sector and heat density non-residential sector are raster files which can be found **[here.]( https://gitlab.com/hotmaps/heat)**

#### Gross floor areas

The gross floor area residential and gross floor area non-residential are raster files which can be found **[here]( https://gitlab.com/hotmaps/gfa_res_curr_density)** and **[here.]( https://gitlab.com/hotmaps/gfa_nonres_curr_density)**


## Sample run

Sample run in DK05.

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/sample_run.PNG"/>
<figcaption><i>Sample run in DK05. Only the selected blue area is considered.</i></figcaption>
</figure>

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/profile.PNG"/>
<figcaption><i>Graphic showing the heat demand of the different sectors over the year.</i></figcaption>
</figure>

Data from this graphic can be exported by pressing the "EXPORT GRAPHS" button.


## Authors and reviewers

This page is written by Ali Aydemir \* and David Schilling \*
- [ ] This page was reviewed by Tobias Fleiter\*.

\* [Fraunhofer ISI](https://isi.fraunhofer.de/)
Fraunhofer ISI, Breslauer Str. 48,
76139 Karlsruhe

## License
Copyright © 2016-2018: Ali Aydemir, David Schilling

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>




<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [Bulgarian](../bg/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Estonian](../et/CM-Heat-load-profiles)<sup>\*</sup> [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup> [French](../fr/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Latvian](../lv/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup> [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated1>CM Heat load profiles</h1>

<h1>CM Heat load profiles</h1>

## Table of Contents
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction
Calculation of heat demand load profiles for selected regions.

## Inputs and outputs

### Input layers and parameters
* Heat density residential sector
* Heat density non-residential sector
* Gross floor area residential
* Gross floor area non-residential
* Industrial database
* Load profiles for industry
* Load profiles for residential heating
* Load profiles for tertiary heating
* Load profiles for residential domestic hot water
* Load profiles for tertiary domestic hot water

#### Provided by user
* Residential heating factor

  The residential heating demand is multiplied with this factor.

* Tertiary heating factor

  The tertiary heating demand is multiplied with this factor.

* Residential hot water supply factor

  The residential hot water demand is multiplied with this factor.

* Tertiary hot water supply factor

  The tertiary hot water demand is multiplied with this factor.

### Output

#### Indicators

* Heat demand by industry

  Yearly heat demand by industry in selected area.

* Heat demand by residential heating

  Yearly heat required for residential heating in selected area.

* Heat demand by residential warm water supply

  Yearly heat required for residential warm water supply in selected area.

* Heat demand by tertiary sector heating

  Yearly heat required for tertiary sector heating in selected area.

* Heat demand by tertiary sector warm water supply

  Yearly heat required for tertiary sector warm water supply in selected area.

* Total head demand

  Yearly total heat required in selected area.

#### Graphics

* Heat demand profiles

  Graphic showing above listed indicators over the year. Details can be found [here](https://github.com/HotMaps/hotmaps_wiki/wiki/en-CM-Heat-load-profiles#heat-demand-profiles)

#### Examples of Graphics

##### Heat demand profiles

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/profile.PNG"/>
<figcaption><i>Graphic showing the heat demand of the different sectors over the year.</i></figcaption>
</figure>

The x-axis represents time and the y-axis power. It can be helpful to hide certain sectors to better see others.

## Method
### Overview
Corresponding load profiles are assigned to industrial sites, residential and tertiary buildings in the user selection.

### Details
#### Residential warm water supply
Based on the gross floor area of residential buildings and their Nuts0 ID the energy used for warm water supply is computed with the following list. With the Nuts2 ID of a specific area a load profile is assigned.  The residential hot water supply is multiplied with the residential hot water supply factor in case the user wants to adjust the value.

*Specific energy per area for warm water supply in residential buildings in different countries*

| Nuts0 ID  | Warm water supply in kWh/m²/a |
| ------------- |:-------------:|
| AT            | 21.67         |
| BE            | 31.95         |
| BG            | 12.93         |
| HR            | 21.38         |
| CY            | 8.80          |
| CZ            | 22.83         |
| DK            | 9.64          |
| EE            | 14.35         |
| FI            | 10.15         |
| FR            | 9.66          |
| DE            | 8.27          |
| EL            | 12.51         |
| HU            | 13.66         |
| IE            | 15.91         |
| IT            | 14.01         |
| LV            | 15.71         |
| LT            | 13.36         |
| LU            | 8.29          |
| MT            | 10.99         |
| NL            | 8.91          |
| PL            | 10.00         |
| PT            | 9.48          |
| RO            | 11.48         |
| SK            | 21.51         |
| SI            | 21.74         |
| ES            | 23.34         |
| SE            | 13.54         |
| UK            | 49.03         |

#### Residential heating
The heat density for the residential sector is used. Since this dataset already contains the energy used for warm water, the previous computed warm water energy is substracted from it. Based on the Nuts2 ID a residential heating profile is assigned for each tile of the heat density in the user selection.  The residential heating is multiplied with the residential heating factor in case the user wants to adjusts the value.

#### Tertiary warm water supply
Similar to the residential warm water supply the energy needed is computed with a table. With the Nuts2 ID of a specific area a load profile is assigned.  The tertiary warm water supply is multiplied with the tertiary hot water supply factor in case the user wants to adjusts the value.

*Specific energy per area for warm water supply in tertiary buildings in different countries*

| Nuts0 ID  | Warm water supply in kWh/m²/a |
| ------------- |:-------------:|
| AT            | 6.57          |
| BE            | 13.88         |
| BG            | 15.88         |
| HR            | 9.42          |
| CY            | 6.26          |
| CZ            | 9.18          |
| DK            | 8.03          |
| EE            | 14.13         |
| FI            | 10.52         |
| FR            | 9.57          |
| DE            | 3.05          |
| EL            | 6.99          |
| HU            | 9.51          |
| IE            | 10.87         |
| IT            | 5.62          |
| LV            | 7.16          |
| LT            | 10.46         |
| LU            | 7.20          |
| MT            | 10.45         |
| NL            | 6.89          |
| PL            | 9.55          |
| PT            | 21.47         |
| RO            | 13.85         |
| SK            | 8.49          |
| SI            | 27.73         |
| ES            | 12.44         |
| SE            | 19.62         |
| UK            | 13.45         |

#### Tertiary heating
The tertiary heating is computed similar to the residential heating. The tertiary heating is multiplied with the tertiary heating factor in case the user wants to adjusts the value.

#### Industrial heat demand
The heat demand by industry is looked up the industrial database and based on the Nuts0 ID and the subsector a load profile is assigned.

#### Summation
The five resulting profiles are added together in an absolute way.

### Implementation

#### Load profiles

The mentioned load profiles consist of 8760 points which represent the load for every hour of the 365 days. Further information about the **[load profiles can be found here.](https://gitlab.com/hotmaps/load_profile)**
All load profiles are normalized so that the integral is equal to 1.

#### Industrial sites

The heat sources are taken from the **[industrial database.]( https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database)** Based on their excess heat, Nuts0 ID and industrial sector a load profile covering every hour of the year is created for each site.

#### Heat densities

The heat density residential sector and heat density non-residential sector are raster files which can be found **[here.]( https://gitlab.com/hotmaps/heat)**

#### Gross floor areas

The gross floor area residential and gross floor area non-residential are raster files which can be found **[here]( https://gitlab.com/hotmaps/gfa_res_curr_density)** and **[here.]( https://gitlab.com/hotmaps/gfa_nonres_curr_density)**


## Sample run

Sample run in DK05.

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/sample_run.PNG"/>
<figcaption><i>Sample run in DK05. Only the selected blue area is considered.</i></figcaption>
</figure>

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/profile.PNG"/>
<figcaption><i>Graphic showing the heat demand of the different sectors over the year.</i></figcaption>
</figure>

Data from this graphic can be exported by pressing the "EXPORT GRAPHS" button.


## Authors and reviewers

This page is written by Ali Aydemir \* and David Schilling \*
- [ ] This page was reviewed by Tobias Fleiter\*.

\* [Fraunhofer ISI](https://isi.fraunhofer.de/)
Fraunhofer ISI, Breslauer Str. 48,
76139 Karlsruhe

## License
Copyright © 2016-2018: Ali Aydemir, David Schilling

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>




<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [Bulgarian](../bg/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Estonian](../et/CM-Heat-load-profiles)<sup>\*</sup> [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup> [French](../fr/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Latvian](../lv/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup> [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated>CM Heat load profiles</h1>

<h1>CM Heat load profiles</h1>

## Table of Contents
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction
Calculation of heat demand load profiles for selected regions.

## Inputs and outputs

### Input layers and parameters
* Heat density residential sector
* Heat density non-residential sector
* Gross floor area residential
* Gross floor area non-residential
* Industrial database
* Load profiles for industry
* Load profiles for residential heating
* Load profiles for tertiary heating
* Load profiles for residential domestic hot water
* Load profiles for tertiary domestic hot water

#### Provided by user
* Residential heating factor

  The residential heating demand is multiplied with this factor.

* Tertiary heating factor

  The tertiary heating demand is multiplied with this factor.

* Residential hot water supply factor

  The residential hot water demand is multiplied with this factor.

* Tertiary hot water supply factor

  The tertiary hot water demand is multiplied with this factor.

### Output

#### Indicators

* Heat demand by industry

  Yearly heat demand by industry in selected area.

* Heat demand by residential heating

  Yearly heat required for residential heating in selected area.

* Heat demand by residential warm water supply

  Yearly heat required for residential warm water supply in selected area.

* Heat demand by tertiary sector heating

  Yearly heat required for tertiary sector heating in selected area.

* Heat demand by tertiary sector warm water supply

  Yearly heat required for tertiary sector warm water supply in selected area.

* Total head demand

  Yearly total heat required in selected area.

#### Graphics

* Heat demand profiles

  Graphic showing above listed indicators over the year. Details can be found [here](https://github.com/HotMaps/hotmaps_wiki/wiki/en-CM-Heat-load-profiles#heat-demand-profiles)

#### Examples of Graphics

##### Heat demand profiles

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/profile.PNG"/>
<figcaption><i>Graphic showing the heat demand of the different sectors over the year.</i></figcaption>
</figure>

The x-axis represents time and the y-axis power. It can be helpful to hide certain sectors to better see others.

## Method
### Overview
Corresponding load profiles are assigned to industrial sites, residential and tertiary buildings in the user selection.

### Details
#### Residential warm water supply
Based on the gross floor area of residential buildings and their Nuts0 ID the energy used for warm water supply is computed with the following list. With the Nuts2 ID of a specific area a load profile is assigned.  The residential hot water supply is multiplied with the residential hot water supply factor in case the user wants to adjust the value.

*Specific energy per area for warm water supply in residential buildings in different countries*

| Nuts0 ID  | Warm water supply in kWh/m²/a |
| ------------- |:-------------:|
| AT            | 21.67         |
| BE            | 31.95         |
| BG            | 12.93         |
| HR            | 21.38         |
| CY            | 8.80          |
| CZ            | 22.83         |
| DK            | 9.64          |
| EE            | 14.35         |
| FI            | 10.15         |
| FR            | 9.66          |
| DE            | 8.27          |
| EL            | 12.51         |
| HU            | 13.66         |
| IE            | 15.91         |
| IT            | 14.01         |
| LV            | 15.71         |
| LT            | 13.36         |
| LU            | 8.29          |
| MT            | 10.99         |
| NL            | 8.91          |
| PL            | 10.00         |
| PT            | 9.48          |
| RO            | 11.48         |
| SK            | 21.51         |
| SI            | 21.74         |
| ES            | 23.34         |
| SE            | 13.54         |
| UK            | 49.03         |

#### Residential heating
The heat density for the residential sector is used. Since this dataset already contains the energy used for warm water, the previous computed warm water energy is substracted from it. Based on the Nuts2 ID a residential heating profile is assigned for each tile of the heat density in the user selection.  The residential heating is multiplied with the residential heating factor in case the user wants to adjusts the value.

#### Tertiary warm water supply
Similar to the residential warm water supply the energy needed is computed with a table. With the Nuts2 ID of a specific area a load profile is assigned.  The tertiary warm water supply is multiplied with the tertiary hot water supply factor in case the user wants to adjusts the value.

*Specific energy per area for warm water supply in tertiary buildings in different countries*

| Nuts0 ID  | Warm water supply in kWh/m²/a |
| ------------- |:-------------:|
| AT            | 6.57          |
| BE            | 13.88         |
| BG            | 15.88         |
| HR            | 9.42          |
| CY            | 6.26          |
| CZ            | 9.18          |
| DK            | 8.03          |
| EE            | 14.13         |
| FI            | 10.52         |
| FR            | 9.57          |
| DE            | 3.05          |
| EL            | 6.99          |
| HU            | 9.51          |
| IE            | 10.87         |
| IT            | 5.62          |
| LV            | 7.16          |
| LT            | 10.46         |
| LU            | 7.20          |
| MT            | 10.45         |
| NL            | 6.89          |
| PL            | 9.55          |
| PT            | 21.47         |
| RO            | 13.85         |
| SK            | 8.49          |
| SI            | 27.73         |
| ES            | 12.44         |
| SE            | 19.62         |
| UK            | 13.45         |

#### Tertiary heating
The tertiary heating is computed similar to the residential heating. The tertiary heating is multiplied with the tertiary heating factor in case the user wants to adjusts the value.

#### Industrial heat demand
The heat demand by industry is looked up the industrial database and based on the Nuts0 ID and the subsector a load profile is assigned.

#### Summation
The five resulting profiles are added together in an absolute way.

### Implementation

#### Load profiles

The mentioned load profiles consist of 8760 points which represent the load for every hour of the 365 days. Further information about the **[load profiles can be found here.](https://gitlab.com/hotmaps/load_profile)**
All load profiles are normalized so that the integral is equal to 1.

#### Industrial sites

The heat sources are taken from the **[industrial database.]( https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database)** Based on their excess heat, Nuts0 ID and industrial sector a load profile covering every hour of the year is created for each site.

#### Heat densities

The heat density residential sector and heat density non-residential sector are raster files which can be found **[here.]( https://gitlab.com/hotmaps/heat)**

#### Gross floor areas

The gross floor area residential and gross floor area non-residential are raster files which can be found **[here]( https://gitlab.com/hotmaps/gfa_res_curr_density)** and **[here.]( https://gitlab.com/hotmaps/gfa_nonres_curr_density)**


## Sample run

Sample run in DK05.

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/sample_run.PNG"/>
<figcaption><i>Sample run in DK05. Only the selected blue area is considered.</i></figcaption>
</figure>

<figure>
<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_load_profile/profile.PNG"/>
<figcaption><i>Graphic showing the heat demand of the different sectors over the year.</i></figcaption>
</figure>

Data from this graphic can be exported by pressing the "EXPORT GRAPHS" button.


## Authors and reviewers

This page is written by Ali Aydemir \* and David Schilling \*
- [ ] This page was reviewed by Tobias Fleiter\*.

\* [Fraunhofer ISI](https://isi.fraunhofer.de/)
Fraunhofer ISI, Breslauer Str. 48,
76139 Karlsruhe

## License
Copyright © 2016-2018: Ali Aydemir, David Schilling

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>




<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [Bulgarian](../bg/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Estonian](../et/CM-Heat-load-profiles)<sup>\*</sup> [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup> [French](../fr/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Latvian](../lv/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup> [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated

