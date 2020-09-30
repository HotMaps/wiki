<h1><a class="anchor" id="cm-district-heating-potential-areas-user-defined-thresholds" href="#cm-district-heating-potential-areas-user-defined-thresholds"><i class="fa fa-link"></i></a>CM Kaugkütte potentsiaalsete alade kasutaja määratud piirmäärad</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisukord</h2><ul><li> <a href="#in-a-glance">Lühidalt</a></li><li> <a href="#introduction">Sissejuhatus</a></li><li> <a href="#inputs-and-outputs">Sisendid ja väljundid</a></li><li> <a href="#method">Meetod</a></li><li> <a href="#github-repository-of-this-calculation-module">Selle arvutusmooduli GitHubi hoidla</a></li><li> <a href="#sample-run">Proovijooks</a><ul><li> <a href="#sample-run_test-run-1-default-input-values">1. katse: vaikimisi sisendväärtused</a></li><li> <a href="#sample-run_test-run-2-modified-input-values">2. testkäik: muudetud sisendväärtused</a></li></ul></li><li> <a href="#how-to-cite">Kuidas tsiteerida</a></li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a></li><li> <a href="#license">Litsents</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Lühidalt</h2><p> See arvutusmoodul arvutab kaugkütte potentsiaali valitud piirkonnas kahe künnisväärtuse abil: 1) minimaalne soojusvajadus igal hektaril, 2) minimaalne soojavajadus sooja tarbevööndis. Nendele tingimustele vastavad valitud piirkonna alad tagastatakse DH-aladena. Pealegi on nende piirkondade soojusvajadus soojuse soojuspotentsiaalina indikaatorite kujul tasuv.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Sissejuhatus</h2><p> Soojuse nõudlus mängib olulist rolli potentsiaalsete kaugküttepiirkondade määramisel. Näiteks pole kaugkütte rakendamine madala soojavajadusega piirkondades majanduslikult otstarbekas. Teisalt võib ka ebatäpne olla mis tahes suure soojuse nõudmistihedusega piirkonna määratlemine potentsiaalse soojaõhu piirkonnana. Piirkonna kõrge soojavajaduse tihedus võib olla tingitud väheste väga suure soojavajadusega tarbijate olemasolust selles piirkonnas. Vastupidi, madal keskmine soojavajaduse tihedus võib olla märk valitud piirkonna väga väikese soojusvajadusega tsoonidest. Arvutusmooduli &quot;CM - PIIRKÜTTE POTENTSIAALPIIRKOND: KASUTAJA MÄÄRATUD LÄBIVAHEND&quot; eesmärk on tagada mõistlik tasakaal soojusvajaduse tiheduse vahel piirkonnas ja selle moodustavates tsoonides.</p><p> &quot;CM - PIIRKÜTTE POTENTSIAALPIIRKOND: KASUTAJA MÄÄRATLETUD LÄBIVAHEND&quot; määrab sooja tarbevööndi tiheduse põhjal soojavee alad ja neile vastavad soojapinge potentsiaali. Soojusvajaduse tihedused saadakse sisend-GIS-kihist. Hotmapsi tööriistakast ja andmebaas pakuvad vaiketemperatuuri <strong><a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">kaarti,</a></strong> mida saab selles arvutusmoodulis kasutada. Hotmapsi soojustiheduse kaart on rastrivormingus ja eraldusvõimega üks hektar ning koordinaatide võrdlussüsteem (CRS) &quot; <em><em>ETRS89 / LAEA Europe - EPSG 3035</em></em> &quot;. Kaardi lahtrid näitavad soojustihedust <em><strong>MWh / ha</strong></em> . Lisaks sellele vaikekaardile saab tööriistakasti üles laadida ka kasutaja loodud kaardid, mida selles CM-is kasutada.</p><p> Väljundina esitatakse üks GIS-kiht, kolm näitajat ja kaks diagrammi. Neid väljundeid on üksikasjalikult selgitatud jaotises <a href="#sample-run">Näidisjooks</a> . Väljundkiht demonstreerib potentsiaalseid DH-alasid. Klõpsates kaardil igale alale, ilmub aken ja kuvatakse sellele alale vastav DH potentsiaal. Tööriistakasti jaotise TULEMUSED akendes INDIKAATORID / GRAAFIKA on illustreeritud asjakohaseid indikaatoreid ja diagramme DH potentsiaali kohta valitud tsoonis ja potentsiaalide alamtsoonides.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Sisendid ja väljundid</h2><p> Sisendparameetrid ja kihid, samuti väljundkihid ja parameetrid on järgmised.</p><p> <strong>Sisendkihid ja parameetrid on:</strong></p><ul><li> Minimaalne küttevajadus igal hektaril [ <em><strong>MWh / ha</strong></em> ]: väärtus vahemikus <em><em>0</em></em> kuni <em><em>1000</em></em></li><li> Minimaalne soojuse nõudluse DH ala <em><strong>[GWh / aastas]:</strong></em> väärtus vahemikus <em><em>0</em></em> kuni <em><em>500</em></em></li><li> Soojustiheduse kaart: tööriistakastis on vaikekaart; enda üleslaaditud kaarte saab kasutada ka CM-is<ul><li> rastervormingus (* .tif)</li><li> 1 hektari eraldusvõimega</li><li> nõudlustihedus <em><strong>MWh / ha</strong></em></li></ul></li></ul><p> <strong>Väljundkihid ja parameetrid on:</strong></p><ul><li> DH-alad raster- ja shapefile-vormingus</li><li> DH potentsiaal igas DH piirkonnas [ <em><strong>GWh / aasta</strong></em> ] (klõpsake kaardil)</li><li> Kogu soojusvajadus GWh valitud tsoonis</li><li> Kaugkütte kogupotentsiaal GWh valitud tsoonis</li><li> Kaugkütuse potentsiaalne osakaal kogu nõudlusest valitud tsoonis</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Meetod</h2><p> Sooja soojuse potentsiaali konkreetses piirkonnas saab määratleda üldise soojusvajaduse ja selle ruumilise jaotuse järgi. Tööriistakastis Hotmaps on soojusvajadus kujutatud rasterkaardi kujul. Potentsiaalsete soojaveealade nõuetekohaseks määratlemiseks peaks nii igas rakus kui ka piirkonnas soojusvajadus saavutama teatud taseme. Alustuseks soovitab Hotmapsi tööriistakast nende kahe parameetri vaikeväärtusi. Kuid sõltuvalt soojusvajaduse jaotusest ja ka kohalikest oludest saab Hotmapsi kasutaja neid väärtusi muuta.</p><p> DH-alade määramine toimub kahes etapis:</p><p> Esimeses etapis filtreeritakse kõik lahtrid, mille soojusvajadus on alla sisendparameetri &quot;Minimaalne soojusvajadus hektarites&quot;. Nende rakkude kaardilt eemaldamisega saame rakkude rühmad, mis on üksteise külge kinnitatud. Kõik nende kinnitatud rakkude komplektid moodustavad väikesed tsoonid, mida siin nimetatakse &quot;sidusateks aladeks&quot;. Teistes etappides arvutatakse igas koherentses piirkonnas kogu soojusvajadus. Kui soojusenergia koguvajadus on suurem kui sisendparameeter &quot;Minimaalne soojusvajadus sooja tarbevee piirkonnas&quot;, loetakse see iga ühtse piirkonna jaoks potentsiaalseks soojapidevuse piirkonnaks.</p><p> Lõpuks arvutatakse DH-alade jaoks potentsiaal välja ja esitatakse GIS-kihina, mida saab näha tööriistakastis.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Selle arvutusmooduli GitHubi hoidla</h2><p> <a href="https://github.com/HotMaps/dh_potential/tree/develop">Siit</a> saate selle arvutusmooduli jaoks verejooksu arenduse.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Proovijooks</h2><p> Siin käivitatakse arvutusmoodul Taanis asuva Aalborgi juhtumiuuringu jaoks.</p><ul><li> Kõigepealt kasutage Aalborgi navigeerimiseks ja linna valimiseks riba &quot;Go To Place&quot;.</li></ul><img alt="Fig. 1" src="../images/cm_dh_potential/1.png" title="Navigeerige asukohta"/><ul><li><p> Järgige alloleval joonisel näidatud samme:</p><ul><li> Akna &quot;Kihid&quot; avamiseks klõpsake nuppu &quot;Kihid&quot;:</li><li> Klõpsake vahekaarti &quot;ARVUTAMISMOODULID&quot;.</li><li> Klõpsake nuppu &quot;CM-PIIRKÜTTE VÕIMALIKUD PIIRKONNAD: KASUTAJA MÄÄRATLETUD LÄBIVAHENDID&quot;.</li></ul></li><li><p> Nüüd avaneb arvutusmoodul &quot;CM-PIIRKÜTTE VÕIMALIKUD PIIRKONNAD: KASUTAJA MÄÄRATLETUD LÄBIVAHENDID&quot; ja on töötamiseks valmis.</p></li></ul><img alt="Fig. 3" src="../images/cm_dh_potential/3.png" title="PIIRKÜTTE POTENTSIAAL"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-1--default-input-values" href="#test-run-1--default-input-values"><i class="fa fa-link"></i></a> 1. katse: vaikimisi sisendväärtused</h3><p> Vaikimisi sisendväärtused näitavad üldisi tingimusi, mille korral piirkonda võib pidada potentsiaalseks DH-alaks. Neid väärtusi tuleks pidada ainult lähtepunktiks. Arvestades kohalikke lisatingimusi, peate võib-olla seadistama tööriistakasti vaikeväärtustest väiksemad või kõrgemad väärtused. Seetõttu peaks kasutaja neid väärtusi kohandama, et leida oma juhtumiuuringu jaoks parim künniste kombinatsioon.</p><p> Arvutusmooduli käivitamiseks toimige järgmiselt.</p><ul><li> Määrake käivitatud seansile nimi (valikuline - siin valisime &quot;Test Run 1&quot;) ja määrake sisendparameetrid (siin kasutati vaikeväärtusi).</li></ul><img alt="Fig. 4-0" src="../images/cm_dh_potential/4-0.png" title="Nimetage jooksuseanss"/><ul><li> Vajutage vasakus alanurgas olevat nuppu &quot;RUN CM&quot;.</li><li> Oodake, kuni protsess on lõppenud.</li></ul><p> <strong><code>Note: If you wish to change your input parameters, you can press &quot;STOP CM&quot;, modify your input parameters and re-run the CM</code></strong></p><ul><li> Väljundina näidatakse näitajaid ja diagramme tööriistakasti paremal küljel jaotises &quot;TULEMUSED&quot;. Näitajad näitavad:<ul><li> kogu soojusvajadus <em><em>GWh</em></em> valitud tsoonis,</li><li> kogu DH potentsiaal <em><em>GWh-s</em></em> valitud tsoonis,</li><li> sooja tarbevee potentsiaali osakaal kogu nõudlusest, mis saadakse sooja tarbevõime jagamisel piirkonna kogu soojusvajadusega.</li></ul></li></ul><img alt="Fig. 4-1" src="../images/cm_dh_potential/4-1.png" title="Vahekaart INDIKAATORID"/><p> Lisaks genereeritakse ka kaks diagrammi. Esimene näitab DH potentsiaali igas DH piirkonnas. Vastavad sildid leiate ka kaardilt. Teine diagramm illustreerib kogu soojaõhu potentsiaali võrreldes kogu piirkonna soojusvajadusega.</p><img alt="Fig. 4-2" src="../images/cm_dh_potential/4-2.png" title="Vahekaart GRAAFIKA"/><ul><li> Samuti lisatakse lõuendile uus kiht, mis näitab DH alasid. See kiht lisatakse kihtide loendisse kategooria &quot;Arvutusmoodul&quot; all kihtide jaotise allosas. Käivitusseansi nimi eristab selle jooksu väljundeid teistest.</li></ul><img alt="Fig. 4-3" src="../images/cm_dh_potential/4-3.png" title="Arvutusmooduli kihid"/><p> Neid samme järgides saate ülevaate sisendväärtustest ja potentsiaalsetest soojuspinna aladest.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-2--modified-input-values" href="#test-run-2--modified-input-values"><i class="fa fa-link"></i></a> 2. testkäik: muudetud sisendväärtused</h3><p> Sõltuvalt oma kogemustest ja kohalikest teadmistest võite parema tulemuse saamiseks sisendväärtusi suurendada või vähendada. Näiteks Aalborgi puhul võite teada, et soojuse vajadus äärelinnades on suhteliselt lähedal linna keskosale ja ka nendes piirkondades on soojaõhu süsteem võimalik. Seetõttu võite otsustada vähendada minimaalset soojusvajadust rakkudes, mis on osa DH-alast; Piisava soojusvajaduse tagamiseks võite aga sooja miinimumvajadust sooja sooja piirkonnas suurendada. Siin käivitate arvutusmoodulid uuesti uute sisendparameetritega.</p><ul><li> Määrake käivitatud seansile nimi (valikuline - siin valisime &quot;Test Run 2&quot;) ja määrake sisendparameetrid ( <em><em>250 MWh / ha</em></em> min. Soojusvajaduse korral hektarites ja <em><em>35 GWh / aasta</em></em> minimaalse nõudluse jaoks soojavee piirkonnas) .</li></ul><img alt="Fig. 5-0" src="../images/cm_dh_potential/5-0.png" title="Nimetage jooksuseanss"/><ul><li> Vajutage vasakus alanurgas olevat nuppu &quot;RUN CM&quot;.</li><li> Oodake, kuni protsess on lõppenud.</li><li> Väljundina näidatakse näitajaid ja diagramme tööriistakasti paremal küljel jaotises &quot;TULEMUSED&quot;. Näitajad näitavad:<ul><li> kogu soojusvajadus <em><em>GWh</em></em> valitud tsoonis,</li><li> kogu DH potentsiaal <em><em>GWh-s</em></em> valitud tsoonis,</li><li> sooja tarbevee potentsiaali osakaal kogu nõudlusest, mis saadakse sooja tarbevõime jagamisel piirkonna kogu soojusvajadusega.</li></ul></li></ul><img alt="Fig. 5-1" src="../images/cm_dh_potential/5-1.png" title="Vahekaart INDIKAATORID"/><p> Lisaks genereeritakse ka kaks diagrammi. Esimene neist näitab DH potentsiaali igas DH piirkonnas. Vastavad sildid leiate ka kaardilt. Teine diagramm illustreerib kogu soojaõhu potentsiaali võrreldes kogu piirkonna soojusvajadusega.</p><img alt="Fig. 5-2" src="../images/cm_dh_potential/5-2.png" title="Vahekaart GRAAFIKA"/><ul><li> Samuti lisatakse lõuendile uus kiht, mis näitab DH alasid. See kiht lisatakse kategooriate &quot;Arvutusmoodul&quot; kihtide loendisse. Käivitusseansi nimi eristab selle jooksu väljundeid teistest.</li></ul><img alt="Fig. 5-3" src="../images/cm_dh_potential/5-3.png" title="Arvutusmooduli kihid"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuidas tsiteerida</h2><p> Mostafa Fallahnejad, Hotmaps-Wiki, CM-kaugkütte-potentsiaalsed piirkonnad: kasutaja määratletud künnised (aprill 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorid ja retsensendid</h2><p> Selle lehe kirjutas Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Selle lehe vaatas läbi Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Litsents</h2><p> Autoriõigus © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents</p><p> See töö on litsentsitud rahvusvahelise Creative Commons CC BY 4.0 litsentsi alusel.</p><p> SPDX-litsentsi identifikaator: CC-BY-4.0</p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Soovime avaldada sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis andis rahalisi vahendeid käesoleva uurimise läbiviimiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-District-heating-potential-areas-user-defined-thresholds) (original) [Bulgarian](../bg/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Czech](../cs/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Danish](../da/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [German](../de/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Greek](../el/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Spanish](../es/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup>  [Finnish](../fi/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [French](../fr/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Irish](../ga/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Croatian](../hr/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Hungarian](../hu/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Italian](../it/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Lithuanian](../lt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Latvian](../lv/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Maltese](../mt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Dutch](../nl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Polish](../pl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Romanian](../ro/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Slovak](../sk/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Slovenian](../sl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Swedish](../sv/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> 

<sup>\*</sup> machine translated