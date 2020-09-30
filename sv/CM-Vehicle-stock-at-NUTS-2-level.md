<h1><a class="anchor" id="cm-vehicle-stock-at-nuts-2-level" href="#cm-vehicle-stock-at-nuts-2-level"><i class="fa fa-link"></i></a>CM Fordonslager på NUTS 2-nivå</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Innehållsförteckning</h2><ul><li> <a href="#in-a-glance">I en blick</a></li><li> <a href="#introduction">Introduktion</a></li><li> <a href="#inputs-and-outputs">In- och utgångar</a></li><li> <a href="#method">Metod</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub-förvar för denna beräkningsmodul</a></li><li> <a href="#sample-run">Provkörning</a></li><li> <a href="#references">Referenser</a></li><li> <a href="#how-to-cite">Hur man citerar</a></li><li> <a href="#authors-and-reviewers">Författare och granskare</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Bekräftelse</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> I en blick</h2><p> Denna beräkningsmodul visar fordonslagerprofilen i NUTS 2-nivå från 1990 till år 2030 baserat på ett business as usual-scenario. Datauppsättningen finns också i Hotmaps-datauppsättningsförvar. De illustrerade siffrorna på NUTS 2-nivån extrapolerades baserat på värden på NUTS 0-data. De historiska datapunkterna extrapolerades baserat på framtida trender för utvalda indikatorer härledda från referensscenariot PRIMES – TREMOVE EU 2016.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Denna beräkningsmodul visar fordonslagerprofilen på NUTS 2-nivå fram till år 2030 baserat på ett business as usual-scenario. Datauppsättningen finns också i Hotmaps-arkivet. De illustrerade siffrorna på NUTS 2-nivån extrapolerades baserat på värden på NUTS 0-data. De historiska datapunkterna extrapolerades baserat på framtida trender för utvalda indikatorer härledda från referensscenariot PRIMES – TREMOVE EU 2016 <a href="#references">[1]</a> .</p><p> Beräkningsmodulen kan endast köras på NUTS 2-nivå.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> In- och utgångar</h2><p> <strong>Ingångar</strong> : Denna CM kräver ingen ingångsparameter från användaren. Användaren ska bara välja en eller flera NUTS 2-regioner.</p><p> <strong>Utgångar</strong> :</p><ul><li> Indikatorer:<ul><li> Fordonslager under periodens första år</li><li> Fordonslager under periodens sista år</li></ul></li><li> Grafik:<ul><li> Ett stapeldiagram visas för att visa statyerna av fordonslagren under olika år.</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="methodology" href="#methodology"><i class="fa fa-link"></i></a> Metodik</h2><p> NUTS2-data (2006) är resultatet av en rumslig interpolering av fordonslagerdata på NUT0-nivå, med NUTS2-data för antalet fordonslager och BNP på NUTS2-nivå som proxy. Dessutom har den ursprungliga 5 års upplösningen av <a href="https://gitlab.com/hotmaps/transport/nuts0">data på NUTS0-nivå</a> interpolerats med en årlig upplösning. Resultaten visas i form av indikatorer och en graf.</p><p> <strong>Det bör noteras att vid val av två eller flera regioner presenteras ett aggregerat värde. Dessutom bör det noteras att uppgifterna finns tillgängliga för olika perioder beroende på NUTS 2-regionen (t.ex. en region från 1999 till 2030 och den andra från 1995 till 2030). Därför, vid val av två eller flera regioner, bör värdena från bildande regioner också beaktas av användaren.</strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub-förvar för denna beräkningsmodul</h2><p> <a href="https://github.com/HotMaps/vehicle_stock/tree/develop">Här</a> får du banbrytande utveckling för denna beräkningsmodul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Provkörning</h2><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/1.png"/><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/2.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referenser</h2><p> [1] Europeiska kommissionen, ”EU-referensscenario 2016.” [Uppkopplad]. Tillgänglig: https://data.europa.eu/euodp/data/dataset/energy-modelling.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hur man citerar</h2><p> Mostafa Fallahnejad, i Hotmaps-Wiki, CM-Vehicle-stock-at-NUTS-2-level (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Författare och granskare</h2><p> Denna sida skrevs av Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> Den här sidan granskades av Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 internationell licens</p><p> Detta arbete är licensierat under en Creative Commons CC BY 4.0 International License.</p><p> SPDX-licensidentifierare: CC-BY-4.0</p><p> Licenstext: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Bekräftelse</h2><p> Vi vill förmedla vår djupaste uppskattning till Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (bidragsavtal nummer 723677), som gav finansieringen för att genomföra den nuvarande utredningen.</p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Vehicle-stock-at-NUTS-2-level) (original) [Bulgarian](../bg/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Czech](../cs/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Danish](../da/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [German](../de/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Greek](../el/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Spanish](../es/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Estonian](../et/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Finnish](../fi/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [French](../fr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Irish](../ga/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Croatian](../hr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Hungarian](../hu/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Italian](../it/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Lithuanian](../lt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Latvian](../lv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Maltese](../mt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Dutch](../nl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Polish](../pl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Romanian](../ro/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovak](../sk/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovenian](../sl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup>  

<sup>\*</sup> machine translated