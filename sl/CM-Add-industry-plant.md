<h1><a class="anchor" id="cm-add-industry-plant" href="#cm-add-industry-plant"><i class="fa fa-link"></i></a>CM Dodaj industrijski obrat</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Kazalo</h2><ul><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Vhodi in izhodi</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">Repozitorij GitHub tega modula za izračun</a></li><li> <a href="#references">Reference</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Avtorji in recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Zahvala</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ta modul ponuja možnost dodajanja dodatnih industrijskih lokacij s svojimi potrebami po ogrevanju in hlajenju ter odvečnim potencialom toplote v orodjarno Hotmaps. Možno je dodati dodatne energetsko intenzivne in tudi manj energetsko intenzivne industrije. Uporabnik vnese potrebne podatke v samostojno orodje Excel, ki nato ustvari datoteko CSV za nalaganje v orodno polje Hotmaps.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vhodi in izhodi</h2><h3><a class="anchor" id="important-pre-settings-before-using-the-tool" href="#important-pre-settings-before-using-the-tool"><i class="fa fa-link"></i></a> Pomembne prednastavitve pred uporabo orodja</h3><p> 🔺<mark> <strong>Opomba:</strong> Za ustvarjanje datotek ( <em>.csv</em> ) v pravilni obliki je potrebno, da je privzeti ločilnik nastavljen kot vejica ( <strong>angleški standard</strong> ). Tega <strong>ni mogoče konfigurirati iz Excela</strong> in ga je treba izvesti globalno z nadzorne plošče sistema Windows (kot je opisano <a href="https://www.itsupportguides.com/knowledge-base/office-2013/excel-20132016-how-to-change-csv-delimiter-character/">tukaj</a> ). Spodnja slika prikazuje zgledno nastavitev za nemške računalnike z operacijskim sistemom Windows.</mark></p><img alt="Fig. 6" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Delimiter2.PNG" title="Ločilo2"/><p> 🔺<mark> <strong>Opomba:</strong> Za pravilno uporabo orodja, ki temelji na Excelu, morate kot decimalno ločilo uporabiti <strong>točko</strong> (angleški standard, npr. 40,50). To je treba konfigurirati iz Excela (kot je opisano <a href="https://support.microsoft.com/en-us/office/change-the-character-used-to-separate-thousands-or-decimals-c093b545-71cb-4903-b205-aebb9837bd1e">tukaj</a> ). Spodnja slika prikazuje vzorno nastavitev za nemški Excel.</mark></p><img alt="Fig. 7" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Decimal.png" title="Decimalno"/><h3><a class="anchor" id="data-input-in-excel-tool-by-user" href="#data-input-in-excel-tool-by-user"><i class="fa fa-link"></i></a> Uporabnik vnese podatke v orodje Excel</h3><p> Prosimo, prenesite priloženo orodje Excel od <a href="https://github.com/HotMaps/add_industry_plant_cm/blob/master/HotMaps_CM_Add_industry_plant_V14.xlsm">TUKAJ</a> .</p><p> Pristop k uporabi orodja Excel je prikazan na spodnji sliki in podrobneje opisan v naslednjih oddelkih.</p><figure><img alt="" src="../images/cm_add_industry_plant/approach2.png"/><figcaption> <i><br/>Postopni pristop k uporabi orodja Excel.</i></figcaption></figure><h4><a class="anchor" id="1-add-general-information" href="#1-add-general-information"><i class="fa fa-link"></i></a> 1) Dodajte splošne informacije</h4><p> Pojdite na tabulator:<figure><img alt="" src="../images/cm_add_industry_plant/General_information.PNG"/></figure></p><p> V prvem koraku vnesite vse potrebne splošne informacije o lokacijah, za katere je treba izračunati povpraševanje po ogrevanju in hlajenju ter odvečni potencial toplote. Možno je dodati do 10 industrijskih lokacij.</p><figure><img alt="" src="../images/cm_add_industry_plant/General_information_Box.PNG"/><figcaption> <i><br/>Primer Excelove tabele za vnos splošnih informacij o podjetjih kot osnovo za izračun in uvoz v orodjarno HotMaps.</i></figcaption></figure><h4><a class="anchor" id="2-choose-calculation-option" href="#2-choose-calculation-option"><i class="fa fa-link"></i></a> 2) Izberite možnost izračuna</h4><p> V drugem koraku so na voljo 3 možnosti, kako lahko ocenimo potrebe po ogrevanju in hlajenju ter odvečni potencial toplote. Prosimo, upoštevajte, da je mogoče preklopiti med tremi možnostmi za različna podjetja; vendar ne znotraj podjetja samega.</p><p> Glede temperature odvečne toplote je treba omeniti, da je v Excel-Tool mogoče vnesti toploto z nizko temperaturo (&lt;100 ° C), ki pa v orodjarni Hotmaps še ni ocenjena. Če je treba upoštevati toploto z nizko temperaturo, je potrebna uporaba toplotne črpalke. Zato lahko uporabnik vključi potrebo po električni energiji toplotne črpalke v končno porabo energije po električni energiji in dvigne temperaturo nastale odvečne toplote na območje 100-200 ° C.</p><h5><a class="anchor" id="option-1--manual-input" href="#option-1--manual-input"><i class="fa fa-link"></i></a> Možnost 1: Ročni vnos</h5><p> Pojdite na tabulator:<figure><img alt="" src="../images/cm_add_industry_plant/Option1.PNG"/></figure></p><p> Izberite to možnost, če so za izbrano podjetje na voljo podatki o potrebah po ogrevanju / hlajenju ter presežnem potencialu toplote in porazdelitvi temperature, ki jih je mogoče izpolniti ročno.</p><h5><a class="anchor" id="option-2--plant-selection" href="#option-2--plant-selection"><i class="fa fa-link"></i></a> Možnost 2: Izbira rastlin</h5><p> Pojdite na zavihek:<figure><img alt="" src="../images/cm_add_industry_plant/Option2.PNG"/></figure></p><p> Izberite to možnost, če za izbrano podjetje ni na voljo nobenih informacij o potrebah po ogrevanju / hlajenju in odvečnem potencialu toplote. Na podlagi posebne podatkovne baze elektrarne lahko za številne obrate in izdelke / procese izberemo tipične potrebe po ogrevanju / hlajenju in presežne potenciale toplote s porazdelitvijo temperature. Kot nujni vhod za pretvorbo podatkov o izdelku je treba vnesti vrednost kot osnovo za izračun (npr. Proizvodnja, površina itd.). Za več informacij o načinu izračuna glejte <a href="#method">Metoda</a> .</p><h5><a class="anchor" id="option-3--sector-selection" href="#option-3--sector-selection"><i class="fa fa-link"></i></a> Možnost 3: Izbira sektorja</h5><p> Pojdite na tabulator:<figure><img alt="" src="../images/cm_add_industry_plant/Option3.PNG"/></figure></p><p> Prosimo, izberite to možnost, če vrsta naprave v možnosti 2 ni na voljo. Na podlagi podatkov o toploti, specifičnih za posamezne sektorje, se izračunajo tipične potrebe po ogrevanju / hlajenju in presežni potencial toplote. Kot nujni vnos je treba vnesti potrebo po gorivu za oskrbo s toploto (v GWh / leto). Za več informacij o načinu izračuna glejte <a href="#method">Metoda</a> .</p><h3><a class="anchor" id="data-upload-on-hotmaps-toolbox" href="#data-upload-on-hotmaps-toolbox"><i class="fa fa-link"></i></a> Nalaganje podatkov v orodjarni HotMaps</h3><p> Obstajata dve datoteki (* .csv), ki jih ustvari orodje, ki temelji na Excelu, in jih je mogoče naložiti v uporabniški račun v orodnem polju Hotmaps.</p><h4><a class="anchor" id="1-file-generation--subsector" href="#1-file-generation--subsector"><i class="fa fa-link"></i></a> 1) Ustvarjanje datoteke: podsektor</h4><p> Pojdite na tabulator:<img alt="Fig. 1" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/DataImportSubsector.png" title="podsektor za uvoz podatkov"/></p><p> Tabelo izvozite kot <em>.csv</em> s klikom na:</p><img alt="Fig. 8" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Export_subsector.PNG" title="izvozni podsektor"/><h4><a class="anchor" id="2-file-generation--excess-heat" href="#2-file-generation--excess-heat"><i class="fa fa-link"></i></a> 2) Ustvarjanje datoteke: presežek toplote</h4><p> Pojdite na tabulator:<img alt="Fig. 2" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Data_Import_Excess_Heat.PNG" title="podatki uvažajo odvečno toploto"/></p><p> Tabelo izvozite kot <em>.csv</em> s klikom na:</p><img alt="Fig. 9" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Export_EH.PNG" title="izvoz EH"/><h4><a class="anchor" id="3-upload-to-the-hotmaps-toolbox" href="#3-upload-to-the-hotmaps-toolbox"><i class="fa fa-link"></i></a> 3) Naložite v orodjarno Hotmaps</h4><p> Če želite naložiti dve datoteki <em>.csv</em> , odprite platformo za nalaganje s klikom na <strong>Račun</strong> .</p><img alt="Fig. 3" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/account2.PNG" title="račun2"/><p> V naslednjem koraku izberite dve datoteki <em>.csv</em> za nalaganje in izberite ustrezno kategorijo nalaganja za vsako datoteko.</p><img alt="Fig. 4" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Upload2.png" title="upload2"/><p> Zdaj si lahko ogledate naložene datoteke v razdelku <strong>Sloji - Osebni sloj</strong></p><img alt="Fig. 5" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Personal_Layers.PNG" title="Osebni sloji"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Če povpraševanje po ogrevanju / hlajenju in odvečni toplotni potencial naprave ni znan, se uporabniku za izračun potrebe po toploti in presežnega potenciala toplote uporabita dve metodi, ki temeljita na indikatorjih.</p><p> Omeniti je treba, da so te vrednosti le okvirne približne vrednosti za tipične rastline (možnost 2) ali na ravni sektorja (možnost 3) in ne nadomeščajo podrobne analize in merjenja potrebe po toploti in odvečne toplote v obratu.</p><h3><a class="anchor" id="method---option-2--plant-selection" href="#method---option-2--plant-selection"><i class="fa fa-link"></i></a> Metoda - Možnost 2: Izbira rastlin</h3><p> Podatki o specifični toploti elektrarne so povzeti iz baze napovedi. Pri velikem številu različnih energetsko intenzivnih in manj energetsko intenzivnih vrst obratov povpraševanje po ogrevanju / hlajenju in presežni toplotni potencial izhajata iz specifične končne potrebe po energiji goriv in električne energije. Pomembno je omeniti, da je zaradi osnovne baze podatkov s to metodo zajeta samo procesna toplota in procesno hlajenje; ogrevanje prostorov in topla voda tukaj nista vključena. Glede na vrsto rastline so za izračun podani različni vložki (npr. Obseg proizvodnje v <em>tonah</em> ali površina v <em>m <sup>2</sup></em> ).</p><p> Za izračun potrebe po ogrevanju in hlajenju je treba predvideti učinkovitost pretvorbe iz končne energije v toploto in hlajenje. Ker je večina toplotnih naprav na osnovi pare, se predpostavlja 90-odstotni izkoristek. Pri aplikacijah hlajenja se predpostavlja razmerje energijske učinkovitosti, ponderirano s temperaturo (EER):</p><p> | Raven temperature | predpostavljeni EER (v skladu z bazo napovedi) | | --- | -------------: | | &lt;-30 ° C | 0,01 | | -30 ° C - 0 ° C | 1,8 | | 0 ° C - 15 ° C &amp;&gt; 15 ° C | 3.5 |</p><p> Celotna baza podatkov, uporabljena za možnost 2, je na voljo tukaj: <a href="https://github.com/HotMaps/add_industry_plant_cm/blob/master/CM_add_industry_plant_databases.xlsx">Baza podatkov Option2</a></p><h3><a class="anchor" id="method---option-3--sector-selection" href="#method---option-3--sector-selection"><i class="fa fa-link"></i></a> Metoda - Možnost 3: Izbira sektorja</h3><p> Možnost 3 ponuja široko ocenjeno potrebo po toploti in odvečni toploti za sektorje predelovalne industrije (v skladu z NACE Rev. 2 [ <a href="#references">1</a> ]).</p><h4><a class="anchor" id="calculation-of-excess-heat-potentials-on-a-sector-level" href="#calculation-of-excess-heat-potentials-on-a-sector-level"><i class="fa fa-link"></i></a> Izračun odvečnih toplotnih potencialov na sektorski ravni</h4><p> Za izračun presežka toplotnega potenciala različnih sektorjev se uporabljajo faktorji presežka toplote po Brücknerju 2016 [ <a href="#references">2</a> ] (glej spodnjo tabelo). Faktor presežne toplote je opredeljen kot ustvarjena odpadna toplota na porabo goriva. V [ <a href="#references">2</a> ] razpoložljivi podatki za določitev presežnega potenciala toplote v predelovalni industriji izhajajo iz raziskave emisij, ki se vsake štiri leta izvaja na državni ravni v Nemčiji. V skladu z Odlokom o izjavi o emisijah (1. BImSchG) morajo vsi upravljavci obratov, ki jih je treba odobriti, vsaka štiri leta predložiti izjavo o svojih emisijah. Za leto 2008 so ovrednoteni podatki na ravni podjetja, sestavljeni iz količinskih pretokov izpušnih plinov in njihove temperature. Skupaj z razpoložljivimi informacijami o vrsti in količini porabe goriva v rastlinah se faktor presežne toplote v obratu izračuna kot:</p><p> <em>Faktor presežne toplote = Presežna poraba toplote / goriva</em></p><p> Končno se faktor presežne toplote izračuna ne samo na ravni podjetja, temveč tudi na ravni sektorja. Za podrobnejše informacije glej [ <a href="#references">2</a> ].</p><p> Faktorji presežne toplote v skladu z [ <a href="#references">2</a> ] vključujejo odvečno toploto, ki prihaja iz procesne toplote, pa tudi prostorsko proizvodnjo toplote in toplo vodo. To je posledica dejstva, da se analizira samo količinski pretok izpušnih plinov, ki zapusti obrat, ne da bi se poraba goriva ločila na ogrevanje prostorov, toplo vodo in procesno toploto. Prekomerna toplota, ki jo proizvedejo električne energije, ni vključena.</p><p> Porazdelitev deleža odvečne toplote na temperaturno območje temelji na lastnih predpostavkah.</p><p> | NACE Rev. 2 | Sektor | faktor presežne toplote | | --- | ------------- | -----: | | 10 | Proizvodnja prehrambenih izdelkov | 0,10 | | 11 | Proizvodnja pijač | 0,14 | | 12 | Proizvodnja tobačnih izdelkov | 0,12 | | 13 | Proizvodnja tekstila | 0,29 | | 14 | Proizvodnja oblačil | 0,06 | | 15 | Proizvodnja usnja in sorodnih izdelkov | 0,20 | | 16 | Proizvodnja lesa in izdelkov iz lesa in plute, razen pohištva; proizvodnja izdelkov iz slame in pletarskih materialov | 0,10 | | 17 | Proizvodnja papirja in izdelkov iz papirja | 0,09 | | 18 | Tiskanje in reprodukcija posnetih medijev | 0,03 | | 20 | Proizvodnja kemikalij in kemičnih izdelkov | 0,09 | | 21 | Proizvodnja osnovnih farmacevtskih izdelkov in farmacevtskih pripravkov | 0,08 | | 22 | Proizvodnja izdelkov iz gume in plastičnih mas | 0,17 | | 23 | Proizvodnja drugih nekovinskih mineralnih izdelkov | 0,15 | | 24 | Proizvodnja osnovnih kovin | 0,19 | | 25 | Proizvodnja kovinskih izdelkov, razen strojev in opreme | 0,19 | | 26 | Proizvodnja računalniških, elektronskih in optičnih izdelkov | 0,18 | | 27 | Proizvodnja električne opreme | 0,31 | | 28 | Proizvodnja strojev in opreme, dn | 0,16 | | 29 | Proizvodnja motornih vozil, prikolic in polpriklopnikov | 0,12 | | 30 | Proizvodnja druge transportne opreme | 0,38 | | 31 | Proizvodnja pohištva | 0,12 | | 32 | Druga proizvodnja | 0,08 | | 33 | Popravila in namestitev strojev in opreme | 0,05 |</p><p> <em>Faktorji presežne toplote za sektorje predelovalne industrije (v skladu z [ <a href="#references">1</a> ])</em></p><h4><a class="anchor" id="calculation-of-heat-demand-on-a-sector-level" href="#calculation-of-heat-demand-on-a-sector-level"><i class="fa fa-link"></i></a> Izračun potrebe po toploti na sektorski ravni</h4><p> Razčlenitev končne potrebe po energiji po gorivih v temperaturna območja na sektorski ravni temelji na nemški študiji (podatkovna osnova za oceno ukrepov za energetsko učinkovitost [ <a href="#references">3</a> ]). Za izračun potrebe po toploti se predpostavlja, da se skoraj vsi nakupi goriva porabijo za toploto. V skladu z možnostjo 2 se predvideva učinkovitost pretvorbe iz končne energije v toploto 90% za proizvodnjo toplote na osnovi pare.</p><p> Celotna baza podatkov, uporabljena za možnost 3, je na voljo tukaj: <a href="https://github.com/HotMaps/add_industry_plant_cm/blob/master/CM_add_industry_plant_databases.xlsx">Baza podatkov Option3</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repozitorij GitHub tega modula za izračun</h2><p> <a href="https://github.com/HotMaps/add_industry_plant_cm">Tukaj</a> najdete najboljši razvoj tega modula za izračun.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Reference</h2><p> [1]. Evropska komisija: NACE Rev. 2. Statistična klasifikacija gospodarskih dejavnosti v Evropski skupnosti. Luksemburg, 2008. ISBN: 978-92-79-04741-1.</p><p> [2]. Brückner S .: Industrielle Abwärme na Deutschlandu. Disertacija Technische Universtität München, 2016.</p><p> [3]. Prognos AG, Fraunhofer ISI, TU München: Datenbasis zur Bewertung von Energieeffizienzmaßnahmen in der Zeitreihe 2005-2014. Im Auftrag des Umweltbundesamtes. Dessau, 2017. ISSN 1862-4359.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Ali Aydemir in Lisa Neusel, v Hotmaps-Wiki, en-CM-Add-industry-obrat (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Avtorji in recenzenti</h2><p> To stran sta napisala Ali Aydemir in Lisa Neusel ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> ☑ To stran je pregledal Tobias Fleiter ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Ali Aydemir in Lisa Neusel</p><p> Creative Commons Attribution 4.0 International License</p><p> To delo je licencirano pod licenco Creative Commons CC BY 4.0 International.</p><p> Identifikator licence SPDX: CC-BY-4.0</p><p> Besedilo licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Zahvala</h2><p> Najgloblje zahvaljujemo projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (sporazum o dodelitvi sredstev št. 723677), ki je zagotovil sredstva za izvedbo te preiskave.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Add-industry-plant) (original) [Bulgarian](../bg/CM-Add-industry-plant)<sup>\*</sup> [Czech](../cs/CM-Add-industry-plant)<sup>\*</sup> [Danish](../da/CM-Add-industry-plant)<sup>\*</sup> [German](../de/CM-Add-industry-plant)<sup>\*</sup> [Greek](../el/CM-Add-industry-plant)<sup>\*</sup> [Spanish](../es/CM-Add-industry-plant)<sup>\*</sup> [Estonian](../et/CM-Add-industry-plant)<sup>\*</sup> [Finnish](../fi/CM-Add-industry-plant)<sup>\*</sup> [French](../fr/CM-Add-industry-plant)<sup>\*</sup> [Irish](../ga/CM-Add-industry-plant)<sup>\*</sup> [Croatian](../hr/CM-Add-industry-plant)<sup>\*</sup> [Hungarian](../hu/CM-Add-industry-plant)<sup>\*</sup> [Italian](../it/CM-Add-industry-plant)<sup>\*</sup> [Lithuanian](../lt/CM-Add-industry-plant)<sup>\*</sup> [Latvian](../lv/CM-Add-industry-plant)<sup>\*</sup> [Maltese](../mt/CM-Add-industry-plant)<sup>\*</sup> [Dutch](../nl/CM-Add-industry-plant)<sup>\*</sup> [Polish](../pl/CM-Add-industry-plant)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Add-industry-plant)<sup>\*</sup> [Romanian](../ro/CM-Add-industry-plant)<sup>\*</sup> [Slovak](../sk/CM-Add-industry-plant)<sup>\*</sup>  [Swedish](../sv/CM-Add-industry-plant)<sup>\*</sup> 

<sup>\*</sup> machine translated