# Database of Hotmaps

## Table Of Contents

- [Introduction](#Introduction)
- [How to export a dataset](#How-to-export-a-dataset)
- [How to cite](#How-to-cite)
- [Authors and reviewers](#Authors-and-reviewers)
- [Acknowledgement](#acknowledgement)

## Introduction

The database built for Hotmaps is a spatial Data Warehouse made available to the platform for visualization and computation purposes.

There are different kinds of data:

- raster datasets (at hectare level)
- vector datasets (NUTS/LAU regions, points of interest, ...)
- non-spatial datasets (mostly NUTS/LAU related and linked to existing vector layers)

The datasets can be accessed via a geospatial server (GeoServer) which provides different services (WMS/WFS/...) that allows anyone to display, include or use those datasets.

The datasets can be found on the [Gitlab repository](https://gitlab.com/hotmaps)

## Query

Please note that aggregations when selecting NUTS or LAU regions are pre-computed and therefore faster than aggregations of hectare selections which are computed on-the-fly.

## Indicators

TBD (CREM)

## Technologies

The technologies used for the database are:

- PostgreSQL version 9.6
- PostGIS version 2.3
- GeoServer version 2.11.2

## How to cite

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

Authors:

- Daniel Hunacek
- Lucien Zuber

Reviewers:

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation

<code><ins>**[To Top](#table-of-contents)**</ins></code>