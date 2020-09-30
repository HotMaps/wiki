<h1><a class="anchor" id="retrieve-indicators-of-a-selected-area" href="#retrieve-indicators-of-a-selected-area"><i class="fa fa-link"></i></a>Dohvatite pokazatelje odabranog područja</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#introduction">Uvod</a></li><li> <a href="#indicators-for-raster-layers">Pokazatelji za rasterske slojeve</a><ul><li> <a href="#indicators-for-raster-layers_buildings">Građevine</a></li><li> <a href="#indicators-for-raster-layers_population">Stanovništvo</a></li><li> <a href="#indicators-for-raster-layers_renewable-energy-source-potentials">Potencijali obnovljivih izvora energije</a></li></ul></li><li> <a href="#indicators-for-vector-layers">Pokazatelji za vektorske slojeve</a><ul><li> <a href="#indicators-for-vector-layers_industry">Industrija</a></li><li> <a href="#indicators-for-vector-layers_renewable-energy-source-potentials">Potencijali obnovljivih izvora energije</a></li><li> <a href="#indicators-for-vector-layers_electricity">Struja</a></li></ul></li><li> <a href="#example">Primjer</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ovisno o slojevima i regiji koje ste odabrali pokazatelji za vašu konfiguraciju prikazani su na bočnoj traci s desne strane zaslona</p><p><img alt="rezultati.png" src="../images/general_tool_functionalities_and_structure/results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><p> U nastavku ćemo pogledati pokazatelje koji se prikazuju za rasterske i vektorske slojeve.</p><h2><a class="anchor" id="indicators-for-raster-layers" href="#indicators-for-raster-layers"><i class="fa fa-link"></i></a> Pokazatelji za rasterske slojeve</h2><p> Pokazatelji na rasterskim slojevima razlikuju se od vektorskih slojeva. Pod različitim podrazumijevamo u smislu agregacije i razvrstavanja. Ovo različito ponašanje dolazi iz teritorijalnih rezolucija.</p><p> Rasterski slojevi općenito imaju puno veću rezoluciju, dok vektorski slojevi imaju samo atribute u točkama ili poligonima.</p><p> To s jedne strane znači, na primjer, ako odaberete vektorski sloj koji je definiran NUTS3 poligonima i želite, na primjer, odabrati LAU regiju, tada vrijednost NUTS3 neće biti razvrstana na razinu LAU, umjesto toga, pokazatelj NUTS3 gdje je ovo LAU regija koja se nalazi bit će prikazana na bočnoj traci rezultata.</p><p> S druge strane, rasterski slojevi se agregiraju i raščlanjuju &quot;proizvoljno&quot; *</p><p> * od strane ćelija koje sadrže unutar područja koje ste odabrali (naravno unutar granica same rasterske razlučivosti)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="buildings" href="#buildings"><i class="fa fa-link"></i></a> Građevine</h3><p> <strong>Karta gustoće topline</strong></p><p><img alt="hdm.png" src="../images/general_tool_functionalities_and_structure/hdm.png"/></p><p> <strong>Dodatna značajka</strong></p><p> Kada istodobno odaberete sloj gustoće topline i sloj stanovništva, prikazuje se dodatni indikator (pogledajte sliku dolje)</p><p><img alt="hdm2.png" src="../images/general_tool_functionalities_and_structure/hdm2.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="in-general-" href="#in-general-"><i class="fa fa-link"></i></a> Općenito:</h3><p> Kada se istodobno odabere jedan od slojeva zgrade i sloj stanovništva, prikazat će se dodatni pokazatelj kako je prethodno opisano</p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Karta gustoće hlađenja</strong></p><p><img alt="cdm.png" src="../images/general_tool_functionalities_and_structure/cdm.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Izgradnja svezaka</strong></p><p><img alt="bvol.png" src="../images/general_tool_functionalities_and_structure/bvol.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Bruto površina poda</strong></p><p><img alt="gfa.png" src="../images/general_tool_functionalities_and_structure/gfa.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> Stanovništvo</h3><p><img alt="pop.png" src="../images/general_tool_functionalities_and_structure/pop.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Klima</h3><p> <strong>Temperatura</strong></p><p><img alt="temp.png" src="../images/general_tool_functionalities_and_structure/temp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Dani stupnja hlađenja</strong></p><p><img alt="cdd.png" src="../images/general_tool_functionalities_and_structure/cdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Dani stupnja grijanja</strong></p><p><img alt="hdd.png" src="../images/general_tool_functionalities_and_structure/hdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Solarno zračenje</strong></p><p><img alt="rad.png" src="../images/general_tool_functionalities_and_structure/rad.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Brzina vjetra</strong></p><p><img alt="vjetar.png" src="../images/general_tool_functionalities_and_structure/wind.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Potencijali obnovljivih izvora energije</h3><p> <strong>Sunčevo zračenje na građevinskom otisku</strong></p><p><img alt="srobf.png" src="../images/general_tool_functionalities_and_structure/srobf.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Potencijal vjetra na 50m</strong></p><p><img alt="wp.png" src="../images/general_tool_functionalities_and_structure/wp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Šumski ostaci</strong></p><p><img alt="šuma.png" src="../images/general_tool_functionalities_and_structure/forest.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicators-for-vector-layers" href="#indicators-for-vector-layers"><i class="fa fa-link"></i></a> Pokazatelji za vektorske slojeve</h2><h3><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Industrija</h3><p> <strong>Emisije na industrijskim gradilištima</strong><img alt="ise.png" src="../images/general_tool_functionalities_and_structure/ise.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Višak topline na industrijskom mjestu</strong><img alt="iseh.png" src="../images/general_tool_functionalities_and_structure/iseh.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Naziv tvrtke za industrijsko mjesto</strong><img alt="isec.png" src="../images/general_tool_functionalities_and_structure/isec.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Podsektor industrijskog gradilišta</strong><img alt="ises.png" src="../images/general_tool_functionalities_and_structure/ises.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Potencijali obnovljivih izvora energije</h3><p> <strong>Postrojenja za pročišćavanje otpadnih voda Snaga</strong></p><p><img alt="wwp.png" src="../images/general_tool_functionalities_and_structure/wwp.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Kapacitet postrojenja za pročišćavanje otpadnih voda</strong></p><p><img alt="wwc.png" src="../images/general_tool_functionalities_and_structure/wwc.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Poljoprivredni ostaci</strong></p><p><img alt="ar.png" src="../images/general_tool_functionalities_and_structure/ar.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Efluenti stoke</strong></p><p><img alt="le.png" src="../images/general_tool_functionalities_and_structure/le.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Komunalni čvrsti otpad</strong></p><p><img alt="sw.png" src="../images/general_tool_functionalities_and_structure/sw.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Geotermalna potencijalna toplinska vodljivost</strong></p><p><img alt="geothermal.png" src="../images/general_tool_functionalities_and_structure/geothermal.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity" href="#electricity"><i class="fa fa-link"></i></a> Struja</h3><p> <strong>Emisija električne energije C02</strong></p><p><img alt="struja.png" src="../images/general_tool_functionalities_and_structure/electricity.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="example" href="#example"><i class="fa fa-link"></i></a> Primjer</h2><p> Na donjoj slici možete vidjeti kako to izgleda kad se vizualiziraju svi slojevi (ovdje je Austrija odabrana kao NUTS0)</p><p><img alt="all_map.png" src="../images/general_tool_functionalities_and_structure/all_map.png"/></p><p> Iako ova karta na prvi pogled može izgledati pomalo zbunjujuće, njezini pokazatelji su upravo ilustrirani. Pogledajte dolje sve pokazatelje koji su opisani na bočnoj traci rezultata kada odaberete sve slojeve za Austriju (NUTS0)</p><p><img alt="svi_rezultati.png" src="../images/general_tool_functionalities_and_structure/all_results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Jeton Hasani, u Hotmaps-Wiki, Dohvati indikatore-odabranog područja (travanj 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu je stranicu napisao Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Ovu je stranicu pregledao Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Jeton Hasani</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> <code><a href="Indicator-Section/_edit">Review this page</a></code></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Retrieve-indicators-of-a-selected-area) (original) [Bulgarian](../bg/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Czech](../cs/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Danish](../da/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [German](../de/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Greek](../el/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Spanish](../es/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Estonian](../et/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Finnish](../fi/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [French](../fr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Irish](../ga/Retrieve-indicators-of-a-selected-area)<sup>\*</sup>  [Hungarian](../hu/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Italian](../it/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Lithuanian](../lt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Latvian](../lv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Maltese](../mt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Dutch](../nl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Polish](../pl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Romanian](../ro/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovak](../sk/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovenian](../sl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Swedish](../sv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> 

<sup>\*</sup> machine translated