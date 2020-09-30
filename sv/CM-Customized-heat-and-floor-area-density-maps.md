<h1><a class="anchor" id="cm-customized-heat-and-gross-floor-area-density-maps" href="#cm-customized-heat-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a>CM Anpassade kartor för värme och brutto golvyta</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Innehållsförteckning</h2><ul><li> <a href="#in-a-glance">I en blick</a></li><li> <a href="#introduction">Introduktion</a></li><li> <a href="#inputs-and-outputs">In- och utgångar</a></li><li> <a href="#method">Metod</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub-förvar för denna beräkningsmodul</a></li><li> <a href="#how-to-cite">Hur man citerar</a></li><li> <a href="#authors-and-reviewers">Författare och granskare</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Bekräftelse</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> I en blick</h2><p> Den här modulen genererar rasterfiler både för en värmedensitet och en brutto golvyta densitetskarta i det format som krävs av Hotmaps-verktygslådan. Ingångsdata tillhandahålls i form av en CSV-fil som innehåller information om plats, brutto golvyta och värmebehov för varje enskild byggnad som ska beaktas.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Den här modulen genererar både en värmetäthet och en brutto golvyta i kartan i form av rasterfiler. Ingången till modulen är en CSV-fil med vissa kolumnrubriker. Den ska innehålla följande data: X- och Y-koordinaten för byggnadernas centrum i EPSG: 3035-koordinatsystem, bruttoytan och byggnadernas årliga värmebehov. De genererade rasterfilerna följer nödvändig projektion och upplösning av Hotmaps-verktygslådan och kan därför enkelt laddas upp till användarkontona.</p><p> Denna modul är endast tillgänglig som en fristående modul; den är inte integrerad i onlineversionen av Hotmaps-verktygslådan. Användarna av denna CM bör känna till pythonprogrammering och har installerat nödvändiga bibliotek (t.ex. Numpy, Pandas, GeoPandas och GDAL).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> In- och utgångar</h2><p> <strong>Ingångar</strong></p><p> Modulen accepterar en CSV-fil som inmatning. Följande rubriker förväntas för någon av de inmatade filtyperna (bör finnas i rubriken till CSV-filen):</p><ul><li> <strong>hotmaps_ID</strong> : ange ett unikt heltal-ID för varje funktion (polygon)</li><li> <strong>Typ</strong> : Byggnadstyp: inställd på 1 för tjänstesektorn; andra värden betraktas som bostäder (valfritt: kan lämnas tomt)</li><li> <strong>Year_Construction</strong> : Byggår (valfritt: kan lämnas tomt)</li><li> <strong>Adress</strong> : Byggnadens adress (valfritt: kan lämnas tom)</li><li> <strong>GFA</strong> : Brutto golvyta i <strong><em>m <sup>2</sup></em></strong></li><li> <strong>Fotavtryck</strong> : byggnadens fotavtryck i <strong><em>m <sup>2</sup></em></strong> (krävs om värden för GFA inte anges)</li><li> <strong>NrFloor</strong> : antal våningar (krävs om värden för GFA inte anges)</li><li> <strong>spec_demand</strong> : Specifikt värmebehov för varje funktion (polygon) i <strong><em>kWh</em></strong></li><li> <strong>efterfrågan</strong> : Värmebehov för varje funktion (polygon) i <strong><em>kWh</em></strong></li><li> <strong>X_3035</strong> : X-koordinaten för funktionens mitt (polygon) i EPSG 3035-projektion (obligatorisk för CSV-filen: kan lämnas tom)</li><li> <strong>Y_3035</strong> : Y-koordinaten för funktionens mitt (polygon) i EPSG 3035-projektion (obligatorisk för CSV-filen: kan lämnas tom)</li></ul><p> <strong>Viktig anmärkning</strong> : <code>The headers should be written as stated above. Otherwise, the code will break and returns an error.</code></p><p> <strong>Utgångar</strong></p><p> Som utdata genereras två rasterfiler:</p><ul><li> En täthetskarta för golvytor med pixelvärden i <strong><em>m <sup>2</sup> per hektar</em></strong></li><li> En värmekravstäthetskarta med pixelvärden i <strong><em>MWh per hektar</em></strong></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metod</h2><p> För att visualisera en egen rasterfil i Hotmaps-verktygslådan bör den respektera reglerna som definierats av verktygslådan. Generellt bör en raster:</p><ol><li> ha CRS för <strong>ETRS89-utvidgat / LAEA Europe - EPSG: 3035</strong> ;</li><li> Koordinaten för rasterursprunget (rasterets övre vänstra hörn) ska vara ett multiplikatorn på 100, t.ex. (4334900, 3019700);</li><li> Upplösningen på rasterkartan bör vara 100x100m;</li><li> Rastern ska hänvisa till en plats i Europa.</li></ol><p> Baserat på ovanstående kriterier och koordinater som ges i inmatad CSV-fil, tilldelas varje ingångskoordinat till en viss pixel. Inmatningar som tilldelats en enda pixel är aggregerade. Den nedre vänstra pixeln och den övre högra pixeln bestämmer pixelns utsträckning. Kartans upplösning är 100x100m. Följaktligen genereras en värmedensitetskarta och brutto golvyta karta.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub-förvar för denna beräkningsmodul</h2><p> <strong><a href="https://github.com/HotMaps/customized_h_fa_dm">Här</a></strong> får du banbrytande utveckling för denna beräkningsmodul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hur man citerar</h2><p> Mostafa Fallahnejad, i Hotmaps-Wiki, CM Anpassade kartor för värme och brutto golvyta (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Författare och granskare</h2><p> Denna sida skrevs av Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> Den här sidan granskades av Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 internationell licens</p><p> Detta arbete är licensierat under en Creative Commons CC BY 4.0 International License.</p><p> SPDX-licensidentifierare: CC-BY-4.0</p><p> Licenstext: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Bekräftelse</h2><p> Vi vill förmedla vår djupaste uppskattning till Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (bidragsöverenskommelse nummer 723677), som gav finansieringen för att genomföra denna undersökning.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Customized-heat-and-floor-area-density-maps) (original) [Bulgarian](../bg/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Czech](../cs/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Danish](../da/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [German](../de/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Greek](../el/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Spanish](../es/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Estonian](../et/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Finnish](../fi/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [French](../fr/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Irish](../ga/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Croatian](../hr/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Hungarian](../hu/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Italian](../it/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Polish](../pl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Slovenian](../sl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup>  

<sup>\*</sup> machine translated