## Table of Contents

* [Introduction](#introduction)
* [Inputs and outputs](#inputs-and-outputs)
* [Method](#method)
* [Sample run](#sample-run)
  * [Test Run 1: default input values](#test-run-1-default-input-values)
  * [Test Run 2: modified input values](#test-run-2-modified-input-values)
* [References](#references)
* [How to cite](#how-to-cite)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction

This calculation module uses the [European heat density map (EHDM)](https://gitlab.com/hotmaps/heat/heat_tot_curr_density) and a [European gross floor area map (EGFAM)](https://gitlab.com/hotmaps/gfa_tot_curr_density), both of which were developed in course of the [Hotmaps project](https://www.hotmaps-project.eu/), to propose a GIS-based method for determining potential DH areas with specific focus on district heating (DH) grid costs. The DH areas are determined via performing sensitivity analyses on the EHDM under consideration of predefined upper bound of the average distribution costs. The approach additionally allows for estimation of length and diameter of transmission lines and their associated costs. The outputs are GIS layers that illustrate areas that are economically viable for construction of DH as well as the cost-minimal transmission lines connecting these regions to each other. The calculation module can be used to study the impact of parameters like grid costs ceiling and market share on potential and on expansion and extension of the DH systems.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Inputs and outputs


<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Method
Here, a brief explanation of methodology is provided. For a more complete explanation of the methodology and formulations, please to the [paper](https://www.sciencedirect.com/science/article/pii/S1876610218304740) published about this calculation module [[1](#References)].
In order to calculate the DH grid costs, 



<code><ins>**[To Top](#table-of-contents)**</ins></code>


## Sample run


<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Test Run 1: default input values



<code><ins>**[To Top](#table-of-contents)**</ins></code>

### Test Run 2: modified input values



<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References

[1]. Fallahnejad M, Hartner M, Kranzl L, Fritz S. Impact of distribution and transmission investment costs of district heating systems on district heating potential. Energy Procedia 2018;149:141–50. doi:10.1016/j.egypro.2018.08.178.



## How to cite

To be completed!


## Authors and reviewers
This page is written by Mostafa Fallahnejad\*.
- [ ] This page was reviewed by Lukas Kranzl\*.

\* [Energy Economics Group - TU Wien](https://eeg.tuwien.ac.at/)
Institute of Energy Systems and Electrical Drives
Gusshausstrasse 27-29/370
1040 Wien



## License
Copyright © 2016-2018: Mostafa Fallahnejad

Creative Commons Attribution 4.0 International License
This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html


## Acknowledgement
We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation.

<code><ins>**[To Top](#table-of-contents)**</ins></code>