<h1><a class="anchor" id="guidelines-for-defining-indicators" href="#guidelines-for-defining-indicators"><i class="fa fa-link"></i></a>Rodiklių apibrėžimo gairės</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Turinys</h2><ul><li> <a href="#indicators">Rodikliai</a><ul><li> <a href="#indicators_simple-indicators">Paprasti rodikliai</a></li><li> <a href="#indicators_cross-indicators">Kryžminiai rodikliai</a></li></ul></li><li> <a href="#indicator-result">Rodiklio rezultatas</a></li><li> <a href="#how-to-cite">Kaip cituoti</a></li><li> <a href="#authors-and-reviewers">Autoriai ir recenzentai</a></li><li> <a href="#license">Licencija</a></li><li> <a href="#acknowledgement">Pripažinimas</a></li></ul><h2><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Rodikliai</h2><p> Šiame puslapyje paaiškinta, kaip valdyti rodiklius „Hotmaps“ įrankių laukelyje. Indikatorius yra reikšmė, kuri rodoma „Hotmaps“ įrankių laukelyje kliento pusėje. Indikatorius yra sluoksnio dalis. Rodiklis yra konkretaus erdvinio regiono vertė, turinti vienetą. Indikatorius yra sluoksnių žodyno dalis. Sluoksnio objekte yra masyvas, pavadintas „indikatoriai“. Ši lentelė bus naudojama norint rodyti visus rodiklius, kuriuos norite pamatyti sluoksnyje.</p><pre> <code>layers = { &#39;heat_tot_curr_density_tif&#39;:{ &#39;tablename&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;from_indicator_name&#39;:&#39;stat_heat_tot_curr_density_tif&#39;, &#39;schema_scalelvl&#39;: &#39;stat&#39;, &#39;schema_hectare&#39;: &#39;geo&#39;, &#39;crs&#39;: &#39;3035&#39;, &#39;geo_column&#39;: &#39;geometry&#39;, &#39;table_type&#39;:&#39;raster&#39;, &#39;data_lvl&#39;:[&#39;NUTS 0&#39;,&#39;NUTS 1&#39;,&#39;NUTS 2&#39;,&#39;NUTS 3&#39;,&#39;LAU 2&#39;,&#39;Hectare&#39;], &#39;data_aggregated&#39;:True, &#39;scalelvl_column&#39;:&#39;&#39;, &#39;indicators&#39;:[ {&#39;table_column&#39;: &#39;sum&#39;, &#39;unit&#39;: &#39;MWh&#39;,&#39;indicator_id&#39;:&#39;consumption&#39;}, {&#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;,&#39;indicator_id&#39;:&#39;count_cell&#39;}, { &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;: &#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;: &#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;: &#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;: &#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; } ] } }</code></pre><ul><li> „tablename“</li></ul><p> DB lentelės pavadinimas. (Pavyzdys: „heat_tot_curr_density_tif“)</p><ul><li> „from_indicator_name“</li></ul><p> Rodiklių pasirinkimo antrinis pavadinimas. <strong>Turi būti unikalus.</strong> (Pavyzdys: „stat_heat_tot_curr_density_tif“)</p><ul><li> „data_aggregated“</li></ul><p> Ar duomenys apibendrinti, ar ne (Reikšmės: teisinga ar klaidinga)</p><ul><li> „scalelvl_column“</li></ul><p> Mastelio lygio stulpelio pavadinimas, jei skiriasi nuo numatytojo (pavyzdys: „kodas“)</p><ul><li> „data_lvl“</li></ul><p> Galimi duomenų bazės duomenims lygiai</p><ul><li> „schema_scalelvl“</li></ul><p> Lentelės schemos vieta veržlių lygiui. (Pavyzdys: „geo“, „stat“, „public“)</p><ul><li> „schema_hectare“</li></ul><p> Lentelės schemos vieta hektaro lygiui. (Pavyzdys: „geo“, „stat“, „public“)</p><ul><li> „crs“</li></ul><p> Geometrijos projekcija (pavyzdys: &#39;3035&#39;, &#39;4326&#39;, &#39;4258&#39;)</p><ul><li> „geo_column“</li></ul><p> Geometrijos stulpelio pavadinimas duomenų bazėje (pavyzdys: „geom“, „geometry“)</p><ul><li> „table_type“</li></ul><p> Duomenų bazės sluoksnio tipas (reikšmės: „vektorius“ arba „rastras“).</p><p> <em><strong>Svarbu:</strong></em> jei tai yra rastras, galimi stulpeliai yra <strong>skaičius, suma, vidurkis, stddev, min ir max</strong></p><ul><li> „Rodikliai“</li></ul><p> Yra dviejų tipų rodikliai (paprasti rodikliai ir kryžminiai rodikliai).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="simple-indicators" href="#simple-indicators"><i class="fa fa-link"></i></a> Paprasti rodikliai</h3><p> Paprastas indikatorius yra objektas, turintis 3 parametrus.</p><pre> <code>{ &#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;, &#39;indicator_id&#39;:&#39;count_cell&#39; }</code></pre><ul><li> &#39;table_column&#39;</li></ul><p> Tai lentelės stulpelis, kuris yra pasirinktas lentelėje. (Pavyzdys: „skaičius“)</p><img alt="stalo pasirinkimas" src="https://github.com/HotMaps/Hotmaps-toolbox-service/raw/master/api/assets/table_image.png"/><ul><li> „vienetas“</li></ul><p> Tai yra rodiklio vienetas. (Pavyzdys: „elementai“, „MWh“)</p><ul><li> „indikatorius_id“</li></ul><p> Tai indikatoriaus identifikatoriaus identifikatorius (pvz., ID). Šis pavadinimas <strong>turi būti unikalus</strong> rodiklių masyve.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="cross-indicators" href="#cross-indicators"><i class="fa fa-link"></i></a> Kryžminiai rodikliai</h3><p> Kryžminis indikatorius yra objektas, turintis 7 parametrus. Šio rodiklio tikslas yra atlikti paprastų rodiklių skaičiavimą.</p><pre> <code>{ &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;:&#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;:&#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;:&#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; }</code></pre><ul><li> „reference_indicator_id_1“</li></ul><p> Atitinka paprasto rodiklio identifikatorių. Šis pavadinimas <strong>turi būti apibrėžtas</strong> indikatorių masyve. Tai reikšmė 1.</p><ul><li> „reference_tablename_indicator_id_1“</li></ul><p> Sluoksnio stalo pavadinimo nuoroda, nurodanti vertės numerį 1. (Pavyzdys: &#39;heat_tot_curr_density_tif&#39;)</p><ul><li> &#39;operatorius&#39;</li></ul><p> Skaičiavimo taisyklė, taikoma 2 reikšmėms (reikšmės: „/“ arba „*“ arba „+“ arba „-“)</p><ul><li> „reference_indicator_id_1“</li></ul><p> Atitinka paprasto rodiklio identifikatorių. Šis pavadinimas <strong>turi būti apibrėžtas</strong> indikatorių masyve. Tai reikšmė 2.</p><ul><li> „reference_tablename_indicator_id_2“</li></ul><p> Sluoksnio lentename nuoroda, nurodanti vertės numerį 2 (pavyzdys: „pop_tot_curr_density_tif“)</p><ul><li> „vienetas“</li></ul><p> Tai yra rodiklio vienetas. (Pavyzdys: „elementai“, „MWh“)</p><ul><li> &#39;vardas&#39;</li></ul><p> Tai yra rodiklio pavadinimas (pvz., ID). Šis pavadinimas <strong>turi būti unikalus</strong> rodiklių masyve.</p><h5><a class="anchor" id="note--for-this-example,-the-calculation-below-is-done." href="#note--for-this-example,-the-calculation-below-is-done."><i class="fa fa-link"></i></a> Pastaba: Šiame pavyzdyje atliktas toliau pateiktas skaičiavimas.</h5><pre> <code>reference_tablename_indicator_id_1.reference_indicator_id_1 / reference_tablename_indicator_id_2.reference_indicator_id_2 = heat_tot_curr_density_tif.consumption / pop_tot_curr_density_tif.count_cell</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicator-result" href="#indicator-result"><i class="fa fa-link"></i></a> Rodiklio rezultatas</h2><p> Rodiklių rezultatas yra toks:</p><pre> <code>{ &quot;values&quot;: [ { &quot;unit&quot;: &quot;MWh&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_consumption&quot;, &quot;value&quot;: &quot;4112030.46&quot; }, { &quot;unit&quot;: &quot;cells&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_count_cell&quot;, &quot;value&quot;: &quot;46764&quot; }, { &quot;unit&quot;: &quot;MWh/person&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&quot;, &quot;value&quot;: &quot;38.0092476775893146&quot; } ], &quot;name&quot;: &quot;heat_tot_curr_density_tif&quot; }</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kaip cituoti</h2><p> Mostafa Fallahnejad, „Hotmaps-Wiki“, rodiklių apibrėžimo gairės (2019 m. Balandžio mėn.)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autoriai ir recenzentai</h2><p> Šį puslapį parašė Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Šį puslapį peržiūrėjo Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencija</h2><p> Autorių teisės © 2016-2020: Mostafa Fallahnejad</p><p> „Creative Commons Attribution 4.0“ tarptautinė licencija</p><p> Šis darbas licencijuotas pagal „Creative Commons CC BY 4.0“ tarptautinę licenciją.</p><p> SPDX licencijos identifikatorius: CC-BY-4.0</p><p> Licencijos tekstas: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Pripažinimas</h2><p> Norėtume nuoširdžiai vertinti „Horizon 2020“ „ <a href="https://www.hotmaps-project.eu">Hotmaps“ projektą</a> (dotacijos sutarties numeris 723677), kuris skyrė finansavimą šiam tyrimui atlikti.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Guidelines-for-defining-indicators) (original) [Bulgarian](../bg/Guidelines-for-defining-indicators)<sup>\*</sup> [Czech](../cs/Guidelines-for-defining-indicators)<sup>\*</sup> [Danish](../da/Guidelines-for-defining-indicators)<sup>\*</sup> [German](../de/Guidelines-for-defining-indicators)<sup>\*</sup> [Greek](../el/Guidelines-for-defining-indicators)<sup>\*</sup> [Spanish](../es/Guidelines-for-defining-indicators)<sup>\*</sup> [Estonian](../et/Guidelines-for-defining-indicators)<sup>\*</sup> [Finnish](../fi/Guidelines-for-defining-indicators)<sup>\*</sup> [French](../fr/Guidelines-for-defining-indicators)<sup>\*</sup> [Irish](../ga/Guidelines-for-defining-indicators)<sup>\*</sup> [Croatian](../hr/Guidelines-for-defining-indicators)<sup>\*</sup> [Hungarian](../hu/Guidelines-for-defining-indicators)<sup>\*</sup> [Italian](../it/Guidelines-for-defining-indicators)<sup>\*</sup>  [Latvian](../lv/Guidelines-for-defining-indicators)<sup>\*</sup> [Maltese](../mt/Guidelines-for-defining-indicators)<sup>\*</sup> [Dutch](../nl/Guidelines-for-defining-indicators)<sup>\*</sup> [Polish](../pl/Guidelines-for-defining-indicators)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Guidelines-for-defining-indicators)<sup>\*</sup> [Romanian](../ro/Guidelines-for-defining-indicators)<sup>\*</sup> [Slovak](../sk/Guidelines-for-defining-indicators)<sup>\*</sup> [Slovenian](../sl/Guidelines-for-defining-indicators)<sup>\*</sup> [Swedish](../sv/Guidelines-for-defining-indicators)<sup>\*</sup> 

<sup>\*</sup> machine translated