<h1><a class="anchor" id="cm-vehicle-stock-at-nuts-2-level" href="#cm-vehicle-stock-at-nuts-2-level"><i class="fa fa-link"></i></a>CM Vozilo na razini NUTS 2</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#in-a-glance">U jednom pogledu</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Ulazi i izlazi</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub spremište ovog kalkulacijskog modula</a></li><li> <a href="#sample-run">Uzorak trčanja</a></li><li> <a href="#references">Reference</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> U jednom pogledu</h2><p> Ovaj modul za izračun prikazuje profil zaliha vozila na razini NUTS 2 od 1990. do 2030. na temelju uobičajenog scenarija. Skup podataka može se naći i u spremištima skupova podataka Hotmaps. Ilustrirani brojevi na razini NUTS 2 ekstrapolirani su na temelju vrijednosti na podacima NUTS 0. Povijesni podaci su ekstrapolirani na temelju budućih trendova za odabrane pokazatelje izvedene iz referentnog scenarija PRIMES – TREMOVE EU 2016.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ovaj modul za izračun prikazuje profil zaliha vozila na razini NUTS 2 do 2030. godine na temelju uobičajenog scenarija. Skup podataka može se naći i u spremištu Hotmaps. Ilustrirani brojevi na razini NUTS 2 ekstrapolirani su na temelju vrijednosti na podacima NUTS 0. Povijesni podaci su ekstrapolirani na temelju budućih trendova za odabrane pokazatelje izvedene iz referentnog scenarija PRIMES – TREMOVE EU 2016 <a href="#references">[1]</a> .</p><p> Modul za izračunavanje može se izvoditi samo na razini NUTS 2.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ulazi i izlazi</h2><p> <strong>Ulazi</strong> : Ovaj CM ne zahtijeva ulazni parametar od korisnika. Korisnik bi trebao odabrati samo jednu ili nekoliko regija NUTS 2.</p><p> <strong>Izlazi</strong> :</p><ul><li> Pokazatelji:<ul><li> Zalihe vozila u prvoj godini razdoblja</li><li> Zalihe vozila u posljednjoj godini razdoblja</li></ul></li><li> Grafika:<ul><li> Prikazan je jedan trakasti grafikon koji prikazuje kipove zaliha vozila u različitim godinama.</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="methodology" href="#methodology"><i class="fa fa-link"></i></a> Metodologija</h2><p> Podaci NUTS2 (2006.) rezultat su prostorne interpolacije podataka o zalihama vozila na razini NUT0, koristeći NUTS2 podatke o broju vozila i BDP-u na razini NUTS2 kao proxy. Nadalje, izvorna 5-godišnja razlučivost <a href="https://gitlab.com/hotmaps/transport/nuts0">podataka na razini NUTS0</a> interpolirana je godišnjom razlučivošću. Rezultati su prikazani u obliku pokazatelja i grafikona.</p><p> <strong>Treba napomenuti da se u slučaju odabira dviju ili više regija prikazuje agregirana vrijednost. Nadalje, treba napomenuti da su podaci dostupni za različita razdoblja, ovisno o regiji NUTS 2 (npr. Jedna regija od 1999. do 2030., a druga od 1995. do 2030.). Stoga, u slučaju odabira dviju ili više regija, korisnik također treba uzeti u obzir vrijednosti iz sastavnih regija.</strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub spremište ovog kalkulacijskog modula</h2><p> <a href="https://github.com/HotMaps/vehicle_stock/tree/develop">Ovdje</a> ćete dobiti vrhunski razvoj za ovaj modul izračuna.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Uzorak trčanja</h2><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/1.png"/><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/2.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Reference</h2><p> [1] Europska komisija, „Referentni scenarij EU-a 2016.“ [Na liniji]. Dostupno: https://data.europa.eu/euodp/data/dataset/energy-modelling.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Mostafa Fallahnejad, u Hotmaps-Wiki, CM-Vehicle-stock-at-NUTS-2-level (rujan 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu je stranicu napisao Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Ovu je stranicu pregledao Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Vehicle-stock-at-NUTS-2-level) (original) [Bulgarian](../bg/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Czech](../cs/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Danish](../da/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [German](../de/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Greek](../el/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Spanish](../es/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Estonian](../et/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Finnish](../fi/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [French](../fr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Irish](../ga/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup>  [Hungarian](../hu/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Italian](../it/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Lithuanian](../lt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Latvian](../lv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Maltese](../mt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Dutch](../nl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Polish](../pl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Romanian](../ro/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovak](../sk/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovenian](../sl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Swedish](../sv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> 

<sup>\*</sup> machine translated