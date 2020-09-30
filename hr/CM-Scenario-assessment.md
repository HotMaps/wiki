<h1><a class="anchor" id="cm-scenario-assessment" href="#cm-scenario-assessment"><i class="fa fa-link"></i></a>Procjena scenarija CM-a</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#at-a-glance">Na prvi pogled</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#scenario-assessment-inputs-and-outputs">Ulazi i izlazi za procjenu scenarija</a></li><li> <a href="#interpretation-of-input-parameters">Tumačenje ulaznih parametara</a></li><li> <a href="#interpretation-of-results">Tumačenje rezultata</a></li><li> <a href="#sample-run">Uzorak trčanja</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="at-a-glance" href="#at-a-glance"><i class="fa fa-link"></i></a> Na prvi pogled</h2><p> Ovaj modul omogućuje usporedbu različitih scenarija grijanja. Modul nije integriran u Hotmaps Toolbox, ali pruža se kao zasebna Excel radna knjiga koja kombinira rezultate ostalih modula za izračunavanje koji će se prethodno pokrenuti. Predložak kakav jest omogućuje usporedbu do 9 različitih scenarija, ali ako je pravilno prilagođen, može raditi za bilo koji broj scenarija. Postavljaju se zasebni radni listovi za objedinjavanje ključnih pokazatelja iz svakog modula za izračunavanje, dok se ključni pokazatelji automatski sakupljaju u završnoj tablici i prikazuju na grafikonima.</p><p> <a href="https://github.com/HotMaps/scenario_assessment/raw/master/data/ScenarioAssessment_Template.xlsx"><strong>RADNA KNJIGA ZA PROCJENU SCENARIJA: KLIKNITE OVDJE ZA PREUZIMANJE</strong></a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Pristup procjeni niza različitih scenarija grijanja slijedi ovaj redoslijed izračuna:</p><ul><li> Građevinski fond za odabrano područje,</li><li> Troškovi, emisije i potražnja za energijom za decentralnu opskrbu toplinom,</li><li> Troškovi, emisije i potražnja za energijom za opskrbu daljinskom toplinom,</li><li> Troškovi raspodjele daljinske topline.</li></ul><p> U svakom se scenariju pretpostavlja određena podjela između centralne i decentralizirane opskrbe toplinom, zajedno s pretpostavkama o razvoju potražnje za toplinom u regiji. Na primjer, može se usporediti analiza osjetljivosti za niz različitih veličina sustava daljinskog grijanja s različitim tehnologijama opskrbe. Scenarij se može razlikovati ovisno o kapacitetu generatora topline u sustavu daljinskog grijanja, stopama priključenja na sustav daljinskog grijanja ili troškovima i cijenama različitih tehnologija. Slično tome, za decentralnu opskrbu mogu se mijenjati različiti parametri sustava i mogu se analizirati učinci na cjelokupni sustav grijanja u regiji.</p><p> Korisnik samostalno pokreće različite module izračuna za svaki razmatrani scenarij, kopira rezultate u odgovarajuće listove Excel radne knjige, a zatim ih uspoređuje za različite postavke scenarija. Ovaj postupak je opisan u sljedećim odjeljcima na ovoj wiki stranici.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="scenario-assessment-inputs-and-outputs" href="#scenario-assessment-inputs-and-outputs"><i class="fa fa-link"></i></a> Ulazi i izlazi za procjenu scenarija</h2><p> Ulazi sastavljeni u radnu knjigu procjene scenarija generiraju se sa sljedećim modulima za izračunavanje:</p><p> <strong>1. <a href="/en/CM-Decentral-heating-supply">CM - Decentralna opskrba grijanjem</a></strong></p><p> <strong>2. <a href="/en/CM-District-heating-supply-dispatch">CM - Otprema opskrbe daljinskim grijanjem</a></strong></p><p> <strong>3. <a href="/en/CM-District-heating-potential-economic-assessment">CM - Potencijal daljinskog grijanja: ekonomska procjena</a></strong></p><p> Ulaze i izlaze ovih modula treba spremiti za svaki scenarij, a zatim ih kompilirati u radnu knjigu za procjenu scenarija. Ćelije koje treba popuniti pravilno su označene i legenda o kodiranju boja izvještava se na prvom listu radne knjige, kako je objašnjeno u sljedećem odlomku <a href="#interpretation-of-input-parameters">Tumačenje ulaznih parametara</a> . Tri gore spomenuta modula za izračunavanje zahtijevaju neke ulaze koje ste možda već imali ili koje ćete možda morati izračunati izvođenje ostalih modula, kako je navedeno u sljedećem odlomku, kao i u odjeljku <strong><a href="/en/training-material">Obuka</a></strong> .</p><p> List &quot;Završni stol&quot; izračunava i prikazuje usporedbu sljedećih pokazatelja za svaki definirani scenarij kako na slikama tako i na grafikonima:</p><ul><li> Trošak godišnje za različite kategorije troškova i tehnologije u <em><strong>milijunima eura godišnje</strong></em></li><li> Izravnani troškovi opskrbe toplinom u <em><strong>EUR / MWh</strong></em> ,</li><li> Emisije CO2 za različite tehnologije u <em><strong>tCO <sub>2</sub> / god</strong></em> ,</li><li> Konačna potrošnja energije za različite tehnologije u <em><strong>GWh / god</strong></em> ,</li><li> Korisna potreba za energijom za različite tehnologije u <em><strong>GWh / god</strong></em> ,</li><li> Dionice obnovljive energije (OIE) i daljinskog grijanja (DH).</li></ul><p> Za svaki su scenarij sljedeći pokazatelji prikazani u obliku stupčastog grafikona:</p><ul><li> Ukupni (agregirani) troškovi opskrbe toplinom sustavom daljinskog grijanja i decentraliziranim sustavom grijanja u <em><strong>milijunima eura godišnje</strong></em></li><li> Ukupne (agregirane) emisije CO <sub>2</sub> sustavom daljinskog grijanja i decentraliziranim sustavom grijanja u <em><strong>tCO <sub>2</sub> / god</strong></em></li><li> Ukupna (agregirana) konačna potrošnja energije i korisne energije u <em><strong>GWh / god</strong></em></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-input-parameters" href="#interpretation-of-input-parameters"><i class="fa fa-link"></i></a> Tumačenje ulaznih parametara</h2><p> Ulazni parametri potrebni za pokretanje ovog modula podijeljeni su na:</p><ul><li> Parametri koje treba odabrati / popuniti u modulima za izračunavanje na Kutiji s alatima: istaknuti tirkizno u radnoj knjizi.</li><li> Parametri koje treba odabrati / ispuniti u radnoj knjizi, ali oni su već navedeni kao zadane vrijednosti: označeni zelenom bojom u radnoj knjizi.</li><li> Parametri koji se pružaju kao izlazni podaci u Alatnom okviru za kopiranje u radnu knjigu u poljima označenim žutom bojom.</li><li> Parametri izračunati i dostavljeni kao izlazni podaci u radnoj knjizi, koji će se kopirati na drugi list kao ulaz za daljnju razradu: označeni crvenom bojom.</li></ul><p> Povrh toga, radna knjiga sadrži upute u crvenom tekstu i dodatne izračune koje ne treba uređivati u sivim stanicama. Na donjoj slici prikazano je kako izgleda kodiranje boja naznačeno na prednjem listu radne knjige.</p><img src="/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg"/><h3><a class="anchor" id="final-table---overview-of-assessment-results" href="#final-table---overview-of-assessment-results"><i class="fa fa-link"></i></a> Završni stol - Pregled rezultata procjene</h3><p> List s nazivom &quot;Završni stol&quot; uglavnom prikazuje ukupne izlazne parametre i na slikama i na grafikonima. Također, ima nekoliko ulaznih parametara koje korisnik treba osigurati.</p><p> <em>Tablica scenarija</em> (R4: Z17) spremna je za popunjavanje kratkim opisom različitih procijenjenih scenarija. Smještena točno iznad ljestvica, ova tablica može biti podsjetnik za korisnika ili pojašnjenje za ostale suradnike.</p><p> Dalje u listu nalaze se neki parametri koji su već ispunjeni, ali se mogu prilagoditi, ukoliko ne ostanu prazni:</p><ul><li> <em>Faktor obnovljivih izvora</em> (F102: H116): koristi se za izračunavanje konačne energije iz obnovljivih izvora iz ukupne finalne potrebe za energijom.</li><li> <em>Opći faktor učinkovitosti</em> (K102): koristi se za izračunavanje ukupne korisne potražnje za energijom od ukupne konačne potrošnje energije.</li><li> <em>Gubici u mreži</em> (F121: N121): koriste se za izračun potražnje za opskrbom toplinom u sustavu daljinskog grijanja iz udjela korisne energije isporučene iz daljinskog grijanja (vidi sljedeću sliku).</li></ul><img src="/en/CM-Scenario-assessment/picture3.jpg"/><h3><a class="anchor" id="definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply" href="#definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply"><i class="fa fa-link"></i></a> Definicija građevinskog fonda i izračun pokazatelja za decentraliziranu opskrbu grijanjem</h3><p> Skup od tri lista koristi se za opisivanje građevinskog fonda regije koja se ispituje. Tri lista koriste se za prikupljanje rezultata CM - decentralizirane opskrbe pojedinačnim zgradama, kombiniranje pojedinačnih zgrada sa građevinskim fondom i za izračunavanje pokazatelja za decentraliziranu opskrbu potrebnim za ukupnu procjenu scenarija. Sadržaj i punjenje različitih listova opisano je u nastavku.</p><p> <strong>1. Obiteljske zgrade</strong> Ovaj je radni list pripremljen za prikupljanje rezultata <a href="/en/CM-Decentral-heating-supply">CM - decentraliziranog opskrbe</a> za obiteljske zgrade. Dvije različite vrste obiteljskih zgrada mogu se uzeti u obzir u zadanoj verziji radne knjige. Međutim, korisnik može prilagoditi radnu knjižicu kako bi kombinirao neograničen broj različitih obiteljskih zgrada (npr. Iz različitih razdoblja gradnje ili različitih vrsta poput samostojećih ili dvojnih).</p><p> <strong>2. MF i nestambene zgrade</strong> Ovaj radni list pripremljen je za prikupljanje rezultata <a href="/en/CM-Decentral-heating-supply">CM - decentraliziranog grijanja</a> za višeporodične i nestambene zgrade. U zadanoj verziji radne knjige može se uzeti u obzir 8 različitih vrsta višestambenih i nestambenih zgrada. Međutim, korisnik može prilagoditi radnu knjižicu kako bi kombinirao bilo koji broj različitih višestambenih i nestambenih zgrada (npr. Iz različitih razdoblja gradnje ili različitih vrsta poput malih višestambenih zgrada, stambenih zgrada, ureda, hotela i restorana, obrazovanje itd.).</p><p> <strong>Građevinski fond i opskrba</strong> u ovom dokumentu, građevinski fond regije koja se ispituje sastavljen je od vrsta zgrada definiranih i izračunatih u prethodna dva radna lista (C15: L15). Nadalje, definirana je podjela tehnologija za koje se pretpostavlja da će se koristiti u različitim vrstama zgrada (C17: L25) i izračunavaju se pokazatelji za decentraliziranu opskrbu grijanjem u građevinskom fondu (E44: E77). Zbog toga korisnik također mora definirati ukupnu potražnju za toplinom u istraživanoj regiji (E9), kao i pretpostavljenu cijenu CO <sub>2</sub> (E10).</p><h3><a class="anchor" id="ref.-decentral-dec.-heating-supply" href="#ref.-decentral-dec.-heating-supply"><i class="fa fa-link"></i></a> Ref. Decentralno (prosinac) opskrba grijanjem</h3><p> U ovom radnom listu mogu se definirati različiti scenariji za decentraliziranu opskrbu grijanjem u regiji koja se ispituje. Da biste to učinili, rezultati izračuna iz prethodnog radnog lista (Građevinski fond i Opskrba Dec, stanice E44: E77) mogu se kopirati u žuto označene ćelije na ovom radnom listu. Radni list u svojoj zadanoj verziji pripremljen je za sastavljanje 9 različitih scenarija. Korisnik može slobodno odlučiti koji scenariji za decentraliziranu opskrbu grijanjem se prikupljaju u ovom listu (npr. Različita tehnologija podijeljena u različite tipove zgrada, različite cijene CO <sub>2</sub> ili različiti zahtjevi za toplinom u regiji).</p><h3><a class="anchor" id="ref.-dh-economic-assessment" href="#ref.-dh-economic-assessment"><i class="fa fa-link"></i></a> Ref. DH ekonomska procjena</h3><p> U ovom radnom listu mogu se definirati različiti scenariji za izgradnju mreža daljinskog grijanja u regiji koja se ispituje. Da bi to učinio, korisnik pokreće različite scenarije s <a href="/en/CM-District-heating-potential-economic-assessment">potencijalom CM - daljinsko grijanje: ekonomska procjena</a> i kopira rezultate modula iz okvira s alatima u ovaj radni list (ćelije C29: T44). Od šireg skupa kalkuliranih scenarija, korisnik zatim bira 9 scenarija koji će se koristiti za ukupnu procjenu scenarija (C52: K67). Korisnik može slobodno odlučiti o tome koji su scenariji za izgradnju mreža daljinskog grijanja prikupljeni u ovom listu (npr. Različiti tržišni udjeli daljinskog grijanja u područjima daljinskog grijanja, različiti gornji stropovi mreže ili različiti ukupni zahtjevi za toplinom u regiji).</p><h3><a class="anchor" id="ref.-dh-supply-dispatch" href="#ref.-dh-supply-dispatch"><i class="fa fa-link"></i></a> Ref. Otprema opskrbe DH</h3><p> U ovom se radnom listu mogu definirati različiti scenariji za opskrbu toplinom potencijalnih sustava daljinskog grijanja. Da bi to učinio, korisnik pokreće različite scenarije s depešom <a href="/en/CM-District-heating-supply-dispatch">opskrbe CM - daljinskim grijanjem</a> i kopira rezultate modula iz okvira s alatima u ovaj radni list (ćelije D84: L98 za rezultate u odjeljku pod nazivom &quot;POKAZATELJI&quot; i ćelije D104: L195 za rezultate u odjeljku pod nazivom &quot;GRAFIKA&quot;). Korisnik može slobodno odlučiti koji su scenariji za opskrbu toplinom potencijalnih sustava daljinskog grijanja prikupljeni u ovom listu (npr. Različite kombinacije tehnologija, različiti zahtjevi za toplinom u sustavima daljinskog grijanja, različite cijene CO <sub>2</sub> ili različite cijene nosača energije) .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-results" href="#interpretation-of-results"><i class="fa fa-link"></i></a> Tumačenje rezultata</h2><p> Nakon popunjavanja podataka o scenariju u tri radna lista (Ref. Prosinac opskrbe grijanjem, Ref. Ekonomska procjena DH-a, Ref. Otprema opskrbe DH-om) indikatori za definirane scenarije automatski se izračunavaju u listu &quot;Završna tablica&quot;. Tablica u ćelijama B7: N88 prikazuje rezultate ovih ukupnih scenarija. Pokazatelji su izračunati za troškove, emisije, potražnju za energijom, kao i za udjele u obnovljivoj energiji i daljinskom grijanju.</p><img src="/en/CM-Scenario-assessment/picture1.jpg"/><p> Općenito, svi se ovi rezultati izračunavaju pojedinačno za decentraliziranu površinu kao i za površinu opskrbljenu daljinskim grijanjem i primjenjuju se na cjelokupni scenarij koristeći njihove odgovarajuće udjele. Stoga su navedeni zasebno kao pojedinačne komponente odgovarajućeg parametra.</p><h3><a class="anchor" id="costs" href="#costs"><i class="fa fa-link"></i></a> Troškovi</h3><p> Datoteka za procjenu scenarija prikazuje podjelu ukupnih troškova na kapitalne izdatke (CAPEX), operativne izdatke (OPEX), izdatke za energiju kao i za CO <sub>2</sub> . Te su različite kategorije troškova predstavljene kako za centralnu tako i za decentralnu opskrbu u regiji. Nadalje, prikazani su troškovi za distribucijsku mrežu. Sve te komponente troškova prikazane su u <em><strong>milijunima eura godišnje</strong></em> . Osim ukupnih godišnjih troškova, u tablici su prikazani i poravnati troškovi opskrbe toplinom (LCOH). Prikazani su u <em><strong>EUR / MWh.</strong></em> I godišnji troškovi kao i LCOH prikazani su u brojkama. Oni se mogu naći pored tablice, kao što je prikazano na sljedećoj slici.</p><img src="/en/CM-Scenario-assessment/picture2_new.jpg"/><h3><a class="anchor" id="emissions" href="#emissions"><i class="fa fa-link"></i></a> Emisije</h3><p> Datoteka za procjenu scenarija također pruža apsolutne količine emisija CO <sub>2</sub> u različitim scenarijima. Vrijednosti su prikazane za različite tehnologije opskrbe, razlikujući pojedinačnu (decentralnu) i daljinsku opskrbu (centralnu) opskrbu. Vrijednosti su date u <em><strong>tCO <sub>2</sub> / god</strong></em> . Ponovno, količine emisija također su prikazane u obliku dijagrama odmah pored tablice.</p><h3><a class="anchor" id="energy-demand-final-and-useful-energy" href="#energy-demand-final-and-useful-energy"><i class="fa fa-link"></i></a> Potreba za energijom (konačna i korisna energija)</h3><p> U tablici su također prikazani zahtjevi za konačnom i korisnom energijom. U konačnoj potražnji energije sadržani su i gubici u sustavu daljinskog grijanja. Stoga konačne vrijednosti potražnje energije za opskrbu daljinskim grijanjem odražavaju potražnju za prijenosnikom energije u postrojenjima sustava daljinskog grijanja. Vrijednosti korisne i konačne potrošnje energije prikazane su u <em><strong>GWh / god</strong></em> .</p><h3><a class="anchor" id="shares-of-renewable-energy-and-district-heating" href="#shares-of-renewable-energy-and-district-heating"><i class="fa fa-link"></i></a> Dionice obnovljive energije i daljinsko grijanje</h3><p> Na kraju, tablica nudi usporedbu četiri različita udjela: udio obnovljive energije u decentralnoj opskrbi, u centralnoj opskrbi i u ukupnoj opskrbi toplinom na tom području, te udio daljinskog grijanja / centralne opskrbe na tom području. Što se tiče ostalih vrijednosti, te su vrijednosti također predstavljene na slikama odmah pored tablice.</p><img src="/en/CM-Scenario-assessment/picture4.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Uzorak trčanja</h2><p> (Tomaszów Mazowiecki)</p><p> Preuzimanjem datoteke Excel dobit ćete spremnu verziju procjene scenarija. Nakon uspješnog izračuna scenarija korištenjem modula CM - opskrba decentraliziranim grijanjem, CM - potencijal daljinskog grijanja: ekonomska procjena i CM - otprema opskrbe daljinskim grijanjem, odgovarajući rezultati modula mogu se kopirati na odgovarajuće listove dokumenta. U sljedeća tri scenarija za poljski grad Tomaszów Mazowiecki ocjenjuju se kao primjer.</p><h3><a class="anchor" id="ref.-dec.-heating-supply" href="#ref.-dec.-heating-supply"><i class="fa fa-link"></i></a> Ref. Prosinca opskrba grijanjem</h3><p> U ovom primjeru izračunat je jedan scenarij decentralizirane opskrbe za grad Tomaszów Mazowiecki u Poljskoj pomoću alata Hotmaps zajedno s listovima u odjeljku građevinskog fonda prema postupku opisanom u <a href="CM-Scenario-assessment#interpretation-of-input-parameters_definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply">ovom odjeljku stranice</a> . Ovaj scenarij za decentraliziranu opskrbu kopiran je u scenarije 1, 2 i 3 u datoteci procjene scenarija, radnom listu &quot;Ref. Prosinca opskrbe grijanjem&quot; kako bi se koristio isti pojedinačni scenarij opskrbe grijanjem u sva tri ukupna gradska scenarija koja se uspoređuju .</p><img src="/en/CM-Scenario-assessment/sample_run_picture1.jpg"/><h3><a class="anchor" id="ref.-dh-economic-assessment" href="#ref.-dh-economic-assessment"><i class="fa fa-link"></i></a> Ref. DH ekonomska procjena</h3><p> U ovom primjeru izračunat je jedan scenarij izgradnje mreže daljinskog grijanja za grad Tomaszów Mazowiecki u Poljskoj pomoću alata Hotmaps. Ovaj je scenarij kopiran na scenarije 1, 2 i 3 u datoteci procjene scenarija, radnom listu &quot;Ref. Ekonomska procjena DH&quot; kako bi se upotrijebio isti scenarij izgradnje mreže daljinskog grijanja u sva tri ukupna gradska scenarija koja se uspoređuju.</p><img src="/en/CM-Scenario-assessment/sample_run_picture2.jpg"/><h3><a class="anchor" id="ref.-dh-supply-dispatch" href="#ref.-dh-supply-dispatch"><i class="fa fa-link"></i></a> Ref. Otprema opskrbe DH</h3><p> U ovom su primjeru izrađena tri različita scenarija opskrbe daljinskim grijanjem za grad Tomaszów Mazowiecki u Poljskoj pomoću alata Hotmaps. Scenariji odražavaju različite kombinacije opskrbnih tehnologija, naime različite kapacitete dizalica topline, višak topline kao i kotlove samo za grijanje.</p><img src="/en/CM-Scenario-assessment/sample_run_picture3.jpg"/><h3><a class="anchor" id="final-table" href="#final-table"><i class="fa fa-link"></i></a> Završni stol</h3><p> Nakon kopiranja pojedinačnih podataka, sastavljeni scenariji mogu se ispitati u završnom stolu lista. S jedne strane postoji tablica koja prikazuje točne rezultate, a s druge strane odgovarajuće grafikone možete pronaći na desnoj strani tablice. U ovom primjeru, učinci korištenja različitih kapaciteta opskrbnih tehnologija u sustavu daljinskog grijanja mogu se procijeniti na temelju troškova, emisija, potražnje za energijom i udjela obnovljive energije.</p><img src="/en/CM-Scenario-assessment/sample_run_picture4.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Giulia Conforto i David Schmidinger, u Hotmaps-Wiki, CM-Scenarij-procjena (rujan 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu su stranicu napisali Giulia Conforto i David Schmidinger <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> ☑ Ovu je stranicu pregledao Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Giulia Conforto i David Schmidinger</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Scenario-assessment) (original) [Bulgarian](../bg/CM-Scenario-assessment)<sup>\*</sup> [Czech](../cs/CM-Scenario-assessment)<sup>\*</sup> [Danish](../da/CM-Scenario-assessment)<sup>\*</sup> [German](../de/CM-Scenario-assessment)<sup>\*</sup> [Greek](../el/CM-Scenario-assessment)<sup>\*</sup> [Spanish](../es/CM-Scenario-assessment)<sup>\*</sup> [Estonian](../et/CM-Scenario-assessment)<sup>\*</sup> [Finnish](../fi/CM-Scenario-assessment)<sup>\*</sup> [French](../fr/CM-Scenario-assessment)<sup>\*</sup> [Irish](../ga/CM-Scenario-assessment)<sup>\*</sup>  [Hungarian](../hu/CM-Scenario-assessment)<sup>\*</sup> [Italian](../it/CM-Scenario-assessment)<sup>\*</sup> [Lithuanian](../lt/CM-Scenario-assessment)<sup>\*</sup> [Latvian](../lv/CM-Scenario-assessment)<sup>\*</sup> [Maltese](../mt/CM-Scenario-assessment)<sup>\*</sup> [Dutch](../nl/CM-Scenario-assessment)<sup>\*</sup> [Polish](../pl/CM-Scenario-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scenario-assessment)<sup>\*</sup> [Romanian](../ro/CM-Scenario-assessment)<sup>\*</sup> [Slovak](../sk/CM-Scenario-assessment)<sup>\*</sup> [Slovenian](../sl/CM-Scenario-assessment)<sup>\*</sup> [Swedish](../sv/CM-Scenario-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated