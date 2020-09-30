<h1><a class="anchor" id="cm-district-heating-potential-areas-user-defined-thresholds" href="#cm-district-heating-potential-areas-user-defined-thresholds"><i class="fa fa-link"></i></a>Korisnički definirani pragovi CM potencijalnih područja daljinskog grijanja</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#in-a-glance">U jednom pogledu</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Ulazi i izlazi</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub spremište ovog kalkulacijskog modula</a></li><li> <a href="#sample-run">Uzorak trčanja</a><ul><li> <a href="#sample-run_test-run-1-default-input-values">Probno pokretanje 1: zadane ulazne vrijednosti</a></li><li> <a href="#sample-run_test-run-2-modified-input-values">Probno pokretanje 2: modificirane ulazne vrijednosti</a></li></ul></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> U jednom pogledu</h2><p> Ovaj proračunski modul izračunava potencijal daljinskog grijanja unutar odabrane regije pomoću 2 praga vrijednosti: 1) minimalna potreba za toplinom na svakom hektaru, 2) minimalna potreba za toplinom u području DH. Područja unutar odabrane regije koja ispunjavaju ove uvjete vraćaju se kao DH područja. Nadalje, potražnja za toplinom u tim regijama je povrat u obliku pokazatelja kao potencijal za daljinsko grijanje.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Potreba za toplinom igra važnu ulogu u određivanju potencijalnih područja daljinskog grijanja (DH). Na primjer, provedba daljinskog grijanja u područjima s niskom potrebom za toplinom nije ekonomski isplativa. S druge strane, definiranje bilo kojeg područja s velikom gustoćom potrebe za toplinom kao potencijalnog područja DH također može biti netočno. Velika gustoća potrebe za toplinom u nekom području mogla bi biti posljedica prisutnosti nekolicine potrošača s vrlo velikom potrebom za toplinom u tom području. Suprotno tome, niska prosječna gustoća potrebe za toplinom mogla bi biti znak zona s vrlo niskom potrebom za toplinom unutar odabranog područja. Cilj proračunskog modula &quot;CM - DISTRICNO GREJNO POTENCIJALNO PODRUČJE: POTROŠNO definirano od strane korisnika&quot; je pružiti razumnu ravnotežu između gustoće potrebe za toplinom u nekom području i njegovim sastavnim zonama.</p><p> &quot;CM - DISTRICNO GREJNO POTENCIJALNO PODRUČJE: POTREB DEFINIRANOG KORISNICOM&quot; određuje područja DH i njihov odgovarajući potencijal DH na temelju gustoće potrebe za toplinom. Gustoće potrebe za toplinom dobivaju se iz ulaznog GIS sloja. Kutija alata Hotmaps i baza podataka pruža <strong><a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">zadanu kartu gustoće topline</a></strong> koja se može koristiti u ovom modulu za izračunavanje. Karta gustine topline Hotmaps u rasterskom je formatu i ima rezoluciju od jednog hektara i Referentni koordinatni sustav (CRS) &quot; <em><em>ETRS89 / LAEA Europe - EPSG 3035</em></em> &quot;. Stanice na karti prikazuju gustoću topline u <em><strong>MWh / ha</strong></em> . Pored ove zadane karte, karte koje korisnik generira mogu se učitati u alatni okvir i koristiti u ovom CM-u.</p><p> Kao izlaz predstavljeni su jedan GIS sloj, tri pokazatelja i dva dijagrama. Ti su izlazi detaljno objašnjeni u odjeljku <a href="#sample-run">Sample Run</a> . Izlazni sloj pokazuje potencijalna područja DH. Klikom na svako područje na karti iskače prozor i prikazuje se potencijal DH koji odgovara tom području. Unutar prozora INDIKATORI / GRAFIKA u odjeljku REZULTATI alata prikazani su relevantni indikatori i grafikoni koji se odnose na potencijal DH u odabranoj zoni i potencijale u pod zonama.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ulazi i izlazi</h2><p> Ulazni parametri i slojevi, kao i izlazni slojevi i parametri, su kako slijedi.</p><p> <strong>Ulazni slojevi i parametri su:</strong></p><ul><li> Minimalna potreba za toplinom na svakom hektaru [ <em><strong>MWh / ha</strong></em> ]: vrijednost između <em><em>0</em></em> i <em><em>1000</em></em></li><li> Minimalna potreba za toplinom u području DH [ <em><strong>GWh / godina</strong></em> ]: vrijednost između <em><em>0</em></em> i <em><em>500</em></em></li><li> Karta gustoće topline: zadana karta nalazi se u okviru s alatima; vlastite učitane karte mogu se koristiti i u CM-u<ul><li> u rasterskom formatu (* .tif)</li><li> s rezolucijom od 1 hektara</li><li> gustoće potražnje u <em><strong>MWh / ha</strong></em></li></ul></li></ul><p> <strong>Izlazni slojevi i parametri su:</strong></p><ul><li> DH područja u rasterskim i shapefile formatima</li><li> Potencijal DH u svakom području DH [ <em><strong>GWh / godina</strong></em> ] (kliknite na karti)</li><li> Ukupna potreba za toplinom u GWh unutar odabrane zone</li><li> Ukupni potencijal daljinskog grijanja u GWh unutar odabrane zone</li><li> Potencijalni udio daljinskog grijanja od ukupne potražnje u odabranoj zoni</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Potencijal za DH u određenoj regiji može se definirati ukupnom potrebom za toplinom i njezinom prostornom raspodjelom. U alatnom okviru Hotmaps potražnja za toplinom predstavljena je u obliku rasterske karte. Da bi se pravilno definirale potencijalna područja DH, i potreba za toplinom u svakoj ćeliji i na nekom području trebala bi doseći određenu razinu. Kao početnu točku, alatni okvir Hotmaps predlaže zadane vrijednosti za ova dva parametra. Međutim, ovisno o raspodjeli potrebe za toplinom i lokalnim uvjetima, korisnik Hotmaps može mijenjati ove vrijednosti.</p><p> Određivanje DH područja vrši se u dva koraka:</p><p> U prvom se koraku filtriraju sve stanice s potrebom za toplinom ispod ulaznog parametra &quot;Minimalna potreba za toplinom u hektaru&quot;. Uklanjanjem tih stanica s karte dobivamo skupine stanica koje su međusobno povezane. Svaka skupina ovih povezanih stanica čine male zone koje se ovdje nazivaju &quot;koherentna područja&quot;. U drugim se koracima izračunava ukupna potreba za toplinom u svakom koherentnom području. Ako je ukupna potreba za toplinom veća od ulaznog parametra &quot;Minimalna potreba za toplinom u području DH&quot;, za svako koherentno područje smatra se potencijalnim područjem DH.</p><p> Konačno, za DH područja, potencijal se izračunava i prikazuje u obliku GIS sloja, što se može vidjeti u alatu.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub spremište ovog kalkulacijskog modula</h2><p> <a href="https://github.com/HotMaps/dh_potential/tree/develop">Ovdje</a> ćete dobiti vrhunski razvoj za ovaj modul izračuna.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Uzorak trčanja</h2><p> Ovdje je pokrenut modul za izradu studije slučaja iz Aalborga u Danskoj.</p><ul><li> Prvo upotrijebite traku &quot;Idi na mjesto&quot; za navigaciju do Aalborga i odabir grada.</li></ul><img alt="Fig. 1" src="../images/cm_dh_potential/1.png" title="Dođite do mjesta"/><ul><li><p> Slijedite korake prikazane na donjoj slici:</p><ul><li> Kliknite gumb &quot;Slojevi&quot; da biste otvorili prozor &quot;Slojevi&quot;:</li><li> Kliknite karticu &quot;MODULI OBRAČUNA&quot;.</li><li> Kliknite na gumb &quot;CM-DISTRICT GREJANJE POTENCIJALNIH POVRŠINA: POROČI DEFINIRANI KORISNIKOM&quot;.</li></ul></li><li><p> Sada se otvara računski modul &quot;CM-DISTRICT GREJANJE POTENCIJALNIH POVRŠINA: POROZI DEFINIRANI KORISNIKOM&quot; i spreman je za rad.</p></li></ul><img alt="Fig. 3" src="../images/cm_dh_potential/3.png" title="NESOKRETNI GREJNI POTENCIJAL"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-1--default-input-values" href="#test-run-1--default-input-values"><i class="fa fa-link"></i></a> Probno pokretanje 1: zadane ulazne vrijednosti</h3><p> Zadane ulazne vrijednosti pokazuju opće uvjete pod kojima se neko područje može smatrati potencijalnim DH područjem. Te vrijednosti treba smatrati samo polaznom točkom. Možda ćete trebati postaviti vrijednosti ispod ili iznad zadanih vrijednosti u okviru s alatima s obzirom na dodatne lokalne uvjete. Stoga bi korisnik trebao prilagoditi ove vrijednosti kako bi pronašao najbolju kombinaciju pragova za svoju studiju slučaja.</p><p> Da biste pokrenuli modul izračuna, slijedite sljedeće korake:</p><ul><li> Dodijelite naziv sesiji pokretanja (nije obavezno - ovdje smo odabrali &quot;Test Run 1&quot;) i postavite ulazne parametre (ovdje su korištene zadane vrijednosti).</li></ul><img alt="Fig. 4-0" src="../images/cm_dh_potential/4-0.png" title="Nazovite sesiju pokretanja"/><ul><li> Pritisnite gumb &quot;RUN CM&quot; u donjem lijevom dijelu.</li><li> Pričekajte dok se postupak ne završi.</li></ul><p> <strong><code>Note: If you wish to change your input parameters, you can press &quot;STOP CM&quot;, modify your input parameters and re-run the CM</code></strong></p><ul><li> Kao izlaz, pokazatelji i dijagrami prikazani su u odjeljku &quot;REZULTATI&quot; na desnoj strani okvira s alatima. Pokazatelji pokazuju:<ul><li> ukupna potreba za toplinom u <em><em>GWh</em></em> unutar odabrane zone,</li><li> ukupni potencijal DH u <em><em>GWh</em></em> unutar odabrane zone,</li><li> udio DH potencijala u ukupnoj potražnji, koji se dobiva podjelom DH potencijala u ukupnoj potražnji topline u regiji.</li></ul></li></ul><img alt="Fig. 4-1" src="../images/cm_dh_potential/4-1.png" title="Kartica POKAZATELJI"/><p> Uz to se generiraju i dva dijagrama. Prva prikazuje potencijal DH-a u svakom području DH-a. Odgovarajuće oznake mogu se naći i na karti. Drugi dijagram prikazuje ukupni potencijal DH u usporedbi s ukupnom potrebom za toplinom u odabranom području.</p><img alt="Fig. 4-2" src="../images/cm_dh_potential/4-2.png" title="Kartica GRAFIKA"/><ul><li> Također je na sloj dodan novi sloj koji prikazuje DH područja. Ovaj se sloj dodaje na popis slojeva u kategoriji &quot;Računski modul&quot; na samom dnu odjeljka slojeva. Naziv sesije izvođenja razlikuje izlaze ovog izvođenja od ostalih.</li></ul><img alt="Fig. 4-3" src="../images/cm_dh_potential/4-3.png" title="Slojevi modula za računanje"/><p> Slijedom ovih koraka steći ćete dojam ulaznih vrijednosti i potencijalnih područja DH.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-2--modified-input-values" href="#test-run-2--modified-input-values"><i class="fa fa-link"></i></a> Probno pokretanje 2: modificirane ulazne vrijednosti</h3><p> Ovisno o vašem iskustvu i lokalnom znanju, možete povećati ili smanjiti ulazne vrijednosti da biste postigli bolje rezultate. Na primjer, u slučaju Aalborga, možda znate da je potreba za toplinom u vanjskim gradskim područjima relativno blizu središnjem dijelu grada, a sustav DH je također izvediv u tim područjima. Stoga možete odlučiti smanjiti minimalnu potrebu za toplinom u ćelijama koje su dio područja DH; međutim, kako biste zajamčili dovoljnu potrebu za toplinom, možete povećati minimalnu potrebu za toplinom u području DH. Ovdje ponovno pokrećete računske module s novim ulaznim parametrima.</p><ul><li> Dodijelite naziv sesiji pokretanja (nije obavezno - ovdje smo odabrali &quot;Test Run 2&quot;) i postavite ulazne parametre ( <em><em>250 MWh / ha</em></em> za minimalnu potrebu za toplinom u hektaru i <em><em>35 GWh / godinu</em></em> za minimalnu potražnju u području DH) .</li></ul><img alt="Fig. 5-0" src="../images/cm_dh_potential/5-0.png" title="Nazovite sesiju pokretanja"/><ul><li> Pritisnite gumb &quot;RUN CM&quot; u donjem lijevom dijelu.</li><li> Pričekajte dok se postupak ne završi.</li><li> Kao izlaz, pokazatelji i dijagrami prikazani su u odjeljku &quot;REZULTATI&quot; na desnoj strani okvira s alatima. Pokazatelji pokazuju:<ul><li> ukupna potreba za toplinom u <em><em>GWh</em></em> unutar odabrane zone,</li><li> ukupni potencijal DH u <em><em>GWh</em></em> unutar odabrane zone,</li><li> udio potencijala za toplinsku energiju u ukupnoj potražnji, koji se dobiva podjelom potencijala za toplinsku energiju u ukupnoj potražnji topline u regiji.</li></ul></li></ul><img alt="Fig. 5-1" src="../images/cm_dh_potential/5-1.png" title="Kartica POKAZATELJI"/><p> Uz to se generiraju i dva dijagrama. Prva prikazuje potencijal DH u svakom području DH. Odgovarajuće oznake mogu se naći i na karti. Drugi dijagram prikazuje ukupni potencijal DH u usporedbi s ukupnom potrebom za toplinom u odabranom području.</p><img alt="Fig. 5-2" src="../images/cm_dh_potential/5-2.png" title="Kartica GRAFIKA"/><ul><li> Također je na sloj dodan novi sloj koji prikazuje DH područja. Ovaj se sloj dodaje na popis slojeva u kategoriji &quot;Modul za izračunavanje&quot;. Naziv sesije izvođenja razlikuje izlaze ovog izvođenja od ostalih.</li></ul><img alt="Fig. 5-3" src="../images/cm_dh_potential/5-3.png" title="Slojevi modula za računanje"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Mostafa Fallahnejad, u Hotmaps-Wiki, CM-Područja daljinskog grijanja: korisnički definirani pragovi (travanj 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu je stranicu napisao Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Ovu je stranicu pregledao Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-District-heating-potential-areas-user-defined-thresholds) (original) [Bulgarian](../bg/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Czech](../cs/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Danish](../da/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [German](../de/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Greek](../el/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Spanish](../es/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Estonian](../et/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Finnish](../fi/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [French](../fr/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Irish](../ga/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup>  [Hungarian](../hu/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Italian](../it/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Lithuanian](../lt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Latvian](../lv/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Maltese](../mt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Dutch](../nl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Polish](../pl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Romanian](../ro/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Slovak](../sk/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Slovenian](../sl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Swedish](../sv/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> 

<sup>\*</sup> machine translated