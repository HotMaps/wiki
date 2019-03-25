# Dataset integration

## Table Of Contents

- [Introduction](#Introduction)
- [Inputs and Outputs](#Inputs-and-outputs)
- [References](#References)
- [How to cite](#How-to-cite)
- [Authors and reviewers](#Authors-and-reviewers)
- [Acknowledgement](#Acknowledgement)

## Introduction

Integration of new public datasets is handled as follow:

1. datasets must be pushed to a git repository
2. every night a script integrates the new to the DEV platform
3. if everything worked well, the dataset is now available on the DEV platform and developers can integrate it in their code
4. Once coding is finished the new features are added to the production platform through a new release

![data integration](../images/data-integration-workflow.png)

If a dataset fails during integration, an issue is created on Taiga (project management platform). The issue shows the error raised and the developer should fix it and push again his work to GIT so that the script can try to integrate it again the next evening.

The source code of the integration script is available at this link: [Data integration](https://github.com/HotMaps/CI_DatasetIntegration)

## Inputs and outputs



## References



## Authors and reviewers

Authors:

- Daniel Hunacek
- Lucien Zuber

Reviewers:

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation


