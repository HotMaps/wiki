<h1><a class="anchor" id="database-behind-the-hotmaps-toolbox" href="#database-behind-the-hotmaps-toolbox"><i class="fa fa-link"></i></a>Baza de date din spatele casetei de instrumente Hotmaps</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Cuprins</h2><ul><li> <a href="#introduction">Introducere</a></li><li> <a href="#query">Interogare</a></li><li> <a href="#indicators">Indicatori</a></li><li> <a href="#technologies">Tehnologii</a></li><li> <a href="#references">Referințe</a></li><li> <a href="#how-to-cite">Cum se citează</a></li><li> <a href="#authors-and-reviewers">Autori și recenzori</a></li><li> <a href="#license">Licență</a></li><li> <a href="#acknowledgement">Confirmare</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introducere</h2><p> Baza de date construită pentru Hotmaps este un depozit spațial de date pus la dispoziția platformei pentru vizualizare și calcul.</p><p> Există diferite tipuri de date:</p><ul><li> seturi de date raster (la nivel de hectar)</li><li> seturi de date vectoriale (regiuni NUTS / LAU, puncte de interes, ...)</li><li> seturi de date non-spațiale (în principal legate de NUTS / LAU și legate de straturile vectoriale existente)</li></ul><p> Seturile de date pot fi accesate printr-un server geospațial (GeoServer) care oferă diferite servicii (WMS / WFS / ...) care permite oricui să afișeze, să includă sau să utilizeze acele seturi de date.</p><p> <a href="https://gitlab.com/hotmaps">Seturile de</a> date pot fi găsite în <a href="https://gitlab.com/hotmaps">depozitul Gitlab</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="query" href="#query"><i class="fa fa-link"></i></a> Interogare</h2><p> Vă rugăm să rețineți că agregările atunci când selectați regiunile NUTS sau LAU sunt precalculate și, prin urmare, mai rapide decât agregările de selecții de hectare, care sunt calculate din mers.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Indicatori</h2><p> Indicatorii sunt definiți <strong><a href="https://github.com/HotMaps/Hotmaps-toolbox-service/blob/develop/api/app/models/indicators.py">aici</a></strong> . În funcție de straturi, diferiți parametri statistici, cum ar fi valoarea minimă, valoarea maximă și valoarea medie sunt printre indicatori. O explicație a definirii indicatorilor pentru straturile integrate în baza de date Hotmaps poate fi găsită <strong><a href="https://github.com/HotMaps/Hotmaps-toolbox-service/blob/develop/api/app/models/INDICATORS.md">aici</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="technologies" href="#technologies"><i class="fa fa-link"></i></a> Tehnologii</h2><p> Tehnologiile utilizate pentru baza de date sunt:</p><ul><li> PostgreSQL versiunea 9.6</li><li> Versiunea PostGIS 2.3</li><li> Versiunea GeoServer 2.11.2</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referințe</h2><ul><li> Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Mueller (e-think), Michael Hartner (TUW), Tobias Fleiter , Anna-Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Revizuit de Lukas Kranzl, Proiectul Hotmaps Sara Fritz (TUW), <strong>Raport D2.3 WP2 - Set de date deschise pentru UE28, 2018</strong> <a href="http://www.hotmaps-project.eu/wp-content/uploads/2018/05/D2.3-Hotmaps_FINAL-VERSION_for-upload.pdf">www.hotmaps-project.eu</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Cum se citează</h2><p> Daniel Hunacek și Lucien Zuber, în Hotmaps Wiki, Baza de date din spatele cutiei de instrumente Hotmaps (septembrie 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori și recenzori</h2><p> Această pagină a fost scrisă de Daniel Hunacek și Lucien Zuber <strong><a href="https://www.hevs.ch">HES-SO</a></strong> .</p><p> ☑ Această pagină a fost revizuită de Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licență</h2><p> Copyright © 2016-2020: Daniel Hunacek, Lucien Zuber</p><p> Licență internațională Creative Commons Attribution 4.0</p><p> Această lucrare este licențiată sub o licență internațională Creative Commons CC BY 4.0.</p><p> Identificator licență SPDX: CC-BY-4.0</p><p> Text-licență: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Confirmare</h2><p> Dorim să transmitem cea mai profundă apreciere pentru <a href="https://www.hotmaps-project.eu">Proiectul Hotmaps</a> Horizon 2020 (Acordul de subvenționare numărul 723677), care a furnizat finanțarea pentru realizarea prezentei investigații</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Database-behind-the-Hotmaps-toolbox) (original) [Bulgarian](../bg/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Czech](../cs/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Danish](../da/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [German](../de/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Greek](../el/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Spanish](../es/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Estonian](../et/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Finnish](../fi/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [French](../fr/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Irish](../ga/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Croatian](../hr/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Hungarian](../hu/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Italian](../it/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Lithuanian](../lt/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Latvian](../lv/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Maltese](../mt/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Dutch](../nl/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Polish](../pl/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup>  [Slovak](../sk/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Slovenian](../sl/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> [Swedish](../sv/Database-behind-the-Hotmaps-toolbox)<sup>\*</sup> 

<sup>\*</sup> machine translated