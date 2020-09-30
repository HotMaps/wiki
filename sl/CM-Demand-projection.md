<h1><a class="anchor" id="cm-demand-projection" href="#cm-demand-projection"><i class="fa fa-link"></i></a>Projekcija povpraševanja v CM</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Kazalo</h2><ul><li> <a href="#in-a-glance">Na prvi pogled</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Vhodi in izhodi</a><ul><li> <a href="#inputs-and-outputs_inputs">Vhodi</a></li><li> <a href="#inputs-and-outputs_outputs">Izhodi</a></li></ul></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">Repozitorij GitHub tega modula za izračun</a></li><li> <a href="#sample-run">Vzorec teka</a><ul><li> <a href="#sample-run_test-run-default-input-values">Test Run: privzete vhodne vrednosti</a></li></ul></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Avtorji in recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Zahvala</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Na prvi pogled</h2><p> Ta modul generira tako gostoto potrebe po toploti kot tudi bruto karto gostote tal v obliki rastrskih datotek. Vhodni podatki modula so različni razvojni scenariji potrebe po toploti in bruto talnih površin na nacionalni ravni, razčlenjeni po posameznih rastrskih elementih in uporabniško določeni parametri za opis relativnega odstopanja od razvoja v scenarijih.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Za analizo prihodnjih potencialov za oskrbo s toploto in hladom iz obnovljivih in odvečnih virov toplote je nujno treba upoštevati potencialni razvoj stavbnega fonda analizirane regije. Del stavb je obnovljen, da se zmanjša potreba po energiji za ogrevanje prostorov, del stavb je porušen in zgrajene nove stavbe. To vodi do sprememb v povpraševanju po toploti zgradb v regiji. Poleg tega razvoj prebivalstva in bruto domači proizvod (BDP) v regiji vpliva na razvoj povpraševanja po gradnji bruto tlorisne površine in s tem na potrebe po ogrevanju prostorov in pripravi tople vode. Cilj modula za izračun (CM) - Projekcija povpraševanja je na podlagi izračunov za EU-28 na nacionalni ravni zagotoviti scenarije prihodnjega razvoja bruto talnih površin in potrebe po toploti v stavbah za izbrano območje. Različni scenariji, ki se izračunajo z uporabo modula Invert / EE-Lab, so razčlenjeni na raven hektarjev. Razlikujejo se po stopnji toplotne obnove, z drugimi besedami, koliko bruto tlorisne površine je prenovljeno sorazmerno. CM ponuja tudi možnost, da v scenarijih spremeni tri osnovne gonilnike in ustvari prilagojene rezultate. Ti trije osnovni dejavniki so: a) zmanjšanje bruto tlorisne površine obstoječih stavb, b) zmanjšanje specifičnih potreb po energiji v stavbah in c) letna rast prebivalstva poleg privzete rasti</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vhodi in izhodi</h2><h3><a class="anchor" id="inputs" href="#inputs"><i class="fa fa-link"></i></a> Vhodi</h3><ul><li><p> <em>Izberite scenarij:</em></p><ul><li> tukaj lahko izbirate med različnimi scenariji, izračunanimi z modulom Invert / EE-Lab, ki se uporablja kot referenčni razvoj za izračun z modulom</li></ul></li><li><p> <em>Izberite ciljno leto:</em></p><ul><li> tukaj lahko izberete leto, za katero se bodo izvajali izračuni</li></ul></li><li><p> <em>Povečajte ali zmanjšajte zmanjšanje bruto tal v primerjavi z referenčnim scenarijem:</em></p><ul><li> s tem parametrom lahko spremenite razvoj bruto tlorisne površine trenutno obstoječih stavb v primerjavi z razvojem, kot je predvideno v scenariju, izračunanem z modelom Invert / EE-Lab</li><li> lahko določite različne relativne spremembe za obstoječe zgradbe, zgrajene v različnih obdobjih gradnje (pred 1977, med 1977 in 1990, po 1990)</li><li> vrednosti, ki jih je treba uvesti, imajo enoto [%]</li><li> vrednost 25 pomeni, da se zmanjšanje bruto tlorisne površine v določenem obdobju gradnje, npr. pred letom 1977, med začetnim letom izračuna in koncem izbranega časa scenarija, pomnoži z 0,25. Npr. V izbranem scenariju Invert / EE-Lab se bruto površina stavb, zgrajenih pred letom 1977, zmanjša z 10 milijonov EUR. m² do 6 milijonov m² od zdaj do konca izbranega časovnega obdobja. To je enako zmanjšanju za 4 milijone m². Pri izbiri vrednosti 25 se učinek scenarija Invert / EE-Lab spremeni, tako da ne odraža zmanjšanja za 4 milijone m² v tem časovnem obdobju, ampak za samo 1 milijon. m² (4 * 0,25). Tako bi preostala bruto tlorisna površina stavb, zgrajenih pred letom 1977 na koncu scenarija, znašala 9 milijonov EUR. m²</li></ul></li><li><p> <em>Povečajte ali zmanjšajte zmanjšanje specifičnih potreb po energiji v primerjavi z referenčnim scenarijem:</em></p><ul><li> s tem parametrom lahko spremenite razvoj specifičnih energetskih potreb za ogrevanje prostorov in pripravo tople vode trenutno obstoječih stavb v primerjavi z razvojem, kot je predviden v scenariju, izračunanem z modelom Invert / EE-Lab</li><li> lahko določite različne relativne spremembe za obstoječe zgradbe, zgrajene v različnih obdobjih gradnje (pred 1977, med 1977 in 1990, po 1990)</li><li> vrednosti, ki jih je treba uvesti, imajo enoto [%]</li><li> vrednost 25 pomeni, da se zmanjšanje specifičnih potreb po energiji v določenem obdobju gradnje, npr. pred letom 1977, med začetnim letom izračuna in koncem izbranega časa scenarija, pomnoži z 0,25. Npr. V izbranem scenariju Invert / EE-Lab se specifične potrebe po energiji za ogrevanje prostorov in pripravo tople vode v stavbah, zgrajenih pred letom 1977, zmanjšajo z 200 kWh / m² na 120 kWh / m² na leto do konca izbranega časovnega obdobja. To je enako zmanjšanju za 80 kWh / m²yr. Pri izbiri vrednosti 25 se učinek scenarija Invert / EE-Lab spremeni, da ne odraža zmanjšanja za 80 kWh / m²yr v tem časovnem obdobju, ampak le za 20 kWh / m²yr (80 * 0,25). Tako bi preostala specifična potreba po energiji za ogrevanje prostorov in pripravo tople vode v stavbah, zgrajenih pred letom 1977 ob koncu scenarija, znašala 180 kWh / m²yr.</li></ul></li><li><p> <em>Letna rast prebivalstva poleg privzete:</em></p></li><li><p> Osnovni scenarij ponuja ocene rasti prebivalstva na ravni NUTS3. S primerjavo rasti prebivalstva na ravni NUTS0 in NUTS3 z uporabo preteklih podatkov lahko izračunamo sorazmerno rast prebivalstva. Na te stopnje rasti lahko vplivamo s parametrom &quot;Letna rast prebivalstva poleg privzete rasti&quot;. V našem modelu je rast prebivalstva neposredno sorazmerna z rastjo površine, kar posledično povzroči neposredno povečanje ogrevane površine.</p></li><li><p> <em>Način dodajanja novo zgrajenih stavb na zemljevid:</em></p><ul><li> tukaj lahko izberete način, ki se uporablja za dodajanje novo zgrajenih stavb na nastale bruto tlorisne površine in gostote potreb po toploti</li><li> tri različne metode so razložene v nadaljevanju:<ul><li> Ni novih zgradb: na zemljevidih se odražajo samo zgradbe, ki že obstajajo v sedanjem zgradbi in naj bi še obstajale ob koncu obdobja simulacije. Porušene stavbe se odstranijo z zemljevida in nove stavbe ne dodajo. Bruto tlorisna površina in tudi potreba po toploti, ki se odraža na zemljevidih, sta tako izjemno nižja v primerjavi s predvidenimi vrednostmi iz izračunov.</li><li> Zamenjajte samo porušene stavbe: na zemljevidih se bruto tlorisna površina stavb ne spremeni v primerjavi z bruto tlorisno površino v začetnem letu izračuna. Trenutno se obstoječe stavbe, ki naj bi bile porušene, nadomestijo z novo zgrajenimi. Če se v scenarijih poveča bruto tlorisna površina, se povečanje bruto tlorisne površine na kartah ne odraža.</li><li> Dodaj vse nove zgradbe: na zemljevidih so dodane vse nove zgradbe. V krajih, kjer so stavbe porušene, jih nadomestijo nove stavbe. Dodatna novo zgrajena bruto tlorisna površina zaradi povečanja skupne bruto tlorisne površine v regiji je postavljena na različne lokacije: del je dodan na obstoječe stavbe, del je postavljen med obstoječe stavbe, del pa je postavljen v lokacije, kjer trenutno ne obstaja nobena zgradba.</li></ul></li><li> izbira te metode ne vpliva na kazalnike, prikazane v oddelku za rezultate izračuna. To je pomembno samo za izdelavo zemljevidov, ne pa tudi za splošne rezultate scenarijev.</li></ul></li></ul><h3><a class="anchor" id="outputs" href="#outputs"><i class="fa fa-link"></i></a> Izhodi</h3><ul><li><p> <em>Kazalniki:</em></p><ul><li> Predpostavke o rasti prebivalstva od začetka do ciljnega leta v 5-letnem prirastku</li><li> Skupno ogrevana (bruto tla) površina in na prebivalca v začetnem letu in na koncu leta izračuna (Zaradi različne razpoložljivosti različnih naborov podatkov za različna leta je tukaj prikazana površina za leto 2014 pri začetni vrednosti.)</li><li> Ocenjena (končna) skupna poraba energije na območje v začetnem letu in na koncu leta izračuna</li><li> Ocenjena površina, skupna poraba energije in specifična poraba energije na obdobje gradnje v začetnem letu in ob koncu leta izračuna</li><li> Delež novo zgrajenih stavb, prikazan na rastrskem zemljevidu za ciljno leto</li></ul></li><li><p> <em>Grafika:</em></p><ul><li> Palični grafikoni o ogrevani bruto površini in končni porabi energije na obdobje gradnje</li></ul></li><li><p> <em>Plasti:</em></p><ul><li> Zemljevid gostote povpraševanja po toploti, ki odraža izračunani razvoj</li><li> Karta gostote bruto tal, ki odraža izračunani razvoj</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Kot smo že zapisali, ta modul temelji na izračunih, izvedenih z modulom Invert / EE-Lab za vse države EU-28 (za opis metode modula Invert / EE-Lab glejte <strong>www.invert.at</strong> ). Analizirani so izračunani scenariji razvoja naslednjih vrst stavb: stanovanjske in nestanovanjske stavbe, 3 obdobja gradnje in novo zgrajene stavbe. Nato se oceni rast prebivalstva na regijo NUTS3 in začetni zalog stavb (glede na ogrevano bruto površino in potrebe po energiji na obdobje gradnje in vrsto stavbe) na regijo NUTS 3. Na podlagi te ocene se rezultati izračunanih scenarijev prenesejo v ustrezno regijo NUTS3. Rezultati NUTS3 se nato razdelijo na različne hektarske elemente v skladu z metodo, razvito v Müller et al. 2019 ( <strong>REFERENCE</strong> ).</p><h2><a class="anchor" id="provided-scenarios" href="#provided-scenarios"><i class="fa fa-link"></i></a> Navedeni scenariji</h2><p> Modul ponuja 4 različne scenarije, ki se razlikujejo glede na stopnjo prenove. Z izborom se letno prenovi bodisi 0,5%, 1%, 2% ali 3% celotne bruto površine. Opozoriti je treba, da prihranjena potreba po ogrevanju ni neposredno sorazmerna s povečanjem stopnje prenove, saj so dovoljene različne učinkovite prenove. Z majhno stopnjo obnove se prenavljajo predvsem stavbe, kjer lahko z ugodnimi ukrepi dosežemo velike prihranke. Z visoko stopnjo prenove se vedno bolj obnavljajo tudi stavbe z višjo toplotno kakovostjo in njihova prihranjena ogrevalna energija je v primerjavi z nižjo. Osnovni scenarij za različnimi scenariji je referenčni scenarij, ki je opisan v naslednjem delu.</p><p> <strong><em>&quot;referenca&quot;:</em></strong> sedanje politike učinkovitosti ostajajo v veljavi in se učinkovito izvajajo. Predvidevamo, da lastniki stavb in strokovnjaki na splošno upoštevajo regulativne instrumente, kot so gradbeni predpisi. Nacionalne razlike v intenzivnosti politike še vedno obstajajo. Zato intenzivnost politike kakovostno kaže na obseg političnih ambicij v različnih državah. Kombinacija politik energetske učinkovitosti ustreza veljavnim svežnjem, ki v večini držav predstavlja mešanico regulativnih pristopov (gradbeni predpisi, definicije stavb s skoraj nič energijo (nZEB), obveznost OVE-H), gospodarske podpore (subvencije za obnovo stavbe) in obdavčitev energije. Glavni viri za izvedene politike so baza podatkov Mure (www.measures-odyssee-mure.eu/) in projekti ENTRANZE (www.entranze.eu/) in Zebra2020 (www.zebra2020.eu/). Čeprav scenarij ne vključuje niti močnega tehnološkega izboljšanja niti zavezujočih obveznosti glede energetske učinkovitosti, obstajajo ambiciozne politike za spodbujanje obnovljive energije. To se izvaja na podlagi obveznih kvot za obnovljivo energijo na ravni posameznih stavb.</p><p> <em>Cene energije: Cene</em> energije se zmerno zvišujejo v skladu z referenčnim scenarijem EU 2016 (https://ec.europa.eu/energy/en/data-analysis/energy-modelling).</p><p> <em>Razvoj tehnologije:</em> Predpostavljeno tehnološko učenje je zelo nizko in stroški za učinkovite in obnovljive tehnologije ogrevanja / hlajenja se le nekoliko zmanjšajo.</p><p> <em>Kvalitativni pregled političnih predpostavk:</em></p><ul><li> Intenzivnost politike za OVE-H: visoka</li><li> Intenzivnost politike za učinkovitost stavb: nizka</li><li> Intenzivnost politike za daljinsko ogrevanje: srednja</li><li> Cene energije: nizke</li><li> Razvoj tehnologije: nizek</li></ul><p> <em>Rezultati:</em> Skupno končno povpraševanje po energiji za ogrevanje prostorov, toplo vodo, hlajenje in pomožno energijo v EU-28 znaša približno 3850 TWh za vse stopnje prenove leta 2015 in se zmanjša na 2800TWh na 2250 TWh leta 2050, odvisno od stopnje prenove.</p><p> <strong><em>EU-28:</em></strong><img src="/en/CM-Demand-projection/final_energy_EU28.jpg"/></p><p> <em>Slika: Končno povpraševanje po energiji v EU-28 od leta 2015 do 2050 za različne stopnje prenove</em></p><p> Naslednjih šest grafov prikazuje razvoj končne potrebe po energiji za ogrevanje, hlajenje in pripravo sanitarne vode za posamezne države članice EU.</p><p> <strong><em>DE, FR, GB, IT in PL:</em></strong><img src="/en/CM-Demand-projection/final_absolute_DE.jpg"/></p><p> <em>Slika: Končno povpraševanje po energiji v DE, FR, GB, IT in PL za leti 2015 in 2050 z različnimi stopnjami prenove</em></p><img src="/en/CM-Demand-projection/final_relative_DE.jpg"/><p> <em>Slika: Delež končnega povpraševanja po energiji za DE, FR, GB, IT in PL v letu 2050 glede na leto 2015</em></p><p> <strong><em>NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK in GK:</em></strong><img src="/en/CM-Demand-projection/final_absolute_NL.jpg"/></p><p> <em>Slika: Končno povpraševanje po energiji v NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK in GK za leti 2015 in 2050 z različnimi stopnjami prenove</em></p><img src="/en/CM-Demand-projection/final_relative_NL.jpg"/><p> <em>Slika: Delež končnega povpraševanja po energiji leta 2050 za NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK in GK glede na leto 2015</em></p><p> <strong><em>SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY in MT:</em></strong><img src="/en/CM-Demand-projection/final_absolute_SK.jpg"/></p><p> <em>Slika: Končno povpraševanje po energiji v SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY in MT za leti 2015 in 2050 z različnimi stopnjami prenove</em></p><img src="/en/CM-Demand-projection/final_relative_SK.jpg"/><p> <em>Slika: Delež končne porabe energije v letu 2050 za SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY in MT glede na leto 2015</em></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repozitorij GitHub tega modula za izračun</h2><p> <strong><a href="https://github.com/HotMaps/renovation_effect">Tukaj</a></strong> najdete najboljši razvoj tega modula za izračun.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Vzorec teka</h2><p> Tu je uporabljen modul za izračun študije primera na Dunaju v Avstriji. Najprej s pomočjo vrstice »Pojdi na mesto« pojdite na Dunaj in izberite mesto. Kliknite gumb &quot;Plasti&quot;, da odprete okno &quot;Sloji&quot;, nato pa kliknite jeziček &quot;MODUL IZRAČUNA&quot;. Na seznamu modulov za izračun izberite &quot;CM - Projekcija povpraševanja&quot;.</p><h3><a class="anchor" id="test-run--default-input-values" href="#test-run--default-input-values"><i class="fa fa-link"></i></a> Test Run: privzete vhodne vrednosti</h3><p> Privzete vhodne vrednosti ustvarijo zemljevid gostote potrebe po toploti za leto 2017. Te vrednosti je treba šteti le kot izhodišče. Morda boste morali nastaviti vrednosti pod ali nad privzetimi vrednostmi ob upoštevanju dodatnih lokalnih vidikov. Uporabljeni scenarij močno vpliva tudi na rezultat. Zato bi moral uporabnik te vrednosti prilagoditi, da bi našel najboljšo kombinacijo vhodnih podatkov za svojo študijo primera.</p><p> Če želite zagnati računski modul, sledite naslednjim korakom:</p><ul><li> Seji teka dodelite ime (neobvezno) in nastavite vhodne parametre (tukaj so bile uporabljene privzete vrednosti) in nato na koncu vnosa CM pritisnite “RUN CM”.</li><li> Počakajte, da se postopek konča.</li><li> Takoj lahko vidite, da je na zemljevid dodan zemljevid gostote toplote. Kot rezultat so kazalniki prikazani v oknu &quot;REZULTATI&quot;, na zemljevidu pa nova karta gostote toplote in bruto površina tal.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_jpg-min.jpg"/><p> <em>Slika: Projekcija povpraševanja po zagonu s privzetim parametrom</em></p><ul><li> Poleg tega sta ustvarjena tudi dva diagrama. Prva prikazuje ogrevano bruto tlorisno površino za različna obdobja gradnje. Drugi diagram prikazuje porabo energije za ogrevanje in pripravo sanitarne vode za prav tako razdeljena gradišča v različnih obdobjih gradnje.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_graphs_jpeg.jpg"/><p> <em>Slika: Projekcija povpraševanja po zagonu s privzetim parametrom, prehod na grafiko</em></p><ul><li> Po zagonu izračuna in zapiranju modula za izračun lahko na dnu seznama Layers najdete dve novi plasti. Na eni strani nova karta gostote ogrevanja in na drugi strani nova karta bruto tlorisne površine. Če jih želite shraniti in uporabiti pri nadaljnjih izračunih, jih morate znova prenesti in naložiti.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_layers_jpg-min.jpg"/><p> <em>Slika: Projekcija povpraševanja po zagonu s privzetim parametrom, preklop na plaste rezultatov</em></p><p> Kot smo že omenili, bo morda treba vhodne parametre prilagoditi situaciji z lastnimi podatki ali preveriti občutljivost.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Andreas Müller in Marcus Hummel, v Hotmaps-Wiki, CM-Demand-projection (oktober 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Avtorji in recenzenti</h2><p> To stran so napisali Andreas Müller, Marcus Hummel, Giulia Conforto in David Schmidinger ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> ☑ To stran je pregledal Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Avtorske pravice © 2016-2020: Andreas Müller in Marcus Hummel</p><p> Creative Commons Attribution 4.0 International License</p><p> To delo je licencirano pod licenco Creative Commons CC BY 4.0 International.</p><p> Identifikator licence SPDX: CC-BY-4.0</p><p> Besedilo licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Zahvala</h2><p> Najgloblje zahvaljujemo projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (sporazum o dodelitvi sredstev št. 723677), ki je zagotovil sredstva za izvedbo te preiskave.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Demand-projection) (original) [Bulgarian](../bg/CM-Demand-projection)<sup>\*</sup> [Czech](../cs/CM-Demand-projection)<sup>\*</sup> [Danish](../da/CM-Demand-projection)<sup>\*</sup> [German](../de/CM-Demand-projection)<sup>\*</sup> [Greek](../el/CM-Demand-projection)<sup>\*</sup> [Spanish](../es/CM-Demand-projection)<sup>\*</sup> [Estonian](../et/CM-Demand-projection)<sup>\*</sup> [Finnish](../fi/CM-Demand-projection)<sup>\*</sup> [French](../fr/CM-Demand-projection)<sup>\*</sup> [Irish](../ga/CM-Demand-projection)<sup>\*</sup> [Croatian](../hr/CM-Demand-projection)<sup>\*</sup> [Hungarian](../hu/CM-Demand-projection)<sup>\*</sup> [Italian](../it/CM-Demand-projection)<sup>\*</sup> [Lithuanian](../lt/CM-Demand-projection)<sup>\*</sup> [Latvian](../lv/CM-Demand-projection)<sup>\*</sup> [Maltese](../mt/CM-Demand-projection)<sup>\*</sup> [Dutch](../nl/CM-Demand-projection)<sup>\*</sup> [Polish](../pl/CM-Demand-projection)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Demand-projection)<sup>\*</sup> [Romanian](../ro/CM-Demand-projection)<sup>\*</sup> [Slovak](../sk/CM-Demand-projection)<sup>\*</sup>  [Swedish](../sv/CM-Demand-projection)<sup>\*</sup> 

<sup>\*</sup> machine translated