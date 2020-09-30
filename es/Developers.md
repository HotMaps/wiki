<h1><a class="anchor" id="developers" href="#developers"><i class="fa fa-link"></i></a>Desarrolladores</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Tabla de contenido</h2><ul><li> <a href="#introduction">Introducción</a></li><li> <a href="#dataset-integration">Integración de conjuntos de datos</a></li><li> <a href="#add-your-datasets-on-gitlab">Agregue sus conjuntos de datos en GitLab</a></li><li> <a href="#list-of-main-repositories">Lista de repositorios principales</a></li><li> <a href="#how-to-contribute-code">Cómo contribuir código</a></li><li> <a href="#description-of-it-infrastructure">Descripción de la infraestructura de TI</a><ul><li> <a href="#description-of-it-infrastructure_run-with-docker">Ejecutar con Docker</a></li><li> <a href="#description-of-it-infrastructure_server-infrastructure">Infraestructura del servidor</a><ul><li> <a href="#description-of-it-infrastructure_server-infrastructure_infrastructure">Infraestructura</a></li><li> <a href="#description-of-it-infrastructure_server-infrastructure_performance">Actuación</a></li></ul></li></ul></li><li> <a href="#read-me">Read.ME</a></li><li> <a href="#how-to-define-indicators">Cómo definir indicadores</a></li><li> <a href="#how-to-cite">Cómo citar</a></li><li> <a href="#authors-and-reviewers">Autores y revisores</a></li><li> <a href="#license">Licencia</a></li><li> <a href="#acknowledgement">Reconocimiento</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introducción</h2><p> Esta página contiene toda la información necesaria para que los desarrolladores contribuyan a la plataforma Hotmaps o comprendan cómo está funcionando.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="dataset-integration" href="#dataset-integration"><i class="fa fa-link"></i></a> Integración de conjuntos de datos</h2><p> La integración de nuevos conjuntos de datos públicos se maneja de la siguiente manera:</p><ol><li> los conjuntos de datos deben enviarse a un repositorio de git ( <a href="#add-your-datasets-on-gitlab">agregue sus conjuntos de datos en GitLab</a> )</li><li> cada noche, un script integra los conjuntos de datos nuevos / actualizados a la plataforma DEV</li><li> si todo funcionó bien, el conjunto de datos ahora está disponible en la plataforma DEV y los desarrolladores pueden integrarlo en su código</li><li> Una vez finalizada la codificación, las nuevas funciones se agregan a la plataforma de producción a través de una nueva versión.</li></ol><p> <strong>Integración de datos</strong></p><p> Si un conjunto de datos falla durante la integración, se crea un problema en Taiga (plataforma de gestión de proyectos). El problema muestra el error que se generó y el desarrollador debe solucionarlo y enviar nuevamente su trabajo a Git para que el script pueda intentar integrarlo nuevamente la noche siguiente.</p><p> El código fuente del script de integración está disponible en este enlace: <a href="https://github.com/HotMaps/CI_DatasetIntegration">Integración de datos</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="add-your-datasets-on-gitlab" href="#add-your-datasets-on-gitlab"><i class="fa fa-link"></i></a> Agregue sus conjuntos de datos en GitLab</h2><p> Para agregar conjuntos de datos a la lista de conjuntos de datos públicos, deben enviarse a un nuevo repositorio de Git en GitLab. Aquí está la Organización de GitLab donde se deben <a href="https://gitlab.com/hotmaps">enviar los conjuntos de datos</a> : <a href="https://gitlab.com/hotmaps">Conjuntos de datos en GitLab</a> .</p><p> Una vez al día, se comprueban los repositorios en busca de nuevas confirmaciones y, si es así, se integran. El proceso de integración comprueba si los datos se ajustan a la especificación o no.</p><p> Aquí está la especificación: <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf">Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="list-of-main-repositories" href="#list-of-main-repositories"><i class="fa fa-link"></i></a> Lista de repositorios principales</h2><p> El código de la aplicación se encuentra en GitHub bajo la <a href="https://github.com/HotMaps">organización Hotmaps</a> . Esta organización posee varios repositorios</p><ul><li> <a href="https://github.com/HotMaps/Hotmaps-toolbox-service">Hotmaps-toolbox-client</a> contiene la interfaz de nuestra aplicación. Es un proyecto Angular (JavaScript)</li><li> <a href="https://github.com/HotMaps/Hotmaps-toolbox-service">Hotmaps-toolbox-service</a> contiene la API para nuestra aplicación. Está basado en Flask (Python)</li><li> <a href="https://github.com/HotMaps/base_calculation_module">módulo-cálculo-base</a> es la plantilla básica que puede utilizar para crear sus propios módulos de cálculo para Hotmaps</li><li> una lista de módulos de cálculo</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-contribute-code" href="#how-to-contribute-code"><i class="fa fa-link"></i></a> Cómo contribuir código</h2><p> Si desea agregar algún código a Hotmaps, tiene dos posibilidades: si desea actualizar la interfaz o el backend directamente, debe modificar el repositorio de cliente o servicio de la caja de herramientas. Si desea agregar su propio módulo de cálculo, puede crear su propio repositorio siguiendo <a href="https://github.com/HotMaps/base_calculation_module">el archivo Léame del repositorio base_calculation_module</a></p><p> Si desea realizar algún trabajo en el repositorio de Git, no trabaje directamente con la rama maestra. Cree una nueva rama desde la rama de desarrollo, haga su trabajo en esta rama y cuando se pruebe su característica, puede fusionar su trabajo con la rama de desarrollo como se muestra en el siguiente gráfico.</p><p> <strong>Git_workflow</strong></p><p> Para enviar algo a algún repositorio de Hotmaps, debe ser miembro del equipo de Hotmaps, si no lo es, aún puede realizar una bifurcación de nuestra herramienta para desarrollar su propia herramienta.</p><p> Puede encontrar más información sobre cómo trabajar en estos documentos:</p><ul><li> <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf">Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf</a></li><li> <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf">Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf</a></li><li> <a href="https://wiki.hotmaps.eu/uploads/GitFlow_Guidelines_CREM_2017-02-01.pdf">GitFlow_Guidelines_CREM_2017-02-01.pdf</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="description-of-it-infrastructure" href="#description-of-it-infrastructure"><i class="fa fa-link"></i></a> Descripción de la infraestructura de TI</h2><p> <strong>ReverseProxy_architecture_latest</strong></p><p> Todos los servicios y componentes se utilizan a través de su propio contenedor Docker. Todos estos contenedores se definen en un solo archivo docker-compose. La imagen de arriba representa la arquitectura de TI de Hotmaps.</p><p> Algunas organizaciones asociadas limitaron la comunicación al puerto 80 únicamente. Para evitar los problemas ocasionados por esta limitación, se realizó la creación de un proxy inverso. Este proxy inverso ofrece un único punto de entrada y luego distribuye la solicitud enviada por el cliente al servicio en cuestión. El proxy inverso se compone de tres componentes:</p><ol><li> Servidor proxy inverso: sirve como un punto de entrada único y distribuye las solicitudes a los servicios adecuados.</li><li> Proxy-gen: es un servicio que mapea automáticamente todos los servicios en el proxy inverso. Por lo tanto, no es necesario agregar manualmente un nuevo servicio a la configuración del proxy.</li><li> lets-encrypt: es un servicio que permite el uso del protocolo SSL. Es necesario para activar el protocolo https. Los certificados SSL están firmados por una dirección de correo electrónico configurada en este servicio.</li></ol><p> Existen tres redes:</p><ul><li> hotmaps_nginx permite que el proxy inverso se comunique con la API, la interfaz y el GeoServer. Principalmente permite distribuir una solicitud al servicio correcto entre los tres.</li><li> hotmaps_backend permite la comunicación entre todos los componentes del backend: API, frontend, GeoServer y la base de datos PostgreSQL.</li><li> hotmaps_cm-net permite la comunicación entre cada módulo de cálculo y la API.</li></ul><p> Cada módulo de cálculo tiene su propio contenedor Docker.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="run-with-docker" href="#run-with-docker"><i class="fa fa-link"></i></a> Ejecutar con Docker</h3><p> Hotmaps utiliza <a href="https://www.docker.com/">acoplable</a> software y <a href="https://docs.docker.com/compose/">estibador-Componer</a> herramienta para manejar contenedores. Un archivo docker-compose.yml contiene toda la configuración de la arquitectura Docker (configuración de contenedores, redes, enlaces, ...). Esto permite que los contenedores se ejecuten con un simple comando:</p><pre> <code class="language-shell">docker-compose up</code></pre><p> <em>Hay más información sobre docker-compose en el sitio web de Docker: <a href="https://docs.docker.com/compose/reference/">Redactar referencia de línea de comandos</a> y <a href="https://docs.docker.com/compose/compose-file/">Redactar referencia de archivo</a> .</em></p><p> Solo hay un contenedor que se ejecuta por separado de los demás: es la base de datos porque necesita estar activa todo el tiempo. Es por eso que no está en el archivo de configuración de docker-compose.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="server-infrastructure" href="#server-infrastructure"><i class="fa fa-link"></i></a> Infraestructura del servidor</h3><h4><a class="anchor" id="infrastructure" href="#infrastructure"><i class="fa fa-link"></i></a> Infraestructura</h4><p> Por el momento, el servidor está alojado en HES-SO en Suiza. Hay 2 máquinas disponibles: una para desarrollo (desarrollo y pruebas) y otra para producción (la caja de herramientas real, disponible en <a href="https://www.hotmaps.eu">www.hotmaps.eu</a> ).</p><p> Ambas máquinas tienen la misma especificación:</p><ul><li> CPU: Intel Xeon E5-2680 v4 (8) a 2,4 GHz)</li><li> RAM: 16 GB</li><li> Disco duro: 500 GB</li><li> SO: Ubutnu 16.04 LTS</li></ul><h4><a class="anchor" id="performance" href="#performance"><i class="fa fa-link"></i></a> Actuación</h4><p> Con frecuencia realizamos pruebas de rendimiento en el servidor de desarrollo para garantizar una cierta cantidad de usuarios concurrentes.</p><p> Como ejemplo, a continuación se muestran los resultados de la primera versión beta frente a las pruebas de versiones futuras. La nueva versión incluye algunas mejoras de rendimiento.</p><p> <em>Este ejemplo muestra las pruebas de rendimiento de usuarios concurrentes utilizando la misma función: &quot;curva de duración para la selección de hectáreas&quot;. La línea en negrita muestra el límite donde el servidor comienza a generar errores. La selección de hectáreas es un buen ejemplo, ya que muestra las consultas que requieren más recursos.</em></p><p> <strong>Versión beta de marzo de 2019</strong></p><p> | Número de usuarios simulados | Tiempo medio | Mediana | Tiempo máximo | Tiempo mínimo | Porcentaje de errores | | --------------------- | ------------ | ------ | -------- | -------- | -------------------- | | 1 | 1042 | 1042 | 1042 | 1042 | 0 | | 20 | 3608 | 3858 | 4475 | 2156 | 0 | | 50 | 7337 | 7595 | 11791 | 1568 | 0 | | 100 | 13897 | 13644 | 24492 | 1875 | 0 | | 200 | 27135 | 26380 | 51967 | 3045 | 0 | | <strong>300</strong> | 41237 | 43083 | 73245 | 3223 | <strong>10,67</strong> |</p><p> <strong>Versión final (agosto de 2020)</strong></p><p> | Número de usuarios simulados | Tiempo medio | Mediana | Tiempo máximo | Tiempo mínimo | Porcentaje de errores | | --------------------- | ------------ | ------ | -------- | -------- | -------------------- | | 1 | 1025 | 970 | 1151 | 956 | 0 | | 20 | 1671 | 1732 | 2085 | 1113 | 0 | | 50 | 3527 | 3622 | 5593 | 982 | 0 | | 100 | 6648 | 6764 | 11854 | 1118 | 0 | | 200 | 12904 | 12801 | 24163 | 1192 | 0 | | 300 | 19521 | 19382 | 38116 | 1060 | 0 |</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="read.me" href="#read.me"><i class="fa fa-link"></i></a> READ.ME</h2><p> <a href="Read.ME">Read.ME</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-define-indicators" href="#how-to-define-indicators"><i class="fa fa-link"></i></a> Cómo definir indicadores</h2><p> <a href="Guidelines-for-defining-indicators">Definición del indicador</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Cómo citar</h2><p> Daniel Hunacek, Lucien Zuber, Matthieu Dayer, en Hotmaps Wiki, Sección de desarrolladores (septiembre de 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autores y revisores</h2><p> Esta página fue escrita por Daniel Hunacek, Lucien Zuber y Matthieu Dayer ( <strong><a href="https://www.hevs.ch">HES-SO</a></strong> ).</p><p> ☑ Esta página fue revisada por Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencia</h2><p> Copyright © 2016-2020: Daniel Hunacek, Lucien Zuber y Matthieu Dayer</p><p> Licencia internacional Creative Commons Attribution 4.0</p><p> Este trabajo está autorizado bajo una licencia internacional Creative Commons CC BY 4.0.</p><p> Identificador de licencia SPDX: CC-BY-4.0</p><p> Texto de licencia: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconocimiento</h2><p> Queremos transmitir nuestro más profundo agradecimiento al <a href="https://www.hotmaps-project.eu">Proyecto Hotmaps</a> Horizonte 2020 (Acuerdo de subvención número 723677), que proporcionó los fondos para llevar a cabo la presente investigación.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Developers) (original) [Bulgarian](../bg/Developers)<sup>\*</sup> [Czech](../cs/Developers)<sup>\*</sup> [Danish](../da/Developers)<sup>\*</sup> [German](../de/Developers)<sup>\*</sup> [Greek](../el/Developers)<sup>\*</sup>  [Estonian](../et/Developers)<sup>\*</sup> [Finnish](../fi/Developers)<sup>\*</sup> [French](../fr/Developers)<sup>\*</sup> [Irish](../ga/Developers)<sup>\*</sup> [Croatian](../hr/Developers)<sup>\*</sup> [Hungarian](../hu/Developers)<sup>\*</sup> [Italian](../it/Developers)<sup>\*</sup> [Lithuanian](../lt/Developers)<sup>\*</sup> [Latvian](../lv/Developers)<sup>\*</sup> [Maltese](../mt/Developers)<sup>\*</sup> [Dutch](../nl/Developers)<sup>\*</sup> [Polish](../pl/Developers)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Developers)<sup>\*</sup> [Romanian](../ro/Developers)<sup>\*</sup> [Slovak](../sk/Developers)<sup>\*</sup> [Slovenian](../sl/Developers)<sup>\*</sup> [Swedish](../sv/Developers)<sup>\*</sup> 

<sup>\*</sup> machine translated