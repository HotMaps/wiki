<h1>Guidelines for writing a Hotmaps Wiki page</h1>

## Table of Contents
* [Introduction](#introduction)
* [Wiki toolbar and sidebar](#wiki-toolbar-and-sidebar)
* [Add figures and images](#add-figures-and-images)
* [Classification of wiki pages](#classification-of-wiki-pages)
* [Default structures of the wiki pages](#default-structures-of-the-wiki-pages)
  * [Hotmaps data set repository structure](#default-structures-of-the-wiki-pages_hotmaps-data-set-repository-structure)
  * [General functionalities of the toolbox](#default-structures-of-the-wiki-pages_general-functionalities-of-the-toolbox)
  * [Calculation modules](#default-structures-of-the-wiki-pages_calculation-modules)
  * [How to apply the Hotmaps toolbox](#default-structures-of-the-wiki-pages_how-to-apply-the-hotmaps-toolbox)
  * [Developers area](#default-structures-of-the-wiki-pages_developers-area)
* [Authors and reviewers](#authors-and-reviewers)
* [License](#license)
* [Acknowledgement](#acknowledgement)

## Introduction

The Hotmaps wiki platform provides flexible functionalities for creating and editing the wiki pages. In order to be able to create or modify any wiki page, you must be logged in to the wiki platform. This is only possible if you have a GitHub account and you are assigned a wiki provider permission. To get a permission, send an Email to "support(at)hotmaps.eu" including your GitHub ID. We will then evaluate your request and accordingly respond to it. In order to log in, use the top-right corner login button. Once you are logged in, you can create and modify the pages.

[**`To Top`**](#table-of-contents)

## Wiki toolbar and sidebar
On top of each page you see the edit toolbar. The figure below shows this toolbar and briefly explains the function of each button.


<img src="/en/Guidelines-for-writing-a-Hotmaps-Wiki-page/toolbar_new.png" alt=""/>


The sidebar is visible in all wiki pages. Note that **any modification in the sidebar is applied to all wiki pages**. In other words, the sidebar is not specific to the page that you are editing. In order to modify the sidebar, press the "edit" button on the wiki toolbar. The sidebar modification can be done via the section on the bottom of the edit page as shown in the following figure.

<img src="/en/Guidelines-for-writing-a-Hotmaps-Wiki-page/sidebar.png" alt=""/>

In order to enlarge the edit window, drag it toward the bottom-right corner as shown in the following figure.

<img src="/en/Guidelines-for-writing-a-Hotmaps-Wiki-page/enlarge_edit_window_new.png" alt=""/>
[**`To Top`**](#table-of-contents)


## Add figures and images
In order to add an image to your wiki page you have two options:

**Method I:**
* First, upload the image into your desired wiki page using the "Upload" button in the toolbar.
* Note down the provided link for the uploaded image.
* Start editing that wiki page and use the link to the image.


**Method II:**
* Start editing your desired wiki page.
* Drag and drop the image to the place in text that you would like to show the figure.

[**`To Top`**](#table-of-contents)


## Classification of wiki pages

The Hotmaps wiki pages are categorized in five different classes:
* Hotmaps data set repository structure
* General functionalities of the toolbox
* Calculation modules
* How to apply the Hotmaps toolbox
* Developers area

For each wiki page class, a structure with several sections is suggested (see next section in this page). The sections in **BOLD** must be part of the Wiki page. The rest, on the other hand, should be added if applicable.
As a sample page, please have a look into [this wiki page](/en/CM-District-heating-potential-areas-user-defined-thresholds).

Wiki pages can become very long due to embedded figures. In order to help the readers to navigate in a page easily and easily find what they are looking for, please add a “**Table of contents**” on top of each page that you are writing. Additionally, use a “[**`To Top`**](#table-of-contents)” button at the end of each section with a hyperlink to the “Table of contents” at the top of the wiki page.

In case you should use your own figures, please first create a new folder for your wiki page here and then push all the figures into the folder. Please also avoid using bulky images as the repository has a limited capacity.

Once you finished writing your wiki page, ask your colleagues to review your page and give feedback to you. In this way, we can minimize the written mistakes and make sure that wiki pages are written clearly. Add the name of the reviewer in the "Authors and reviewers" section. Follow the same structure as of the provided sample page.


**NOTE**: The Wiki pages are usually written in Markdown language (some additional formats are also possible). If you are not familiar with Markdown, read [here](https://guides.github.com/features/mastering-markdown/) the short tutorial provided by GitHub.

[**`To Top`**](#table-of-contents)


## Default structures of the wiki pages

### Hotmaps data set repository structure

Here, the most important point is to keep track of all Hotmaps repositories on GitLab and keep the links updated. The following structure is suggested for this class of wiki pages:

* __Table of content__
* __Introduction__
* __Data set classification__
  * Class A
  * Class B
  * Class C
  * Etc.
* __How to cite__
* __Authors and reviewers__
* __License__
* __Acknowledgement__

[**`To Top`**](#table-of-contents)


### General functionalities of the toolbox
* __Table of content__
* __Introduction__
* __Functionalities__
  * Functionality A
  * Functionality B
  * Functionality C
  * etc.
* __How to cite__
* __Authors and reviewers__
* __License__
* __Acknowledgement__

[**`To Top`**](#table-of-contents)


### Calculation modules
**NOTE I:** for the input layers please mention category of the layers as "default layer" or "personal layer" or "default/personal layer"


**NOTE II:** If a data or data set is being used by CM while it is not part of the default data set, it should be explained and the link to the data set should be provided. Also if you retrieve data from another website, please make sure to provide the link to that website in the input section and reference section.


* __Table of content__
* __In a glance__
* __Introduction__
* __Inputs and outputs__
  * Input layers
  * Input parameters
  * Output layers
  * Output graphics and indicators
* __Method__
* __Interpretation of input parameters__
* __GitHub repository of this calculation module__
* __Sample run__
  * Test Run 1: XXXXX
  * Test Run 2: YYYYY
* __Interpretation of results__
* __References__
* __How to cite__
* __Authors and reviewers__
* __License__
* __Acknowledgement__

[**`To Top`**](#table-of-contents)


### How to apply the Hotmaps toolbox

* __Table of content__
* __Introduction__
* __Topic A__
* __Topic B__
* __Topic C__
* etc.
* __References__
* __How to cite__
* __Authors and reviewers__
* __License__
* __Acknowledgement__

[**`To Top`**](#table-of-contents)


### Developers area

* __Table of content__
* __Introduction__
* __Topic A__
* __Topic B__
* __Topic C__
* etc.
* __References__
* __How to cite__
* __Authors and reviewers__
* __License__
* __Acknowledgement__

[**`To Top`**](#table-of-contents)


## Authors and reviewers

This page was written by Mostafa Fallahnejad **[EEG - TU Wien](https://eeg.tuwien.ac.at/)**.

&#9745; This page was reviewed by Marcul Hummel **[e-think](https://e-think.ac.at)**.


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

[**`To Top`**](#table-of-contents)







<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [Bulgarian](../bg/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Czech](../cs/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Danish](../da/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [German](../de/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Greek](../el/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Spanish](../es/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Estonian](../et/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Finnish](../fi/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [French](../fr/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Irish](../ga/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Croatian](../hr/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Hungarian](../hu/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Italian](../it/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Lithuanian](../lt/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Latvian](../lv/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Maltese](../mt/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Dutch](../nl/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Polish](../pl/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Romanian](../ro/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Slovak](../sk/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Slovenian](../sl/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> [Swedish](../sv/Guidelines-for-writing-a-Hotmaps-Wiki-page)<sup>\*</sup> 

<sup>\*</sup> machine translated
