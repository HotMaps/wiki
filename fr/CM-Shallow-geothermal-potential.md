<h1><a class="anchor" id="cm-shallow-geothermal-potential" href="#cm-shallow-geothermal-potential"><i class="fa fa-link"></i></a>CM Potentiel géothermique peu profond</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Table des matières</h2><ul><li> <a href="#in-a-glance">En un coup d&#39;oeil</a></li><li> <a href="#introduction">introduction</a></li><li> <a href="#inputs-and-outputs">Entrées et sorties</a></li><li> <a href="#method">Méthode</a></li><li> <a href="#github-repository-of-this-calculation-module">Dépôt GitHub de ce module de calcul</a></li><li> <a href="#sample-run">Exemple d&#39;exécution</a></li><li> <a href="#how-to-cite">Comment citer</a></li><li> <a href="#authors-and-reviewers">Auteurs et relecteurs</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Reconnaissance</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> En un coup d&#39;oeil</h2><p> Ce module calcule le potentiel de l&#39;énergie géothermique peu profonde à utiliser dans les pompes à chaleur géothermiques pour des régions sélectionnées sous la forme d&#39;un fichier raster. Les entrées sont des fichiers raster avec les températures initiales du sol, la conductivité thermique du sol moyenne en profondeur et la capacité thermique du sol moyenne en profondeur.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> introduction</h2><p> Le module de calcul vise à calculer le potentiel géothermique peu profond sur la base de <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">r.green.gshp.theoretical</a> selon la <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">méthodologie G.pot</a> . Dans ce module, le rendement est l&#39;énergie maximale théorique qui peut être convertie dans le cas idéal sans tenir compte des contraintes financières et spatiales.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Entrées et sorties</h2><p> Les paramètres d&#39;entrée et les couches, ainsi que les couches et paramètres de sortie, sont les suivants.</p><p> <strong>Les couches et paramètres d&#39;entrée sont:</strong></p><ul><li> Vecteur avec conductivité thermique du sol moyennée en profondeur [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Valeur avec la saison de chauffage [0-365] jours</li><li> Raster avec la température initiale du sol T0 [° C]</li><li> Valeur avec capacité thermique du sol moyenne en profondeur [MJ m <sup>-3</sup> K <sup>-1</sup> ]</li></ul><p> Les paramètres d&#39;entrée avancés sont:</p><ul><li> Rayon du forage [m]</li><li> Résistance thermique du forage [m KW <sup>-1</sup> ]</li><li> Longueur du forage [m]</li><li> Rayon du tuyau [m]</li><li> Nombre de tuyaux dans le forage</li><li> Conductivité thermique du remplissage du forage (coulis géothermique) [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Température minimale ou maximale du fluide [° C]</li><li> Durée de vie simulée de l’usine [années]</li></ul><p> <strong>Les couches et paramètres de sortie sont:</strong></p><ul><li> une carte raster avec le potentiel d&#39;énergie géothermique [MWh / (ha * an)]</li><li> un indicateur sur l&#39;énergie moyenne pouvant être extraite par système GCHP [MWh / an]</li></ul><p> Une explication plus approfondie du raster d&#39;entrée par défaut est disponible dans le <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">référentiel Hotmaps</a></p><p> Il convient également de mentionner qu&#39;en raison du fait que la mise en œuvre d&#39;un système géothermique n&#39;est pas toujours possible, en particulier dans les zones urbaines très denses, le fichier raster d&#39;entrée ne fournit pas d&#39;informations pour plusieurs grandes villes. Ceci est également visible dans les fichiers de sortie et ne constitue PAS une erreur de calcul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Méthode</h2><p> La méthode pour définir le potentiel énergétique est basée sur le <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot</a> . Le potentiel de l&#39;énergie géothermique peu profonde est calculé au moyen d&#39;une relation empirique proposée par <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso et al. (2016)</a> .</p><p> La méthodologie produit une carte avec la puissance et l&#39;énergie qui peuvent être extraites en tenant compte des principales caractéristiques du terrain (par exemple température / capacité / conductivité du sol) et du forage (par exemple longueur, diamètre, etc.).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Dépôt GitHub de ce module de calcul</h2><p> <a href="https://github.com/HotMaps/gchp_potential/tree/develop">Ici,</a> vous obtenez le développement de pointe pour ce module de calcul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Échantillon de course</h2><p> Les utilisateurs peuvent donner différentes caractéristiques du sol (par exemple, température du sol, conductivité et capacité du sol), si disponibles. Il est également possible de définir les différentes caractéristiques du système géothermique comme la géométrie du forage.</p><p> Comme mentionné précédemment, une couche raster est générée en sortie. Cette couche montre le potentiel dans différents domaines. Comme il est difficile d&#39;estimer le potentiel dans les zones urbaines denses, la couche raster d&#39;entrée ne fournit pas d&#39;informations sur ces régions. Par conséquent, ces régions sont également vides dans la couche de sortie.</p><img src="/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Comment citer</h2><p> Pietro Zambelli et Giulia Garegnani, dans Hotmaps Wiki, CM Shallow geothermal potential (septembre 2020)</p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Auteurs et relecteurs</h2><p> Cette page a été écrite par Giulia Garegnani et Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Cette page a été révisée par Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Copyright © 2016-2020: Pietro Zambelli et Giulia Garegnani</p><p> Licence internationale Creative Commons Attribution 4.0</p><p> Ce travail est concédé sous une licence internationale Creative Commons CC BY 4.0.</p><p> Identificateur de licence SPDX: CC-BY-4.0</p><p> Texte de la licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconnaissance</h2><p> Nous souhaitons exprimer notre profonde gratitude au projet Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (accord de subvention n ° 723677), qui a fourni le financement nécessaire pour mener à bien la présente enquête.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Shallow-geothermal-potential) (original) [Bulgarian](../bg/CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](../cs/CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](../da/CM-Shallow-geothermal-potential)<sup>\*</sup> [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](../el/CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](../es/CM-Shallow-geothermal-potential)<sup>\*</sup> [Estonian](../et/CM-Shallow-geothermal-potential)<sup>\*</sup> [Finnish](../fi/CM-Shallow-geothermal-potential)<sup>\*</sup>  [Irish](../ga/CM-Shallow-geothermal-potential)<sup>\*</sup> [Croatian](../hr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Hungarian](../hu/CM-Shallow-geothermal-potential)<sup>\*</sup> [Italian](../it/CM-Shallow-geothermal-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](../lv/CM-Shallow-geothermal-potential)<sup>\*</sup> [Maltese](../mt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Dutch](../nl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Polish](../pl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](../ro/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](../sk/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](../sl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](../sv/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated