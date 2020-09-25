<h1>Developers</h1>

## Table of Contents

- [Introduction](#introduction)
- [Dataset integration](#dataset-integration)
- [Add your datasets on GitLab](#add-your-datasets-on-gitlab)
- [List of main repositories](#list-of-main-repositories)
- [How to contribute code](#how-to-contribute-code)
- [Description of IT infrastructure](#description-of-it-infrastructure)
  - [Run with Docker](#description-of-it-infrastructure_run-with-docker)
  - [Server infrastructure](#description-of-it-infrastructure_server-infrastructure)
    - [Infrastructure](#description-of-it-infrastructure_server-infrastructure_infrastructure)
    - [Performance](#description-of-it-infrastructure_server-infrastructure_performance)
- [Read.ME](#Read-ME)
- [How to define indicators](#how-to-define-indicators)
- [How to cite](#how-to-cite)
- [Authors and reviewers](#authors-and-reviewers)
- [License](#license)
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

**Data integration**

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

**Git_workflow**

In order to push something to some Hotmaps repository you have to be a member of the Hotmaps team, if you are not you are still able to perform a fork of our tool to develop your own tool.

You can find more information on how to work in these documents:

-  [Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf](uploads/Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf)
-  [Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf](uploads/Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf)
-  [GitFlow_Guidelines_CREM_2017-02-01.pdf](uploads/GitFlow_Guidelines_CREM_2017-02-01.pdf) 

[**`To Top`**](#table-of-contents)

## Description of IT infrastructure

**ReverseProxy_architecture_latest**

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


[**`To Top`**](#table-of-contents)

### Run with Docker

Hotmaps uses [Docker](https://www.docker.com/) software and [Docker-Compose](https://docs.docker.com/compose/) tool to manage containers. A docker-compose.yml file contains the whole configuration of the Docker architecture (config. of containers, networks, links, ...). This allows containers to be run with one simple command : 

```shell
docker-compose up
```

*There is more about docker-compose on the webiste of Docker: [Compose command-line reference](https://docs.docker.com/compose/reference/) and [Compose file reference](https://docs.docker.com/compose/compose-file/).*

There is only one container that is run separately from others: it's the database because it needs to stay up all the time. That's why it's not in the docker-compose configuration file.


[**`To Top`**](#table-of-contents)

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
| 1                     | 1042         | 1042   | 1042     | 1042     | 0                    |
| 20                    | 3608         | 3858   | 4475     | 2156     | 0                    |
| 50                    | 7337         | 7595   | 11791    | 1568     | 0                    |
| 100                   | 13897        | 13644  | 24492    | 1875     | 0                    |
| 200                   | 27135        | 26380  | 51967    | 3045     | 0                    |
| **300**               | 41237        | 43083  | 73245    | 3223     | **10.67**            |

**Final release (August 2020)**

| Nb of simulated users | Average time | Median | Max time | Min time | Percentage of errors |
| --------------------- | ------------ | ------ | -------- | -------- | -------------------- |
| 1                     | 1025         | 970    | 1151     | 956      | 0                    |
| 20                    | 1671         | 1732   | 2085     | 1113     | 0                    |
| 50                    | 3527         | 3622   | 5593     | 982      | 0                    |
| 100                   | 6648         | 6764   | 11854    | 1118     | 0                    |
| 200                   | 12904        | 12801  | 24163    | 1192     | 0                    |
| 300                   | 19521        | 19382  | 38116    | 1060     | 0                    |

[**`To Top`**](#table-of-contents)

## READ.ME

[Read.ME](Read.ME)

[**`To Top`**](#table-of-contents)

## How to define indicators

[Indicator Definiton](indicator_readme)

[**`To Top`**](#table-of-contents)

## How to cite
Daniel Hunacek, Lucien Zuber, Matthieu Dayer, in Hotmaps Wiki, Developers Section (September 2020)

[**`To Top`**](#table-of-contents)

## Authors and reviewers

This page was written by Daniel Hunacek, Lucien Zuber, and Matthieu Dayer **[HES-SO](https://www.hevs.ch)**.

&#9745; This page was reviewed by Mostafa Fallahnejad **[EEG - TU Wien](https://eeg.tuwien.ac.at/)**.


[**`To Top`**](#table-of-contents)

## License

Copyright © 2016-2020: Daniel Hunacek, Lucien Zuber, and Matthieu Dayer

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

 [German](../de/Developers)<sup>\*</sup> 

<sup>\*</sup> machine translated
