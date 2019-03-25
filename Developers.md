# Developers

## Table Of Contents

- [Introduction](#Introduction)
- [Dataset integration](#Dataset-integration)
- [Add your datasets on GitLab](#add-your-datasets-on-gitlab)
- [List of main repositories](#List-of-main-repositories)
- [How to contribute code](#How-to-contribute-code)
- [Description of IT infrastructure](#Description-of-IT-infrastructure)
- [How to define indicators](#How-to-define-indicators)
- [How to cite](#How-to-cite)
- [Authors and reviewers](#Authors-and-reviewers)
- [Acknowledgement](#Acknowledgement)

## Dataset integration

### Introduction

Integration of new public datasets is handled as follow:

1. datasets must be pushed to a git repository
2. every night a script integrates the new to the DEV platform
3. if everything worked well, the dataset is now available on the DEV platform and developers can integrate it in their code
4. Once coding is finished the new features are added to the production platform through a new release

![data integration](images/data-integration-workflow.png)

If a dataset fails during integration, an issue is created on Taiga (project management platform). The issue shows the error raised and the developer should fix it and push again his work to GIT so that the script can try to integrate it again the next evening.

The source code of the integration script is available at this link: [Data integration](https://github.com/HotMaps/CI_DatasetIntegration)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Add your datasets on GitLab

Information on how 

[Datasets on GitLab](https://gitlab.com/hotmaps)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## List of main repositories

The code of the application is located on GitHub under the HotMaps group. This user owns several repositories

* <Hotmaps-toolbox-client> contains the frontend of our application. It is an Angular project (JavaScript)
* <Hotmaps-toolbox-service> contains the API for our application. It is based on Flask (Python)
* <hotmaps-wiki> is the wiki you're currently reading
* <base-calculation-module> is the basic template you can use to create your own calculation modules for Hotmaps
* a list of calculations modules

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to contribute code

If you want to add some code to Hotmaps you have two possibilities: if you want to update the interface or the backend directly, you have to modify the client or service repository of the toolbox. If you want to add your own calculation module, you can create your own repository by following [the readme of the base_calculation_module repository](https://github.com/HotMaps/base_calculation_module)

If you want to perform some work on the Git repository, please do not work directly with the master branch. Create a new branch from the develop branch, do your work on this branch and when your feature is tested, you can merge your work with the develop branch as show in the following graph. 

![1553519053156](D:\Hotmaps\hotmaps_wiki.wiki\images\git_workflow.png)

In order to push something to some HotMaps repository you have to be a member of the HotMaps team, if you are not you are still able to perform a fork of our tool to develop your own tool.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Description of IT infrastructure

![architecture](https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/architecture.png)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to define indicators

[Indicator Definiton](indicator_readme)

<code><ins>**[To Top](#table-of-contents)**</ins></code>