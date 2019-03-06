# Hotmaps Graphical User Interface 
## Introduction Page (Animation)
![intro_gif][intro]

## Description
Once the toolbox is opened, the disclaiming page is shown ([Fig.1](#Fig1)). Besides the disclaimer message, additional information regarding the objectives of the Hotmaps toolbox as well as the link to the Hotmaps project website and the data repositories is provided.

<a name="Fig1">![disclaimer][Fig1] </a>
_Fig. 1 Short introduction to Hotmas toolbox_


The Hotmaps GUI is a GIS-based interface. By closing the disclaiming page, the user sees the map of Europe. By default, the heat demand density map of EU-28 countries and NUTS 3 layer are depicted. In addition to these two maps, some tools and buttons can be seen in GUI. These tools are illustrated in [Fig.2](#Fig2)

<a name="Fig2">![first_glance][Fig2] </a>
_Fig. 2 Initial Page_

Here you can spot at first glance 3 parts of the user interface:
1. a Toolbar at the top
2. the map itself
3. and some tools for changig the style of the map

In the follwing chapetrs we will have a look at each of this 3 parts:

# 1. Upper Toolbar
![first_glance][Fig3] 
## Short Description
With this toolbar you can:
1. [_Connect:_](#connect) register and login into the web application in order to save your work
2. [_Go To Place:_](#go-to-place) zoom in to a specific region by typing the name 
3. [_Layers:_](#layers) show the layer sidebar
4. [_Selection Tools_:](#selection-tool) enable or disable the selection tools
5. [_Show Result:_](#show-result) show the result sidebar of your selected regions
6. [_Feedback:_](#feedback) give us Feedback regarding the tool

## Long Description
## Connect
## Login
## Animation
![login_gif][login_gif]
## Description
After [registering](#register) and activating your account you should be able to login with your email and password (see [Fig.4](#Fig4) below).

<a name="Fig4">![login_png][login]</a>

_Fig.4.: Login Form_

## Register
![register_gif][register_gif]
## Description
Here you can create a account for the _hotmaps_ website. After submitting the [form](#Fig5) you will receive an email for actvating your account. With your account you will be able to save your progress.

<a name="Fig5">![register][register]</a>

_Fig.5.: RegisterForm_

## Recover
![recover_gif][recover_gif]
## Description
If you ever forget your password you can recover it under this menu (see [Fig.6.](#Fig6) below). Please be aware to set a new password afterwards. 

<a name="Fig6">![recover][recover]</a>

_Fig.6.: Recover Form_


## Go To Place
You can zoom to a specifc region by typing its name (see animation below)
 
![go_to_place_gif][go_to_place]

## Layers
![layers_gif][layers]

## Description
By pressing this Button a sidebar with different kind of layers is shown at the left.
Following layers can be found and visualized:

![sidebar_layer.png][sidebar]

## Selection Tools
![selection_tools_gif][selection_tools]
## Description
The figure below shows the appearance of the tools:

![selection_tools.png][selection_tools_png] 

1. tool for selection your region
2. creating a custom square region
3. creating a custom circle region
4. creating a custom polygon region

<ol type="A">
<li>shows how many region you selected</li>
<li>shows the scale you selected from apping</li>
</ol>

<ol type="a">
<li>button for loading the results of your selected region and selected layers</li>
<li>button for deleting a selected region</li>
</ol>


## Show Result
## Description
Depending on the layers and region you selected results for your configuration are shown in a sidebar at the right of your screen 

![results.png][results]

## Feedback
![feedback_gif][feedback]

## Description
Do you have any suggestions how to impove the tool ?
Have you notice any errors ?
Please let us know !
By giving us feedback you can help us improve the toolbox !

Please fill out the form below:

![feedback.png][feedback_png]

you can choose from following types:

![feedback.png][feedback_type]

and set a priority:

![feedback.png][feedback_priority]

## Mapping
![maping_gif][mapping_gif]

## Description
![maping_gif][mapping]

1. Zomm in and Zoom out
2. Show the NUTS boundaries to select specifc NUTS regions or use hectar to customize your [selection](#Selection-Tools)
3. Use Openstreetmap tile or Satalite tile
 
[Fig1]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datadisclaimer.png

[Fig2]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datagui_navigation.png

[intro]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/dataintro.gif

[Fig3]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datatoolbar_up.png

[feedback]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datafeedback.gif

[show_result]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datashow_result.gif

[selection_tools]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/dataselection_tools.gif

[layers]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datalayers.gif

[go_to_place]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datago_to_place.gif

[login_gif]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datalogin.gif

[register_gif]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/dataregister.gif

[recover_gif]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datarecover.gif

[mapping_gif]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datamapping.gif

[mapping]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datamapping.png

[login]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datalogin.png

[register]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/dataregister.png

[recover]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datarecover.png

[sidebar]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datasidebar.png

[results]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/dataresults.png

[selection_tools_png]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/dataselection_tools.png

[feedback_png]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datafeedback.png

[feedback_type]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datafeedback_type.png

[feedback_priority]: https://gitlab.com/hotmaps_wiki/intro_gui/tree/master/datafeedback_priority.png
