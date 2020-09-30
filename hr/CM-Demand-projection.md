<h1><a class="anchor" id="cm-demand-projection" href="#cm-demand-projection"><i class="fa fa-link"></i></a>CM Projekcija potražnje</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#in-a-glance">U jednom pogledu</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Ulazi i izlazi</a><ul><li> <a href="#inputs-and-outputs_inputs">Ulazi</a></li><li> <a href="#inputs-and-outputs_outputs">Izlazi</a></li></ul></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub spremište ovog kalkulacijskog modula</a></li><li> <a href="#sample-run">Uzorak trčanja</a><ul><li> <a href="#sample-run_test-run-default-input-values">Probno pokretanje: zadane ulazne vrijednosti</a></li></ul></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> U jednom pogledu</h2><p> Ovaj modul generira i gustoću potrebe za toplinom i kartu gustoće bruto podne površine u obliku rasterskih datoteka. Ulazni podaci modula su različiti razvojni scenariji potražnje za toplinom i bruto površine poda na nacionalnoj razini i raščlanjeni na svaki rasterski element kao i korisnički definirani parametri za opisivanje relativnog odstupanja od razvoja u scenarijima.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Za analizu budućih potencijala za opskrbu toplinom i hladnoćom iz obnovljivih i suvišnih izvora topline, bitno je uzeti u obzir potencijalna kretanja u građevinskom fondu analizirane regije. Dio zgrada se obnavlja kako bi se smanjila potreba za energijom za grijanje prostora, dio zgrada se ruši i grade nove zgrade. To dovodi do promjena u potrebi za toplinom zgrada u regiji. Nadalje, evolucija stanovništva i bruto domaći proizvod (BDP) u regiji utječe na razvoj potražnje za bruto površinom zgrade, a time i na potrebu za grijanjem prostora i proizvodnjom tople vode. Cilj kalkulacijskog modula (CM) - Projekcija potražnje je pružiti scenarije budućeg razvoja bruto površina poda i potražnje topline u zgradama za odabrano područje na temelju izračuna za EU-28 na nacionalnoj razini. Različiti scenariji, koji se izračunavaju pomoću modula Invert / EE-Lab, raščlanjeni su na razini hektara. Razlikuju se po stopi toplinske obnove, drugim riječima koliko se bruto površine poda proporcionalno obnavlja. CM također pruža priliku za promjenu tri osnovna pokretača u scenarijima i generiranje prilagođenih rezultata. Ova tri osnovna pokretača su a) smanjenje bruto površine postojećih zgrada, b) smanjenje specifičnih energetskih potreba u zgradama i c) godišnji rast stanovništva uz zadani rast</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ulazi i izlazi</h2><h3><a class="anchor" id="inputs" href="#inputs"><i class="fa fa-link"></i></a> Ulazi</h3><ul><li><p> <em>Odaberite scenarij:</em></p><ul><li> ovdje možete birati između različitih scenarija izračunatih pomoću modula Invert / EE-Lab koji će se koristiti kao referentni razvoj za izračun s modulom</li></ul></li><li><p> <em>Odaberite ciljnu godinu:</em></p><ul><li> ovdje možete odabrati godinu za koju će se izračunavati</li></ul></li><li><p> <em>Povećajte ili smanjite smanjenje bruto površine u odnosu na referentni scenarij:</em></p><ul><li> ovim parametrom možete promijeniti razvoj bruto površine trenutno postojećih zgrada u usporedbi s razvojem kako je predviđeno u scenariju izračunatom s modelom Invert / EE-Lab</li><li> možete definirati različite relativne promjene za postojeće zgrade izgrađene u različitim razdobljima gradnje (prije 1977, između 1977 i 1990, nakon 1990)</li><li> vrijednosti koje treba uvesti imaju jedinicu [%]</li><li> vrijednost 25 znači da se smanjenje bruto površine poda u definiranom razdoblju izgradnje, npr. prije 1977. godine, između početne godine izračuna i kraja odabranog vremena scenarija, pomnoži s 0,25. Npr. U odabranom Invert / EE-Lab scenariju bruto površina zgrada izgrađenih prije 1977. godine smanjuje se s 10 milijuna. m² do 6 milijuna m² od sada do kraja odabranog vremenskog razdoblja scenarija. To je jednako smanjenju od 4 milijuna m². Pri odabiru vrijednosti 25, učinak scenarija Invert / EE-Lab mijenja se kako ne bi odražavao smanjenje od 4 milijuna m² u ovom vremenskom razdoblju, već od samo 1 milijun. m² (4 * 0,25). Tako bi preostala bruto površina zgrada izgrađenih prije 1977. na kraju vremenskog razdoblja scenarija iznosila 9 milijuna. m².</li></ul></li><li><p> <em>Povećajte ili smanjite smanjenje specifičnih energetskih potreba u usporedbi s referentnim scenarijem:</em></p><ul><li> ovim parametrom možete promijeniti razvoj specifičnih energetskih potreba za grijanje prostora i proizvodnju tople vode trenutno postojećih zgrada u usporedbi s razvojem predviđenim u scenariju izračunatom s modelom Invert / EE-Lab</li><li> možete definirati različite relativne promjene za postojeće zgrade izgrađene u različitim razdobljima gradnje (prije 1977, između 1977 i 1990, nakon 1990)</li><li> vrijednosti koje treba uvesti imaju jedinicu [%]</li><li> vrijednost 25 znači da se smanjenje specifičnih energetskih potreba u definiranom razdoblju gradnje, npr. prije 1977. godine, između početne godine izračuna i kraja odabranog vremena scenarija, pomnoži s 0,25. Npr. U odabranom Invert / EE-Lab scenariju specifična potreba za energijom za grijanje prostora i proizvodnju tople vode u zgradama izgrađenim prije 1977. godine smanjuje se s 200 kWh / m² na 120 kWh / m² godišnje od sada do kraja odabranog vremenskog razdoblja scenarija. To je jednako smanjenju od 80 kWh / m² godišnje. Pri odabiru vrijednosti 25, učinak scenarija Invert / EE-Lab mijenja se kako ne bi odražavao pad od 80 kWh / m² godišnje u ovom vremenskom razdoblju, već od samo 20 kWh / m²yr (80 * 0,25). Dakle, preostala specifična potreba za energijom za grijanje prostora i proizvodnju tople vode u zgradama izgrađenim prije 1977. godine na kraju vremenskog razdoblja scenarija bila bi 180 kWh / m² godišnje.</li></ul></li><li><p> <em>Godišnji rast stanovništva uz rast zadanih zadataka:</em></p></li><li><p> Temeljni scenarij daje procjene rasta stanovništva na razini NUTS3. Usporedbom porasta stanovništva na razini NUTS0 i NUTS3 pomoću povijesnih podataka može se izračunati proporcionalni rast stanovništva. Parametar &quot;Godišnji rast stanovništva uz zadani rast&quot; može se koristiti za utjecaj na ove stope rasta. U našem modelu, rast stanovništva je izravno proporcionalan rastu površine, što za posljedicu ima izravan porast grijane površine.</p></li><li><p> <em>Način dodavanja novoizgrađenih zgrada na kartu:</em></p><ul><li> ovdje možete odabrati metodu koja se primjenjuje za dodavanje novoizgrađenih zgrada na rezultirajuću bruto površinu i karte gustoće potražnje topline</li><li> tri različite metode su objašnjene u sljedećem:<ul><li> Nema novih zgrada: Na kartama se odražavaju samo zgrade koje već postoje u trenutnom fondu zgrada i za koje se predviđa da će postojati na kraju razdoblja simulacije. Srušene zgrade uklanjaju se s karte i ne dodaju se nove zgrade. Bruto površina poda, kao i potreba za toplinom koja se odražava na kartama, tako je izuzetno niža u usporedbi s predviđenim vrijednostima iz izračuna.</li><li> Zamijenite samo srušene zgrade: Na kartama se bruto površina zgrada ne mijenja u odnosu na bruto površinu u početnoj godini izračuna. Trenutno se postojeće zgrade za koje se predviđa rušenje zamjenjuju novoizgrađenim zgradama. U slučaju da se bruto površina poda poveća u scenarijima, povećanje bruto površine ne odražava se na kartama.</li><li> Dodaj sve nove zgrade: Na kartama se dodaju sve nove zgrade. Na mjestima gdje se zgrade ruše, zamjenjuju se novim zgradama. Dodatna novoizgrađena bruto površina zbog povećanja ukupne bruto površine u regiji smještena je na različitim mjestima: dio je dodan povrh postojećih zgrada, dio je smješten između postojećih zgrada, a dio je smješten u mjesta na kojima trenutno ne postoje zgrade.</li></ul></li><li> izbor ove metode nema utjecaja na pokazatelje prikazane u odjeljku s rezultatima izračuna. To je relevantno samo za izradu karata, a ne za ukupne rezultate scenarija.</li></ul></li></ul><h3><a class="anchor" id="outputs" href="#outputs"><i class="fa fa-link"></i></a> Izlazi</h3><ul><li><p> <em>Pokazatelji:</em></p><ul><li> Temeljne pretpostavke rasta stanovništva od početka do ciljne godine u koraku od 5 godina</li><li> Ukupna površina grijanog (bruto poda) i po glavi stanovnika u početnoj godini i na kraju godine izračuna (Zbog različite dostupnosti različitih skupova podataka za različite godine, ovdje je prikazana površina za 2014. godinu u početnoj vrijednosti.)</li><li> Procijenjena (konačna) ukupna potrošnja energije po površini u početnoj godini i na kraju godine izračuna</li><li> Procijenjena površina, ukupna potrošnja energije i specifična potrošnja energije po razdoblju izgradnje u početnoj godini i na kraju godine izračuna</li><li> Udio novoizgrađenih zgrada prikazan na rasterskoj karti za ciljnu godinu</li></ul></li><li><p> <em>Grafika:</em></p><ul><li> Grafikoni o grijanoj bruto površini i konačnoj potrošnji energije po razdoblju izgradnje</li></ul></li><li><p> <em>Slojevi:</em></p><ul><li> Karta gustoće potražnje topline odražava izračunati razvoj</li><li> Karta gustoće bruto površine poda koja odražava izračunati razvoj</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Kao što je već napisano, ovaj se modul temelji na proračunima izvedenim s modulom Invert / EE-Lab za sve zemlje EU 28 (pogledajte <strong>www.invert.at</strong> za opis metode modula Invert / EE-Lab). Analizirani su izračunati scenariji u pogledu razvoja sljedećih vrsta zgrada: stambenih i nestambenih zgrada, 3 razdoblja gradnje i novoizgrađenih zgrada. Zatim se procjenjuje porast stanovništva po NUTS3 regiji i početni fond zgrada (u smislu grijane bruto površine i energetske potrebe po razdoblju izgradnje i tipu zgrade) po NUTS 3 regiji. Na temelju ove procjene rezultati izračunatih scenarija prenose se u odgovarajuću regiju NUTS3. Rezultati NUTS3 zatim se distribuiraju na različite elemente hektara prema metodi razvijenoj u Müller i sur. 2019 ( <strong>REFERENCE</strong> ).</p><h2><a class="anchor" id="provided-scenarios" href="#provided-scenarios"><i class="fa fa-link"></i></a> Navedeni scenariji</h2><p> Modul pruža 4 različita scenarija, koji se razlikuju u stopama obnove. Odabirom se godišnje obnavlja ili 0,5%, 1%, 2% ili 3% ukupne bruto površine. Treba napomenuti da ušteđeni zahtjev za grijanjem nije izravno proporcionalan povećanju brzine obnove, jer su dopuštene različite učinkovite obnove. Uz malu stopu obnove, uglavnom se obnavljaju zgrade, gdje se povoljnim mjerama mogu postići velike uštede. S visokom stopom obnove, zgrade s višom toplinskom kvalitetom također se sve više obnavljaju, a njihova ušteda energije grijanja niža je u usporedbi. Osnovni scenarij koji stoji iza različitih scenarija je referentni scenarij koji je opisan u sljedećem dijelu.</p><p> <strong><em>&quot;referenca&quot;:</em></strong> Trenutne politike učinkovitosti ostaju na snazi i učinkovito se provode. Pretpostavljamo da se općenito vlasnici zgrada i profesionalci pridržavaju regulatornih instrumenata poput građevinskih propisa. Nacionalne razlike u intenzitetu politike i dalje postoje. Stoga intenzitet politike kvalitativno ukazuje na raspon političkih ambicija u različitim zemljama. Kombinacija politika energetske učinkovitosti odgovara postojećim paketima koji su u većini zemalja mješavina regulatornih pristupa (građevinski propisi, definicije zgrada s gotovo nultom energijom (nZEB), obveza OIE-H), ekonomska podrška (subvencije za obnovu zgrada) i oporezivanje energije. Glavni izvori za provedene politike su baza podataka Mure (www.measures-odyssee-mure.eu/) i projekti ENTRANZE (www.entranze.eu/) i Zebra2020 (www.zebra2020.eu/). Iako scenarij ne uzima u obzir snažno tehnološko poboljšanje niti obvezujuće obveze energetske učinkovitosti, postoje ambiciozne politike za poticanje obnovljive energije. To je provedeno na temelju obveznih kvota za obnovljivu energiju na razini pojedinih zgrada.</p><p> <em>Cijene energije: Cijene</em> energije umjereno rastu prema Referentnom scenariju EU-a 2016. (https://ec.europa.eu/energy/en/data-analysis/energy-modelling).</p><p> <em>Razvoj tehnologije:</em> Pretpostavljeno tehnološko učenje vrlo je malo, a troškovi za učinkovite i obnovljive tehnologije grijanja / hlađenja samo se neznatno smanjuju.</p><p> <em>Kvalitativni pregled pretpostavki politike:</em></p><ul><li> Intenzitet politike za OIE-H: visok</li><li> Intenzitet politike za učinkovitost zgrada: nizak</li><li> Intenzitet politike za daljinsko grijanje: srednji</li><li> Cijene energije: niske</li><li> Razvoj tehnologije: nizak</li></ul><p> <em>Rezultati:</em> Ukupna konačna potreba za energijom za grijanje prostora, toplu vodu, hlađenje i pomoćnu potrebu za energijom u EU-28 iznosi približno 3850 TWh za sve stope obnove u 2015. godini i smanjuje se na 2800TWh na 2250 TWh u 2050. godini, ovisno o stopi obnove.</p><p> <strong><em>EU-28:</em></strong><img src="/en/CM-Demand-projection/final_energy_EU28.jpg"/></p><p> <em>Slika: Konačna potreba za energijom u EU-28 od 2015. do 2050. za različite stope obnove</em></p><p> Sljedećih šest grafova prikazuje razvoj konačne potrebe za energijom za grijanje, hlađenje i pripremu potrošne tople vode za pojedine države članice EU.</p><p> <strong><em>DE, FR, GB, IT i PL:</em></strong><img src="/en/CM-Demand-projection/final_absolute_DE.jpg"/></p><p> <em>Slika: Konačna potražnja za energijom u DE, FR, GB, IT i PL za 2015. i 2050. s različitim stopama obnove</em></p><img src="/en/CM-Demand-projection/final_relative_DE.jpg"/><p> <em>Slika: Dio konačne potražnje za energijom u 2050. godini za DE, FR, GB, IT i PL u odnosu na 2015</em></p><p> <strong><em>NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK i GK:</em></strong><img src="/en/CM-Demand-projection/final_absolute_NL.jpg"/></p><p> <em>Slika: Konačna potrošnja energije u NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK i GK za 2015. i 2050. s različitim stopama obnove</em></p><img src="/en/CM-Demand-projection/final_relative_NL.jpg"/><p> <em>Slika: Dio konačne potražnje za energijom u 2050. za NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK i GK u odnosu na 2015.</em></p><p> <strong><em>SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY i MT:</em></strong><img src="/en/CM-Demand-projection/final_absolute_SK.jpg"/></p><p> <em>Slika: Konačna potrošnja energije u SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY i MT za 2015. i 2050. s različitim stopama obnove</em></p><img src="/en/CM-Demand-projection/final_relative_SK.jpg"/><p> <em>Slika: Dio konačne potražnje za energijom u 2050. godini za SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY i MT u odnosu na 2015.</em></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub spremište ovog kalkulacijskog modula</h2><p> <strong><a href="https://github.com/HotMaps/renovation_effect">Ovdje</a></strong> ćete dobiti vrhunski razvoj za ovaj modul izračuna.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Uzorak trčanja</h2><p> Ovdje je pokrenut modul za izradu studije slučaja iz Beča u Austriji. Prvo upotrijebite traku &quot;Idi na mjesto&quot; za navigaciju do Beča i odaberite grad. Kliknite gumb &quot;Slojevi&quot; da biste otvorili prozor &quot;Slojevi&quot;, a zatim kliknite karticu &quot;MODUL OBRAČUNA&quot;. Na popisu modula za izračunavanje odaberite &quot;CM - Projekcija potražnje&quot;.</p><h3><a class="anchor" id="test-run--default-input-values" href="#test-run--default-input-values"><i class="fa fa-link"></i></a> Probno pokretanje: zadane ulazne vrijednosti</h3><p> Zadane ulazne vrijednosti generiraju kartu gustoće potrebe za toplinom za 2017. Te vrijednosti treba smatrati samo početnom točkom. Možda ćete trebati postaviti vrijednosti ispod ili iznad zadanih vrijednosti uzimajući u obzir dodatna lokalna razmatranja. Korišteni scenarij također ima snažan učinak na output. Stoga bi korisnik trebao prilagoditi ove vrijednosti kako bi pronašao najbolju kombinaciju ulaznih podataka za svoju studiju slučaja.</p><p> Da biste pokrenuli modul izračuna, slijedite sljedeće korake:</p><ul><li> Dodijelite ime sesiji pokretanja (nije obavezno) i postavite ulazne parametre (ovdje su korištene zadane vrijednosti), a zatim pritisnite „RUN CM“ na kraju CM ulaza.</li><li> Pričekajte dok se postupak ne završi.</li><li> Odmah možete vidjeti da je karta gustoće topline dodana na kartu. Kao izlaz, pokazatelji su prikazani u prozoru &quot;REZULTATI&quot;, a na karti su prikazani nova karta gustoće topline i bruto površina poda.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_jpg-min.jpg"/><p> <em>Slika: Projekcija potražnje nakon izvođenja sa zadanim parametrom</em></p><ul><li> Uz to se generiraju i dva dijagrama. Prva prikazuje grijanu bruto površinu za različita razdoblja gradnje. Drugi dijagram prikazuje potrošnju energije za grijanje i pripremu potrošne tople vode za također podijeljena utvrđenja u različitim razdobljima gradnje.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_graphs_jpeg.jpg"/><p> <em>Slika: Projekcija potražnje nakon izvođenja sa zadanim parametrom, prebacivanjem na grafiku</em></p><ul><li> Nakon pokretanja izračuna i zatvaranja modula izračuna dva nova sloja mogu se naći na samom dnu ispod popisa Slojevi. S jedne strane nova karta gustoće grijanja, a s druge nova karta bruto površine. Ako ih želite spremiti i koristiti u daljnjim izračunima, morate ih ponovo preuzeti i prenijeti.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_layers_jpg-min.jpg"/><p> <em>Slika: Projekcija potražnje nakon izvođenja sa zadanim parametrom, prebacivanjem na slojeve rezultata</em></p><p> Kao što je već spomenuto, možda će biti potrebno prilagoditi ulazne parametre situaciji vlastitih podataka ili provjeriti osjetljivost.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Andreas Müller i Marcus Hummel, u Hotmaps-Wiki, CM-Demand-projekcija (listopad 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu su stranicu napisali Andreas Müller, Marcus Hummel, Giulia Conforto i David Schmidinger ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> ☑ Ovu je stranicu pregledao Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Andreas Müller i Marcus Hummel</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Demand-projection) (original) [Bulgarian](../bg/CM-Demand-projection)<sup>\*</sup> [Czech](../cs/CM-Demand-projection)<sup>\*</sup> [Danish](../da/CM-Demand-projection)<sup>\*</sup> [German](../de/CM-Demand-projection)<sup>\*</sup> [Greek](../el/CM-Demand-projection)<sup>\*</sup> [Spanish](../es/CM-Demand-projection)<sup>\*</sup> [Estonian](../et/CM-Demand-projection)<sup>\*</sup> [Finnish](../fi/CM-Demand-projection)<sup>\*</sup> [French](../fr/CM-Demand-projection)<sup>\*</sup> [Irish](../ga/CM-Demand-projection)<sup>\*</sup>  [Hungarian](../hu/CM-Demand-projection)<sup>\*</sup> [Italian](../it/CM-Demand-projection)<sup>\*</sup> [Lithuanian](../lt/CM-Demand-projection)<sup>\*</sup> [Latvian](../lv/CM-Demand-projection)<sup>\*</sup> [Maltese](../mt/CM-Demand-projection)<sup>\*</sup> [Dutch](../nl/CM-Demand-projection)<sup>\*</sup> [Polish](../pl/CM-Demand-projection)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Demand-projection)<sup>\*</sup> [Romanian](../ro/CM-Demand-projection)<sup>\*</sup> [Slovak](../sk/CM-Demand-projection)<sup>\*</sup> [Slovenian](../sl/CM-Demand-projection)<sup>\*</sup> [Swedish](../sv/CM-Demand-projection)<sup>\*</sup> 

<sup>\*</sup> machine translated