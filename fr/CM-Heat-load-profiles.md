<h1><a class="anchor" id="cm-heat-load-profiles" href="#cm-heat-load-profiles"><i class="fa fa-link"></i></a>Profils de charge thermique CM</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Table des matières</h2><ul><li> <a href="#in-a-glance">En un coup d&#39;oeil</a></li><li> <a href="#introduction">introduction</a></li><li> <a href="#inputs-and-outputs">Entrées et sorties</a><ul><li> <a href="#inputs-and-outputs_input-layers-and-parameters">Couches et paramètres d&#39;entrée</a></li><li> <a href="#inputs-and-outputs_output">Production</a></li></ul></li><li> <a href="#method">Méthode</a><ul><li> <a href="#method_overview">Aperçu</a></li><li> <a href="#method_details">Détails</a></li><li> <a href="#method_implementation">la mise en oeuvre</a></li></ul></li><li> <a href="#github-repository-of-this-calculation-module">Dépôt GitHub de ce module de calcul</a></li><li> <a href="#sample-run">Exemple d&#39;exécution</a></li><li> <a href="#how-to-cite">Comment citer</a></li><li> <a href="#authors-and-reviewers">Auteurs et relecteurs</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Reconnaissance</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> En un coup d&#39;oeil</h2><p> Ce module génère des profils de charge de la demande de chauffage des locaux et de production d&#39;eau chaude pour une région sélectionnée. Il utilise des profils de charge par défaut pour le secteur résidentiel et tertiaire au niveau NUTS2 et l&#39;adapte à une demande donnée dans ces secteurs et fournit les profils de charge séparés pour le chauffage des locaux et la production d&#39;eau chaude.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> introduction</h2><p> Hotmaps fournit des profils de charge thermique génériques et spécifiques à l&#39;année au niveau NUTS2. L&#39;utilisateur peut souhaiter adapter les profils par défaut en fonction des informations dont il dispose. Ce module de calcul permet de mettre à l&#39;échelle différents éléments constitutifs des profils vers le haut ou vers le bas et d&#39;obtenir un nouveau profil.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Entrées et sorties</h2><h3><a class="anchor" id="input-layers-and-parameters" href="#input-layers-and-parameters"><i class="fa fa-link"></i></a> Couches et paramètres d&#39;entrée</h3><p> Plusieurs couches et profils sont utilisés à partir de l&#39;ensemble de données par défaut des Hotmaps:</p><ul><li> Secteur résidentiel de densité thermique</li><li> Densité thermique secteur non résidentiel</li><li> Surface de plancher brute résidentielle</li><li> Surface de plancher brute non résidentielle</li><li> Base de données industrielle</li><li> Profils de charge pour l&#39;industrie</li><li> Profils de charge pour le chauffage résidentiel</li><li> Profils de charge pour le chauffage tertiaire</li><li> Profils de charge pour l&#39;eau chaude sanitaire résidentielle</li><li> Profils de charge pour l&#39;eau chaude sanitaire tertiaire</li></ul><h3><a class="anchor" id="user-inputs" href="#user-inputs"><i class="fa fa-link"></i></a> Entrées utilisateur</h3><p> L&#39;utilisateur doit fournir les paramètres suivants:</p><ul><li> <strong>Facteur de chauffage résidentiel</strong> : La demande de chauffage résidentiel est multipliée par ce facteur.</li><li> <strong>Facteur de chauffage tertiaire</strong> : La demande de chauffage tertiaire est multipliée par ce facteur.</li><li> <strong>Facteur d&#39;alimentation en eau chaude résidentielle</strong> : La demande d&#39;eau chaude résidentielle est multipliée par ce facteur.</li><li> <strong>Facteur d&#39;approvisionnement en eau chaude tertiaire</strong> : La demande en eau chaude tertiaire est multipliée par ce facteur.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="output" href="#output"><i class="fa fa-link"></i></a> Production</h3><h4><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Indicateurs</h4><ul><li> <strong>Demande de chaleur par industrie</strong> : demande de chaleur annuelle par industrie dans la zone sélectionnée.</li><li> <strong>Demande de chaleur par chauffage résidentiel</strong> : <strong>chauffage</strong> annuel requis pour le chauffage résidentiel dans la zone sélectionnée.</li><li> <strong>Demande de chaleur par approvisionnement en eau chaude résidentielle</strong> : <strong>Chauffage</strong> annuel requis pour l&#39;approvisionnement en eau chaude résidentielle dans la zone sélectionnée.</li><li> <strong>Demande de chaleur par chauffage du secteur tertiaire</strong> : Chaleur annuelle requise pour le chauffage du secteur tertiaire dans la zone sélectionnée.</li><li> <strong>Demande de chaleur par l&#39;approvisionnement en eau chaude du secteur tertiaire</strong> : Chaleur annuelle requise pour l&#39;approvisionnement en eau chaude du secteur tertiaire dans la zone sélectionnée.</li><li> <strong>Demande de tête totale</strong> : Chaleur totale annuelle requise dans la zone sélectionnée.</li></ul><h4><a class="anchor" id="graphics" href="#graphics"><i class="fa fa-link"></i></a> Graphique</h4><ul><li> <strong>Profils de demande de chaleur</strong> : Un graphique montrant les indicateurs énumérés ci-dessus au cours de l&#39;année.</li></ul><p> L&#39;axe des x représente le temps et l&#39;axe des y montre la puissance en MW. Il peut être utile de masquer certains secteurs pour mieux en voir d&#39;autres. Cela peut être fait en double-cliquant sur la légende.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Méthode</h2><h3><a class="anchor" id="overview" href="#overview"><i class="fa fa-link"></i></a> Aperçu</h3><p> Les profils de charge correspondants sont attribués aux sites industriels, aux bâtiments résidentiels et tertiaires dans la sélection de l&#39;utilisateur.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="details" href="#details"><i class="fa fa-link"></i></a> Détails</h3><h4><a class="anchor" id="residential-warm-water-supply" href="#residential-warm-water-supply"><i class="fa fa-link"></i></a> Approvisionnement en eau chaude résidentielle</h4><p> Sur la base de la surface de plancher brute des bâtiments résidentiels et de leur ID NUTS 0, l&#39;énergie utilisée pour l&#39;approvisionnement en eau chaude est calculée à l&#39;aide de la liste suivante. À l&#39;aide de l&#39;ID NUTS 2 de la zone sélectionnée, un profil de charge est attribué. L&#39;alimentation en eau chaude résidentielle est multipliée par le facteur d&#39;alimentation en eau chaude résidentielle au cas où l&#39;utilisateur souhaite ajuster la valeur.</p><p> <em>Énergie spécifique par zone pour l&#39;approvisionnement en eau chaude dans les bâtiments résidentiels dans différents pays</em></p><p> | Nuts0 ID | Alimentation en eau chaude en kWh / m² / a | | ------------- |: -------------: | | AT | 21,67 | | BE | 31,95 | | BG | 12,93 | | HR | 21,38 | | CY | 8,80 | | CZ | 22,83 | | DK | 9,64 | | EE | 14,35 | | FI | 10,15 | | FR | 9,66 | | DE | 8,27 | | EL | 12,51 | | HU | 13,66 | | IE | 15,91 | | IT | 14.01 | | LV | 15,71 | | LT | 13,36 | | LU | 8,29 | | MT | 10,99 | | NL | 8,91 | | PL | 10,00 | | PT | 9,48 | | RO | 11,48 | | SK | 21,51 | | SI | 21,74 | | ES | 23,34 | | SE | 13,54 | | UK | 49.03 |</p><h4><a class="anchor" id="residential-heating" href="#residential-heating"><i class="fa fa-link"></i></a> Chauffage résidentiel</h4><p> La densité de la demande de chaleur pour le secteur résidentiel est utilisée. Étant donné que cet ensemble de données contient déjà l&#39;énergie utilisée pour l&#39;eau chaude, l&#39;énergie de l&#39;eau chaude calculée précédemment en est soustraite. Sur la base de l&#39;ID NUTS 2, un profil de chauffage résidentiel est attribué pour chaque tuile de la densité de chaleur dans la sélection de l&#39;utilisateur. Le chauffage résidentiel est multiplié par le facteur de chauffage résidentiel au cas où l&#39;utilisateur souhaite ajuster la valeur.</p><h4><a class="anchor" id="tertiary-warm-water-supply" href="#tertiary-warm-water-supply"><i class="fa fa-link"></i></a> Approvisionnement en eau chaude tertiaire</h4><p> Comme pour l&#39;approvisionnement en eau chaude résidentielle, l&#39;énergie nécessaire est calculée à l&#39;aide d&#39;un tableau. Avec l&#39;ID NUTS 2 d&#39;une zone spécifique, un profil de charge est attribué. L&#39;approvisionnement en eau chaude tertiaire est multiplié par le facteur d&#39;alimentation en eau chaude tertiaire au cas où l&#39;utilisateur souhaite ajuster la valeur.</p><p> <em>Énergie spécifique par zone pour l&#39;approvisionnement en eau chaude dans les bâtiments tertiaires dans différents pays</em></p><p> | Nuts0 ID | Alimentation en eau chaude en kWh / m² / a | | ------------- |: -------------: | | AT | 6,57 | | BE | 13,88 | | BG | 15,88 | | HR | 9,42 | | CY | 6,26 | | CZ | 9,18 | | DK | 8,03 | | EE | 14.13 | | FI | 10,52 | | FR | 9,57 | | DE | 3,05 | | EL | 6,99 | | HU | 9,51 | | IE | 10,87 | | IT | 5,62 | | LV | 7,16 | | LT | 10,46 | | LU | 7,20 | | MT | 10,45 | | NL | 6,89 | | PL | 9,55 | | PT | 21,47 | | RO | 13,85 | | SK | 8,49 | | SI | 27,73 | | ES | 12,44 | | SE | 19,62 | | UK | 13,45 |</p><h4><a class="anchor" id="tertiary-heating" href="#tertiary-heating"><i class="fa fa-link"></i></a> Chauffage tertiaire</h4><p> Le chauffage tertiaire est calculé de manière similaire au chauffage résidentiel. Le chauffage tertiaire est multiplié par le facteur de chauffage tertiaire au cas où l&#39;utilisateur souhaite ajuster la valeur.</p><h4><a class="anchor" id="industrial-heat-demand" href="#industrial-heat-demand"><i class="fa fa-link"></i></a> Demande de chaleur industrielle</h4><p> La demande de chaleur par industrie est recherchée dans la base de données industrielle et, sur la base de l&#39;ID NUTS 0 et du sous-secteur, un profil de charge est attribué.</p><h4><a class="anchor" id="summation" href="#summation"><i class="fa fa-link"></i></a> Addition</h4><p> Les cinq profils résultants sont agrégés de manière absolue pour obtenir le profil final.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="implementation" href="#implementation"><i class="fa fa-link"></i></a> la mise en oeuvre</h3><h4><a class="anchor" id="load-profiles" href="#load-profiles"><i class="fa fa-link"></i></a> Profils de charge</h4><p> Les profils de charge mentionnés se composent de 8760 points qui représentent la charge pour chaque heure des 365 jours. Vous trouverez ici de plus amples informations sur les <strong><a href="https://gitlab.com/hotmaps/load_profile">profils de charge.</a></strong> Tous les profils de charge sont normalisés pour que l&#39;intégrale soit égale à 1.</p><h4><a class="anchor" id="industrial-sites" href="#industrial-sites"><i class="fa fa-link"></i></a> Sites industriels</h4><p> Les sources de chaleur sont extraites de la <strong><a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">base de données industrielle.</a></strong> Sur la base de leur excès de chaleur, NUTS 0 ID et secteur industriel un profil de charge couvrant toutes les heures de l&#39;année est créé pour chaque site.</p><h4><a class="anchor" id="heat-densities" href="#heat-densities"><i class="fa fa-link"></i></a> Densités de chaleur</h4><p> La densité de la demande de chaleur des secteurs résidentiel et non résidentiel sont des fichiers raster que vous pouvez trouver <strong><a href="https://gitlab.com/hotmaps/heat">ici.</a></strong></p><h4><a class="anchor" id="gross-floor-areas" href="#gross-floor-areas"><i class="fa fa-link"></i></a> Surfaces de plancher brutes</h4><p> La surface de plancher brute résidentielle et la surface de plancher brute non résidentielle sont des fichiers raster qui peuvent être trouvés <strong><a href="https://gitlab.com/hotmaps/gfa_res_curr_density">ici</a></strong> et <strong><a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">ici.</a></strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Dépôt GitHub de ce module de calcul</h2><p> <a href="https://github.com/HotMaps/load_profile_cm">Ici,</a> vous obtenez le développement de pointe pour ce module de calcul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Exemple d&#39;exécution</h2><p> Échantillon exécuté dans DK05.</p><figure><img alt="" src="../images/cm_load_profile/sample_run.PNG"/><figcaption><i></i></figcaption></figure><p> Échantillon exécuté dans DK05. Seule la zone bleue sélectionnée est prise en compte.</p><figure><img alt="" src="../images/cm_load_profile/profile.PNG"/><figcaption><i></i></figcaption></figure><p> Graphique montrant la demande de chaleur des différents secteurs sur l&#39;année.</p><p> Les données de ce graphique peuvent être exportées en appuyant sur le bouton &quot;EXPORTER DES GRAPHIQUES&quot;.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Comment citer</h2><p> Ali Aydemir et David Schilling, dans Hotmaps Wiki, CM Heat load profiles (septembre 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Auteurs et relecteurs</h2><p> Cette page a été écrite par Ali Aydemir et David Schilling ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> ☑ Cette page a été révisée par Tobias Fleiter ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Copyright © 2016-2020: Ali Aydemir et David Schilling</p><p> Licence internationale Creative Commons Attribution 4.0</p><p> Ce travail est concédé sous une licence internationale Creative Commons CC BY 4.0.</p><p> Identificateur de licence SPDX: CC-BY-4.0</p><p> Texte de la licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconnaissance</h2><p> Nous tenons à exprimer notre profonde gratitude au projet Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (accord de subvention n ° 723677), qui a fourni le financement pour mener à bien la présente enquête.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Heat-load-profiles) (original) [Bulgarian](../bg/CM-Heat-load-profiles)<sup>\*</sup> [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup> [Estonian](../et/CM-Heat-load-profiles)<sup>\*</sup> [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup>  [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup> [Latvian](../lv/CM-Heat-load-profiles)<sup>\*</sup> [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated