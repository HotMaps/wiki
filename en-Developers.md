## Table of Contents

- [Introduction](#Introduction)
- [Dataset integration](#Dataset-integration)
- [Add your datasets on GitLab](#add-your-datasets-on-gitlab)
- [List of main repositories](#List-of-main-repositories)
- [How to contribute code](#How-to-contribute-code)
- [Description of IT infrastructure](#Description-of-IT-infrastructure)
  - [Run with Docker](#Run-with-Docker)
  - [Server infrastructure](#Server-infrastructure)
    - [Infrastructure](#Infrastructure)
    - [Performance](#Performance)
- [How to define indicators](#How-to-define-indicators)
- [References](#References)
- [How to cite](#How-to-cite)
- [Authors and reviewers](#Authors-and-reviewers)
- [Acknowledgement](#Acknowledgement)

## Introduction

This page contains all information required for developers to contribute to the Hotmaps Platform or to understand how it is working.

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Dataset integration

Integration of new public datasets is handled as follow:

1. datasets must be pushed to a git repository ([Add your datasets on GitLab](#Add-your-datasets-on-GitLab))
2. every night a script integrates the new/updated datasets to the DEV platform
3. if everything worked well, the dataset is now available on the DEV platform and developers can integrate it in their code
4. Once coding is finished the new features are added to the production platform through a new release

![data integration](en-images/data-integration-workflow.png)

If a dataset fails during integration, an issue is created on Taiga (en-project management platform). The issue shows the error raised and the developer should fix it and push again his work to Git so that the script can try to integrate it again the next evening.

The source code of the integration script is available at this link: [Data integration](en-https://github.com/HotMaps/CI_DatasetIntegration)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Add your datasets on GitLab

To add datasets on the list of public datasets, they must be pushed to a new Git repository on GitLab. Here is the GitLab Organization where datasets should be pushed: [Datasets on GitLab](en-https://gitlab.com/hotmaps).

Once a day the repositories are checked for new commits and integrated if so. The integration process checks whether the data conforms to the specification or not. 

Here is the specification:  [Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf](en-uploads\Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf) 

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## List of main repositories

The code of the application is located on GitHub under the [Hotmaps organization](en-https://github.com/HotMaps). This organization owns several repositories

* [Hotmaps-toolbox-client](en-https://github.com/HotMaps/Hotmaps-toolbox-service) contains the frontend of our application. It is an Angular project (JavaScript)
* [Hotmaps-toolbox-service](en-https://github.com/HotMaps/Hotmaps-toolbox-service) contains the API for our application. It is based on Flask (Python)
* [Hotmaps-wiki](en-https://github.com/HotMaps/hotmaps_wiki) is the Wiki you're currently reading
* [base-calculation-module](en-https://github.com/HotMaps/base_calculation_module) is the basic template you can use to create your own calculation modules for Hotmaps
* a list of calculations modules

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to contribute code

If you want to add some code to Hotmaps you have two possibilities: if you want to update the interface or the backend directly, you have to modify the client or service repository of the toolbox. If you want to add your own calculation module, you can create your own repository by following [the readme of the base_calculation_module repository](en-https://github.com/HotMaps/base_calculation_module)

If you want to perform some work on the Git repository, please do not work directly with the master branch. Create a new branch from the develop branch, do your work on this branch and when your feature is tested, you can merge your work with the develop branch as show in the following graph. 

![git_workflow](en-images/git_workflow.png)

In order to push something to some Hotmaps repository you have to be a member of the Hotmaps team, if you are not you are still able to perform a fork of our tool to develop your own tool.

You can find more information on how to work in these documents:

-  [Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf](en-uploads/Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf)
-  [Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf](en-uploads\Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf)
-  [GitFlow_Guidelines_CREM_2017-02-01.pdf](en-uploads\GitFlow_Guidelines_CREM_2017-02-01.pdf) 

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Description of IT infrastructure

![ReverseProxy_architecture_latest](en-images/ReverseProxy_architecture_latest.png)

All services and components are used through their own Docker container. All these containers are defined in a single docker-compose file. The image above represents the IT architecture of Hotmaps.

Some partner organizations limited communication to port 80 only. To avoid the problems caused by this limitation, the creation of a reverse proxy was made. This reverse proxy offers a single entrypoint and then distributes the request sent by the customer to the service concerned. The reverse proxy is composed by three components :

1. Reverse proxy server : it serves as a unique entrypoint and distributes requests to the right services.
2. Proxy-gen : it is a service that automatically maps all services in the reverse proxy. Thus, it is not necessary to manually add a new service to the proxy configuration
3. lets-encrypt : it is a service that allows the use of the SSL protocol. It is necessary in order to activate the https protocol. The SSL certificates are signed by an email address configured in this service. 

Three networks exist :

- hotmaps_nginx allows the reverse proxy to communicate with the api, the frontend and the geoserver. It mainly allows to distribute a request to the correct service among the three.
- hotmaps_backend allows the communication between all the components of the backend : api, frontend, geoserver and the PostgreSQL database. 
- hotmaps_cm-net allows the communication between each calculation modules and the api.

Each calculation module has its own Docker container. 

### Run with Docker

Hotmaps uses [Docker](en-https://www.docker.com/) software and [Docker-Compose](https://docs.docker.com/compose/) tool to manage containers. A docker-compose.yml file contains the whole configuration of the Docker architecture (config. of containers, networks, links, ...). This allows containers to be run with one simple command : 

```shell
docker-compose up
```

*There is more about docker-compose on the webiste of Docker: [Compose command-line reference](en-https://docs.docker.com/compose/reference/) and [Compose file reference](https://docs.docker.com/compose/compose-file/).*

There is only one container that is run separately from others: it's the database because it needs to stay up all the time. That's why it's not in the docker-compose configuration file.

### Server infrastructure

#### Infrastructure

For the moment, the server is hosted at the HES-SO in Switzerland. There are 2 machines available: one for development (en-development and testing) and one for production (the actual toolbox, available at [www.hotmaps.eu](https://www.hotmaps.eu)).

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

**Future release on the DEV (en-march 2019)**

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

[Indicator Definiton](en-indicator_readme)

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## References

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## How to cite

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Authors and reviewers

Authors:

- Daniel Hunacek
- Lucien Zuber
- Matthieu Dayer

Reviewers:

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](en-https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation

<code><ins>**[To Top](#table-of-contents)**</ins></code>

## 

View in another language:

 [Bulgarian](bg-Developers)<sup>\*</sup> [Croatian](hr-Developers)<sup>\*</sup> [Czech](cs-Developers)<sup>\*</sup> [Danish](da-Developers)<sup>\*</sup> [Dutch](nl-Developers)<sup>\*</sup> [Estonian](et-Developers)<sup>\*</sup> [Finnish](fi-Developers)<sup>\*</sup> [French](fr-Developers)<sup>\*</sup> [German](de-Developers)<sup>\*</sup> [Greek](el-Developers)<sup>\*</sup> [Hungarian](hu-Developers)<sup>\*</sup> [Irish](ga-Developers)<sup>\*</sup> [Italian](it-Developers)<sup>\*</sup> [Latvian](lv-Developers)<sup>\*</sup> [Lithuanian](lt-Developers)<sup>\*</sup> [Maltese](mt-Developers)<sup>\*</sup> [Polish](pl-Developers)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-Developers)<sup>\*</sup> [Romanian](ro-Developers)<sup>\*</sup> [Slovak](sk-Developers)<sup>\*</sup> [Slovenian](sl-Developers)<sup>\*</sup> [Spanish](es-Developers)<sup>\*</sup> [Swedish](sv-Developers)<sup>\*</sup> 

<sup>\*</sup>: machine translated
