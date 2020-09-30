<h1><a class="anchor" id="guidelines-for-defining-indicators" href="#guidelines-for-defining-indicators"><i class="fa fa-link"></i></a>Pokyny na definovanie ukazovateľov</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#indicators">Ukazovatele</a><ul><li> <a href="#indicators_simple-indicators">Jednoduché ukazovatele</a></li><li> <a href="#indicators_cross-indicators">Krížové ukazovatele</a></li></ul></li><li> <a href="#indicator-result">Výsledok ukazovateľa</a></li><li> <a href="#how-to-cite">Ako citovať</a></li><li> <a href="#authors-and-reviewers">Autori a recenzenti</a></li><li> <a href="#license">Licencia</a></li><li> <a href="#acknowledgement">Poďakovanie</a></li></ul><h2><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Ukazovatele</h2><p> Táto stránka vysvetľuje, ako spravovať indikátory na súbore nástrojov Hotmaps. Indikátor je hodnota, ktorá sa zobrazuje na paneli nástrojov Hotmaps na strane klienta. Indikátor je súčasťou vrstvy. Indikátor je hodnota pre konkrétnu priestorovú oblasť s jednotkou. Indikátor je súčasťou slovníka vrstiev. Objekt vrstvy obsahuje pole s názvom „indikátory“. Táto tabuľka sa použije na zoznam všetkých indikátorov, ktoré chcete pre vrstvu zobraziť.</p><pre> <code>layers = { &#39;heat_tot_curr_density_tif&#39;:{ &#39;tablename&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;from_indicator_name&#39;:&#39;stat_heat_tot_curr_density_tif&#39;, &#39;schema_scalelvl&#39;: &#39;stat&#39;, &#39;schema_hectare&#39;: &#39;geo&#39;, &#39;crs&#39;: &#39;3035&#39;, &#39;geo_column&#39;: &#39;geometry&#39;, &#39;table_type&#39;:&#39;raster&#39;, &#39;data_lvl&#39;:[&#39;NUTS 0&#39;,&#39;NUTS 1&#39;,&#39;NUTS 2&#39;,&#39;NUTS 3&#39;,&#39;LAU 2&#39;,&#39;Hectare&#39;], &#39;data_aggregated&#39;:True, &#39;scalelvl_column&#39;:&#39;&#39;, &#39;indicators&#39;:[ {&#39;table_column&#39;: &#39;sum&#39;, &#39;unit&#39;: &#39;MWh&#39;,&#39;indicator_id&#39;:&#39;consumption&#39;}, {&#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;,&#39;indicator_id&#39;:&#39;count_cell&#39;}, { &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;: &#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;: &#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;: &#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;: &#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; } ] } }</code></pre><ul><li> „tablename“</li></ul><p> Názov tabuľky DB. (Príklad: &#39;heat_tot_curr_density_tif&#39;)</p><ul><li> „from_indicator_name“</li></ul><p> Podtitulok pre výber indikátorov. <strong>Musí byť jedinečný.</strong> (Príklad: &#39;stat_heat_tot_curr_density_tif&#39;)</p><ul><li> „data_aggregated“</li></ul><p> Sú dáta agregované alebo nie (hodnoty: True alebo False)</p><ul><li> &#39;scalelvl_column&#39;</li></ul><p> Názov stĺpca na mierke, ak sa líši od predvoleného (Príklad: „kód“)</p><ul><li> &#39;data_lvl&#39;</li></ul><p> Dostupné úrovne pre údaje v databáze</p><ul><li> „schema_scalelvl“</li></ul><p> Umiestnenie schémy tabuľky pre úroveň matíc. (Príklad: &#39;geo&#39;, &#39;stat&#39;, &#39;public&#39;)</p><ul><li> &#39;schema_hectare&#39;</li></ul><p> Umiestnenie schémy tabuľky pre úroveň hektárov. (Príklad: &#39;geo&#39;, &#39;stat&#39;, &#39;public&#39;)</p><ul><li> „crs“</li></ul><p> Projekcia geometrie (Príklad: &#39;3035&#39;, &#39;4326&#39;, &#39;4258&#39;)</p><ul><li> „geo_column“</li></ul><p> Názov stĺpca geometrie v databáze (príklad: „geom“, „geometria“)</p><ul><li> &#39;table_type&#39;</li></ul><p> Typ vrstvy v databáze (Hodnoty: „vektorový“ alebo „rastrový“).</p><p> <em><strong>Dôležité:</strong></em> Ak sa jedná o raster, dostupné stĺpce sú <strong>count, sum, mean, stddev, min a max</strong></p><ul><li> „Ukazovatele“</li></ul><p> Existujú 2 typy ukazovateľov (Jednoduché ukazovatele a Krížové ukazovatele).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="simple-indicators" href="#simple-indicators"><i class="fa fa-link"></i></a> Jednoduché ukazovatele</h3><p> Jednoduchým indikátorom je objekt s 3 parametrami.</p><pre> <code>{ &#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;, &#39;indicator_id&#39;:&#39;count_cell&#39; }</code></pre><ul><li> &#39;table_column&#39;</li></ul><p> Toto je stĺpec tabuľky, ktorý je vybraný v tabuľke. (Príklad: &#39;count&#39;)</p><img alt="výber stĺpca tabuľky" src="https://github.com/HotMaps/Hotmaps-toolbox-service/raw/master/api/assets/table_image.png"/><ul><li> &#39;jednotka&#39;</li></ul><p> Toto je jednotka indikátora. (Príklad: „bunky“, „MWh“)</p><ul><li> „indicator_id“</li></ul><p> Toto je identifikátor indikátora indikátora (ako ID). Tento názov <strong>musí byť</strong> v poli indikátorov <strong>jedinečný</strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="cross-indicators" href="#cross-indicators"><i class="fa fa-link"></i></a> Krížové ukazovatele</h3><p> Krížový indikátor je objekt so 7 parametrami. Cieľom tohto ukazovateľa je vykonať výpočet medzi jednoduchými ukazovateľmi.</p><pre> <code>{ &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;:&#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;:&#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;:&#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; }</code></pre><ul><li> „reference_indicator_id_1“</li></ul><p> Zodpovedá identifikátoru jednoduchého indikátora. Tento názov <strong>musí byť definovaný</strong> v poli indikátora. Je to hodnota číslo 1.</p><ul><li> „reference_tablename_indicator_id_1“</li></ul><p> Odkaz na názov tabuľky vrstvy, ktorý odkazuje na hodnotu číslo 1. (Príklad: „heat_tot_curr_density_tif“)</p><ul><li> operátor</li></ul><p> Pravidlo výpočtu, ktoré sa má použiť na 2 hodnoty (hodnoty: &#39;/&#39; alebo &#39;*&#39; alebo &#39;+&#39; alebo &#39;-&#39;)</p><ul><li> „reference_indicator_id_1“</li></ul><p> Zodpovedá identifikátoru jednoduchého indikátora. Tento názov <strong>musí byť definovaný</strong> v poli indikátora. Je to hodnota číslo 2.</p><ul><li> „reference_tablename_indicator_id_2“</li></ul><p> Odkaz na názov tabuľky vrstvy, ktorý odkazuje na hodnotu číslo 2. (Príklad: &#39;pop_tot_curr_density_tif&#39;)</p><ul><li> &#39;jednotka&#39;</li></ul><p> Toto je jednotka indikátora. (Príklad: „bunky“, „MWh“)</p><ul><li> &#39;názov&#39;</li></ul><p> Toto je názov indikátora (ako ID). Tento názov <strong>musí byť</strong> v poli indikátorov <strong>jedinečný</strong> .</p><h5><a class="anchor" id="note--for-this-example,-the-calculation-below-is-done." href="#note--for-this-example,-the-calculation-below-is-done."><i class="fa fa-link"></i></a> Poznámka: V tomto príklade sa vykoná výpočet uvedený nižšie.</h5><pre> <code>reference_tablename_indicator_id_1.reference_indicator_id_1 / reference_tablename_indicator_id_2.reference_indicator_id_2 = heat_tot_curr_density_tif.consumption / pop_tot_curr_density_tif.count_cell</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicator-result" href="#indicator-result"><i class="fa fa-link"></i></a> Výsledok ukazovateľa</h2><p> Výsledok ukazovateľov je nasledovný:</p><pre> <code>{ &quot;values&quot;: [ { &quot;unit&quot;: &quot;MWh&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_consumption&quot;, &quot;value&quot;: &quot;4112030.46&quot; }, { &quot;unit&quot;: &quot;cells&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_count_cell&quot;, &quot;value&quot;: &quot;46764&quot; }, { &quot;unit&quot;: &quot;MWh/person&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&quot;, &quot;value&quot;: &quot;38.0092476775893146&quot; } ], &quot;name&quot;: &quot;heat_tot_curr_density_tif&quot; }</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Ako citovať</h2><p> Mostafa Fallahnejad, Hotmaps-Wiki, Pokyny pre definovanie ukazovateľov (apríl 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori a recenzenti</h2><p> Túto stránku napísal Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Túto stránku skontroloval Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencia</h2><p> Autorské práva © 2016-2020: Mostafa Fallahnejad</p><p> Medzinárodná licencia Creative Commons Attribution 4.0</p><p> Toto dielo je licencované podľa medzinárodnej licencie Creative Commons CC BY 4.0.</p><p> Identifikátor licencie SPDX: CC-BY-4.0</p><p> Text licencie: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Poďakovanie</h2><p> Chceli by sme najhlbšie oceniť projekt Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (dohoda o grante č. 723677), ktorý poskytol finančné prostriedky na uskutočnenie tohto prešetrovania.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Guidelines-for-defining-indicators) (original) [Bulgarian](../bg/Guidelines-for-defining-indicators)<sup>\*</sup> [Czech](../cs/Guidelines-for-defining-indicators)<sup>\*</sup> [Danish](../da/Guidelines-for-defining-indicators)<sup>\*</sup> [German](../de/Guidelines-for-defining-indicators)<sup>\*</sup> [Greek](../el/Guidelines-for-defining-indicators)<sup>\*</sup> [Spanish](../es/Guidelines-for-defining-indicators)<sup>\*</sup> [Estonian](../et/Guidelines-for-defining-indicators)<sup>\*</sup> [Finnish](../fi/Guidelines-for-defining-indicators)<sup>\*</sup> [French](../fr/Guidelines-for-defining-indicators)<sup>\*</sup> [Irish](../ga/Guidelines-for-defining-indicators)<sup>\*</sup> [Croatian](../hr/Guidelines-for-defining-indicators)<sup>\*</sup> [Hungarian](../hu/Guidelines-for-defining-indicators)<sup>\*</sup> [Italian](../it/Guidelines-for-defining-indicators)<sup>\*</sup> [Lithuanian](../lt/Guidelines-for-defining-indicators)<sup>\*</sup> [Latvian](../lv/Guidelines-for-defining-indicators)<sup>\*</sup> [Maltese](../mt/Guidelines-for-defining-indicators)<sup>\*</sup> [Dutch](../nl/Guidelines-for-defining-indicators)<sup>\*</sup> [Polish](../pl/Guidelines-for-defining-indicators)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Guidelines-for-defining-indicators)<sup>\*</sup> [Romanian](../ro/Guidelines-for-defining-indicators)<sup>\*</sup>  [Slovenian](../sl/Guidelines-for-defining-indicators)<sup>\*</sup> [Swedish](../sv/Guidelines-for-defining-indicators)<sup>\*</sup> 

<sup>\*</sup> machine translated