<h1><a class="anchor" id="cm-scale-heat-and-cool-density-maps" href="#cm-scale-heat-and-cool-density-maps"><i class="fa fa-link"></i></a>CM Razmjeri karte topline i gustine hladnog zraka</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#in-a-glance">U jednom pogledu</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Ulazi i izlazi</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#interpretation-of-results">Tumačenje rezultata</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub spremište ovog kalkulacijskog modula</a></li><li> <a href="#sample-run">Uzorak trčanja</a><ul><li> <a href="#sample-run_test-run-default-input-values">Probno pokretanje: zadane ulazne vrijednosti</a></li></ul></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> U jednom pogledu</h2><p> Ovaj modul skalira zadani sloj s danim faktorom. Često se zahtjevi za toplinom i hladnoćom izvještavaju agregirano u energetskim bilansima. Korištenjem ovog modula za proračun moguće nam je raspodjelu zadanih mapa gustoće topline i hladnoće Hotmaps kako bismo objedinili takve vrijednosti. To se postiže skaliranjem zadanih Hotmaps mapa topline i hladnoće do ili do postizanja željene vrijednosti.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ovaj modul skalira zadani sloj s danim faktorom. Često se zahtjevi za toplinom i hladnoćom izvještavaju agregirano u energetskim bilansima. Korištenjem ovog modula za proračun moguće nam je raspodjelu zadanih mapa gustoće topline i hladnoće Hotmaps kako bismo objedinili takve vrijednosti. To se postiže skaliranjem zadanih Hotmaps mapa topline i hladnoće do ili do postizanja željene vrijednosti. Modul za izračunavanje nudi novi raster skaliranjem mape gustoće rastera prema faktoru koji je odabrao korisnik. Generira novi raster množenjem svake ćelije ulaznog rastera zadanim faktorom.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ulazi i izlazi</h2><p> Ulazni parametri i slojevi, kao i izlazni slojevi i parametri, su kako slijedi.</p><p> <strong>Ulazni slojevi i parametri su:</strong></p><ul><li> Faktor množenja [-]: stvarna vrijednost između <em><em>0</em></em> i <em><em>1000</em></em><ul><li> ako je faktor množenja&gt; 1, izlazni raster je veći od ulaznog.</li><li> ako je faktor množenja &lt;1, izlazni raster je manji od ulaznog.</li></ul></li><li> Sloj za skaliranje:<ul><li> Karta gustoće topline ili hladnjaka u rasterskom formatu (* .tif): Moguće je i skaliranje osobne topline i hladnoće gustoće prema gore ili dolje.</li></ul></li></ul><p> <strong>Izlazni slojevi i parametri su:</strong></p><ul><li> Izlazni raster (* .tif), koji odgovara ulazu skaliranom faktorom množenja.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Vrijednost svake ćelije ulaznog rastera množi se s faktorom množenja.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-results" href="#interpretation-of-results"><i class="fa fa-link"></i></a> Tumačenje rezultata</h2><p> Ako znamo ukupnu potrošnju područja, a pokazatelj <em>Ukupna potreba za glavom</em> ne odgovara ovoj vrijednosti, moguće je skaliranje potražnje za toplinom omjerom (Total_real / Total_default). Sljedeća slika daje primjer vrijednosti faktora množenja od 0,5.</p><img alt="Fig. 1-0" src="/images/Wiki_CM_scale.png" title="Nazovite sesiju pokretanja"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub spremište ovog kalkulacijskog modula</h2><p> <a href="https://github.com/HotMaps/base_calculation_module">Ovdje</a> ćete dobiti vrhunski razvoj za ovaj modul izračuna.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Uzorak trčanja</h2><p> Ovdje je pokrenut modul za izradu studije slučaja iz Beča u Austriji. Prvo upotrijebite traku &quot;Idi na mjesto&quot; za navigaciju do Beča i odaberite grad. Kliknite gumb &quot;Slojevi&quot; da biste otvorili prozor &quot;Slojevi&quot;, a zatim kliknite karticu &quot;MODUL OBRAČUNA&quot;. Na popisu kalkulacijskih modula odaberite &quot;CM - Razmjeri karte topline i gustoće hladnog zraka&quot;.</p><h3><a class="anchor" id="test-run--default-input-values" href="#test-run--default-input-values"><i class="fa fa-link"></i></a> Probno pokretanje: zadane ulazne vrijednosti</h3><p> Nakon pritiska na run nova karta gustoće izračunava se na temelju odabrane karte. Zadana vrijednost ovdje je ukupna karta gustoće topline. Nakon izračuna, ukupna nova potreba za toplinom prikazana je na desnoj strani, ispod indikatora. (Ovdje je zadana vrijednost 1 i prema tome, ne dolazi do promjene pokazatelja).</p><img src="/en/CM-Scale-heat-and-cool-density-maps/picture1.jpg"/><p> Nakon zatvaranja proračunskih modula i prelaska na odjeljak sloja, novoračunata karta gustoće topline nalazi se na samom dnu kartice LAYERS. Ovaj sloj korisnik može preuzeti i također ga može prenijeti na korisnički račun u svrhu daljnjih izračuna.</p><img src="/en/CM-Scale-heat-and-cool-density-maps/picture2.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Thiery Bernhard, u Hotmaps-Wiki, CM Razmjeri karte topline i gustoće hladnog zraka (travanj 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu je stranicu napisao Thierry Bernhard ( <strong><a href="https://www.crem.ch/">CREM</a></strong> ).</p><p> ☑ Ovu su stranicu pregledali Lesly Houndole i Albain Dufils ( <strong><a href="https://www.crem.ch/">CREM</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Autorska prava © 2016-2020: CREM</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Scale-heat-and-cool-density-maps) (original) [Bulgarian](../bg/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Czech](../cs/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Danish](../da/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [German](../de/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Greek](../el/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Spanish](../es/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Estonian](../et/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Finnish](../fi/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [French](../fr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Irish](../ga/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup>  [Hungarian](../hu/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Italian](../it/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Polish](../pl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovenian](../sl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Swedish](../sv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated