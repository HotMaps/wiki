<h1><a class="anchor" id="cm-scale-heat-and-cool-density-maps" href="#cm-scale-heat-and-cool-density-maps"><i class="fa fa-link"></i></a>CM Skaala soojus- ja jaheduskaardid</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisukord</h2><ul><li> <a href="#in-a-glance">Lühidalt</a></li><li> <a href="#introduction">Sissejuhatus</a></li><li> <a href="#inputs-and-outputs">Sisendid ja väljundid</a></li><li> <a href="#method">Meetod</a></li><li> <a href="#interpretation-of-results">Tulemuste tõlgendamine</a></li><li> <a href="#github-repository-of-this-calculation-module">Selle arvutusmooduli GitHubi hoidla</a></li><li> <a href="#sample-run">Proovijooks</a><ul><li> <a href="#sample-run_test-run-default-input-values">Test Run: sisestatud vaikeväärtused</a></li></ul></li><li> <a href="#how-to-cite">Kuidas tsiteerida</a></li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a></li><li> <a href="#license">Litsents</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Lühidalt</h2><p> See moodul skaleerib vaikekihi antud teguriga. Sageli esitatakse energiabilanssides soojus- ja külmavajadused agregeeritult. Selle arvutusmooduli abil on meil võimalik Hotmapsi vaikimisi soojuse ja külma nõudluse tiheduse kaartide jaotust selliste väärtuste liitmiseks. Seda tehakse, muutes vaikekaartide Hotmaps soojus- ja jaheduskaardid suuremaks või tehes seda soovitud väärtuse saavutamiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Sissejuhatus</h2><p> See moodul skaleerib vaikekihi antud teguriga. Sageli esitatakse energiabilanssides soojus- ja külmavajadused agregeeritult. Selle arvutusmooduli abil on meil võimalik Hotmapsi vaikimisi soojuse ja külma nõudluse tiheduse kaarte jaotada, et selliseid väärtusi koondada. Seda tehakse, muutes vaikekaartide Hotmaps soojus- ja jaheduskaardid suuremaks või tehes seda soovitud väärtuse saavutamiseks. Arvutusmoodul pakub uue rastri, skaleerides rastertiheduse kaardi kasutaja valitud teguriga. See genereerib uue rastri, korrutades sisendrastri kõik lahtrid antud teguriga.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Sisendid ja väljundid</h2><p> Sisendparameetrid ja kihid, samuti väljundkihid ja parameetrid on järgmised.</p><p> <strong>Sisendkihid ja parameetrid on:</strong></p><ul><li> Korrutamistegur [-]: tegelik väärtus vahemikus <em><em>0</em></em> kuni <em><em>1000</em></em><ul><li> kui korrutustegur on&gt; 1, on väljundraster sisendist suurem.</li><li> kui korrutustegur on &lt;1, on väljundraster sisendist väiksem.</li></ul></li><li> Skaalitav kiht:<ul><li> Soojus- või jahedustiheduse kaart rastervormingus (* .tif): on võimalik ka isiklikke soojus- ja jahedustiheduse kaarte üles või alla skaleerida.</li></ul></li></ul><p> <strong>Väljundkihid ja parameetrid on:</strong></p><ul><li> Väljundraster (* .tif), mis vastab korrutusteguriga skaleeritud sisendile.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Meetod</h2><p> Iga lahtri sisendrastri väärtus korrutatakse korrutusteguriga.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-results" href="#interpretation-of-results"><i class="fa fa-link"></i></a> Tulemuste tõlgendamine</h2><p> Kui teame piirkonna kogutarbimist ja näitaja <em>Pea kogu nõudlus</em> ei vasta sellele väärtusele, on võimalik soojusvajadust skaleerida suhtarvu (Total_real / Total_default) järgi. Järgmisel joonisel on toodud näide korrutusteguri väärtusest 0,5.</p><img alt="Fig. 1-0" src="/images/Wiki_CM_scale.png" title="Nimetage jooksuseanss"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Selle arvutusmooduli GitHubi hoidla</h2><p> <a href="https://github.com/HotMaps/base_calculation_module">Siit</a> saate selle arvutusmooduli jaoks verejooksu arenduse.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Proovijooks</h2><p> Siin käivitatakse arvutusmoodul Austrias Viinis toimuva juhtumiuuringu jaoks. Kõigepealt kasutage Viini navigeerimiseks ja linna valimiseks riba &quot;Go To Place&quot;. Klõpsake akna &quot;Kihid&quot; avamiseks nuppu &quot;Kihid&quot; ja seejärel klõpsake vahekaarti &quot;ARVUTAMISMOODUL&quot;. Valige arvutusmoodulite loendis &quot;CM - soojus- ja jahedustiheduse kaartide mõõtmine&quot;.</p><h3><a class="anchor" id="test-run--default-input-values" href="#test-run--default-input-values"><i class="fa fa-link"></i></a> Test Run: sisestatud vaikeväärtused</h3><p> Pärast käsu vajutamist arvutatakse valitud kaardi põhjal uus tiheduskaart. Vaikeväärtus on siin soojustiheduse kogu kaart. Pärast arvutamist kuvatakse paremal küljel, näitajate all, kogu uus soojusvajadus. (Siin on vaikeväärtus 1 ja seetõttu ei muutu näitajad).</p><img src="/en/CM-Scale-heat-and-cool-density-maps/picture1.jpg"/><p> Pärast arvutusmoodulite sulgemist ja kihilõigule üleminekut leiate värskelt arvutatud soojustiheduse kaardi vahekaardi Kihid alt. Seda kihti saab kasutaja alla laadida ja selle saab ka kasutajakontole üles laadida edasiste arvutuste tegemiseks.</p><img src="/en/CM-Scale-heat-and-cool-density-maps/picture2.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuidas tsiteerida</h2><p> Thiery Bernhard, Hotmaps-Wiki, CM skaala soojus- ja jaheduskaardid (aprill 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorid ja retsensendid</h2><p> Selle lehe kirjutas Thierry Bernhard ( <strong><a href="https://www.crem.ch/">CREM</a></strong> ).</p><p> ☑ Selle lehe vaatasid läbi Lesly Houndole ja Albain Dufils ( <strong><a href="https://www.crem.ch/">CREM</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Litsents</h2><p> Autoriõigus © 2016-2020: CREM</p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents</p><p> See töö on litsentsitud rahvusvahelise Creative Commons CC BY 4.0 litsentsi alusel.</p><p> SPDX-litsentsi identifikaator: CC-BY-4.0</p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Soovime avaldada sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis andis rahalisi vahendeid käesoleva uurimise läbiviimiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Scale-heat-and-cool-density-maps) (original) [Bulgarian](../bg/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Czech](../cs/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Danish](../da/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [German](../de/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Greek](../el/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Spanish](../es/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup>  [Finnish](../fi/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [French](../fr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Irish](../ga/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Croatian](../hr/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Hungarian](../hu/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Italian](../it/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Polish](../pl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Slovenian](../sl/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> [Swedish](../sv/CM-Scale-heat-and-cool-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated