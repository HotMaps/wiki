<h1><a class="anchor" id="guidelines-for-defining-indicators" href="#guidelines-for-defining-indicators"><i class="fa fa-link"></i></a>Riktlinjer för att definiera indikatorer</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Innehållsförteckning</h2><ul><li> <a href="#indicators">Indikatorer</a><ul><li> <a href="#indicators_simple-indicators">Enkla indikatorer</a></li><li> <a href="#indicators_cross-indicators">Korsindikatorer</a></li></ul></li><li> <a href="#indicator-result">Indikatorresultat</a></li><li> <a href="#how-to-cite">Hur man citerar</a></li><li> <a href="#authors-and-reviewers">Författare och granskare</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Bekräftelse</a></li></ul><h2><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Indikatorer</h2><p> Den här sidan förklarar hur man hanterar indikatorer i Hotmaps-verktygslådan. En indikator är ett värde som visas i Hotmaps-verktygslådan på klientsidan. Indikatorn är en del av ett lager. En indikator är ett värde för en specifik geografisk region med en enhet. En indikator är en del av en lagerordbok. Ett lagerobjekt innehåller en matris med namnet &quot;indikatorer&quot;. Denna tabell kommer att användas för att lista alla indikatorer som du vill se för lagret.</p><pre> <code>layers = { &#39;heat_tot_curr_density_tif&#39;:{ &#39;tablename&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;from_indicator_name&#39;:&#39;stat_heat_tot_curr_density_tif&#39;, &#39;schema_scalelvl&#39;: &#39;stat&#39;, &#39;schema_hectare&#39;: &#39;geo&#39;, &#39;crs&#39;: &#39;3035&#39;, &#39;geo_column&#39;: &#39;geometry&#39;, &#39;table_type&#39;:&#39;raster&#39;, &#39;data_lvl&#39;:[&#39;NUTS 0&#39;,&#39;NUTS 1&#39;,&#39;NUTS 2&#39;,&#39;NUTS 3&#39;,&#39;LAU 2&#39;,&#39;Hectare&#39;], &#39;data_aggregated&#39;:True, &#39;scalelvl_column&#39;:&#39;&#39;, &#39;indicators&#39;:[ {&#39;table_column&#39;: &#39;sum&#39;, &#39;unit&#39;: &#39;MWh&#39;,&#39;indicator_id&#39;:&#39;consumption&#39;}, {&#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;,&#39;indicator_id&#39;:&#39;count_cell&#39;}, { &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;: &#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;: &#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;: &#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;: &#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; } ] } }</code></pre><ul><li> &#39;tabellnamn&#39;</li></ul><p> DB-tabellens namn. (Exempel: &#39;heat_tot_curr_density_tif&#39;)</p><ul><li> &#39;from_indicator_name&#39;</li></ul><p> Undertabellnamn för val av indikatorer. <strong>Måste vara unik.</strong> (Exempel: &#39;stat_heat_tot_curr_density_tif&#39;)</p><ul><li> &#39;data_aggregerad&#39;</li></ul><p> Är uppgifterna aggregerade eller inte (värden: sant eller falskt)</p><ul><li> &#39;scalelvl_column&#39;</li></ul><p> Skala nivå kolumnnamn om det skiljer sig från standard (Exempel: &#39;kod&#39;)</p><ul><li> &#39;data_lvl&#39;</li></ul><p> Nivåer tillgängliga för data i databasen</p><ul><li> &#39;schema_scalelvl&#39;</li></ul><p> Tabellschemat för mutternivån. (Exempel: &#39;geo&#39;, &#39;stat&#39;, &#39;public&#39;)</p><ul><li> &#39;schema_hectare&#39;</li></ul><p> Plats för tabellschema för hektar. (Exempel: &#39;geo&#39;, &#39;stat&#39;, &#39;public&#39;)</p><ul><li> &#39;crs&#39;</li></ul><p> Projektion av geometrin (Exempel: &#39;3035&#39;, &#39;4326&#39;, &#39;4258&#39;)</p><ul><li> &#39;geo_column&#39;</li></ul><p> Namnet på geometriskolumnen i databasen (Exempel: &#39;geom&#39;, &#39;geometri&#39;)</p><ul><li> &#39;table_type&#39;</li></ul><p> Typ av lagret i databasen (Värden: &#39;vektor&#39; eller &#39;raster&#39;).</p><p> <em><strong>Viktigt:</strong></em> Om det är ett raster är de tillgängliga kolumnerna <strong>räknas, summa, medelvärde, stddev, min och max</strong></p><ul><li> &#39;Indikatorer&#39;</li></ul><p> Det finns två typer av indikatorer (enkla indikatorer och korsindikatorer).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="simple-indicators" href="#simple-indicators"><i class="fa fa-link"></i></a> Enkla indikatorer</h3><p> En enkel indikator är ett objekt med tre parametrar.</p><pre> <code>{ &#39;table_column&#39;: &#39;count&#39;, &#39;unit&#39;: &#39;cells&#39;, &#39;indicator_id&#39;:&#39;count_cell&#39; }</code></pre><ul><li> &#39;table_column&#39;</li></ul><p> Detta är tabellkolumnen som är vald i tabellen. (Exempel: &quot;räkna&quot;)</p><img alt="val av bordskolumner" src="https://github.com/HotMaps/Hotmaps-toolbox-service/raw/master/api/assets/table_image.png"/><ul><li> &#39;enhet&#39;</li></ul><p> Detta är enhetens indikator. (Exempel: &#39;celler&#39;, &#39;MWh&#39;)</p><ul><li> &#39;indikator_id&#39;</li></ul><p> Detta är indikatorns identifierare (som ett ID). Detta namn <strong>måste vara unikt</strong> i mängden indikatorer.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="cross-indicators" href="#cross-indicators"><i class="fa fa-link"></i></a> Korsindikatorer</h3><p> En korsindikator är ett objekt med 7 parametrar. Målet med denna indikator är att göra en beräkning bland enkla indikatorer.</p><pre> <code>{ &#39;reference_indicator_id_1&#39;: &#39;consumption&#39;, &#39;reference_tablename_indicator_id_1&#39;:&#39;heat_tot_curr_density_tif&#39;, &#39;operator&#39;: &#39;/&#39;, &#39;reference_indicator_id_2&#39;:&#39;count_cell&#39;, &#39;reference_tablename_indicator_id_2&#39;:&#39;pop_tot_curr_density_tif&#39;, &#39;unit&#39;:&#39;MWh/person&#39;, &#39;indicator_id&#39;:&#39;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&#39; }</code></pre><ul><li> &#39;reference_indicator_id_1&#39;</li></ul><p> Motsvarar identifieraren för en enkel indikator. Detta namn <strong>måste definieras</strong> i indikatoruppsättningen. Det är värde nummer 1.</p><ul><li> &#39;reference_tablename_indicator_id_1&#39;</li></ul><p> Referens för lagret tabellnamn som refererar till värdet nummer 1. (Exempel: &#39;heat_tot_curr_density_tif&#39;)</p><ul><li> &#39;operatör&#39;</li></ul><p> Beräkningsregel som ska tillämpas på de två värdena (Värden: &#39;/&#39; eller &#39;*&#39; eller &#39;+&#39; eller &#39;-&#39;)</p><ul><li> &#39;reference_indicator_id_1&#39;</li></ul><p> Motsvarar identifieraren för en enkel indikator. Detta namn <strong>måste definieras</strong> i indikatoruppsättningen. Det är värde nummer 2.</p><ul><li> &#39;reference_tablename_indicator_id_2&#39;</li></ul><p> Referens för lagertabellnamnet som refererar till värdet nummer 2. (Exempel: &#39;pop_tot_curr_density_tif&#39;)</p><ul><li> &#39;enhet&#39;</li></ul><p> Detta är enhetens indikator. (Exempel: &#39;celler&#39;, &#39;MWh&#39;)</p><ul><li> &#39;namn&#39;</li></ul><p> Detta är namnet på indikatorn (som ett ID). Detta namn <strong>måste vara unikt</strong> i mängden indikatorer.</p><h5><a class="anchor" id="note--for-this-example,-the-calculation-below-is-done." href="#note--for-this-example,-the-calculation-below-is-done."><i class="fa fa-link"></i></a> Obs: I det här exemplet görs beräkningen nedan.</h5><pre> <code>reference_tablename_indicator_id_1.reference_indicator_id_1 / reference_tablename_indicator_id_2.reference_indicator_id_2 = heat_tot_curr_density_tif.consumption / pop_tot_curr_density_tif.count_cell</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicator-result" href="#indicator-result"><i class="fa fa-link"></i></a> Indikatorresultat</h2><p> Resultatet av indikatorerna är som följer:</p><pre> <code>{ &quot;values&quot;: [ { &quot;unit&quot;: &quot;MWh&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_consumption&quot;, &quot;value&quot;: &quot;4112030.46&quot; }, { &quot;unit&quot;: &quot;cells&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_count_cell&quot;, &quot;value&quot;: &quot;46764&quot; }, { &quot;unit&quot;: &quot;MWh/person&quot;, &quot;name&quot;: &quot;heat_tot_curr_density_tif_per_pop_tot_curr_density_tif&quot;, &quot;value&quot;: &quot;38.0092476775893146&quot; } ], &quot;name&quot;: &quot;heat_tot_curr_density_tif&quot; }</code></pre><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hur man citerar</h2><p> Mostafa Fallahnejad, i Hotmaps-Wiki, Riktlinjer för att definiera indikatorer (april 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Författare och granskare</h2><p> Denna sida skrevs av Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Den här sidan granskades av Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 internationell licens</p><p> Detta arbete är licensierat under en Creative Commons CC BY 4.0 International License.</p><p> SPDX-licensidentifierare: CC-BY-4.0</p><p> Licenstext: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Bekräftelse</h2><p> Vi vill förmedla vår djupaste uppskattning till Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (bidragsavtal nummer 723677), som gav finansieringen för att genomföra den nuvarande utredningen.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Guidelines-for-defining-indicators) (original) [Bulgarian](../bg/Guidelines-for-defining-indicators)<sup>\*</sup> [Czech](../cs/Guidelines-for-defining-indicators)<sup>\*</sup> [Danish](../da/Guidelines-for-defining-indicators)<sup>\*</sup> [German](../de/Guidelines-for-defining-indicators)<sup>\*</sup> [Greek](../el/Guidelines-for-defining-indicators)<sup>\*</sup> [Spanish](../es/Guidelines-for-defining-indicators)<sup>\*</sup> [Estonian](../et/Guidelines-for-defining-indicators)<sup>\*</sup> [Finnish](../fi/Guidelines-for-defining-indicators)<sup>\*</sup> [French](../fr/Guidelines-for-defining-indicators)<sup>\*</sup> [Irish](../ga/Guidelines-for-defining-indicators)<sup>\*</sup> [Croatian](../hr/Guidelines-for-defining-indicators)<sup>\*</sup> [Hungarian](../hu/Guidelines-for-defining-indicators)<sup>\*</sup> [Italian](../it/Guidelines-for-defining-indicators)<sup>\*</sup> [Lithuanian](../lt/Guidelines-for-defining-indicators)<sup>\*</sup> [Latvian](../lv/Guidelines-for-defining-indicators)<sup>\*</sup> [Maltese](../mt/Guidelines-for-defining-indicators)<sup>\*</sup> [Dutch](../nl/Guidelines-for-defining-indicators)<sup>\*</sup> [Polish](../pl/Guidelines-for-defining-indicators)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Guidelines-for-defining-indicators)<sup>\*</sup> [Romanian](../ro/Guidelines-for-defining-indicators)<sup>\*</sup> [Slovak](../sk/Guidelines-for-defining-indicators)<sup>\*</sup> [Slovenian](../sl/Guidelines-for-defining-indicators)<sup>\*</sup>  

<sup>\*</sup> machine translated