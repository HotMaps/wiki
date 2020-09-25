<h1>Data upload functionalities</h1>

## Table of Contents

- [Introduction](#introduction)
- [How to upload a layer with custom data](#how-to-upload-a-layer-with-custom-data)
- [How to display an uploaded layer](#how-to-display-an-uploaded-layer)
- [Offline mode](#offline-mode)
- [Data security and privacy](#data-security-and-privacy)
- [How to cite](#how-to-cite)
- [Authors and reviewers](#authors-and-reviewers)
- [License](#license)
- [Acknowledgement](#acknowledgement)

## Introduction

The platform allows you to upload custom data from your computer to your Hotmaps user account. This part is closely linked to the [export](Data-export-functionalities) function as the final goal of those two functions is to export data, edit it and visualize it on the toolbox later by importing those data back. Please note that your uploaded data can be visualized and certain number of them can be used in the calculation modules.

This operation **requires a user account**. The registration and login processes are explained on the following page: [User account](Introduction-to-user-interface#Connect).

Uploaded data should respect the data formats and projection defined by the toolbox. To assure that you are uploading right data set, you can always download a sample data from the toolbox for a small area and subsequently, update and fill it with your own data. In case of CSV files, makes sure that you keep all the columns, column separator, and data types as of the downloaded sample. **We suggest to open CSV files in text editor rather than MS Excel in order to see all characters inside it".
Regarding the upload of raster files, following aspects should be considered:

1. The raster should have the coordinate reference system of **ETRS89-extended / LAEA Europe - EPSG:3035**;
1. The coordinate of the raster origin (top-left corner of the raster) should be a multiplicand of 100, e.g. (4334900, 3019700);
1. The resolution of the raster map should be 100x100m;
1. The raster should refer to a location in Europe.
1. pay attention to the units of the original data set shown on the toolbox. For example, the heat density map has the unit of _MWh/ha_ and if your uploaded layer has another unit, you may encounter with difficulty in visualizing your data. Furthermore, you will not get a correct answer from the calculation modules.


[**`To Top`**](#table-of-contents)

## How to upload a layer with custom data

By pressing the ![account button](../images/account-btn.png) button at the top left corner of the page. This will bring the profile page to the front. 

On the profile page:

1. selection of the type of data set,
2. selection of file to upload (.tif or .csv),
3. upload by clicking on the "+" icon

![profile page upload](../images/profile-upload.png)

The selection of the type of data set is used in order to get the correct symbology. If your data set does not match the layer symbology, it won't be displayed correctly.

Once this is done, a success message will be displayed and the layer appears in the list of layers on the profile page.

Each user has a limited disk space, once the user has not enough free space, he will not be able to add more files. The remaining space on your user account is shown with the pie chart.

Before being able to display the layer on the map, the server will need some time (up to several minutes depending on the size of your file) after the success message to import the data set correctly. The data set is available to be displayed once its size is updated in your user account.

![upload_complete](../images/upload_complete.png)

The layer can now be displayed on the map by activating it on the layers panel. 


[**`To Top`**](#table-of-contents)

## How to display an uploaded layer

It is possible to display a layer that has been previously uploaded from the layers panel by clicking on the ![layers button](../images/layers-btn.png) button.

The list of uploaded layers is displayed on the "Personal layers" section on top of the left panel.

A layer can be displayed by activating it on the left panel.

![upload display layer](../images/upload-layers.png)


[**`To Top`**](#table-of-contents)

## Offline mode

If you are logged out, you won't be able to access any of your personal layers, but they are still available once you log back in.


[**`To Top`**](#table-of-contents)

## Data security and privacy

Hotmaps toolbox offers security to users creating an account on the platform. Usual security measures have been implemented: HTTPS protocol, password hashing/salting and so on. However please note that for the moment the uploaded datasets are not encrypted on the server. So please avoid uploading sensitive data.
The user data is however, encrypted and no one has access to them from outside. You have the possibility to recover your password, if you forget it.


[**`To Top`**](#table-of-contents)

## How to cite
Daniel Hunacek and Lucien Zuber, in Hotmaps Wiki, Data upload functionalities (September 2020)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Daniel Hunacek and Lucien Zuber (**[HES-SO](https://www.hevs.ch)**).

&#9745; This page was reviewed by Mostafa Fallahnejad (**[EEG - TU Wien](https://eeg.tuwien.ac.at/)**).


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Daniel Hunacek and Lucien Zuber

Creative Commons Attribution 4.0 International License

This work is licensed under a Creative Commons CC BY 4.0 International License.

SPDX-License-Identifier: CC-BY-4.0

License-Text: https://spdx.org/licenses/CC-BY-4.0.html

[**`To Top`**](#table-of-contents)

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation


[**`To Top`**](#table-of-contents)






<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/Data-upload-functionalities)<sup>\*</sup> 

<sup>\*</sup> machine translated
