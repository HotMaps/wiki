# CM Vehicle stock at NUTS 2 level
## Table of Contents
* [In a glance](#in-a-glance)
* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [GitHub repository of this calculation module](#github-repository-of-this-calculation-module)
* [Sample run](#sample-run)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)


## In a glance
This calculation module demonstrates the vehicle stock profile in NUTS 2 level from 1990 up to year 2030 based on a business as usual scenario. The data set can be found in Hotmaps data set repositories as well. The illustrated numbers on the NUTS 2 level, were extrapolated based on values on NUTS 0 data. The historical data points were  extrapolated  based  on  future  trends  for  selected  indicators  derived  from  the  PRIMES–TREMOVE EU 2016 reference scenario. 


[**`To Top`**](#table-of-contents)

## Introduction
This calculation module demonstrates the vehicle stock profile in NUTS 2 level up to year 2030 based on a business as usual scenario. The data set can be found in Hotmaps repository as well. The illustrated numbers on the NUTS 2 level, were extrapolated based on values on NUTS 0 data. The historical data points were  extrapolated  based  on  future  trends  for  selected  indicators  derived  from  the  PRIMES–TREMOVE EU 2016 reference scenario [ [1]](#references).

The calculation module can be run on NUTS 2 level only.

[**`To Top`**](#table-of-contents)

## Inputs and outputs

**Inputs**:
This CM requires no input parameter from user. The user should only select one or several NUTS 2 regions.

**Outputs**:

* Indicators:
  * Vehicle stock in the first year of the period
  * Vehicle stock in the last year of the period
* Graphics:
  * One bar chart is depicted to show the the statues of the vehicle stocks in different years.


[**`To Top`**](#table-of-contents)

## Methodology

The NUTS2 data (2006) are the result of a spatial interpolation of the vehicle stock data at NUT0 level, 
using the NUTS2 data of the number of vehicle stock and the GDP at NUTS2 level as a proxy.
Furthermore, the original 5 years resolution of the [data at NUTS0 level](https://gitlab.com/hotmaps/transport/nuts0) 
has been interpolated with a yearly resolution. The results are shown in form of indicators and a graph.

**It should be noted that in case of selection of two or more regions, an aggregated value is presented. Furthermore, it should be noted that the data is available for different periods depending on the NUTS 2 region (e.g. one region from 1999 to 2030 and the other one from 1995 to 2030). Therefore, in case of selection of two or more regions, the values from constituting regions should also be considered by the user.**

[**`To Top`**](#table-of-contents)

## GitHub repository of this calculation module
[Here](https://github.com/HotMaps/vehicle_stock/tree/develop) you get the bleeding-edge development for this calculation module.

[**`To Top`**](#table-of-contents)

## Sample run

<img src="/en/CM-Vehicle-stock-at-NUTS-2-level/1.png"/>

<img src="/en/CM-Vehicle-stock-at-NUTS-2-level/2.png"/>


[**`To Top`**](#table-of-contents)

## References
[1] European Commission, “EU Reference Scenario 2016.” [Online]. Available: https://data.europa.eu/euodp/data/dataset/energy-modelling.



[**`To Top`**](#table-of-contents)

## How to cite

Mostafa Fallahnejad, in Hotmaps-Wiki, CM-Vehicle-stock-at-NUTS-2-level (September 2020)


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








<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [Bulgarian](../bg/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Czech](../cs/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Danish](../da/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [German](../de/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Greek](../el/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Spanish](../es/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Estonian](../et/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Finnish](../fi/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [French](../fr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Irish](../ga/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Croatian](../hr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Hungarian](../hu/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Italian](../it/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Lithuanian](../lt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Latvian](../lv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Maltese](../mt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Dutch](../nl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Polish](../pl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Romanian](../ro/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovak](../sk/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovenian](../sl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Swedish](../sv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> 

<sup>\*</sup> machine translated
