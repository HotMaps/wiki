<h1><a class="anchor" id="cm-wind-potential" href="#cm-wind-potential"><i class="fa fa-link"></i></a>Potentiel éolien CM</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Table des matières</h2><ul><li> <a href="#in-a-glance">En un coup d&#39;oeil</a></li><li> <a href="#introduction">introduction</a></li><li> <a href="#inputs-and-outputs">Entrées et sorties</a></li><li> <a href="#method">Méthode</a></li><li> <a href="#github-repository-of-this-calculation-module">Dépôt GitHub de ce module de calcul</a></li><li> <a href="#sample-run">Exemple d&#39;exécution</a></li><li> <a href="#how-to-cite">Comment citer</a></li><li> <a href="#authors-and-reviewers">Auteurs et relecteurs</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Reconnaissance</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> En un coup d&#39;oeil</h2><p> Ce module calcule le potentiel d&#39;alimentation en énergie éolienne dans une zone sélectionnée. Les entrées du module sont un fichier matriciel avec la vitesse moyenne du vent et les spécifications techniques de la pale et de l&#39;éolienne.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> introduction</h2><p> Ce module évalue l&#39;énergie éolienne qui pourrait être générée par une éolienne avec une résolution annuelle, mensuelle et horaire. Le module estime le nombre de turbines pouvant être installées dans une zone prédéfinie. Il vise à calculer le potentiel éolien et la faisabilité financière d&#39;une zone sélectionnée en considérant:</p><ul><li> l&#39;installation de nouveaux systèmes éoliens,</li><li> évaluer la faisabilité financière des nouvelles usines.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Entrées et sorties</h2><p> Les paramètres d&#39;entrée et les couches ainsi que les couches et paramètres de sortie sont les suivants.</p><p> <strong>Les couches et paramètres d&#39;entrée sont:</strong></p><ul><li> fichier raster:<ul><li> vitesse moyenne du vent [m / s]</li><li> avec la superficie disponible pour l&#39;exploitation éolienne. Le raster par défaut utilise uniquement les zones à végétation faible ou clairsemée et les zones dénudées et brûlées (classes de 3.2.1. À 3.2.4. Et 3.3.3., 3.3.4. De <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover - CLC</a> ). Nous avons ensuite exclu les zones suivantes selon des critères de durabilité:<ul><li> Zones au-dessus de 2500 mètres du niveau de la mer (2500 mètres d&#39;altitude);</li><li> Une zone tampon de 1 km des zones urbaines (classes de 1.1.1. À 1.4.2. De la CLC);</li><li> Couloirs pour la connectivité des oiseaux (base de données commune sur les zones désignées);</li><li> Exclusion des aires protégées du réseau Nature 2000.</li></ul></li></ul></li><li> Coûts d&#39;installation du hub éolien (tout compris; valeur par défaut: 2000 € / kWc);</li><li> Distance entre les moyeux éoliens (valeur par défaut: 1000 m);</li><li> Coûts de maintenance et d&#39;exploitation (valeur par défaut: 2%);</li><li> Puissance de crête (valeur par défaut: 800 kW);</li><li> Hauteur (valeur par défaut: 80 m);</li><li> Années de financement (valeur par défaut: 20 ans);</li><li> Taux d&#39;actualisation (valeur par défaut: 4,0%);</li></ul><p> <strong>Les couches et paramètres de sortie sont:</strong></p><ul><li> le coût total de mise en œuvre des systèmes éoliens;</li><li> la production d&#39;énergie annuelle totale;</li><li> le coût actualisé de l&#39;énergie;</li><li> un fichier raster avec les zones les plus appropriées pour la production d&#39;énergie éolienne.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Méthode</h2><p> La méthodologie utilisée par le CM consiste à utiliser la zone sélectionnée par l&#39;utilisateur. Les zones par défaut sont les zones identifiées dans les couches de potentiel éolien qui ne considéraient que les zones à végétation basse ou clairsemée et les zones dénudées et brûlées (classes de 3.2.1. À 3.2.4. Et 3.3.3., 3.3.4. De <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover - CLC</a> ), ces zones ont été filtrées en fonction des critères d&#39;exclusion suivants:</p><ul><li> Zones au-dessus de 2500 mètres d&#39;altitude;</li><li> Une zone tampon de 1 km des zones urbaines (classes de 1.1.1. À 1.4.2. De la CLC);</li><li> Corridors pour la connectivité des oiseaux (base de données commune sur les zones désignées [148]);</li><li> Exclusion des aires protégées du réseau Nature 2000 [149].</li></ul><p> Le CM utilise la distance définie par l&#39;utilisateur entre les hubs pour créer une grille de hubs potentiels dans les zones sélectionnées. Sur la base du nombre d&#39;éoliennes pouvant être potentiellement installées, sur la base des principales caractéristiques du système éolien, de la hauteur et des spécifications techniques, le module calcule l&#39;énergie qui peut être produite par le système.</p><p> Le module obtient le profil mensuel et horaire, calcule le barycentre des zones sélectionnées et interroge l&#39; <a href="https://www.renewables.ninja/">API RenewableNinja</a> , qui fournit les données de l&#39;ensemble de données MERRAv2.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Dépôt GitHub de ce module de calcul</h2><p> <a href="https://github.com/HotMaps/wind_potential">Ici,</a> vous obtenez le développement de pointe pour ce module de calcul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Exemple d&#39;exécution</h2><img alt="Fig. 1-0" src="https://wiki.hotmaps.hevs.ch/en/CM-Wind-potential/cm-wind.png" title="Exécuter le Wind CM"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Comment citer</h2><p> Pietro Zambelli, dans Hotmaps-Wiki, CM-Wind-potential (septembre 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Auteurs et relecteurs</h2><p> Cette page a été écrite par Giulia Garegnani et Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Cette page a été révisée par Simon Pezzutto ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Copyright © 2016-2020: Giulia Garegnani et Pietro Zambelli</p><p> Licence internationale Creative Commons Attribution 4.0</p><p> Ce travail est concédé sous une licence internationale Creative Commons CC BY 4.0.</p><p> Identificateur de licence SPDX: CC-BY-4.0</p><p> Texte de la licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconnaissance</h2><p> Nous tenons à exprimer notre profonde gratitude au projet Horizon 2020 Hotmaps (accord de subvention n ° 723677), qui a fourni le financement pour mener à bien la présente enquête.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Wind-potential) (original) [Bulgarian](../bg/CM-Wind-potential)<sup>\*</sup> [Czech](../cs/CM-Wind-potential)<sup>\*</sup> [Danish](../da/CM-Wind-potential)<sup>\*</sup> [German](../de/CM-Wind-potential)<sup>\*</sup> [Greek](../el/CM-Wind-potential)<sup>\*</sup> [Spanish](../es/CM-Wind-potential)<sup>\*</sup> [Estonian](../et/CM-Wind-potential)<sup>\*</sup> [Finnish](../fi/CM-Wind-potential)<sup>\*</sup>  [Irish](../ga/CM-Wind-potential)<sup>\*</sup> [Croatian](../hr/CM-Wind-potential)<sup>\*</sup> [Hungarian](../hu/CM-Wind-potential)<sup>\*</sup> [Italian](../it/CM-Wind-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Wind-potential)<sup>\*</sup> [Latvian](../lv/CM-Wind-potential)<sup>\*</sup> [Maltese](../mt/CM-Wind-potential)<sup>\*</sup> [Dutch](../nl/CM-Wind-potential)<sup>\*</sup> [Polish](../pl/CM-Wind-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Wind-potential)<sup>\*</sup> [Romanian](../ro/CM-Wind-potential)<sup>\*</sup> [Slovak](../sk/CM-Wind-potential)<sup>\*</sup> [Slovenian](../sl/CM-Wind-potential)<sup>\*</sup> [Swedish](../sv/CM-Wind-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated