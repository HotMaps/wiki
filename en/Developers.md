<h1>Developers</h1>

## Table of Contents

- [Introduction](#introduction)
- [Dataset integration](#dataset-integration)
- [Add your datasets on GitLab](#add-your-datasets-on-gitlab)
- [List of main repositories](#list-of-main-repositories)
- [How to contribute code](#how-to-contribute-code)
- [Description of IT infrastructure](#description-of-it-infrastructure)
  - [Run with Docker](#run-with-docker)
  - [Server infrastructure](#server-infrastructure)
    - [Infrastructure](#infrastructure)
    - [Performance](#performance)
- [How to define indicators](#how-to-define-indicators)
- [How to cite](#how-to-cite)
- [Authors and reviewers](#authors-and-reviewers)
- [Acknowledgement](#acknowledgement)

## Introduction

This page contains all information required for developers to contribute to the Hotmaps Platform or to understand how it is working.

[**`To Top`**](#table-of-contents)

## Dataset integration

Integration of new public datasets is handled as follow:

1. datasets must be pushed to a git repository ([Add your datasets on GitLab](#add-your-datasets-on-gitlab))
2. every night a script integrates the new/updated datasets to the DEV platform
3. if everything worked well, the dataset is now available on the DEV platform and developers can integrate it into their code
4. Once coding is finished the new features are added to the production platform through a new release

![data integration](images/data-integration-workflow.png)

If a dataset fails during integration, an issue is created on Taiga (project management platform). The issue shows the error raised and the developer should fix it and push again his work to Git so that the script can try to integrate it again the next evening.

The source code of the integration script is available at this link: [Data integration](https://github.com/HotMaps/CI_DatasetIntegration)

[**`To Top`**](#table-of-contents)

## Add your datasets on GitLab

To add datasets on the list of public datasets, they must be pushed to a new Git repository on GitLab. Here is the GitLab Organization where datasets should be pushed: [Datasets on GitLab](https://gitlab.com/hotmaps).

Once a day the repositories are checked for new commits and integrated if so. The integration process checks whether the data conforms to the specification or not. 

Here is the specification:  [Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf](uploads/Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf) 

[**`To Top`**](#table-of-contents)

## List of main repositories

The code of the application is located on GitHub under the [Hotmaps organization](https://github.com/HotMaps). This organization owns several repositories

* [Hotmaps-toolbox-client](https://github.com/HotMaps/Hotmaps-toolbox-service) contains the frontend of our application. It is an Angular project (JavaScript)
* [Hotmaps-toolbox-service](https://github.com/HotMaps/Hotmaps-toolbox-service) contains the API for our application. It is based on Flask (Python)
* [Hotmaps-wiki](https://github.com/HotMaps/hotmaps_wiki) is the Wiki you're currently reading
* [base-calculation-module](https://github.com/HotMaps/base_calculation_module) is the basic template you can use to create your own calculation modules for Hotmaps
* a list of calculations modules

[**`To Top`**](#table-of-contents)

## How to contribute code

If you want to add some code to Hotmaps you have two possibilities: if you want to update the interface or the backend directly, you have to modify the client or service repository of the toolbox. If you want to add your own calculation module, you can create your own repository by following [the readme of the base_calculation_module repository](https://github.com/HotMaps/base_calculation_module)

If you want to perform some work on the Git repository, please do not work directly with the master branch. Create a new branch from the develop branch, do your work on this branch and when your feature is tested, you can merge your work with the develop branch as shown in the following graph. 

![git_workflow](images/git_workflow.png)

In order to push something to some Hotmaps repository you have to be a member of the Hotmaps team, if you are not you are still able to perform a fork of our tool to develop your own tool.

You can find more information on how to work in these documents:

-  [Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf](uploads/Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf)
-  [Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf](uploads/Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf)
-  [GitFlow_Guidelines_CREM_2017-02-01.pdf](uploads/GitFlow_Guidelines_CREM_2017-02-01.pdf) 

[**`To Top`**](#table-of-contents)

## Description of IT infrastructure

![ReverseProxy_architecture_latest](images/ReverseProxy_architecture_latest.png)

All services and components are used through their own Docker container. All these containers are defined in a single docker-compose file. The image above represents the IT architecture of Hotmaps.

Some partner organizations limited communication to port 80 only. To avoid the problems caused by this limitation, the creation of a reverse proxy was made. This reverse proxy offers a single entry point and then distributes the request sent by the customer to the service concerned. The reverse proxy is composed of three components :

1. Reverse proxy server: it serves as a unique entry point and distributes requests to the right services.
2. Proxy-gen: it is a service that automatically maps all services in the reverse proxy. Thus, it is not necessary to manually add a new service to the proxy configuration
3. lets-encrypt: it is a service that allows the use of the SSL protocol. It is necessary in order to activate the https protocol. The SSL certificates are signed by an email address configured in this service. 

Three networks exist :

- hotmaps_nginx allows the reverse proxy to communicate with the API, the frontend and the GeoServer. It mainly allows distributing a request to the correct service among the three.
- hotmaps_backend allows the communication between all the components of the backend: API, frontend, GeoServer and the PostgreSQL database. 
- hotmaps_cm-net allows the communication between each calculation modules and the API.

Each calculation module has its own Docker container. 

### Run with Docker

Hotmaps uses [Docker](https://www.docker.com/) software and [Docker-Compose](https://docs.docker.com/compose/) tool to manage containers. A docker-compose.yml file contains the whole configuration of the Docker architecture (config. of containers, networks, links, ...). This allows containers to be run with one simple command : 

```shell
docker-compose up
```

*There is more about docker-compose on the webiste of Docker: [Compose command-line reference](https://docs.docker.com/compose/reference/) and [Compose file reference](https://docs.docker.com/compose/compose-file/).*

There is only one container that is run separately from others: it's the database because it needs to stay up all the time. That's why it's not in the docker-compose configuration file.

### Server infrastructure

#### Infrastructure

For the moment, the server is hosted at the HES-SO in Switzerland. There are 2 machines available: one for development (development and testing) and one for production (the actual toolbox, available at [www.hotmaps.eu](https://www.hotmaps.eu)).

Both machines have the same specification:

- CPU: Intel Xeon E5-2680 v4 (8) @ 2.4GHz)
- RAM: 16GB
- HDD: 500GB 
- OS: Ubutnu 16.04 LTS

#### Performance

We frequently run performance tests on the development server in order to guarantee a certain amount of concurrent users. 

As an example, below are the results of the first beta release versus future release tests. The new release includes some performance improvements.

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

[**`To Top`**](#table-of-contents)

## How to define indicators

[Indicator Definiton](indicator_readme)

[**`To Top`**](#table-of-contents)

## How to cite


[**`To Top`**](#table-of-contents)

## Authors and reviewers

Authors:

- Daniel Hunacek
- Lucien Zuber
- Matthieu Dayer

Reviewers:


[**`To Top`**](#table-of-contents)

## Acknowledgement

We would like to convey our deepest appreciation to the Horizon 2020 [Hotmaps Project](https://www.hotmaps-project.eu) (Grant Agreement number 723677), which provided the funding to carry out the present investigation


[**`To Top`**](#table-of-contents)


<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

View in another language:

 [German](../de/Developers)<sup>\*</sup> 

<sup>\*</sup> machine translated
