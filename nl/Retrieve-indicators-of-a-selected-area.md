<h1><a class="anchor" id="retrieve-indicators-of-a-selected-area" href="#retrieve-indicators-of-a-selected-area"><i class="fa fa-link"></i></a>Haal indicatoren op van een geselecteerd gebied</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Inhoudsopgave</h2><ul><li> <a href="#introduction">Invoering</a></li><li> <a href="#indicators-for-raster-layers">Indicatoren voor rasterlagen</a><ul><li> <a href="#indicators-for-raster-layers_buildings">Gebouwen</a></li><li> <a href="#indicators-for-raster-layers_population">Bevolking</a></li><li> <a href="#indicators-for-raster-layers_renewable-energy-source-potentials">Potentieel voor hernieuwbare energiebronnen</a></li></ul></li><li> <a href="#indicators-for-vector-layers">Indicatoren voor vectorlagen</a><ul><li> <a href="#indicators-for-vector-layers_industry">Industrie</a></li><li> <a href="#indicators-for-vector-layers_renewable-energy-source-potentials">Potentieel voor hernieuwbare energiebronnen</a></li><li> <a href="#indicators-for-vector-layers_electricity">Elektriciteit</a></li></ul></li><li> <a href="#example">Voorbeeld</a></li><li> <a href="#how-to-cite">Hoe te citeren</a></li><li> <a href="#authors-and-reviewers">Auteurs en recensenten</a></li><li> <a href="#license">Licentie</a></li><li> <a href="#acknowledgement">Erkenning</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Invoering</h2><p> Afhankelijk van de lagen en regio die u heeft geselecteerd, worden indicatoren voor uw configuratie weergegeven in een zijbalk aan de rechterkant van uw scherm</p><p><img alt="results.png" src="../images/general_tool_functionalities_and_structure/results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><p> Hieronder kijken we naar de indicatoren die worden weergegeven voor raster- en vectorlagen.</p><h2><a class="anchor" id="indicators-for-raster-layers" href="#indicators-for-raster-layers"><i class="fa fa-link"></i></a> Indicatoren voor rasterlagen</h2><p> De indicatoren op rasterlagen verschillen van vectorlagen. Met verschillend bedoelen we in termen van aggregatie en disaggregatie. Dit andere gedrag komt voort uit territoriale resoluties.</p><p> Rasterlagen hebben over het algemeen een veel hogere resolutie, terwijl vectorlagen alleen attributen hebben op punten of polygonen.</p><p> Dat betekent enerzijds dat als u bijvoorbeeld een vectorlaag selecteert die wordt gedefinieerd door NUTS3-polygonen en u wilt bijvoorbeeld een LAU-regio selecteren, de NUTS3-waarde niet wordt uitgesplitst naar LAU-niveau, in plaats daarvan de NUTS3-indicator waar dit De LAU-regio wordt weergegeven in de zijbalk met resultaten.</p><p> Aan de andere kant worden rasterlagen geaggregeerd en &quot;willekeurig&quot; gedesaggregeerd *</p><p> * door de bevattende cellen binnen de regio die u hebt geselecteerd (uiteraard binnen de limiet van de rasterresolutie zelf)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="buildings" href="#buildings"><i class="fa fa-link"></i></a> Gebouwen</h3><p> <strong>Warmtedichtheidskaart</strong></p><p><img alt="hdm.png" src="../images/general_tool_functionalities_and_structure/hdm.png"/></p><p> <strong>Extra functie</strong></p><p> Als u de warmtedichtheidslaag en de populatielaag tegelijkertijd selecteert, wordt een extra indicator getoond (zie onderstaande afbeelding)</p><p><img alt="hdm2.png" src="../images/general_tool_functionalities_and_structure/hdm2.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="in-general-" href="#in-general-"><i class="fa fa-link"></i></a> In het algemeen:</h3><p> Wanneer een van de bouwlagen en de populatielaag tegelijk wordt geselecteerd, wordt een extra indicator getoond zoals eerder beschreven</p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Kaart koeldichtheid</strong></p><p><img alt="cdm.png" src="../images/general_tool_functionalities_and_structure/cdm.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Volumes bouwen</strong></p><p><img alt="bvol.png" src="../images/general_tool_functionalities_and_structure/bvol.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Bruto vloeroppervlak</strong></p><p><img alt="gfa.png" src="../images/general_tool_functionalities_and_structure/gfa.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> Bevolking</h3><p><img alt="pop.png" src="../images/general_tool_functionalities_and_structure/pop.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Klimaat</h3><p> <strong>Temperatuur</strong></p><p><img alt="temp.png" src="../images/general_tool_functionalities_and_structure/temp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Koelgraaddagen</strong></p><p><img alt="cdd.png" src="../images/general_tool_functionalities_and_structure/cdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Verwarmingsgraad Dagen</strong></p><p><img alt="hdd.png" src="../images/general_tool_functionalities_and_structure/hdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Zonnestraling</strong></p><p><img alt="rad.png" src="../images/general_tool_functionalities_and_structure/rad.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Windsnelheid</strong></p><p><img alt="wind.png" src="../images/general_tool_functionalities_and_structure/wind.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Potentieel voor hernieuwbare energiebronnen</h3><p> <strong>Zonnestraling op voetafdruk van gebouwen</strong></p><p><img alt="srobf.png" src="../images/general_tool_functionalities_and_structure/srobf.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Windpotentieel op 50m</strong></p><p><img alt="wp.png" src="../images/general_tool_functionalities_and_structure/wp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Bosresten</strong></p><p><img alt="forest.png" src="../images/general_tool_functionalities_and_structure/forest.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicators-for-vector-layers" href="#indicators-for-vector-layers"><i class="fa fa-link"></i></a> Indicatoren voor vectorlagen</h2><h3><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Industrie</h3><p> <strong>Emissies van industriële locaties</strong><img alt="ise.png" src="../images/general_tool_functionalities_and_structure/ise.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Overtollige warmte op industriële locatie</strong><img alt="iseh.png" src="../images/general_tool_functionalities_and_structure/iseh.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Bedrijfsnaam van de industriële site</strong><img alt="isec.png" src="../images/general_tool_functionalities_and_structure/isec.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Subsector industrieterrein</strong><img alt="ises.png" src="../images/general_tool_functionalities_and_structure/ises.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Potentieel voor hernieuwbare energiebronnen</h3><p> <strong>Afvalwaterzuiveringsinstallaties Power</strong></p><p><img alt="wwp.png" src="../images/general_tool_functionalities_and_structure/wwp.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Capaciteit van afvalwaterzuiveringsinstallaties</strong></p><p><img alt="wwc.png" src="../images/general_tool_functionalities_and_structure/wwc.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Agrarische residuen</strong></p><p><img alt="ar.png" src="../images/general_tool_functionalities_and_structure/ar.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Afvalwater van vee</strong></p><p><img alt="le.png" src="../images/general_tool_functionalities_and_structure/le.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Vast stedelijk afval</strong></p><p><img alt="sw.png" src="../images/general_tool_functionalities_and_structure/sw.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Geothermische potentiële warmtegeleiding</strong></p><p><img alt="geothermische.png" src="../images/general_tool_functionalities_and_structure/geothermal.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity" href="#electricity"><i class="fa fa-link"></i></a> Elektriciteit</h3><p> <strong>Elektriciteit C02-uitstoot</strong></p><p><img alt="elektriciteit.png" src="../images/general_tool_functionalities_and_structure/electricity.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="example" href="#example"><i class="fa fa-link"></i></a> Voorbeeld</h2><p> In de onderstaande afbeelding kun je zien hoe het eruit ziet als alle lagen zijn gevisualiseerd (hier is Oostenrijk als NUTS0 geselecteerd)</p><p><img alt="all_map.png" src="../images/general_tool_functionalities_and_structure/all_map.png"/></p><p> Hoewel deze kaart er op het eerste gezicht wat verwarrend uitziet, zijn de indicatoren duidelijk geïllustreerd. Zie hieronder alle indicatoren die worden beschreven in de resultatenzijbalk wanneer u alle lagen voor Oostenrijk selecteert (NUTS0)</p><p><img alt="all_results.png" src="../images/general_tool_functionalities_and_structure/all_results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hoe te citeren</h2><p> Jeton Hasani, in Hotmaps-Wiki, Retrieve-indicators-of-a-selected-area (april 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Auteurs en recensenten</h2><p> Deze pagina is geschreven door Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Deze pagina is beoordeeld door Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licentie</h2><p> Auteursrecht © 2016-2020: Jeton Hasani</p><p> Creative Commons Attribution 4.0 Internationale licentie</p><p> Dit werk is gelicentieerd onder een Creative Commons CC BY 4.0 internationale licentie.</p><p> SPDX-licentie-ID: CC-BY-4.0</p><p> Licentie-tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Erkenning</h2><p> We willen onze diepste waardering <a href="https://www.hotmaps-project.eu">uitspreken</a> voor het Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-project</a> (subsidieovereenkomst nummer 723677), dat de financiering heeft verstrekt om het huidige onderzoek uit te voeren.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> <code><a href="Indicator-Section/_edit">Review this page</a></code></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Retrieve-indicators-of-a-selected-area) (original) [Bulgarian](../bg/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Czech](../cs/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Danish](../da/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [German](../de/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Greek](../el/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Spanish](../es/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Estonian](../et/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Finnish](../fi/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [French](../fr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Irish](../ga/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Croatian](../hr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Hungarian](../hu/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Italian](../it/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Lithuanian](../lt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Latvian](../lv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Maltese](../mt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup>  [Polish](../pl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Romanian](../ro/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovak](../sk/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovenian](../sl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Swedish](../sv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> 

<sup>\*</sup> machine translated