# In a glance


This module aims to highlight the heatsource that can be classify as: suitable, conditionally suitable and not suitable for an energy exploitation at urban level.


# Introduction

This module generates a shapefile classifying the heat source potential based on the distance of the heat source from the demand, and based on the capacity of the heatsource. Each heat source is classified in three main classes:
- suitable
- conditionally suitable
- not suitable.


The module automatize the methodology as defined by:

Neugebauer, Georg, Florian Kretschmer, René Kollmann, Michael Narodoslawsky, Thomas Ertl, and Gernot Stoeglehner. ‘Mapping Thermal Energy Resource Potentials from Wastewater Treatment Plants’. Sustainability 7, no. 10 (September 2015): 12988–13010. [https://doi.org/10.3390/su71012988](https://doi.org/10.3390/su71012988).


# Inputs and outputs

Input layers and parameters are:

- Maximum distance to consider the heat source within the urban areas - (default value: 150m)
- Maximum distance to consider the heat source near the urban areas, all the areas above this threshold will be classified 
- Heatsource capacity, default layer is the Waste Water Treatment Plants (WWTP) layer.

Output layers and parameters are:
- heatsource potential classification 


# Method

# GitHub repository of this calculation module

[Here](https://github.com/HotMaps/heatsource_potential) you get the bleeding-edge development for this calculation module.

# License

Copyright © 2016-2020: Pietro Zambelli

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

# Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 Hotmaps Project (Grant Agreement number 723677), which provided the funding to carry out the present investigation.
