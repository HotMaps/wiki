<h1><a class="anchor" id="cm-scale-heat-and-cool-density-maps" href="#cm-scale-heat-and-cool-density-maps"><i class="fa fa-link"></i></a>CM Prilagodite zemljevide toplote in hladne gostote</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Kazalo</h2><ul><li> <a href="#in-a-glance">Na prvi pogled</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Vhodi in izhodi</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#interpretation-of-results">Razlaga rezultatov</a></li><li> <a href="#github-repository-of-this-calculation-module">Repozitorij GitHub tega modula za izračun</a></li><li> <a href="#sample-run">Vzorec teka</a><ul><li> <a href="#sample-run_test-run-default-input-values">Test Run: privzete vhodne vrednosti</a></li></ul></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Avtorji in recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Zahvala</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Na prvi pogled</h2><p> Ta modul prilagodi privzeto plast z določenim faktorjem. Pogosto se potrebe po toploti in mrazu v energetskih bilancah poročajo agregirano. Z uporabo tega modula za izračun lahko razporedimo privzete karte gostote toplote in mraza gostote povpraševanja po Hotmapsu, da take vrednosti združimo. To se naredi tako, da se privzete karte ogrevanja in hlajenja Hotmaps prilagodijo ali dosežejo želeno vrednost.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ta modul prilagodi privzeto plast z določenim faktorjem. Pogosto se potrebe po toploti in mrazu v energetskih bilancah poročajo agregirano. Z uporabo tega modula za izračun lahko razporedimo privzete karte gostote toplote in mraza gostote povpraševanja po Hotmapsu, da take vrednosti združimo. To se naredi tako, da se privzete karte ogrevanja in hlajenja Hotmaps prilagodijo ali dosežejo želeno vrednost. Modul za izračun ponuja nov raster s skaliranjem rastrske karte gostote glede na uporabnikov izbrani faktor. Ustvari nov raster tako, da vsako celico vhodnega rastra pomnoži z danim faktorjem.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vhodi in izhodi</h2><p> Vhodni parametri in plasti ter izhodni sloji in parametri so naslednji.</p><p> <strong>Vhodni sloji in parametri so:</strong></p><ul><li> Množilni faktor [-]: realna vrednost med <em><em>0</em></em> in <em><em>1000</em></em><ul><li> če je faktor množenja&gt; 1, je izhodni raster večji od vhodnega.</li><li> če je faktor množenja &lt;1, je izhodni raster manjši od vhodnega.</li></ul></li><li> Plast, ki jo je treba prilagoditi:<ul><li> Zemljevid toplotne ali hladne gostote v rastrskem formatu (* .tif): Osebne zemljevide toplote in hladne gostote lahko prilagodite tudi gor ali dol.</li></ul></li></ul><p> <strong>Izhodni sloji in parametri so:</strong></p><ul><li> Izhodni raster (* .tif), ki ustreza vhodu, pomnoženemu s faktorjem množenja.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Vrednost vhodnega rastra vsake celice se pomnoži s faktorjem množenja.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-results" href="#interpretation-of-results"><i class="fa fa-link"></i></a> Razlaga rezultatov</h2><p> Če poznamo skupno porabo površine in indikator <em>Skupno povpraševanje po glavi</em> ne ustreza tej vrednosti, je možno povpraševanje po toploti prilagoditi razmerju (Total_real / Total_default). Naslednja slika daje primer vrednosti faktorja množenja 0,5.</p><img alt="Fig. 1-0" src="/images/Wiki_CM_scale.png" title="Poimenujte sejo izvajanja"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repozitorij GitHub tega modula za izračun</h2><p> <a href="https://github.com/HotMaps/base_calculation_module">Tukaj</a> najdete najboljši razvoj tega modula za izračun.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Vzorec teka</h2><p> Tu je uporabljen modul za izračun študije primera na Dunaju v Avstriji. Najprej s pomočjo vrstice »Pojdi na mesto« pojdite na Dunaj in izberite mesto. Kliknite gumb &quot;Plasti&quot;, da odprete okno &quot;Sloji&quot;, nato pa kliknite jeziček &quot;MODUL IZRAČUNA&quot;. Na seznamu modulov za izračun izberite &quot;CM - Prilagodi zemljevide gostote toplote in hladnosti&quot;.</p><h3><a class="anchor" id="test-run--default-input-values" href="#test-run--default-input-values"><i class="fa fa-link"></i></a> Test Run: privzete vhodne vrednosti</h3><p> Po pritisku na zagon se na podlagi izbrane karte izračuna nova karta gostote. Privzeta vrednost tukaj je skupna karta gostote toplote. Po izračunu je skupna nova potreba po toploti prikazana na desni strani pod kazalniki. (Tu je privzeta vrednost 1 in zato indikatorji ne pridejo do sprememb).</p><img src="/en/CM-Scale-heat-and-cool-density-maps/picture1.jpg"/><p> Po zaprtju računskih modulov in preklopu na odsek sloja lahko novo izračunano karto gostote toplote najdete na samem dnu zavihka LAYERS. Ta sloj lahko uporabnik prenese in ga lahko naloži tudi na uporabniški račun za nadaljnje izračune.</p><img src="/en/CM-Scale-heat-and-cool-density-maps/picture2.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Thiery Bernhard, v Hotmaps-Wiki, CM Lestvica zemljevidov toplote in hladne gostote (april 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Avtorji in recenzenti</h2><p> To stran je napisal Thierry Bernhard ( <strong><a href="https://www.crem.ch/">CREM</a></strong> ).</p><p> Page To stran sta pregledala Lesly Houndole in Albain Dufils ( <strong><a href="https://www.crem.ch/">CREM</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Avtorske pravice © 2016-2020: CREM</p><p> Creative Commons Attribution 4.0 International License</p><p> To delo je licencirano pod licenco Creative Commons CC BY 4.0 International.</p><p> Identifikator licence SPDX: CC-BY-4.0</p><p> Besedilo licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Zahvala</h2><p> Najgloblje zahvaljujemo projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (sporazum o dodelitvi sredstev št. 723677), ki je zagotovil sredstva za izvedbo te preiskave.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Scale-heat-and-cool-density-maps) (original) [Bulgarian](../bg/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Czech](../cs/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Danish](../da/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [German](../de/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Greek](../el/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Spanish](../es/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Estonian](../et/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Finnish](../fi/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [French](../fr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Irish](../ga/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Croatian](../hr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Hungarian](../hu/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Italian](../it/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Polish](../pl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup>  [Swedish](../sv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated