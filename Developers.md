# Developers

## Table Of Contents

- [Introduction](#Introduction)
- [Dataset integration](#Dataset-integration)
- [Add your datasets on GitLab](#add-your-datasets-on-gitlab)
- [List of main repositories](#List-of-main-repositories)
- [How to contribute code](#How-to-contribute-code)
- [Description of IT infrastructure](#Description-of-IT-infrastructure)
  - [Server infrastructure](#Server-infrastructure)
    - [Infrastructure](#Infrastructure)
    - [Performance](#Performance)
- [How to define indicators](#How-to-define-indicators)
- [How to cite](#How-to-cite)
- [References](#References)
- [Authors and reviewers](#Authors-and-reviewers)
- [Acknowledgement](#Acknowledgement)

## Introduction

This page contains all information required for developers to contribute to the HotMaps Platform or to understand how it is working.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Dataset integration

Integration of new public datasets is handled as follow:

1. datasets must be pushed to a git repository ([Add your datasets on GitLab](#Add-your-datasets-on-GitLab))
2. every night a script integrates the new/updated datasets to the DEV platform
3. if everything worked well, the dataset is now available on the DEV platform and developers can integrate it in their code
4. Once coding is finished the new features are added to the production platform through a new release

![data integration](images/data-integration-workflow.png)

If a dataset fails during integration, an issue is created on Taiga (project management platform). The issue shows the error raised and the developer should fix it and push again his work to Git so that the script can try to integrate it again the next evening.

The source code of the integration script is available at this link: [Data integration](https://github.com/HotMaps/CI_DatasetIntegration)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Add your datasets on GitLab

To add datasets on the list of public datasets, they must be pushed to a new Git repository on GitLab. Here is the GitLab Organization where datasets should be pushed: [Datasets on GitLab](https://gitlab.com/hotmaps).

There is a specification for datasets that needs to be added. 

The specification is available at this address: [Specification-to-be-added](#Specification)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## List of main repositories

The code of the application is located on GitHub under the [HotMaps organization](https://github.com/HotMaps). This organization owns several repositories

* [Hotmaps-toolbox-client](https://github.com/HotMaps/Hotmaps-toolbox-service) contains the frontend of our application. It is an Angular project (JavaScript)
* [Hotmaps-toolbox-service](https://github.com/HotMaps/Hotmaps-toolbox-service) contains the API for our application. It is based on Flask (Python)
* [hotmaps-wiki](https://github.com/HotMaps/hotmaps_wiki) is the wiki you're currently reading
* [base-calculation-module](https://github.com/HotMaps/base_calculation_module) is the basic template you can use to create your own calculation modules for Hotmaps
* a list of calculations modules

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to contribute code

If you want to add some code to Hotmaps you have two possibilities: if you want to update the interface or the backend directly, you have to modify the client or service repository of the toolbox. If you want to add your own calculation module, you can create your own repository by following [the readme of the base_calculation_module repository](https://github.com/HotMaps/base_calculation_module)

If you want to perform some work on the Git repository, please do not work directly with the master branch. Create a new branch from the develop branch, do your work on this branch and when your feature is tested, you can merge your work with the develop branch as show in the following graph. 

![git_workflow](images/git_workflow.png)

In order to push something to some HotMaps repository you have to be a member of the HotMaps team, if you are not you are still able to perform a fork of our tool to develop your own tool.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Description of IT infrastructure

![ReverseProxy_architecture_latest](images/ReverseProxy_architecture_latest.png)

All services and components are used through their own Docker container. All these containers are defined in a single docker-compose file. The image above represents the IT architecture of Hotmaps.

Some partner organizations limited communication to port 80 only. To avoid the problems caused by this limitation, the creation of a reverse proxy was made. This reverse proxy offers a single entrypoint and then distributes the request sent by the customer to the service concerned. The reverse proxy is composed by three components :

1. Reverse proxy server : it serves as a unique entrypoint and distributes requests to the right services.
2. Proxy-gen : it is a service that automatically maps all services in the reverse proxy. Thus, it is not necessary to manually add a new service to the proxy configuration
3. lets-encrypt : it is a service that allows the use of the SSL protocol. It is necessary in order to activate the https protocol. The SLL certificates are signed by an email address configured in this service. 

Three networks exist :

- hotmpas_neginx  allows the reverse proxy to communicate with the api, the frontend and the geoserver. It mainly allows to distribute a request to the correct service among the three.
- hotmaps_backend allows the communication between all the components of the backend : api, frontend, geoserver and the postgresql database. 
- hotmaps_cm-net allows the communication between each calculation modules and the api.

Each calculation module has its own Docker container. 

### Server infrastructure

#### Infrastructure

For the moment, the server is hosted at the HES-SO in Switzerland. There are 2 machines available: one for development (development and testing) and one for production (the actual toolbox, available at [www.hotmaps.eu](www.hotmaps.eu)).

Both machines have the same specification:

- CPU: Intel Xeon E5-2680 v4 (8) @ 2.4GHz)
- RAM: 16GB
- HDD: 500GB 
- OS: Ubutnu 16.04 LTS

#### Performance

We frequently run performance tests on the development server in order to guarantee a certain amount of concurrent users. 

As an example, below are the results of the first beta release versus the future release tests. The new release includes some performance improvements.

*This example shows the performance tests of concurrent users using the same function: "duration curve for hectare selection". The bold line shows the limit where the server starts to raise errors. Hectare selection is a good example as it shows the queries that require the most resources.*

**Beta release of march 2019**

| Nb of simulated users | Average time | Median | Max time | Min time | Percentage of errors |
| --------------------- | ------------ | ------ | -------- | -------- | -------------------- |
| 1                     | 2936         | 2936   | 2936     | 2936     | 0                    |
| 20                    | 9329         | 9503   | 11778    | 6901     | 0                    |
| 50                    | 22922        | 22713  | 33401    | 8661     | 0                    |
| **100**               | 33302        | 32875  | 58257    | 4929     | **16**               |
| 200                   | na           | na     | na       | na       | na                   |
| 300                   | na           | na     | na       | na       | na                   |

**Future release on the DEV (march 2019)**

| Nb of simulated users | Average time | Median | Max time | Min time | Percentage of errors |
| --------------------- | ------------ | ------ | -------- | -------- | -------------------- |
| 1                     | 1802         | 1802   | 1802     | 1802     | 0                    |
| 20                    | 5289         | 2677   | 6873     | 2149     | 0                    |
| 50                    | 10775        | 11274  | 17081    | 2577     | 0                    |
| 100                   | 19807        | 20280  | 35142    | 3156     | 0                    |
| 200                   | 37302        | 37575  | 69930    | 3381     | 0                    |
| **300**               | 49091        | 57536  | 83578    | 2447     | **26**               |

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to define indicators

[Indicator Definiton](indicator_readme)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References



<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

Authors:

- Daniel Hunacek
- Lucien Zuber
- Matthieu Dayer

Reviewers:

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation