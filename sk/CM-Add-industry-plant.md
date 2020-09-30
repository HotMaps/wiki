<h1><a class="anchor" id="cm-add-industry-plant" href="#cm-add-industry-plant"><i class="fa fa-link"></i></a>CM Pridajte priemyselný závod</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#introduction">Úvod</a></li><li> <a href="#inputs-and-outputs">Vstupy a výstupy</a></li><li> <a href="#method">Metóda</a></li><li> <a href="#github-repository-of-this-calculation-module">Úložisko GitHub tohto výpočtového modulu</a></li><li> <a href="#references">Referencie</a></li><li> <a href="#how-to-cite">Ako citovať</a></li><li> <a href="#authors-and-reviewers">Autori a recenzenti</a></li><li> <a href="#license">Licencia</a></li><li> <a href="#acknowledgement">Poďakovanie</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Úvod</h2><p> Tento modul poskytuje možnosť pridať ďalšie priemyselné weby s ich požiadavkami na vykurovanie a chladenie a potenciálom prebytočného tepla do súpravy nástrojov Hotmaps. Je možné pridať ďalšie energeticky náročné aj menej energeticky náročné odvetvia. Používateľ zadá potrebné údaje do samostatného nástroja Excel, ktorý potom vygeneruje súbor CSV na nahranie do súpravy nástrojov Hotmaps.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vstupy a výstupy</h2><h3><a class="anchor" id="important-pre-settings-before-using-the-tool" href="#important-pre-settings-before-using-the-tool"><i class="fa fa-link"></i></a> Dôležité dôležité nastavenia pred použitím nástroja</h3><p> 🔺<mark> <strong>Poznámka:</strong> Na generovanie súborov ( <em>.csv</em> ) v správnom formáte je potrebné, aby bol predvolený oddeľovač nastavený na čiarku ( <strong>anglický štandard</strong> ). To <strong>sa nedá nakonfigurovať z Excelu</strong> a je potrebné to urobiť globálne z ovládacieho panela Windows (ako je <a href="https://www.itsupportguides.com/knowledge-base/office-2013/excel-20132016-how-to-change-csv-delimiter-character/">tu</a> popísané). Obrázok nižšie zobrazuje príkladné nastavenie pre nemecké počítače so systémom Windows.</mark></p><img alt="Fig. 6" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Delimiter2.PNG" title="Oddeľovač2"/><p> 🔺<mark> <strong>Poznámka:</strong> Pre správne používanie nástrojov Excel báze, je nutné použiť <strong>miesto</strong> ako oddeľovač desatinných miest (v angličtine štandardná, napríklad 40.50). Toto je potrebné nakonfigurovať z Excelu (ako je popísané <a href="https://support.microsoft.com/en-us/office/change-the-character-used-to-separate-thousands-or-decimals-c093b545-71cb-4903-b205-aebb9837bd1e">tu</a> ). Obrázok nižšie zobrazuje príkladné nastavenie nemeckého Excelu.</mark></p><img alt="Fig. 7" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Decimal.png" title="Desatinné miesto"/><h3><a class="anchor" id="data-input-in-excel-tool-by-user" href="#data-input-in-excel-tool-by-user"><i class="fa fa-link"></i></a> Zadávanie údajov do nástroja Excel používateľom</h3><p> Stiahnutý nástroj Excel si prosím stiahnite <a href="https://github.com/HotMaps/add_industry_plant_cm/blob/master/HotMaps_CM_Add_industry_plant_V14.xlsm">TU</a> .</p><p> Prístup k použitiu nástroja Excel je znázornený na obrázku nižšie a podrobnejšie je popísaný v nasledujúcich častiach.</p><figure><img alt="" src="../images/cm_add_industry_plant/approach2.png"/><figcaption> <i><br/>Krok za krokom prístup k použitiu nástroja Excel.</i></figcaption></figure><h4><a class="anchor" id="1-add-general-information" href="#1-add-general-information"><i class="fa fa-link"></i></a> 1) Pridajte všeobecné informácie</h4><p> Prejdite na kartu:<figure><img alt="" src="../images/cm_add_industry_plant/General_information.PNG"/></figure></p><p> V prvom kroku zadajte všetky potrebné všeobecné informácie o lokalitách, pre ktoré by sa mala vypočítať potreba vykurovania a chladenia a potenciál nadmerného tepla. Je možné pridať až 10 priemyselných areálov.</p><figure><img alt="" src="../images/cm_add_industry_plant/General_information_Box.PNG"/><figcaption> <i><br/>Príklad tabuľky programu Excel na zadanie všeobecných informácií o spoločnostiach ako základu pre výpočet a import do súpravy nástrojov HotMaps.</i></figcaption></figure><h4><a class="anchor" id="2-choose-calculation-option" href="#2-choose-calculation-option"><i class="fa fa-link"></i></a> 2) Vyberte možnosť výpočtu</h4><p> V druhom kroku existujú 3 možnosti, ako možno odhadnúť dopyt po vykurovaní a chladení a potenciál prebytočného tepla. Upozorňujeme, že je možné prepínať medzi tromi možnosťami pre rôzne spoločnosti; ale nie v rámci samotnej spoločnosti.</p><p> Pokiaľ ide o teplotu nadmerného tepla, je potrebné spomenúť, že nízkoteplotné teplo (&lt;100 ° C) je možné zadať do programu Excel-Tool, ale zatiaľ nie je vyhodnotené v paneli nástrojov Hotmaps. Ak sa má uvažovať o nízkoteplotnom teple, je potrebné použiť tepelné čerpadlo. Používateľ preto môže zahrnúť potrebu elektriny z tepelného čerpadla do konečnej potreby energie z elektriny a zdvihnúť teplotu generovaného prebytočného tepla až na rozsah 100 - 200 ° C.</p><h5><a class="anchor" id="option-1--manual-input" href="#option-1--manual-input"><i class="fa fa-link"></i></a> Možnosť 1: Ručné vkladanie</h5><p> Prejdite na kartu:<figure><img alt="" src="../images/cm_add_industry_plant/Option1.PNG"/></figure></p><p> Vyberte túto možnosť, ak sú pre vybranú spoločnosť k dispozícii údaje o požiadavkách na kúrenie / chladenie a potenciáli prebytočného tepla a rozložení teploty a je možné ich vyplniť manuálne.</p><h5><a class="anchor" id="option-2--plant-selection" href="#option-2--plant-selection"><i class="fa fa-link"></i></a> Možnosť 2: Výber závodu</h5><p> Prejdite na kartu:<figure><img alt="" src="../images/cm_add_industry_plant/Option2.PNG"/></figure></p><p> Vyberte túto možnosť, ak pre vybranú spoločnosť nie sú k dispozícii žiadne informácie o požiadavkách na kúrenie / chladenie a potenciáli nadmerného tepla. Na základe špecifickej databázy závodu je možné zvoliť typickú požiadavku na vykurovanie / chladenie a potenciál prebytočného tepla s distribúciou teploty pre množstvo závodov a výrobkov / procesov. Ako nevyhnutný vstup pre prevod údajov špecifických pre výrobok je potrebné zadať hodnotu ako základ výpočtu (napr. Výroba, plocha atď.). Ďalšie informácie o výpočtovej metóde nájdete v časti <a href="#method">Metóda</a> .</p><h5><a class="anchor" id="option-3--sector-selection" href="#option-3--sector-selection"><i class="fa fa-link"></i></a> Možnosť 3: Výber sektoru</h5><p> Prejdite na kartu:<figure><img alt="" src="../images/cm_add_industry_plant/Option3.PNG"/></figure></p><p> Vyberte túto možnosť, ak váš typ zariadenia nie je k dispozícii v možnosti 2. Na základe sektorovo špecifických údajov o teple sa počíta typická potreba vykurovania / chladenia a nadmerný tepelný potenciál. Ako nevyhnutný vstup musí byť zadaná potreba paliva na dodávku tepla (v GWh / rok). Ďalšie informácie o výpočtovej metóde nájdete v časti <a href="#method">Metóda</a> .</p><h3><a class="anchor" id="data-upload-on-hotmaps-toolbox" href="#data-upload-on-hotmaps-toolbox"><i class="fa fa-link"></i></a> Nahrávanie údajov na sadu nástrojov HotMaps</h3><p> Existujú 2 súbory (* .csv), ktoré sú generované nástrojom založeným na programe Excel a je možné ich nahrať do používateľského účtu v paneli nástrojov Hotmaps.</p><h4><a class="anchor" id="1-file-generation--subsector" href="#1-file-generation--subsector"><i class="fa fa-link"></i></a> 1) Generovanie súborov: Subsektor</h4><p> Prejdite na kartu:<img alt="Fig. 1" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/DataImportSubsector.png" title="podsektor importu dát"/></p><p> Exportujte tabuľku ako <em>.csv</em> kliknutím na:</p><img alt="Fig. 8" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Export_subsector.PNG" title="podsektor exportu"/><h4><a class="anchor" id="2-file-generation--excess-heat" href="#2-file-generation--excess-heat"><i class="fa fa-link"></i></a> 2) Generovanie súborov: nadmerné teplo</h4><p> Prejdite na kartu:<img alt="Fig. 2" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Data_Import_Excess_Heat.PNG" title="import údajov prebytočné teplo"/></p><p> Exportujte tabuľku ako <em>.csv</em> kliknutím na:</p><img alt="Fig. 9" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Export_EH.PNG" title="exportovať EH"/><h4><a class="anchor" id="3-upload-to-the-hotmaps-toolbox" href="#3-upload-to-the-hotmaps-toolbox"><i class="fa fa-link"></i></a> 3) Nahrajte do panela nástrojov Hotmaps</h4><p> Ak chcete nahrať dva súbory <em>.csv</em> , otvorte platformu nahrávania kliknutím na <strong>účet</strong> .</p><img alt="Fig. 3" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/account2.PNG" title="účet2"/><p> V ďalšom kroku vyberte dva súbory <em>.csv</em> na odovzdanie a pre každý súbor vyberte správnu kategóriu nahrávania.</p><img alt="Fig. 4" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Upload2.png" title="upload2"/><p> Teraz si môžete svoje nahrané súbory pozrieť v sekcii <strong>Vrstvy - Osobná vrstva</strong></p><img alt="Fig. 5" src="https://github.com/HotMaps/hotmaps_wiki/raw/master/Images/cm_add_industry_plant/Personal_Layers.PNG" title="Osobné vrstvy"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metóda</h2><p> Ak požiadavka na vykurovanie / chladenie a prebytočný tepelný potenciál zariadenia nie sú známe, užívateľovi sa na výpočet tepelnej potreby a prebytočného tepelného potenciálu ponúkajú dve metódy založené na indikátoroch.</p><p> Je potrebné spomenúť, že tieto hodnoty sú iba orientačnými približnými hodnotami pre typické zariadenia (možnosť 2) alebo na sektorovej úrovni (možnosť 3) a nenahrádzajú podrobnú analýzu a meranie potreby tepla a prebytočného tepla zariadenia.</p><h3><a class="anchor" id="method---option-2--plant-selection" href="#method---option-2--plant-selection"><i class="fa fa-link"></i></a> Metóda - Možnosť 2: Výber zariadenia</h3><p> Údaje o konkrétnom ohreve zariadenia sú prevzaté z databázy predpovedí. Pre veľké množstvo rôznych energeticky náročných a menej energeticky náročných typov zariadení sa požiadavka na vykurovanie / chladenie a prebytočný tepelný potenciál odvodzujú od konkrétnej konečnej energetickej potreby palív a elektriny. Je dôležité si uvedomiť, že kvôli základnej databáze je touto metódou pokryté iba procesné teplo a chladenie procesu; Vykurovanie priestorov a ohrev vody tu nie sú zahrnuté. V závislosti od typu zariadenia sú poskytnuté rôzne vstupy ako základ pre výpočet (napr. Objem výroby v <em>tonách</em> alebo plocha v <em>m <sup>2</sup></em> ).</p><p> Pre výpočet potreby tepla a chladu je potrebné predpokladať účinnosť premeny z konečnej energie na teplo a chladenie. Pretože väčšina tepelných aplikácií je založená na pare, predpokladá sa účinnosť 90%. Pre chladiace aplikácie sa predpokladá vážený pomer energetickej účinnosti (EER):</p><p> | Úroveň teploty predpokladaný EER (podľa databázy predpovedí) | --- | -------------: | | &lt;-30 ° C | 0,01 | | -30 ° C - 0 ° C | 1,8 | | 0 ° C - 15 ° C a&gt; 15 ° C | 3,5 |</p><p> Celá databáza použitá pre možnosť 2 je k dispozícii tu: <a href="https://github.com/HotMaps/add_industry_plant_cm/blob/master/CM_add_industry_plant_databases.xlsx">Databáza Option2</a></p><h3><a class="anchor" id="method---option-3--sector-selection" href="#method---option-3--sector-selection"><i class="fa fa-link"></i></a> Metóda - Možnosť 3: Výber sektoru</h3><p> Možnosť 3 poskytuje rozsiahle hodnotenie potreby tepla a prebytočného tepla pre odvetvia spracovateľského priemyslu (podľa NACE Rev. 2 [ <a href="#references">1</a> ]).</p><h4><a class="anchor" id="calculation-of-excess-heat-potentials-on-a-sector-level" href="#calculation-of-excess-heat-potentials-on-a-sector-level"><i class="fa fa-link"></i></a> Výpočet potenciálu nadmerného tepla na sektorovej úrovni</h4><p> Na výpočet potenciálu nadmerného tepla rôznych sektorov sa používajú faktory nadmerného tepla podľa Brücknera 2016 [ <a href="#references">2</a> ] (pozri tabuľku nižšie). Faktor nadmerného tepla je definovaný ako odpadové teplo generované na spotrebu paliva. V [ <a href="#references">2</a> ] pochádzajú dostupné údaje na určenie potenciálu nadmerného tepla vo výrobnom priemysle z prieskumu emisií uskutočňovaného každé štyri roky na štátnej úrovni v Nemecku. Podľa nariadenia o emisných deklaráciách (1. BImSchG) musia všetci prevádzkovatelia zariadení, ktoré podliehajú schváleniu, každé štyri roky predkladať vyhlásenie o svojich emisiách. Za rok 2008 sa vyhodnocujú údaje na úrovni spoločnosti pozostávajúce z objemových prietokov výfukových plynov a ich teplotnej úrovne. Spolu s dostupnými informáciami o druhu a množstve spotreby paliva v zariadeniach sa faktor nadmerného tepla v zariadení počíta ako:</p><p> <em>Faktor nadmerného tepla = nadmerné teplo / spotreba paliva</em></p><p> Nakoniec sa faktor nadmerného tepla počíta nielen na úrovni spoločnosti, ale aj na úrovni odvetvia. Podrobné informácie nájdete v dokumente [ <a href="#references">2</a> ].</p><p> Faktory nadmerného tepla podľa [ <a href="#references">2</a> ] zahŕňajú prebytočné teplo pochádzajúce z procesného tepla, ako aj na výrobu tepla v miestnosti a horúcu vodu. Je to tak kvôli skutočnosti, že sa analyzuje iba objemový prietok výfukových plynov opúšťajúci zariadenie bez toho, aby sa spotreba paliva delila na vykurovanie priestorov, horúcu vodu a teplo procesu. Prebytočné teplo generované aplikáciami založenými na elektrine nie je zahrnuté.</p><p> Rozdelenie podielu prebytočného tepla na teplotný rozsah je založené na vlastných predpokladoch.</p><p> | NACE Rev. 2 | Sektor | činiteľ nadmerného tepla | --- | ------------- | -----: | | 10 | Výroba potravinárskych výrobkov 0,10 | | 11 | Výroba nápojov 0,14 | | 12 | Výroba tabakových výrobkov 0,12 | | 13 | Výroba textilu 0,29 | | 14 | Výroba odevov 0,06 | | 15 | Výroba kože a podobných výrobkov 0,20 | | 16 | Spracovanie dreva a výrobkov z dreva a korku okrem nábytku; výroba výrobkov zo slamy a prúteného materiálu 0,10 | | 17 | Výroba papiera a výrobkov z papiera 0,09 | | 18 | Tlač a reprodukcia záznamových médií 0,03 | | 20 | Výroba chemikálií a chemických výrobkov 0,09 | | 21 | Výroba základných farmaceutických výrobkov a farmaceutických prípravkov 0,08 | | 22 | Výroba výrobkov z gumy a plastov 0,17 | | 23 | Výroba ostatných nekovových minerálnych výrobkov 0,15 | | 24 | Výroba základných kovov 0,19 | | 25 | Výroba kovových konštrukcií, okrem strojov a zariadení 0,19 | | 26 | Výroba počítačových, elektronických a optických výrobkov 0,18 | | 27 | Výroba elektrických zariadení 0,31 | | 28 | Výroba strojov a zariadení in 0,16 | | 29 | Výroba motorových vozidiel, prívesov a návesov 0,12 | | 30 | Výroba ostatných dopravných prostriedkov 0,38 | | 31 | Výroba nábytku 0,12 | | 32 | Iná výroba 0,08 | | 33 | Opravy a inštalácia strojov a zariadení 0,05 |</p><p> <em>Faktory nadmerného tepla pre odvetvia spracovateľského priemyslu (podľa [ <a href="#references">1</a> ])</em></p><h4><a class="anchor" id="calculation-of-heat-demand-on-a-sector-level" href="#calculation-of-heat-demand-on-a-sector-level"><i class="fa fa-link"></i></a> Výpočet potreby tepla na sektorovej úrovni</h4><p> Rozdelenie konečnej energetickej potreby palív na teplotné rozsahy na sektorovej úrovni je založené na nemeckej štúdii (údajová základňa pre hodnotenie opatrení energetickej účinnosti [ <a href="#references">3</a> ]). Pre výpočet potreby tepla sa predpokladá, že sa na teplo spotrebuje takmer všetok nákup paliva. V súlade s možnosťou 2 sa pri výrobe tepla na báze pary predpokladá účinnosť premeny z konečnej energie na teplo 90%.</p><p> Celá databáza použitá pre možnosť 3 je k dispozícii tu: <a href="https://github.com/HotMaps/add_industry_plant_cm/blob/master/CM_add_industry_plant_databases.xlsx">Databáza Option3</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Úložisko GitHub tohto výpočtového modulu</h2><p> <a href="https://github.com/HotMaps/add_industry_plant_cm">Tu</a> získate špičkový vývoj pre tento výpočtový modul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referencie</h2><p> [1]. Európska komisia: NACE Rev. 2. Štatistická klasifikácia ekonomických činností v Európskom spoločenstve. Luxemburg, 2008. ISBN: 978-92-79-04741-1.</p><p> [2]. Brückner S .: Industrielle Abwärme v Deutschland. Dizertačná práca Technische Universtität München, 2016.</p><p> [3]. Prognos AG, Fraunhofer ISI, TU München: Datenbasis zur Bewertung von Energieeffizienzmaßnahmen in der Zeitreihe 2005-2014. Im Auftrag des Umweltbundesamtes. Dessau, 2017. ISSN 1862-4359.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Ako citovať</h2><p> Ali Aydemir a Lisa Neusel, v Hotmaps-Wiki, závod en-CM-Add-industry-plant (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori a recenzenti</h2><p> Túto stránku napísali Ali Aydemir a Lisa Neusel ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> ☑ Túto stránku skontroloval Tobias Fleiter ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencia</h2><p> Copyright © 2016-2020: Ali Aydemir a Lisa Neusel</p><p> Medzinárodná licencia Creative Commons Attribution 4.0</p><p> Toto dielo je licencované podľa medzinárodnej licencie Creative Commons CC BY 4.0.</p><p> Identifikátor licencie SPDX: CC-BY-4.0</p><p> Text licencie: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Poďakovanie</h2><p> Chceli by sme najhlbšie oceniť projekt Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (dohoda o grante č. 723677), ktorý poskytol finančné prostriedky na uskutočnenie tohto prešetrovania.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Add-industry-plant) (original) [Bulgarian](../bg/CM-Add-industry-plant)<sup>\*</sup> [Czech](../cs/CM-Add-industry-plant)<sup>\*</sup> [Danish](../da/CM-Add-industry-plant)<sup>\*</sup> [German](../de/CM-Add-industry-plant)<sup>\*</sup> [Greek](../el/CM-Add-industry-plant)<sup>\*</sup> [Spanish](../es/CM-Add-industry-plant)<sup>\*</sup> [Estonian](../et/CM-Add-industry-plant)<sup>\*</sup> [Finnish](../fi/CM-Add-industry-plant)<sup>\*</sup> [French](../fr/CM-Add-industry-plant)<sup>\*</sup> [Irish](../ga/CM-Add-industry-plant)<sup>\*</sup> [Croatian](../hr/CM-Add-industry-plant)<sup>\*</sup> [Hungarian](../hu/CM-Add-industry-plant)<sup>\*</sup> [Italian](../it/CM-Add-industry-plant)<sup>\*</sup> [Lithuanian](../lt/CM-Add-industry-plant)<sup>\*</sup> [Latvian](../lv/CM-Add-industry-plant)<sup>\*</sup> [Maltese](../mt/CM-Add-industry-plant)<sup>\*</sup> [Dutch](../nl/CM-Add-industry-plant)<sup>\*</sup> [Polish](../pl/CM-Add-industry-plant)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Add-industry-plant)<sup>\*</sup> [Romanian](../ro/CM-Add-industry-plant)<sup>\*</sup>  [Slovenian](../sl/CM-Add-industry-plant)<sup>\*</sup> [Swedish](../sv/CM-Add-industry-plant)<sup>\*</sup> 

<sup>\*</sup> machine translated