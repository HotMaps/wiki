<h1><a class="anchor" id="local-level---step-2--calculation-of-future-heat-demand-and-gross-floor-area-density-maps" href="#local-level---step-2--calculation-of-future-heat-demand-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a>Lokalna razina - Korak 2: Izračun budućih potreba za toplinom i karata bruto gustine površine</h1><p> <a href="guide-local-and-municipal-levels#the-hotmaps-scenario-toolchain-different-steps"><strong><code>Scenario Toolchain Steps</code></strong></a> <a href="step-1-analysis-of-current-heat-demand-and-available-resource-potentials"><strong><code>Previous step</code></strong></a> <a href="step-3-Calculation-of-costs-of-decentral-heat-supply"><strong><code>Next step</code></strong></a><br/></p><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#introduction">Uvod</a></li><li> <a href="#calculation-of-future-heat-demand-and-gross-floor-area-density-maps">Proračun budućih potreba za toplinom i karata bruto gustoće podne površine</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ovo je drugi korak analize na lokalnoj i općinskoj razini.</p><img src="/en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps/Hotmaps_Local_Toolchain_Step_2final.png"/><p> <em>Slika: Koraci za izračunavanje budućih potreba za toplinom i karata bruto gustoće podne površine istaknuti su u Toolchain-u iznad</em></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="calculation-of-future-heat-demand-and-gross-floor-area-density-maps" href="#calculation-of-future-heat-demand-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a> Proračun budućih potreba za toplinom i karata bruto gustoće podne površine</h2><p> Drugi korak u analizi je generiranje budućih potreba za toplinom i karata bruto gustine površine za vaš grad / regiju od interesa. Možete koristiti podatke razvijene tijekom projekta Hotmaps za sve zemlje EU-28 ( <a href="https://wiki.hotmaps.eu/en/Hotmaps-open-data-repositories">zadani podaci Hotmaps-a</a> , dostupni u <a href="https://gitlab.com/hotmaps">bazi podataka Hotmaps</a> ), ili možete koristiti druge karte gustoće potražnje topline za vašu regiju od interesa.</p><ul><li> Koristite mape potražnje za toplinom i bruto gustine površine izrađene tijekom projekta Hotmaps - zadani podaci o gustoći potrebe za toplinom iz baze podataka Hotmaps:<ul><li> Za sve države članice EU-a 28 razvijene su mape gustoće potrebe za toplinom koje odražavaju potrebu za toplinom od grijanja prostora i proizvodnje tople vode u zgradama. Dostupni su kao ukupna potražnja u stambenim i nestambenim zgradama; ali i podijeljeni između stambenih i nestambenih zgrada. Sve su karte dostupne na razini hektara, odnosno rezolucije 100x100m. Kartama gustoće potrebe za toplinom može se pristupiti u odjeljku slojeva skupova podataka Hotmaps.</li><li> Karte gustoće potrebe za toplinom moguće je prilagoditi prema pretpostavkama koje se odnose na budući razvoj potrebe za toplinom u zgradama. Mogu se koristiti dva različita modula za računanje (CM):<ul><li> <a href="https://wiki.hotmaps.eu/en/CM-Scale-heat-and-cool-density-maps">Karte CM - Scale topline i gustine hladnoće</a> mogu se koristiti za ponovni izračun potrebe za toplinom na svakom hektaru koristeći isti faktor za sve elemente hektara.</li><li> <a href="https://wiki.hotmaps.eu/en/CM-Demand-projection">Projekcija CM - potražnje</a> može se koristiti za generiranje budućih potreba za toplinom i karata bruto gustine površine na temelju zadanih razvojnih scenarija građevinskog fonda u EU. Zadani scenariji također se mogu prilagoditi putem nekoliko parametara, poput smanjenja potražnje za energijom ili smanjenja bruto površine poda.</li></ul></li></ul></li><li> Koristite vlastite podatke o gustoći potrebe za toplinom u vašem području analize:<ul><li> Također je moguće učitati karte gustoće topline u rasterskom formatu datoteke (.tif) u alatni okvir Hotmaps prilikom izrade korisničkog računa i prijave na korisnički račun. Preneseni slojevi gustoće potrebe za toplinom mogu odražavati trenutnu situaciju gustoće potrebe za toplinom u području od interesa ili također mogući budući scenarij gustoće potrebe za toplinom, ovisno o ulaznim podacima koji se koriste za generiranje odgovarajućih slojeva. Više informacija o tome kako stvoriti korisnički račun i kako prenijeti vlastite podatke možete pronaći <a href="https://wiki.hotmaps.eu/en/Introduction-to-user-interface#upper-toolbar_connect">ovdje</a> .</li><li> Također je moguće dodatno prilagoditi vlastite karte gustoće topline pomoću <a href="https://wiki.hotmaps.eu/en/CM-Scale-heat-and-cool-density-maps">CM - Scale mapa gustoće topline i hladnoće</a> ili putem <a href="https://wiki.hotmaps.eu/en/CM-Demand-projection">CM - Demand projekcije</a> kao za zadani sloj.</li></ul></li></ul><p> Mape razvijene potrebe za toplinom i bruto gustoće podne površine dalje se koriste u sljedećim koracima u drugim modulima za izračunavanje (CM).</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Marcus Hummel, Giulia Conforto, u Hotmaps-Wiki, Smjernice za upotrebu alata Hotmaps za analize na lokalnoj razini (kolovoz 2020.)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu su stranicu napisali Marcus Hummel i Giulia Conforto ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> ☑ Ovu je stranicu pregledao Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Marcus Hummel, Giulia Conforto</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps) (original) [Bulgarian](../bg/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Czech](../cs/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Danish](../da/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [German](../de/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Greek](../el/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Spanish](../es/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Estonian](../et/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Finnish](../fi/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [French](../fr/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Irish](../ga/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup>  [Hungarian](../hu/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Italian](../it/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Lithuanian](../lt/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Latvian](../lv/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Maltese](../mt/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Dutch](../nl/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Polish](../pl/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Romanian](../ro/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Slovak](../sk/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Slovenian](../sl/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Swedish](../sv/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated