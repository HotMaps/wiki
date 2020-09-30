<h1><a class="anchor" id="cm-heat-source-potential" href="#cm-heat-source-potential"><i class="fa fa-link"></i></a>CM Potencial de fuente de calor</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Tabla de contenido</h2><ul><li> <a href="#in-a-glance">De un vistazo</a></li><li> <a href="#introduction">Introducción</a></li><li> <a href="#inputs-and-outputs">Entradas y salidas</a></li><li> <a href="#method">Método</a></li><li> <a href="#github-repository-of-this-calculation-module">Repositorio de GitHub de este módulo de cálculo</a></li><li> <a href="#sample-run">Ejecución de muestra</a></li><li> <a href="#how-to-cite">Cómo citar</a></li><li> <a href="#authors-and-reviewers">Autores y revisores</a></li><li> <a href="#license">Licencia</a></li><li> <a href="#acknowledgement">Reconocimiento</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> De un vistazo</h2><p> Este módulo tiene como objetivo resaltar la fuente de calor que se puede clasificar como: adecuada, condicionalmente adecuada y no adecuada para una explotación energética a nivel urbano.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introducción</h2><p> Potencialmente, en áreas urbanas o regionales, hay varios recursos que podrían usarse para proporcionar energía térmica (para fines de calefacción y / o refrigeración). Este módulo tiene como objetivo clasificar las diferentes fuentes de calor en función de su idoneidad. El módulo clasifica los sistemas en tres categorías principales: Adecuado, Condicionalmente adecuado, No adecuado. El módulo devuelve un mapa vectorial con los puntos clasificados y devuelve la potencia clasificada para cada clase. Este módulo genera un shapefile que clasifica el potencial de la fuente de calor en función de la distancia entre la fuente de calor y la demanda y en función de la capacidad de la fuente de calor. Cada fuente de calor se clasifica en tres clases principales:</p><ul><li> adecuado</li><li> condicionalmente adecuado</li><li> no adecuado.</li></ul><p> El módulo automatiza la metodología definida por:</p><p> Neugebauer, Georg, Florian Kretschmer, René Kollmann, Michael Narodoslawsky, Thomas Ertl y Gernot Stoeglehner. &#39;Mapeo de los potenciales de recursos de energía térmica de plantas de tratamiento de aguas residuales&#39;. Sostenibilidad 7, no. 10 (Septiembre de 2015): 12988–13010. <a href="https://doi.org/10.3390/su71012988">https://doi.org/10.3390/su71012988</a> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Entradas y salidas</h2><p> Los parámetros y capas de entrada, así como las capas y los parámetros de salida, son los siguientes.</p><p> <strong>Las capas de entrada y los parámetros son:</strong></p><ul><li><p> La capacidad de la fuente de calor, es un mapa vectorial con el flujo de agua que se puede extraer / utilizar de manera sostenible, expresado en población equivalente (PE). Las columnas obligatorias son: <code>gid</code> , <code>capacity</code> .</p></li><li><p> La potencia de la fuente de calor es un mapa vectorial con la potencia que se puede utilizar. Las columnas obligatorias son: <code>gid</code> , <code>capacity</code> , con <code>gid</code> que debe ser coherente con los valores utilizados en la capa de capacidad.</p></li><li><p> El usuario puede definir la distancia máxima para considerar la fuente de calor <strong>dentro de</strong> las áreas urbanas (valor predeterminado: 150 m): <code>within_dist</code> .</p></li><li><p> El usuario puede definir la distancia máxima para considerar la fuente de calor <strong>cerca de</strong> las áreas urbanas, todas las áreas por encima de este umbral se clasificarán como <strong>lejos</strong> de las áreas urbanas - (valor predeterminado: 1000m): <code>near_dist</code></p></li></ul><p> <strong>Las capas de salida y los parámetros son:</strong></p><ul><li> Mapa vectorial con el mapa de fuentes de calor clasificadas según la idoneidad.</li><li> Agrupe la potencia disponible según la clasificación de idoneidad.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Método</h2><p> Seguimos la metodología definida por:</p><p> Neugebauer, Georg, Florian Kretschmer, René Kollmann, Michael Narodoslawsky, Thomas Ertl y Gernot Stoeglehner. &#39;Mapeo de los potenciales de recursos de energía térmica de plantas de tratamiento de aguas residuales&#39;. Sostenibilidad 7, no. 10 (Septiembre de 2015): 12988–13010. <a href="https://doi.org/10.3390/su71012988.">https://doi.org/10.3390/su71012988</a></p><p> Como conjuntos de datos predeterminados utilizamos los <a href="https://gitlab.com/hotmaps/potential/WWTP/">conjuntos de datos de potencia y capacidad de</a> la <a href="https://gitlab.com/hotmaps/potential/WWTP/">PTAR</a> .</p><p> Las áreas urbanas se definen a partir del conjunto de datos Corine Land Cover, donde consideramos como urbanas las siguientes categorías:</p><ul><li> Tejido urbano continuo (clase 1.1.1.)</li><li> Tejido urbano discontinuo (clase 1.1.2.)</li><li> Unidades industriales o comerciales (clase 1.2.1.)</li></ul><p> Para definir las áreas urbanas, el módulo comienza con el conjunto de datos Corine Land Cover (CLC) y selecciona las siguientes categorías:</p><ul><li> Continuous_urban_fabric</li><li> Tejido_urbano_discontinuo</li><li> Unidades_industriales_o_comerciales</li></ul><p> Luego, para evaluar y clasificar el potencial, el módulo:</p><ul><li> Calcule el búfer alrededor de las fuentes de calor considerando las distancias seleccionadas por el usuario para considerar la fuente de calor dentro de las áreas urbanas, o cerca de las áreas urbanas;</li><li> extraer el número de píxeles que están contenidos en cada búfer para cada fuente de calor</li><li> Clasifique la fuente de calor con base en la siguiente matriz, si dentro de una cierta distancia hay al menos 25 ha de áreas urbanas.</li></ul><p> | | Dentro de ( <code>dist &lt; within_dist</code> ) | Cerca ( <code>dist &lt; near_dist</code> ) | Lejos ( <code>dist &gt; near_dist</code> ) | |: --------------------------------- |: ------------- ----------------- |: -------------------------- |: --- ---------------------- | | Pequeño (2000 - 5000 PE) | Condicionalmente | Condicionalmente | No apto | | Mediano-pequeño (5001 - 50000 PE) | Adecuado | Condicionalmente | Condicionalmente | | Medio-alto (50001 - 150000 PE) | Adecuado | Adecuado | Condicionalmente | | Alto (&gt; 150000 PE) | Adecuado | Adecuado | Adecuado |</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repositorio de GitHub de este módulo de cálculo</h2><p> <a href="https://github.com/HotMaps/heatsource_potential/tree/develop">Aquí</a> obtiene el desarrollo de vanguardia para este módulo de cálculo.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Ejecución de muestra</h2><img alt="Fig. 1-0" src="https://wiki.hotmaps.hevs.ch/en/CM-Heatsource-potential/cm-heat.png" title="Ejecute el CM de fuente de calor"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Cómo citar</h2><p> Pietro Zambelli, en Hotmaps-Wiki, CM-Heatsource-potencial (septiembre de 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autores y revisores</h2><p> Esta página fue escrita por Pietro Zambelli <strong><a href="http://www.eurac.edu">EURAC</a></strong> .</p><p> ☑ Esta página fue revisada por Simon Pezzutto <strong><a href="http://www.eurac.edu">EURAC</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencia</h2><p> Copyright © 2016-2020: Pietro Zambelli</p><p> Licencia internacional Creative Commons Attribution 4.0</p><p> Este trabajo está autorizado bajo una licencia internacional Creative Commons CC BY 4.0.</p><p> Identificador de licencia SPDX: CC-BY-4.0</p><p> Texto de licencia: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconocimiento</h2><p> Nos gustaría transmitir nuestro más profundo agradecimiento al Proyecto Hotmaps Horizon 2020 (Acuerdo de subvención número 723677), que proporcionó los fondos para llevar a cabo la presente investigación.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Heat-source-potential) (original) [Bulgarian](../bg/CM-Heat-source-potential)<sup>\*</sup> [Czech](../cs/CM-Heat-source-potential)<sup>\*</sup> [Danish](../da/CM-Heat-source-potential)<sup>\*</sup> [German](../de/CM-Heat-source-potential)<sup>\*</sup> [Greek](../el/CM-Heat-source-potential)<sup>\*</sup>  [Estonian](../et/CM-Heat-source-potential)<sup>\*</sup> [Finnish](../fi/CM-Heat-source-potential)<sup>\*</sup> [French](../fr/CM-Heat-source-potential)<sup>\*</sup> [Irish](../ga/CM-Heat-source-potential)<sup>\*</sup> [Croatian](../hr/CM-Heat-source-potential)<sup>\*</sup> [Hungarian](../hu/CM-Heat-source-potential)<sup>\*</sup> [Italian](../it/CM-Heat-source-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-source-potential)<sup>\*</sup> [Latvian](../lv/CM-Heat-source-potential)<sup>\*</sup> [Maltese](../mt/CM-Heat-source-potential)<sup>\*</sup> [Dutch](../nl/CM-Heat-source-potential)<sup>\*</sup> [Polish](../pl/CM-Heat-source-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-source-potential)<sup>\*</sup> [Romanian](../ro/CM-Heat-source-potential)<sup>\*</sup> [Slovak](../sk/CM-Heat-source-potential)<sup>\*</sup> [Slovenian](../sl/CM-Heat-source-potential)<sup>\*</sup> [Swedish](../sv/CM-Heat-source-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated