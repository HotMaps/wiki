<h1><a class="anchor" id="database-behind-the-hotmaps-toolbox" href="#database-behind-the-hotmaps-toolbox"><i class="fa fa-link"></i></a>Database achter de Hotmaps-toolbox</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Inhoudsopgave</h2><ul><li> <a href="#introduction">Invoering</a></li><li> <a href="#query">Vraag</a></li><li> <a href="#indicators">Indicatoren</a></li><li> <a href="#technologies">Technologieën</a></li><li> <a href="#references">Referenties</a></li><li> <a href="#how-to-cite">Hoe te citeren</a></li><li> <a href="#authors-and-reviewers">Auteurs en recensenten</a></li><li> <a href="#license">Licentie</a></li><li> <a href="#acknowledgement">Erkenning</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Invoering</h2><p> De database die voor Hotmaps is gebouwd, is een ruimtelijk datawarehouse dat ter beschikking wordt gesteld van het platform voor visualisatie- en rekendoeleinden.</p><p> Er zijn verschillende soorten gegevens:</p><ul><li> rasterdatasets (op hectareniveau)</li><li> vector datasets (NUTS / LAU-regio&#39;s, interessante plaatsen, ...)</li><li> niet-ruimtelijke datasets (meestal NUTS / LAU gerelateerd en gekoppeld aan bestaande vectorlagen)</li></ul><p> De datasets zijn toegankelijk via een geospatiale server (GeoServer) die verschillende services (WMS / WFS / ...) biedt waarmee iedereen die datasets kan weergeven, opnemen of gebruiken.</p><p> De datasets zijn te vinden op de <a href="https://gitlab.com/hotmaps">Gitlab-repository</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="query" href="#query"><i class="fa fa-link"></i></a> Vraag</h2><p> Houd er rekening mee dat aggregaties bij het selecteren van NUTS- of LAU-regio&#39;s vooraf worden berekend en daarom sneller zijn dan aggregaties van hectareselecties, die on-the-fly worden berekend.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Indicatoren</h2><p> Indicatoren worden <strong><a href="https://github.com/HotMaps/Hotmaps-toolbox-service/blob/develop/api/app/models/indicators.py">hier</a></strong> gedefinieerd. Afhankelijk van de lagen behoren verschillende statistische parameters zoals minimumwaarde, maximumwaarde en gemiddelde waarde tot de indicatoren. Een uitleg van het definiëren van indicatoren voor de lagen die in de Hotmaps-database zijn geïntegreerd, vindt u <strong><a href="https://github.com/HotMaps/Hotmaps-toolbox-service/blob/develop/api/app/models/INDICATORS.md">hier</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="technologies" href="#technologies"><i class="fa fa-link"></i></a> Technologieën</h2><p> De technologieën die voor de database worden gebruikt, zijn:</p><ul><li> PostgreSQL versie 9.6</li><li> PostGIS versie 2.3</li><li> GeoServer versie 2.11.2</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referenties</h2><ul><li> Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Mueller (e-think), Michael Hartner (TUW), Tobias Fleiter , Anna-Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Beoordeeld door Lukas Kranzl, Sara Fritz (TUW) Hotmaps Project, <strong>D2.3 WP2-rapport - Open dataset voor de EU28, 2018</strong> <a href="http://www.hotmaps-project.eu/wp-content/uploads/2018/05/D2.3-Hotmaps_FINAL-VERSION_for-upload.pdf">www.hotmaps-project.eu</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hoe te citeren</h2><p> Daniel Hunacek en Lucien Zuber, in Hotmaps Wiki, Database achter de Hotmaps-toolbox (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Auteurs en recensenten</h2><p> Deze pagina is geschreven door Daniel Hunacek en Lucien Zuber <strong><a href="https://www.hevs.ch">HES-SO</a></strong> .</p><p> ☑ Deze pagina is beoordeeld door Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licentie</h2><p> Copyright © 2016-2020: Daniel Hunacek, Lucien Zuber</p><p> Creative Commons Attribution 4.0 Internationale licentie</p><p> Dit werk is gelicentieerd onder een Creative Commons CC BY 4.0 internationale licentie.</p><p> SPDX-licentie-ID: CC-BY-4.0</p><p> Licentie-tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Erkenning</h2><p> We willen onze diepste waardering <a href="https://www.hotmaps-project.eu">uitspreken</a> voor het Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-project</a> (subsidieovereenkomst nummer 723677), dat de financiering heeft verstrekt om het huidige onderzoek uit te voeren</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Database-behind-the-Hotmaps-toolbox) (original) [Bulgarian](../bg/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Czech](../cs/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Danish](../da/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [German](../de/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Greek](../el/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Spanish](../es/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Estonian](../et/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Finnish](../fi/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [French](../fr/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Irish](../ga/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Croatian](../hr/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Hungarian](../hu/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Italian](../it/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Lithuanian](../lt/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Latvian](../lv/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Maltese](../mt/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup>  [Polish](../pl/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Romanian](../ro/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Slovak](../sk/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Slovenian](../sl/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Swedish](../sv/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> 

<sup>\*</sup> machine translated