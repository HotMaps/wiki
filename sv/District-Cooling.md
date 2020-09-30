<h1><a class="anchor" id="concept-for-using-hotmaps-for-district-cooling" href="#concept-for-using-hotmaps-for-district-cooling"><i class="fa fa-link"></i></a>Koncept för att använda Hotmaps för fjärrkylning</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Innehållsförteckning</h2><ul><li> <a href="#in-a-glance">I en blick</a></li><li> <a href="#introduction">Introduktion</a></li><li> <a href="#method">Metod</a><ul><li> <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database">Användning av standardkylldensitetskartan från Hotmaps-databasen</a></li><li> <a href="#method_use-of-the-cm-scale-heat-and-cool-density-maps-to-adapt-the-default-map">Användning av CM - Skala värme- och kyltäthetskartor för att anpassa standardkartan</a></li><li> <a href="#method_create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules">Skapa en enskild kartläggningstäthetsknapp nedifrån och upp med hjälp av Hotmaps-data och -moduler</a></li><li> <a href="#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">Användning av CM - fjärrvärmepotentialområden: användardefinierade trösklar för att identifiera potentiella fjärrkylningsområden</a></li></ul></li><li> <a href="#references">Referenser</a></li><li> <a href="#how-to-cite">Hur man citerar</a></li><li> <a href="#authors-and-reviewers">Författare och granskare</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Bekräftelse</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> I en blick</h2><p> Denna sida syftar till att visa hur du använder Hotmaps-verktygslådan för att genomföra kylplanering. Pilotområdet i Aalborg kommun ses som ett studiefall, eftersom denna stad arbetar för fjärrkyla planering. Den potentiella tillämpningen av Hotmaps-databasen och verktygslådan demonstreras genom att visa användningen av olika datamängder och beräkningsmoduler för att undersöka kylbehovet och potentialen för fjärrkyla i staden.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Hotmaps-databasen och verktygslådan kan användas för kylplanering på följande sätt:</p><ul><li> Använd standardkartan för kylbehovstäthet för att analysera fjärrkylningspotentialer</li><li> Använd CM - Skala värme och kyldensitetskartor för att öka / minska kylbehovet i standardlagret för att passa andra uppskattningar</li><li> Använd dina egna data angående byggnadsmassan i analysområdet tillsammans med data om specifikt kylbehov per byggnadstyper från Hotmaps-databasen och beräkningsmodulen CM - Anpassad brutto golvyta och värmekravtäthetskartor för att skapa ett nedifrån och upp kylbehov densitetskarta för vidare användning</li><li> Använd CM - fjärrvärmepotentialområden: användardefinierade trösklar för att identifiera områden som är potentiellt intressanta för fjärrkylning</li></ul><p> Dessa olika steg förklaras i detalj i följande avsnitt. Dessutom illustreras dessa med exemplet från Aalborg kommun.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metod</h2><h3><a class="anchor" id="use-of-the-default-cooling-density-map-from-the-hotmaps-database" href="#use-of-the-default-cooling-density-map-from-the-hotmaps-database"><i class="fa fa-link"></i></a> Användning av standardkylldensitetskartan från Hotmaps-databasen</h3><p> Hotmaps-databasen tillhandahåller en täthetskarta för kylningsbehov för hela EU28-länderna på en nivå av 100 x 100 m. Detta rasterskikt finns i online <a href="https://www.hotmaps.eu">Hotmaps-verktygslådan</a> samt i datalagret på gitlab. I det följande förklaras hur man förbereder kartan för användning i CM - fjärrvärmepotentialområden: användardefinierade trösklar.</p><h4><a class="anchor" id="create-an-account-for-the-hotmaps-toolbox." href="#create-an-account-for-the-hotmaps-toolbox."><i class="fa fa-link"></i></a> Skapa ett konto för Hotmaps-verktygslådan.</h4><p> Du hittar en beskrivning av proceduren för att göra det under följande <a href="/en/Introduction-to-user-interface">länk</a> .</p><h4><a class="anchor" id="download-a-selection-of-the-default-cooling-density-map-from-the-hotmaps-database" href="#download-a-selection-of-the-default-cooling-density-map-from-the-hotmaps-database"><i class="fa fa-link"></i></a> Ladda ner ett urval av standardkylldensitetskartan från Hotmaps-databasen</h4><p> Gör följande för att ladda ner kyltäthetskartan (eller ett urval av kartan) som en rasterfil och spara den på din dator:</p><ul><li> Zooma till den plats som du vill analysera (t.ex. Aalborg).</li><li> Klicka på avgränsningsrutan som innehåller intresseområdet (se till att du förblir på skalan &#39;LAU2&#39;), eller välj ett anpassat område genom att rita platsgränserna (se till att du förblir på skalan &#39;Hektar&#39;). I det här fallet ritar du gränserna runt intresseområdet med hjälp av ritverktyget:<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> Du kan välja mellan rektangulär, cirkelformad eller polygon. Klicka sedan på den ritade avgränsningsrutan för att välja området.</li><li> Välj kategorin &quot;Total kyltäthet&quot; i den vänstra panelen under &quot;Lager&quot;.</li><li> Ladda ned kyltäthetskartan som en rasterfil och spara den på din dator för det valda området genom att klicka på symbolen &quot;Ladda ner lagerval&quot;<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/logo_download_selection_1.jpg" width="20"/> under skiktet &quot;Total kyltäthet&quot;.</li></ul><h4><a class="anchor" id="upload-the-selected-cooling-demand-density-map-to-your-private-account" href="#upload-the-selected-cooling-demand-density-map-to-your-private-account"><i class="fa fa-link"></i></a> Ladda upp den valda kartan för kylbehovstäthet till ditt privata konto</h4><p> Utför följande steg för att ladda upp kylbehovsdata till Hotmaps-verktygslådan:</p><ul><li> Avmarkera alla lager i den vänstra panelen.</li><li> Logga in på ditt användarkonto och klicka sedan på knappen &#39;konto&#39;.</li><li> Klicka på &#39;Välj filer&#39; i det nedre högra hörnet av kontofönstret och fortsätt till din lagringsmapp för att ladda upp dina filer.</li><li> Välj rasterfilen för &quot;Cooling Density Total&quot; som du har laddat ner ovan (t.ex. &quot;cool_tot_curr_density.tif&quot;). Välj rasterfiltypen &quot;(Byggnad) Total värmedensitet&quot;, trots att lagertypen i själva verket är &quot;Kyltäthet totalt&quot;. På så sätt kan kyltätheten användas i beräkningsmodulerna för att undersöka och bedöma fjärrkylningspotentialerna.</li><li> Det uppladdade lagret visas högst upp på panelen till vänsterlager och kan användas som inbäddade lager.</li></ul><p> Nu kan du använda den skräddarsydda nedre upp-kylningskravet för täthet för fjärrkylning med hjälp av <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Fjärrvärmepotentialområden: användardefinierade trösklar</a> som beskrivs i <a href="/en/District-Cooling#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">fjärde steget</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="use-of-the-cm---scale-heat-and-cool-density-maps-to-adapt-the-default-map" href="#use-of-the-cm---scale-heat-and-cool-density-maps-to-adapt-the-default-map"><i class="fa fa-link"></i></a> Användning av CM - Skala värme- och kyltäthetskartor för att anpassa standardkartan</h3><p> Den här modulen skalar standardlagret med en given faktor. Syftet är att ge möjlighet att generera ett värme- eller kalltäthetsskikt med något totalvärde. Om du t.ex. vill öka kylbehovet med 20%.</p><p> För att skala och ladda ner ett kylskiktskartlager som ska användas för CM - Fjärrvärmepotentialområden: användardefinierade trösklar, utför följande steg:</p><ul><li> Zooma till den plats som du vill analysera (t.ex. Aalborg).</li><li> Klicka på avgränsningsrutan som innehåller intresseområdet. Se till att du stannar kvar på skalan &#39;LAU2&#39;.</li><li> Eller välj ett anpassat område genom att rita platsgränserna. Se till att du förblir på skalan &#39;Hektar&#39;.</li><li> Rita gränserna runt intresseområdet med hjälp av ritverktyget<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> . Du kan välja mellan rektangulär, cirkelformad eller en polylinje.</li><li> Klicka på den ritade avgränsningsrutan för att välja området.</li><li> I den vänstra panelen i verktygslådan under &quot;Lager&quot; väljer du fliken &quot;Beräkningsmoduler&quot;</li><li> Välj &quot;CM - Skala värme- och svaltäthetskartor&quot;.</li><li> Ställ in ingångsparametrarna efter ditt behov: t.ex. “1.2” för att öka kylbehovet med 20%.</li><li> Skriv in ett namn för den beräkning du ska utföra (du kan använda en slumpmässig titel).</li><li> Kör CM genom att klicka på knappen &quot;KÖR CM&quot;.</li><li> Beräkningen ger ett nytt &quot;kyltäthetsskikt&quot; med ett 20% högre kylbehov, detta finns i lageravsnittet till vänster längst ner på alla tillgängliga lager.</li><li> Ladda ner det resulterande lagret (och byt namn på det om det behövs).</li><li> Ladda upp den skalade kylningsbehovsdata till Hotmaps-verktygslådan, som beskrivs <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database_upload-the-selected-cooling-demand-density-map-to-your-private-account">ovan</a> .</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules" href="#create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules"><i class="fa fa-link"></i></a> Skapa en enskild kartläggningstäthetsknapp nedifrån och upp med hjälp av Hotmaps-data och moduler</h3><p> För att utveckla en anpassad nedifrån och upp-kylningstäthetskarta baserad på lokal data, gör följande steg:</p><ul><li> Skaffa lokala uppgifter om byggnadsmaterial (inklusive plats / koordinater, byggnadsområde, byggnadstyp, byggår eller period).</li><li> Ladda ner data från Hotmaps Building Stock om det slutliga energibehovet för rumsuppvärmning (SH), rymdkylning (SC) och varmvatten (DHW) för varje EU28 <a href="https://gitlab.com/hotmaps/building-stock">härifrån</a></li><li> Hitta det land du arbetar med eller använd EU28-genomsnittet i Hotmaps Building Stock-data.</li><li> Klassificera din lokala byggnadsdata till undersektorerna och byggnadens åldersklass för Hotmaps Building Stock-data.</li><li> Anslut det slutliga kylbehovet för varje undersektor och byggnadens åldersklass med dina lokala byggnadsdata för varje byggnad och beräkna det slutliga energibehovet för kylning.</li><li> Konvertera ditt kalkylblad till .csv eller .xls för att skapa en shapefile .shp baserat på samordningen av varje byggnad och det slutliga energibehovet för kylning.</li><li> Skapa en nedifrån och upp-kylningstäthetskarta .tif med hjälp av Hotmaps CM-anpassade värmekartor och golvtäthetskartor. Beskrivning finns på Wiki-sidan <a href="/en/CM-Customized-heat-and-floor-area-density-maps">CM - Anpassade värme- och golvtäthetskartor</a> , som också innehåller <a href="https://github.com/HotMaps/customized_h_fa_dm">länken till koden</a> .</li><li> Ladda upp det utvecklade lagret som du skulle göra för ett urval av standardlagret som beskrivs i föregående avsnitt] (/ sv / District-cooling_Upload-the-cooling-demand-density-map-to-your-private-account).</li></ul><p> Nu kan du använda den skräddarsydda nedre upp-kylningskravet för täthet för fjärrkylning med hjälp av <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Fjärrvärmepotentialområden: användardefinierade trösklar</a> som beskrivs i <a href="/en/District-Cooling#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">fjärde steget</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="use-of-the-cm-–-district-heating-potential-areas--user-defined-thresholds-to-identify-potential-district-cooling-areas" href="#use-of-the-cm-–-district-heating-potential-areas--user-defined-thresholds-to-identify-potential-district-cooling-areas"><i class="fa fa-link"></i></a> Användning av CM - fjärrvärmepotentialområden: användardefinierade trösklar för att identifiera potentiella fjärrkylningsområden</h3><p> Beräkningsmodulen <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Fjärrvärmepotentialområden: användardefinierade trösklar</a> genererar en formfil av potentiella fjärrkylaområden baserat på följande ingångsdata: en kyltäthetskarta med 1 hektar (ha) upplösning, en kylbehovströskel för kylbehov varje cell i kyltäthetskartan och en kylbehovströskel för grupper av anslutna celler med kylbehov över det föregående tröskelvärdet (= sammanhängande område).</p><p> För att beräkna och jämföra olika scenarier för potentiella fjärrkylaområden baserat på de två tröskelvärden som används i modulen, utför följande steg:</p><ul><li> Zooma till den plats som du vill undersöka (t.ex. Aalborg).</li><li> Rita och välj en avgränsningsruta som innehåller intresseområdet.</li><li> OBS! Se till att du är i skalan &quot;Hektar&quot; för att kunna använda dina uppladdade lager.</li><li> Rita gränserna runt intresseområdet med hjälp av ritverktyget<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> (rektangulär, cirkelformad eller polygon).</li><li> Klicka på den ritade avgränsningsrutan för att välja området.</li><li> I den vänstra panelen i verktygslådan under &quot;Lager&quot; väljer du fliken &quot;Beräkningsmoduler&quot;</li><li> Välj &#39;CM - Fjärrvärmepotentialområden: användardefinierade trösklar&#39;.</li><li> Ställ in ingångsparametrarna enligt valvärdena för att undersöka och få tillgång till fjärrkylningspotentialerna. Densitetströskeln bör vara lägre för fjärrkylning jämfört med fjärrvärme, med tanke på fjärrkylningens karaktär. Parametrarna kan ställas in till exempel på:<ul><li> Min. värmebehov i hektar (“Min. kylbehov i hektar”): i intervallet mellan 75 och 15 MWh / ha / år.</li><li> Min. värmebehov i ett DH-område (“Min. kylbehov i ett DC-område”): i intervallet mellan 10 och 1 GWh / år.</li></ul></li><li> I INPUT TYPE SELECTION väljer du kylbehovstäthetsskiktet du har laddat upp och du vill analysera.</li><li> Skriv in ett namn för den beräkning du ska utföra (du kan använda en slumpmässig titel).</li><li> Kör CM genom att klicka på knappen &quot;KÖR CM&quot;.</li><li> När beräkningen är klar kan du hitta de beräknade indikatorerna i resultatsektionen i verktygslådans högra panel. Det ger 3 resultat:<ul><li> Totalt värmebehov (kallt) i GWh inom vald zon</li><li> Total fjärrvärmepotential (kylning) i GWh inom vald zon</li><li> Potentiell andel fjärrvärme (kylning) från totalt behov i vald zon</li></ul></li><li> Beräkningen ger också tre nya lager:<ul><li> DC-områden - ett raster som visar de potentiella DC-områdena,</li><li> Kyltäthetskarta i potentiella DC-områden - ett raster, en klippning av den ingående kyltäthetskartan baserat på de potentiella DC-områdena</li><li> DC-områden och deras potentialer - en formfil, polygoner av de potentiella DC-områdena.</li></ul></li><li> Dessa finns i lageravsnittet i den vänstra panelen (du måste stänga beräkningsmodulerna med &#39;X&#39; och flytta till &#39;Lager&#39;) längst ner på alla tillgängliga lager. Ta en skärmdump av dessa lager och sätt in den här.</li></ul><img src="/en/District-Cooling/DCooling_2-min.png"/> Figur 1: Identifierat område för kylningspotential i centrum av Aalborg kommun<p> <strong>VIKTIG NOTERING</strong></p><p> För att se dessa utgående lager kan du behöva avmarkera de andra lagren. Om du fortfarande inte ser dem, försök att zooma ut, eftersom det ibland finns en visualiseringsfel. Du kan också ladda ner dem och ladda upp dem igen med ditt personliga konto (du måste logga in innan), det löser alltid problemet. Eller så kan du ladda dem i ditt GIS-program.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referenser</h2><p> Pezzutto et. al., 2019: <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">D2.3 WP2-rapport - Öppna datamängden för EU28</a></p><p> Pezzutto, Croce, Zambotti, 2019. <a href="https://gitlab.com/hotmaps/building-stock">Byggnadsanalys &#39;- utvecklad under D.2.3 WP2</a></p><p> Mostafa Fallahnejad, 2020. <a href="https://github.com/HotMaps/customized_h_fa_dm">Fristående CM: Anpassade</a> värmekartor och golvytor</p><p> Mostafa Fallahnejad, i Hotmaps-Wiki, CM-anpassade värme- och brutto golvyta kartor (april 2019).</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hur man citerar</h2><p> Anders M. Odgaard, i Hotmaps-Wiki, Koncept för användning av Hotmaps för fjärrkylning (september 2020)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Författare och granskare</h2><p> Denna sida skrevs av Anders M. Odgaard <strong><a href="https://planenergi.dk/">Planenergie</a></strong> .</p><p> ☑ Den här sidan granskades av Marcus Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Copyright © 2016-2020: Anders M. Odgaard</p><p> Creative Commons Attribution 4.0 internationell licens</p><p> Detta arbete är licensierat under en Creative Commons CC BY 4.0 International License.</p><p> SPDX-licensidentifierare: CC-BY-4.0</p><p> Licenstext: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Bekräftelse</h2><p> Vi vill förmedla vår djupaste uppskattning till Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (bidragsavtal nummer 723677), som gav finansieringen för att genomföra den nuvarande utredningen.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/District-Cooling) (original) [Bulgarian](../bg/District-Cooling)<sup>\*</sup> [Czech](../cs/District-Cooling)<sup>\*</sup> [Danish](../da/District-Cooling)<sup>\*</sup> [German](../de/District-Cooling)<sup>\*</sup> [Greek](../el/District-Cooling)<sup>\*</sup> [Spanish](../es/District-Cooling)<sup>\*</sup> [Estonian](../et/District-Cooling)<sup>\*</sup> [Finnish](../fi/District-Cooling)<sup>\*</sup> [French](../fr/District-Cooling)<sup>\*</sup> [Irish](../ga/District-Cooling)<sup>\*</sup> [Croatian](../hr/District-Cooling)<sup>\*</sup> [Hungarian](../hu/District-Cooling)<sup>\*</sup> [Italian](../it/District-Cooling)<sup>\*</sup> [Lithuanian](../lt/District-Cooling)<sup>\*</sup> [Latvian](../lv/District-Cooling)<sup>\*</sup> [Maltese](../mt/District-Cooling)<sup>\*</sup> [Dutch](../nl/District-Cooling)<sup>\*</sup> [Polish](../pl/District-Cooling)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/District-Cooling)<sup>\*</sup> [Romanian](../ro/District-Cooling)<sup>\*</sup> [Slovak](../sk/District-Cooling)<sup>\*</sup> [Slovenian](../sl/District-Cooling)<sup>\*</sup>  

<sup>\*</sup> machine translated