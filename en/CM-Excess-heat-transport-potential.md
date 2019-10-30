<h1>CM Excess heat transport potential</h1>



## Table of Contents

* [Introduction](#introduction)

* [Inputs and outputs](#inputs-and-outputs)

* [Method](#method)

* [Sample run](#sample-run)

* [Authors and reviewers](#authors-and-reviewers)

* [License](#license)

* [Acknowledgement](#acknowledgement)



## Introduction

The use of excess heat for district heating.



## Inputs and outputs



### Input layers and parameters

#### Provided by Toolbox

* District heating areas (for now directly provided by the district heating potential CM)

* Industrial database (by default provided by the toolbox)

#### Provided by user

* Min. heat demand in hectare. See [DH Potential CM](https://github.com/HotMaps/hotmaps_wiki/wiki/CM-District-heating-potential-areas-user-defined-thresholds)

* Min. heat demand in a DH area. See [DH Potential CM](https://github.com/HotMaps/hotmaps_wiki/wiki/CM-District-heating-potential-areas-user-defined-thresholds)

* Search radius in km

* Lifetime of equipment in years

* Discount rate in %

* Cost factor

* Operational costs in %

* Threshold value for transmission lines in ct/kWh

#### Performance Parameters

* Time resolution (hour, day, week, month, year)

* Spatial resolution in km



### Output layers and indicators



* Transmission lines

* Total excess heat in selected area in GWh

* Excess heat connected in GWh

* Excess heat used in GWh

* Cost of network in €

* Annual costs of network in €/year

* Levelised costs of heat supply in ct/kWh

* Graphic showing DH potential, total excess heat, connected excess heat and used excess heat

* Graphic showing monthly heat demand and excess

* Graphic showing average daily heat demand and excess

 

## Method

### Overview

The key element of the excess heat module is the source sink model used.

It constructs a transmission network of minimum length and computes the flow for every hour of the year based on residential heating load profiles with Nuts2 resolution and industry load profiles with Nuts0 resolution. Based on averaged peak flows throughout the year costs for every transmission line and heat exchanger on the source and sink side can be computed.



### Details

#### Modeling of sources

Based on the Nuts0 ID and the industrial sector a yearlong hourly resolved load profile is assigned to every source.



#### Modeling of sinks

Based on the district heating potential calculation module equidistantly entry points are created in the coherent areas. Depending on the Nuts2 ID of the entry points a load profile is assigned.



#### Fixed radius search

Within a set radius it is checked which sources are in range of each other, which sinks are in range of each other and which sinks are in range for sources. This can be represented by a graph with sources and sinks forming the vertices and the vertices in range being connected by an edge.



#### Reduction to minimum length network

A minimum spanning tree is computed with the distance of the edges as weights. This results in a graph retaining its connectivity while having a minimum total length of edges. Note that the entry points of coherent areas are connected internally for free since they form their own distribution network.



#### Flow computation

The maximum flow from the sources to the sinks is computed for every hour of the year.



#### Cost determination

The peak flow of the year averaged over 3 hours determines the required capacity for the transmission lines and heat exchangers. The costs of the transmission lines depend on the length and capacity, while the costs of the heat exchangers are only influenced by the capacity. On the source side an air to liquid heat exchanger with integrated pump for the transmission line and on the sink side a liquid to liquid heat exchanger are assumed.



#### Variation of network

Since the cost and flow of every transmission line are known the lines with the highest cost to flow ratio can be removed and the flow recomputed until a desired cost per flow is achieved. 



### Implementation

#### Fixed radius search

For the computation of the distance between two points a small angle approximation of the loxodrome length is used. While there is also an accurate implementation of the orthodrome distance the increased accuracy has no real benefit because of the small distances mostly lower than 20km and the uncertainty of the real transmission line length because of many factors like topology.

If two points are in range of the radius it is stored in an adjacency list. The creation of such adjacency lists is performed between sources and sources, sinks and sinks, and sources and sinks. The reason for the separation lies in the flexibility to add certain temperature requirements for sources or sinks.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/search.svg"/>

<figcaption><i><br/>

Example of a fixed radius search. The red vertices represent sources and the blue ones sinks. The numbers represent the distance between the points. Drawing is not to scale.</i></figcaption>

</figure>



#### NetworkGraph class

Based on the igraph library a NetworkGraph class is implemented with all functionality needed for the calculation module. While igraph is poorly documented it offers much better performance than pure python modules like NetworkX and a wider platform support beyond Linux unlike graph-tool.

The NetworkGraph class describes only one network on the surface but contains 3 different graphs. Firstly, the graph describing the network as it is defined by the three adjacency lists. Secondly the correspondence graph internally connecting sinks of the same coherent area and last the maximum flow graph used for the maximum flow computation.



##### Graph

Only contains the real sources and sinks as vertices.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/graph.svg"/>

<figcaption><i> <br/>

Example of a graph. The red vertices represent sources and the blue ones sinks.</i></figcaption>

</figure>





##### Correspondence graph

Every sink needs a correspondence id, which indicates, if it is internally connected by an already existing network like in coherent areas. Sinks with the same correspondence id are connected to a new vertex with edges with zero weights. This is crucial for the computation of a minimum spanning tree and the reason the correspondence graph is used for it. This feature is also implemented for sources but not used.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/correspondence_graph.svg"/>

<figcaption><i> <br/> Example of a correspondence graph. The red vertices represent sources and the blue ones sinks. The three sinks on the right are coherent connected by an additional larger vertex</i></figcaption>

</figure>



##### Maximum flow graph

Since igraph does not support multiple sources and sinks in its maximum flow function an auxiliary graph is needed. It introduces an infinite source and sink vertex. Every real source is connected to the infinite source and every real sink is connected to the infinite sink by an edge. Note that if a sink is connected to a correspondence vertex this vertex will be connected rather than the sink itself.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/max_flow_graph.svg"/>

<figcaption><i> <br/> Example of a maximum flow graph.</i></figcaption>

</figure>



##### Minimum spanning tree computation

Based on the correspondence graph the minimum spanning tree is computed. The edges connecting the coherent sinks always have the weight 0 so they will always remain part of the minimum spanning tree.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/correspondence_graph_with_weigths.svg"/>

<figcaption><i> <br/> Example of a correspondence graph with the weights of every edge and its minimum spanning tree.</i></figcaption>

</figure>



##### Maximum flow computation

The flow through the edges connecting the real sources or sinks to the infinite source or sink respectively is capped to the real capacity of each source or sink. For numerical reasons the capacities are normalized so that the largest capacity is 1. The flow through the subset of edges contained in the correspondence graph is limited to 1000 which should, for all intense and purposes offer unrestricted flow. Then the maximum flow from the infinite source to the infinite sink is computed and the flow rescaled to its original size. Since coherent sinks are not directly connected to the infinite sink vertex but by the correspondence vertex the flow through it is limited to the sum of all coherent sinks.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/max_flow_graph_with_capacities.svg"/>

<figcaption><i> <br/> Example of a maximum flow graph and the capacites of each source and sink. The right graph shows the maximum flow allowed through each edge after the normalization. Note that the maximum flow allowed through the edges with infinity symbol is actually capped to 1000 in the implementation.</i></figcaption>

</figure>



The implementation of the igraph maximum flow function uses the Push-relabel algorithm. This type of algorithm is not cost sensitive and might not always find the shortest way of routing the flow. A cost sensitive algorithm is not available in igraph and the performance would be likely to low to be able to resolve an hourly based flow throughout the year. But because of the prior reduction to a minimum spanning tree the cases in which a non-ideal solution is chosen are very limited and unlikely. The Push-relabel algorithm also has tendency to rout the flow through the least amount of edges. The igraph implementation seems to be deterministic in the order of allocation of the flow if the graphs are at least automorphisms, which is important for the hourly based flow calculation since any artificially introduced flow oscillation between edges is undesirable.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/max_flow_graph_with_flows.svg"/>

<figcaption><i> <br/> Flow computed by the max flow algorithm and the rescaling to the original size.</i></figcaption>

</figure>



#### Heat sources



The heat sources are taken from the **[industrial database.]( https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database)** Based on their excess heat, Nuts0 ID and industrial sector a load profile covering every hour of the year is created for each site. The custom addition of sites is planned.



#### Heat sinks



The heat sinks are based on coherent areas with a known heat demand. The coherent areas form a mask for a grid on which equidistant points are placed as entry points. Depending on the selected Nuts2 ID a residential heating profile is assigned to the sinks. The custom addition of entry points and sinks is planned.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/coherent_aera_entry_points.svg"/>

<figcaption><i> <br/> Example of a coherent area and its generated entry points.</i></figcaption>

</figure>



#### Load profiles



The mentioned load profiles consist of 8760 points which represent the load for every hour of the 365 days. Further information about the **[load profiles can be found here.](https://gitlab.com/hotmaps/load_profile)**



#### Computation of costs



Since district heating systems have a large heat capacity a peak in flow does not mean the transmission lines need to deliver that short spike of heat instantaneously. Therefore, the required capacities of the transmission lines and heat exchangers are determined by the averaged peak load. Specifically, the numpy convolution function is used to average the flow over the last three hours by convoluting with a constant function. Depending on this value a transmission line from the following table is chosen. 



*Specific costs of transmission lines used*



| Power in MW   | Costs in €/m  | Temperature in °C  |

| ------------- |:-------------:| -----:|

| 0.2           | 195           | &lt;150 |

| 0.3           | 206           | &lt;150 |

| 0.6           | 220           | &lt;150 |

| 1.2           | 240           | &lt;150 |

| 1.9           | 261           | &lt;150 |

| 3.6           | 288           | &lt;150 |

| 6.1           | 323           | &lt;150 |

| 9.8           | 357           | &lt;150 |

| 20            | 426           | &lt;150 |

| 45            | 564           | &lt;150 |

| 75            | 701           | &lt;150 |

| 125           | 839           | &lt;150 |

| 190           | 976           | &lt;150 |

| &gt;190          | 976           | &lt;150 |



The costs of the heat exchanger on the source side which is assumed as air to liquid is computed with



C<sub>HSource</sub>(P) = P<sub>peak</sub> * 15,000€/MW.



The costs of the liquid to liquid heat exchanger on the sink side is determined with



C<sub>HSink</sub>(P) = P<sub>peak</sub> * 265,000€/MW if P<sub>peak</sub> &lt; 1MW or



C<sub>HSink</sub>(P) = P<sub>peak</sub> * 100,000€/MW else.



The costs of the pump follow



C<sub>Pump</sub>(P) = P<sub>peak</sub> * 240,000€/MW if P<sub>peak</sub> &lt; 1MW or



C<sub>Pump</sub>(P) = P<sub>peak</sub> * 90,000€/MW else.



#### Removal of transmission lines



With a cost to flow threshold for transmission lines they can be removed if exceeding it to improve the flow to cost ratio. After the removal of edges, the flow must be recomputed since the continuity of flow in the graph is not guaranteed anymore. The cost to flow ratio might also increase for other edges now, so this process is repeated until the sum of all flows does not change anymore.



#### Description of the complete routine



First the heat sources and sinks are loaded with their load profiles. Then the fixed radius search is performed, and the Network initialized. Afterwards the Network is reduced to its minimum spanning tree and the maximum flow is computed for every hour of the year. Based on the flow the costs for every heat exchanger, pump and transmission line is computed. If a threshold cost to flow ratio is defined the removal of transmission line procedure is executed. In the end the total cost and total flow of the network and the layout of the network is returned.



## Sample run



### Sample run 1



Sample run in PL22 with default parameters. It is recommanded to turn on excess heat sites in the layers tab.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/sample_run1.PNG"/>

<figcaption><i>Sample run in PL22. The pink areas represent the district heating. The orange circles the heat source and the orange lines the tranmission lines of the network.</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/heat_compare1.PNG"/>

<figcaption><i>This graphic compares the DH potential, total excess heat, connected excess heat and used excess heat.</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/network_cost_to_flow1.PNG"/>

<figcaption><i>This graphic plots the costs of the network compared to the anual flow. The orange point represents the current network with its set transmission line threshold</i></figcaption>

</figure>



In this case we can see that there is much more excess heat available than used, but on the other side the maximum possible flow is almost achieved, since the orange point is at 1530 GWh per year. In this case increasing the search radius can help to distribute more excess heat. In sample run 2 we will do exactly that.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/normalized_cost1.PNG"/>

<figcaption><i>This graphic plots levelized heating costs and the necessary transmission line threshold for a certain flow. The orange points represent the value with the currently set transmisson line threshold</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/levelized_cost_simp1.PNG"/>

<figcaption><i>Sometimes it can be helpfull to hide the tranmission line threshold in the graphic to analyse the levelized costs.</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/profiles1.PNG"/>

<figcaption><i>This graphic shows the total flow through the network throughout the year. The lower graphic represents the average day. Since the default time resolution is set to "week" it is constant in this case.</i></figcaption>

</figure>



### Sample run 2



Sample run in PL22 with maximum search radius set to 40 kms.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/sample_run2.PNG"/>

<figcaption><i>Sample run in PL22. The pink areas represent the district heating. The orange circles the heat source and the orange lines the tranmission lines of the network.</i></figcaption>

</figure>



Network is much larger than in the first sample run.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/heat_compare2.PNG"/>

<figcaption><i>This graphic compares the DH potential, total excess heat, connected excess heat and used excess heat.</i></figcaption>

</figure>



More excess heat is used.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/network_cost_to_flow2.PNG"/>

<figcaption><i>This graphic plots the costs of the network compared to the anual flow. The orange point represents the current network with its set transmission line threshold</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/normalized_cost2.PNG"/>

<figcaption><i>This graphic plots levelized heating costs and the necessary transmission line threshold for a certain flow. The orange points represent the value with the currently set transmisson line threshold</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/levelized_cost_simp2.PNG"/>

<figcaption><i>Sometimes it can be helpfull to hide the tranmission line threshold in the graphic to analyse the levelized costs.</i></figcaption>

</figure>



We can see a local minimum of levelized cost of heat supply at 4900 GWh per year. By hovering over the green line we can determine this is achieved with a transmission line threshold of 0.11 ct/kWh. In sample run 3 we are going to try to find this network.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/profiles2.PNG"/>

<figcaption><i>This graphic shows the total flow through the network throughout the year. The lower graphic represents the average day. Since the default time resolution is set to "week" it is constant in this case.</i></figcaption>

</figure>



### Sample run 3



Sample run in PL22 with maximum search radius set to 40 kms, tranmission line threshold set to 0.11ct/kWh and time resolution set to "hour".



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/sample_run3.PNG"/>

<figcaption><i>Sample run in PL22. The pink areas represent the district heating. The orange circles the heat source and the orange lines the tranmission lines of the network.</i></figcaption>

</figure>



Network is smaller than in the second run but retains much of the flow.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/heat_compare3.PNG"/>

<figcaption><i>This graphic compares the DH potential, total excess heat, connected excess heat and used excess heat.</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/network_cost_to_flow3.PNG"/>

<figcaption><i>This graphic plots the costs of the network compared to the anual flow. The orange point represents the current network with its set transmission line threshold</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/normalized_cost3.PNG"/>

<figcaption><i>This graphic plots levelized heating costs and the necessary transmission line threshold for a certain flow. The orange points represent the value with the currently set transmisson line threshold</i></figcaption>

</figure>



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/levelized_cost_simp3.PNG"/>

<figcaption><i>Sometimes it can be helpfull to hide the tranmission line threshold in the graphic to analyse the levelized costs.</i></figcaption>

</figure>



We can see that we just hit the local minimum. The difference in the cost approximation graphs to the indicators is caused by approximation errors. But those errors are mostly systematic and hence do not offset the minimum but just scale the curve in a different way. The levelized cost indicator now shows 0.84 ct/kWh instead of the 1.09 ct/kWh in the second run.



<figure>

<img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/profiles3.PNG"/>

<figcaption><i>This graphic shows the total flow through the network throughout the year. The lower graphic represents the average day. This time with time resolution set to "hour" the average day is represented correctly.</i></figcaption>

</figure>







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



[**`To Top`**](#table-of-contents)












<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/CM-Excess-heat-transport-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated
