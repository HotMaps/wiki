# Data upload functionalities

## Table Of Contents

- [Introduction](#Introduction)
- [How to upload a layer with custom data](#How-to-upload-a-layer-with-custom-data)
- [How to display an uploaded layer](#How-to-display-an-uploaded-layer)
- [Offline mode](#Offline-mode)
- [Data security and privacy](#Data-security-and-privacy)
- [References](#References)
- [How to cite](#How-to-cite)
- [Authors and reviewers](#Authors-and-reviewers)
- [Acknowledgement](#Acknowledgement)

## Introduction

The platform allows to upload some custom data from your computer to Hotmaps. This part is closely linked to the [export](Data_export) function as the final goal of those two functions is to export some data, make some edit to it and visualize it on the toolbox later by importing those data back. Please note that your uploaded data can only be visualized, no calculation modules can be performed on them at the moment.

This operation **requires a user account**. The registration and login processes are explained on the following page: [User account](Hotmaps-Graphical-User-Interface#Connect).

In order to upload a dataset without any issue. Please use the [export](Data_export) function first, for the area you want to import (see [Data export](Data_export) page).

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to upload a layer with custom data

By pressing the ![account button](images/account-btn.png) button at the top left corner of the page. This will bring the profile page to front. 

On the profile page:

1. selection of type of dataset
2. selection of file to upload (.tif or .csv)
3. upload by clicking on the "+" icon

![profile page upload](images/profile-upload.png)

The selection of type of dataset is used in order to get the correct symbology. If your dataset does not match the layer symbology, it won't be displayed correctly.

Once this is done, a success message will be displayed and the layer appears in the list of layers on the profile page.

Each user has a limited disk space, once the user has not enough free space, it won't be able to add more files, you can visualize your left space with the pie chart on the User diskspace field.

Before being able to display the layer on the map, the server will need some time (up to several minutes) after the success message to import the dataset correctly. The dataset is available to be displayed once its size is no longer 0.

![upload_complete](images/upload_complete.png)

The layer can now be displayed on the map by activating it on the layers panel. 

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to display an uploaded layer

It is possible to display a layer that has been previously uploaded from the layers panel by clicking on the ![layers button](images/layers-btn.png) button.

The list of uploaded layers is displayed on the "Personal layers" section on top of the left panel.

A layer can be displayed by activating it on the left panel.

![upload display layer](images/upload-layers.png)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Offline mode

If you are logged out, you won't be able to access any of your personal layers, but they are still available once you log back in.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Data security and privacy

Hotmaps toolbox offers security to users creating an account on the platform. Usual security measures have been implemented: HTTPS protocol, password hashing/salting and so on. However please note that for the moment the uploaded datasets are not encrypted when stored on the server, so please avoid uploading sensitive data. 

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References

<code><ins>**[To Top](#table-of-contents)**</ins></code>

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