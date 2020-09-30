<h1><a class="anchor" id="guidelines-for-defining-indicators" href="#guidelines-for-defining-indicators"><i class="fa fa-link"></i></a>Liniile directoare pentru definirea indicatorilor</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Cuprins</h2><ul><li> <a href="#indicators">Indicatori</a><ul><li> <a href="#indicators_simple-indicators">Indicatori simpli</a></li><li> <a href="#indicators_cross-indicators">Indicatori încrucișați</a></li></ul></li><li> <a href="#indicator-result">Rezultatul indicatorului</a></li><li> <a href="#how-to-cite">Cum se citează</a></li><li> <a href="#authors-and-reviewers">Autori și recenzori</a></li><li> <a href="#license">Licență</a></li><li> <a href="#acknowledgement">Confirmare</a></li></ul><h2><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Indicatori</h2><p> Această pagină explică modul de gestionare a indicatorilor din caseta de instrumente Hotmaps. Un indicator este o valoare care este afișată în caseta de instrumente Hotmaps din partea clientului. Indicatorul face parte dintr-un strat. Un indicator este o valoare, pentru o anumită regiune spațială, cu o unitate. Un indicator face parte dintr-un dicționar de straturi. Un obiect strat conține o matrice numită „indicatori”. Acest tabel va fi utilizat pentru a enumera toți indicatorii pe care doriți să îi vedeți pentru strat.</p><pre> <code>layers = { &#39;heat_tot_curr_density_tif&#39;:{ &#39;tablename&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;from_indicator_name&#39;:&#39;stat_heat_tot_curr_density_tif&#39;, &#39;schema_scalelvl&#39;: &#39;stat&#39;, &#39;schema_hectare&#39;: &#39;geo&#39;, &#39;crs&#39;: &#39;3035&#39;, &#39;geo_column&#39;: &#39;geometry&#39;, &#39;table_type&#39;:&#39;raster&#39;, &#39;data_lvl&#39;:[&#39;NUTS 0&#39;,&#39;NUTS 1&#39;,&#39;NUTS 2&#39;,&#39;NUTS 3&#39;,&#39;LAU 2&#39;,&#39;Hectare&#39;], &#39;data_aggregated&#39;:True, &#39;scalelvl_column&#39;:&#39;&#39;, &#39;indicators&#39;:[ {&#39;table_column&#39;: &#39;sum&#39;, &#39;unit&#39;: &#39;MWh&#39;,&#39;indicator_id&#39;:&#39;consumption&#39;}, {&#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;,&#39;indicator_id&#39;:&#39;count_cell&#39;}, { &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;: &#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;: &#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;: &#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;: &#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; } ] } }</code></pre><ul><li> „nume de masă”</li></ul><p> Numele tabelului DB. (Exemplu: „heat_tot_curr_density_tif”)</p><ul><li> „from_indicator_name”</li></ul><p> Subtablename pentru selectarea indicatorilor. <strong>Trebuie să fie unic.</strong> (Exemplu: „stat_heat_tot_curr_density_tif”)</p><ul><li> „date_aggregated”</li></ul><p> Datele sunt sau nu agregate (valori: adevărat sau fals)</p><ul><li> „scalelvl_column”</li></ul><p> Scalați numele coloanei la nivel, dacă este diferit de cel implicit (Exemplu: „cod”)</p><ul><li> &#39;data_lvl&#39;</li></ul><p> Nivele disponibile pentru datele din baza de date</p><ul><li> „schema_scalelvl”</li></ul><p> Locația schemei tabelului pentru nivelul piulițelor. (Exemplu: „geo”, „stat”, „public”)</p><ul><li> „schema_hectare”</li></ul><p> Locația schemei de tabel pentru nivelul hectarului. (Exemplu: „geo”, „stat”, „public”)</p><ul><li> „crs”</li></ul><p> Proiecția geometriei (Exemplu: „3035”, „4326”, „4258”)</p><ul><li> „geo_column”</li></ul><p> Numele coloanei de geometrie din baza de date (Exemplu: „geom”, „geometry”)</p><ul><li> &#39;table_type&#39;</li></ul><p> Tipul stratului din baza de date (Valori: „vector” sau „raster”).</p><p> <em><strong>Important:</strong></em> dacă este un raster, coloanele disponibile sunt <strong>numărare, sumă, medie, stddev, min și max</strong></p><ul><li> „Indicatori”</li></ul><p> Există 2 tipuri de indicatori (indicatori simpli și indicatori încrucișați).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="simple-indicators" href="#simple-indicators"><i class="fa fa-link"></i></a> Indicatori simpli</h3><p> Un indicator simplu este un obiect cu 3 parametri.</p><pre> <code>{ &#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;, &#39;indicator_id&#39;:&#39;count_cell&#39; }</code></pre><ul><li> „coloană_tabel”</li></ul><p> Aceasta este coloana tabelului care este selectată în tabel. (Exemplu: „numărare”)</p><img alt="selecția coloanei de masă" src="https://github.com/HotMaps/Hotmaps-toolbox-service/raw/master/api/assets/table_image.png"/><ul><li> &#39;unitate&#39;</li></ul><p> Aceasta este unitatea indicatorului. (Exemplu: „celule”, „MWh”)</p><ul><li> „indicator_id”</li></ul><p> Acesta este identificatorul indicatorului indicatorului (Ca un ID). Acest nume <strong>trebuie să fie unic</strong> în gama de indicatori.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="cross-indicators" href="#cross-indicators"><i class="fa fa-link"></i></a> Indicatori încrucișați</h3><p> Un indicator transversal este un obiect cu 7 parametri. Scopul acestui indicator este de a face un calcul între indicatorii simpli.</p><pre> <code>{ &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;:&#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;:&#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;:&#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; }</code></pre><ul><li> „reference_indicator_id_1”</li></ul><p> Corespunde identificatorului unui indicator simplu. Acest nume <strong>trebuie definit</strong> în matricea de indicatori. Este valoarea numărul 1.</p><ul><li> „reference_tablename_indicator_id_1”</li></ul><p> Referință a numelui de masă al stratului care face referire la valoarea numărul 1. (Exemplu: „heat_tot_curr_density_tif”)</p><ul><li> &#39;operator&#39;</li></ul><p> Regula de calcul care se aplică celor 2 valori (valori: &#39;/&#39; sau &#39;*&#39; sau &#39;+&#39; sau &#39;-&#39;)</p><ul><li> „reference_indicator_id_1”</li></ul><p> Corespunde identificatorului unui indicator simplu. Acest nume <strong>trebuie definit</strong> în matricea de indicatori. Este valoarea numărul 2.</p><ul><li> &#39;reference_tablename_indicator_id_2&#39;</li></ul><p> Referința numelui de masă al stratului care face referire la valoarea numărul 2. (Exemplu: &#39;pop_tot_curr_density_tif&#39;)</p><ul><li> &#39;unitate&#39;</li></ul><p> Aceasta este unitatea indicatorului. (Exemplu: „celule”, „MWh”)</p><ul><li> &#39;Nume&#39;</li></ul><p> Acesta este numele indicatorului (Ca un ID). Acest nume <strong>trebuie să fie unic</strong> în gama de indicatori.</p><h5><a class="anchor" id="note--for-this-example,-the-calculation-below-is-done." href="#note--for-this-example,-the-calculation-below-is-done."><i class="fa fa-link"></i></a> Notă: Pentru acest exemplu, se face calculul de mai jos.</h5><pre> <code>reference_tablename_indicator_id_1.reference_indicator_id_1 / reference_tablename_indicator_id_2.reference_indicator_id_2 = heat_tot_curr_density_tif.consumption / pop_tot_curr_density_tif.count_cell</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicator-result" href="#indicator-result"><i class="fa fa-link"></i></a> Rezultatul indicatorului</h2><p> Rezultatul indicatorilor este următorul:</p><pre> <code>{ &quot;values&quot;: [ { &quot;unit&quot;: &quot;MWh&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_consumption&quot;, &quot;value&quot;: &quot;4112030.46&quot; }, { &quot;unit&quot;: &quot;cells&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_count_cell&quot;, &quot;value&quot;: &quot;46764&quot; }, { &quot;unit&quot;: &quot;MWh/person&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&quot;, &quot;value&quot;: &quot;38.0092476775893146&quot; } ], &quot;name&quot;: &quot;heat_tot_curr_density_tif&quot; }</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Cum se citează</h2><p> Mostafa Fallahnejad, în Hotmaps-Wiki, Liniile directoare pentru definirea indicatorilor (aprilie 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori și recenzori</h2><p> Această pagină a fost scrisă de Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Această pagină a fost revizuită de Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licență</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Licență internațională Creative Commons Attribution 4.0</p><p> Această lucrare este licențiată sub o licență internațională Creative Commons CC BY 4.0.</p><p> Identificator licență SPDX: CC-BY-4.0</p><p> Text-licență: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Confirmare</h2><p> Dorim să transmitem cea mai profundă apreciere pentru <a href="https://www.hotmaps-project.eu">Proiectul Hotmaps</a> Horizon 2020 (acordul de subvenționare numărul 723677), care a furnizat finanțarea pentru desfășurarea prezentei investigații.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Guidelines-for-defining-indicators) (original) [Bulgarian](../bg/Guidelines-for-defining-indicators)<sup>\*</sup> [Czech](../cs/Guidelines-for-defining-indicators)<sup>\*</sup> [Danish](../da/Guidelines-for-defining-indicators)<sup>\*</sup> [German](../de/Guidelines-for-defining-indicators)<sup>\*</sup> [Greek](../el/Guidelines-for-defining-indicators)<sup>\*</sup> [Spanish](../es/Guidelines-for-defining-indicators)<sup>\*</sup> [Estonian](../et/Guidelines-for-defining-indicators)<sup>\*</sup> [Finnish](../fi/Guidelines-for-defining-indicators)<sup>\*</sup> [French](../fr/Guidelines-for-defining-indicators)<sup>\*</sup> [Irish](../ga/Guidelines-for-defining-indicators)<sup>\*</sup> [Croatian](../hr/Guidelines-for-defining-indicators)<sup>\*</sup> [Hungarian](../hu/Guidelines-for-defining-indicators)<sup>\*</sup> [Italian](../it/Guidelines-for-defining-indicators)<sup>\*</sup> [Lithuanian](../lt/Guidelines-for-defining-indicators)<sup>\*</sup> [Latvian](../lv/Guidelines-for-defining-indicators)<sup>\*</sup> [Maltese](../mt/Guidelines-for-defining-indicators)<sup>\*</sup> [Dutch](../nl/Guidelines-for-defining-indicators)<sup>\*</sup> [Polish](../pl/Guidelines-for-defining-indicators)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Guidelines-for-defining-indicators)<sup>\*</sup>  [Slovak](../sk/Guidelines-for-defining-indicators)<sup>\*</sup> [Slovenian](../sl/Guidelines-for-defining-indicators)<sup>\*</sup> [Swedish](../sv/Guidelines-for-defining-indicators)<sup>\*</sup> 

<sup>\*</sup> machine translated