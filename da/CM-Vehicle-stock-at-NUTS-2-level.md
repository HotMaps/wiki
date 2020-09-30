<h1><a class="anchor" id="cm-vehicle-stock-at-nuts-2-level" href="#cm-vehicle-stock-at-nuts-2-level"><i class="fa fa-link"></i></a>CM køretøjslager på NUTS 2 niveau</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Indholdsfortegnelse</h2><ul><li> <a href="#in-a-glance">På et øjeblik</a></li><li> <a href="#introduction">Introduktion</a></li><li> <a href="#inputs-and-outputs">Ind- og udgange</a></li><li> <a href="#method">Metode</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub-arkiv for dette beregningsmodul</a></li><li> <a href="#sample-run">Prøvekørsel</a></li><li> <a href="#references">Referencer</a></li><li> <a href="#how-to-cite">Hvordan man citerer</a></li><li> <a href="#authors-and-reviewers">Forfattere og korrekturlæsere</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Anerkendelse</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> På et øjeblik</h2><p> Dette beregningsmodul viser køretøjets lagerprofil i NUTS 2-niveau fra 1990 op til år 2030 baseret på et business as usual-scenario. Datasættet kan også findes i Hotmaps-datasættet. De illustrerede tal på NUTS 2-niveau blev ekstrapoleret baseret på værdier på NUTS 0-data. De historiske datapunkter blev ekstrapoleret baseret på fremtidige tendenser for udvalgte indikatorer afledt af PRIMES – TREMOVE EU 2016-referencescenariet.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Dette beregningsmodul viser køretøjets lagerprofil i NUTS 2-niveau frem til år 2030 baseret på et business as usual-scenario. Datasættet kan også findes i Hotmaps-arkivet. De illustrerede tal på NUTS 2-niveau blev ekstrapoleret baseret på værdier på NUTS 0-data. De historiske datapunkter blev ekstrapoleret baseret på fremtidige tendenser for udvalgte indikatorer afledt af referencescenariet PRIMES – TREMOVE EU 2016 <a href="#references">[1]</a> .</p><p> Beregningsmodulet kan kun køres på NUTS 2-niveau.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ind- og udgange</h2><p> <strong>Indgange</strong> : Denne CM kræver ingen inputparameter fra brugeren. Brugeren skal kun vælge en eller flere NUTS 2-regioner.</p><p> <strong>Udgange</strong> :</p><ul><li> Indikatorer:<ul><li> Køretøjslager i periodens første år</li><li> Køretøjslager i periodens sidste år</li></ul></li><li> Grafik:<ul><li> Et søjlediagram er afbildet for at vise statuerne af køretøjets lagre i forskellige år.</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="methodology" href="#methodology"><i class="fa fa-link"></i></a> Metodologi</h2><p> NUTS2-dataene (2006) er resultatet af en rumlig interpolering af køretøjets lagerdata på NUT0-niveau ved hjælp af NUTS2-dataene for antallet af køretøjslager og BNP på NUTS2-niveau som proxy. Desuden er den oprindelige 5 års opløsning af <a href="https://gitlab.com/hotmaps/transport/nuts0">dataene på NUTS0-niveau</a> blevet interpoleret med en årlig opløsning. Resultaterne vises i form af indikatorer og en graf.</p><p> <strong>Det skal bemærkes, at i tilfælde af udvælgelse af to eller flere regioner præsenteres en samlet værdi. Desuden skal det bemærkes, at dataene er tilgængelige i forskellige perioder afhængigt af NUTS 2-regionen (f.eks. En region fra 1999 til 2030 og den anden fra 1995 til 2030). Derfor, i tilfælde af valg af to eller flere regioner, bør værdierne fra de regioner, der udgør regioner, også overvejes af brugeren.</strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub-lager af dette beregningsmodul</h2><p> <a href="https://github.com/HotMaps/vehicle_stock/tree/develop">Her</a> får du banebrydende udvikling for dette beregningsmodul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Prøvekørsel</h2><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/1.png"/><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/2.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referencer</h2><p> [1] Europa-Kommissionen, &quot;EU Referencescenario 2016.&quot; [Online]. Tilgængelig: https://data.europa.eu/euodp/data/dataset/energy-modelling.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hvordan man citerer</h2><p> Mostafa Fallahnejad, i Hotmaps-Wiki, CM-Vehicle-stock-på-NUTS-2-niveau (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Forfattere og korrekturlæsere</h2><p> Denne side blev skrevet af Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Denne side blev gennemgået af Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Ophavsret © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 International licens</p><p> Dette arbejde er licenseret under en Creative Commons CC BY 4.0 International licens.</p><p> SPDX-licensidentifikator: CC-BY-4.0</p><p> Licens-tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Anerkendelse</h2><p> Vi vil gerne formidle vores dybeste påskønnelse til Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (tilskudsaftale nummer 723677), som gav finansieringen til at gennemføre den nuværende undersøgelse.</p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Vehicle-stock-at-NUTS-2-level) (original) [Bulgarian](../bg/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Czech](../cs/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup>  [German](../de/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Greek](../el/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Spanish](../es/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Estonian](../et/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Finnish](../fi/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [French](../fr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Irish](../ga/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Croatian](../hr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Hungarian](../hu/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Italian](../it/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Lithuanian](../lt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Latvian](../lv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Maltese](../mt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Dutch](../nl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Polish](../pl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Romanian](../ro/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovak](../sk/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovenian](../sl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Swedish](../sv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> 

<sup>\*</sup> machine translated