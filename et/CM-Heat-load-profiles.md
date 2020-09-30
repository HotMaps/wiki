<h1><a class="anchor" id="cm-heat-load-profiles" href="#cm-heat-load-profiles"><i class="fa fa-link"></i></a>CM soojuskoormuse profiilid</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisukord</h2><ul><li> <a href="#in-a-glance">Lühidalt</a></li><li> <a href="#introduction">Sissejuhatus</a></li><li> <a href="#inputs-and-outputs">Sisendid ja väljundid</a><ul><li> <a href="#inputs-and-outputs_input-layers-and-parameters">Sisendkihid ja parameetrid</a></li><li> <a href="#inputs-and-outputs_output">Väljund</a></li></ul></li><li> <a href="#method">Meetod</a><ul><li> <a href="#method_overview">Ülevaade</a></li><li> <a href="#method_details">Üksikasjad</a></li><li> <a href="#method_implementation">Rakendamine</a></li></ul></li><li> <a href="#github-repository-of-this-calculation-module">Selle arvutusmooduli GitHubi hoidla</a></li><li> <a href="#sample-run">Proovijooks</a></li><li> <a href="#how-to-cite">Kuidas tsiteerida</a></li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a></li><li> <a href="#license">Litsents</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Lühidalt</h2><p> See moodul loob valitud piirkonna ruumide kütmise ja sooja vee tootmise vajaduse koormusprofiilid. See kasutab elamute ja tertsiaarsektori vaikekoormusprofiile NUTS2 tasandil ja skaalab seda vastavalt nendele sektoritele antud nõudlusele ning pakub ruumide kütmiseks ja sooja vee tootmiseks eraldatud koormusprofiile.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Sissejuhatus</h2><p> Hotmaps pakub NUTS2 tasemel üldisi ja aasta spetsiifilisi soojuskoormuse profiile. Kasutaja võib soovida vaikeprofiile kohandada tema valduses oleva teabe põhjal. See arvutusmoodul annab võimaluse profiilide erinevate koosnevate elementide suurendamiseks või vähendamiseks ning uue profiili saamiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Sisendid ja väljundid</h2><h3><a class="anchor" id="input-layers-and-parameters" href="#input-layers-and-parameters"><i class="fa fa-link"></i></a> Sisendkihid ja parameetrid</h3><p> Kiirklahvide vaikeandmekogumist kasutatakse mitut kihti ja profiili:</p><ul><li> Soojustihedusega elamu sektor</li><li> Soojustihedus mitteeluruumides</li><li> Elamu üldpindala</li><li> Brutopind mitteeluruum</li><li> Tööstuslik andmebaas</li><li> Tööstuse koormusprofiilid</li><li> Elamukütte koormaprofiilid</li><li> Koormusprofiilid kolmanda taseme soojendamiseks</li><li> Elamute sooja tarbevee koormusprofiilid</li><li> Tertsiaarse sooja tarbevee koormusprofiilid</li></ul><h3><a class="anchor" id="user-inputs" href="#user-inputs"><i class="fa fa-link"></i></a> Kasutaja sisendid</h3><p> Kasutaja peaks esitama järgmised parameetrid:</p><ul><li> <strong>Eluruumide küttetegur</strong> : elamute küttevajadus korrutatakse selle teguriga.</li><li> <strong>Kolmanda taseme soojustegur</strong> : kolmanda taseme küttevajadus korrutatakse selle teguriga.</li><li> <strong>Elamu sooja veevarustustegur</strong> : elamute soojaveevajadus korrutatakse selle teguriga.</li><li> <strong>Tertsiaarne sooja veevarustustegur</strong> : tertsiaarne sooja vee vajadus korrutatakse selle teguriga.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="output" href="#output"><i class="fa fa-link"></i></a> Väljund</h3><h4><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Näitajad</h4><ul><li> <strong>Soojuse nõudlus tööstusharude kaupa</strong> : Aastane soojusvajadus tööstuse kaupa valitud piirkonnas.</li><li> <strong>Soojuse vajadus</strong> elamukütte abil: valitud piirkonnas on eluruumide kütteks vajalik aastane soojusenergia.</li><li> <strong>Soojuse vajadus eramu soojaveevarustuse järgi</strong> : Valitud piirkonnas on eluruumide soojaveevarustuseks vajalik aasta soojusenergia.</li><li> <strong>Soojusvajadus kolmanda sektori kütte järgi</strong> : Aastane soojus, mida on vaja kolmanda sektori kütmiseks valitud piirkonnas.</li><li> <strong>Soojusvajadus tertsiaarsektori soojaveevarustuse järgi</strong> : Valitud piirkonna tertsiaarsektori soojaveevarustuseks vajalik aastane soojusenergia.</li><li> <strong>Kokku pea nõudlus:</strong> Aastas kokku vajaminev soojus valitud ala.</li></ul><h4><a class="anchor" id="graphics" href="#graphics"><i class="fa fa-link"></i></a> Graafika</h4><ul><li> <strong>Soojuse nõudluse profiilid</strong> : graafik, mis näitab ülaltoodud näitajaid aasta jooksul.</li></ul><p> X-telg tähistab aega ja y-telg võimsust MW-des. Abiks võib olla teatud sektorite peitmine, et teisi paremini näha. Seda saab teha topeltklõpsuga legendil.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Meetod</h2><h3><a class="anchor" id="overview" href="#overview"><i class="fa fa-link"></i></a> Ülevaade</h3><p> Vastavad koormusprofiilid määratakse kasutajavalikul tööstusobjektidele, elamutele ja tertsiaarsetele hoonetele.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="details" href="#details"><i class="fa fa-link"></i></a> Üksikasjad</h3><h4><a class="anchor" id="residential-warm-water-supply" href="#residential-warm-water-supply"><i class="fa fa-link"></i></a> Elamu sooja veevarustus</h4><p> Elamute brutopinna ja nende NUTS 0 ID põhjal arvutatakse sooja veevarustuseks kasutatud energia järgmise loendiga. Kasutades valitud ala NUTS 2 ID-d, määratakse koormusprofiil. Elamu soojaveevarustus korrutatakse elamu soojaveevarustuse teguriga juhul, kui kasutaja soovib väärtust reguleerida.</p><p> <em>Spetsiifiline energia piirkonna veevarustuse jaoks elamutes erinevates riikides</em></p><p> | Pähklid0 ID | Sooja veevarustus, kWh / m² / a | | ------------- |: -------------: | | AT | 21.67 | | BE | 31,95 | | BG | 12.93 | | HR | 21.38 | | CY | 8.80 | | CZ | 22,83 | | DK | 9.64 | | EE | 14.35 | | FI | 10.15 | | FR | 9.66 | | DE | 8.27 | | EL | 12.51 | | HU | 13.66 | | IE | 15.91 | | IT | 14.01 | | LV | 15.71 | | LT | 13.36 | | LU | 8.29 | | MT | 10,99 | | NL | 8,91 | | PL | 10.00 | | PT | 9.48 | | RO | 11.48 | | SK | 21.51 | | SI | 21.74 | | ES | 23.34 | | SE | 13.54 | | Suurbritannia | 49.03 |</p><h4><a class="anchor" id="residential-heating" href="#residential-heating"><i class="fa fa-link"></i></a> Elamu küte</h4><p> Kasutatakse elamute sektori nõudluse tihedust. Kuna see andmekogum sisaldab juba sooja vee jaoks kasutatud energiat, lahutatakse sellest eelmine arvutatud sooja vee energia. NUTS 2 ID põhjal määratakse kasutajavalikus igale soojustiheduse plaadile elamute kütteprofiil. Juhul, kui kasutaja soovib väärtust reguleerida, korrutatakse eluruumide küttetegur.</p><h4><a class="anchor" id="tertiary-warm-water-supply" href="#tertiary-warm-water-supply"><i class="fa fa-link"></i></a> Tertsiaarne sooja veevarustus</h4><p> Sarnaselt sooja veega veevarustusele arvutatakse vajalik energia tabeliga. Konkreetse piirkonna NUTS 2 ID-ga määratakse koormusprofiil. Kui kasutaja soovib väärtust reguleerida, korrutatakse kolmanda soojaveevarustus kolmanda taseme soojaveevarustuse koefitsiendiga.</p><p> <em>Erienergia pinna kohta soojaveevarustuseks tertsiaarsetes hoonetes erinevates riikides</em></p><p> | Pähklid0 ID | Sooja veevarustus, kWh / m² / a | | ------------- |: -------------: | | AT | 6.57 | | BE | 13.88 | | BG | 15.88 | | HR | 9.42 | | CY | 6.26 | | CZ | 9.18 | | DK | 8.03 | | EE | 14.13 | | FI | 10.52 | | FR | 9.57 | | DE | 3,05 | | EL | 6,99 | | HU | 9.51 | | IE | 10,87 | | IT | 5.62 | | LV | 7.16 | | LT | 10.46 | | LU | 7.20 | | MT | 10.45 | | NL | 6.89 | | PL | 9.55 | | PT | 21.47 | | RO | 13.85 | | SK | 8.49 | | SI | 27,73 | | ES | 12.44 | | SE | 19.62 | | Suurbritannia | 13.45 |</p><h4><a class="anchor" id="tertiary-heating" href="#tertiary-heating"><i class="fa fa-link"></i></a> Kolmanda taseme küte</h4><p> Kolmanda taseme küte arvutatakse sarnaselt elamu küttega. Kui kasutaja soovib väärtust reguleerida, korrutatakse kolmanda taseme soojendus kolmanda taseme soojendusteguriga.</p><h4><a class="anchor" id="industrial-heat-demand" href="#industrial-heat-demand"><i class="fa fa-link"></i></a> Tööstuslik soojusvajadus</h4><p> Tööstuse soojusvajadus otsitakse üles tööstuse andmebaasist ning NUTS 0 ID ja allsektori põhjal määratakse koormusprofiil.</p><h4><a class="anchor" id="summation" href="#summation"><i class="fa fa-link"></i></a> Kokkuvõte</h4><p> Viis saadud profiili liidetakse lõpliku profiili saamiseks absoluutsel viisil.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="implementation" href="#implementation"><i class="fa fa-link"></i></a> Rakendamine</h3><h4><a class="anchor" id="load-profiles" href="#load-profiles"><i class="fa fa-link"></i></a> Laadige profiilid</h4><p> Mainitud koormusprofiilid koosnevad 8760 punktist, mis tähistavad koormust 365 tunni iga tunni kohta. Lisateavet <strong><a href="https://gitlab.com/hotmaps/load_profile">koormusprofiilide kohta leiate siit.</a></strong> Kõik koormusprofiilid on normaliseeritud nii, et integraal oleks võrdne 1-ga.</p><h4><a class="anchor" id="industrial-sites" href="#industrial-sites"><i class="fa fa-link"></i></a> Tööstusobjektid</h4><p> Soojusallikad on võetud <strong><a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">tööstuse andmebaasist.</a></strong> Nende liigse kuumuse, NUTS 0 ID ja tööstussektori põhjal luuakse iga saidi jaoks koormusprofiil, mis katab iga tunni aastas.</p><h4><a class="anchor" id="heat-densities" href="#heat-densities"><i class="fa fa-link"></i></a> Kuumustihedus</h4><p> Elamu- ja mitteeluruumide soojuse nõudluse tihedus on rasterfailid, mida leiate <strong><a href="https://gitlab.com/hotmaps/heat">siit.</a></strong></p><h4><a class="anchor" id="gross-floor-areas" href="#gross-floor-areas"><i class="fa fa-link"></i></a> Kogupindala</h4><p> Elamu brutopind ja mitteeluruumide üldpind on rasterfailid, mida leiate <strong><a href="https://gitlab.com/hotmaps/gfa_res_curr_density">siit</a></strong> ja <strong><a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">siit.</a></strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Selle arvutusmooduli GitHubi hoidla</h2><p> <a href="https://github.com/HotMaps/load_profile_cm">Siit</a> saate selle arvutusmooduli jaoks verejooksu arenduse.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Proovijooks</h2><p> Proovijooks DK05-s.</p><figure><img alt="" src="../images/cm_load_profile/sample_run.PNG"/><figcaption><i></i></figcaption></figure><p> Proovijooks DK05-s. Arvesse võetakse ainult valitud sinist ala.</p><figure><img alt="" src="../images/cm_load_profile/profile.PNG"/><figcaption><i></i></figcaption></figure><p> Graafiline pilt, mis näitab erinevate sektorite soojusvajadust aasta jooksul.</p><p> Selle graafika andmeid saab eksportida, vajutades nuppu &quot;EKSPORDIGRAAFID&quot;.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuidas tsiteerida</h2><p> Ali Aydemir ja David Schilling, Hotmaps Wiki, CM Heat koormuse profiilid (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorid ja retsensendid</h2><p> Selle lehe kirjutasid Ali Aydemir ja David Schilling ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> ☑ Selle lehe vaatas üle Tobias Fleiter ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Litsents</h2><p> Autoriõigus © 2016-2020: Ali Aydemir ja David Schilling</p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents</p><p> See töö on litsentsitud rahvusvahelise Creative Commons CC BY 4.0 litsentsi alusel.</p><p> SPDX-litsentsi identifikaator: CC-BY-4.0</p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Soovime avaldada sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis andis rahalisi vahendeid käesoleva uurimise läbiviimiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Heat-load-profiles) (original) [Bulgarian](../bg/CM-Heat-load-profiles)<sup>\*</sup> [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup>  [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup> [French](../fr/CM-Heat-load-profiles)<sup>\*</sup> [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup> [Latvian](../lv/CM-Heat-load-profiles)<sup>\*</sup> [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated