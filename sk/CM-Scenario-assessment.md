<h1><a class="anchor" id="cm-scenario-assessment" href="#cm-scenario-assessment"><i class="fa fa-link"></i></a>Hodnotenie scenára CM</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#at-a-glance">Na prvý pohľad</a></li><li> <a href="#introduction">Úvod</a></li><li> <a href="#scenario-assessment-inputs-and-outputs">Vstupy a výstupy na hodnotenie scenára</a></li><li> <a href="#interpretation-of-input-parameters">Interpretácia vstupných parametrov</a></li><li> <a href="#interpretation-of-results">Interpretácia výsledkov</a></li><li> <a href="#sample-run">Ukážka behu</a></li><li> <a href="#how-to-cite">Ako citovať</a></li><li> <a href="#authors-and-reviewers">Autori a recenzenti</a></li><li> <a href="#license">Licencia</a></li><li> <a href="#acknowledgement">Poďakovanie</a></li></ul><h2><a class="anchor" id="at-a-glance" href="#at-a-glance"><i class="fa fa-link"></i></a> Na prvý pohľad</h2><p> Tento modul umožňuje porovnávať rôzne scenáre vykurovania. Modul nie je integrovaný do panela nástrojov Hotmaps, ale je poskytovaný ako samostatný zošit programu Excel, ktorý kombinuje výsledky ostatných výpočtových modulov, ktoré sa majú predtým spustiť. Šablóna ako taká umožňuje porovnanie až 9 rôznych scenárov, ale ak je správne upravená, môže fungovať pre ľubovoľný počet scenárov. Sú zostavené samostatné pracovné listy, ktoré zhromažďujú kľúčové ukazovatele z každého výpočtového modulu, zatiaľ čo kľúčové ukazovatele sa automaticky zhromažďujú v konečnej tabuľke a zobrazujú sa v grafoch.</p><p> <a href="https://github.com/HotMaps/scenario_assessment/raw/master/data/ScenarioAssessment_Template.xlsx"><strong>PRACOVNÁ KNIHA S HODNOTENÍM SCENÁRA: KLIKNUTÍM SEM STIAHNUŤ</strong></a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Úvod</h2><p> Prístup k hodnoteniu viacerých rôznych scenárov vykurovania sa riadi touto postupnosťou výpočtov:</p><ul><li> Stavebný fond pre vybranú oblasť,</li><li> Náklady, emisie a dopyt po energii na decentralizované zásobovanie teplom,</li><li> Náklady, emisie a dopyt po energii pre diaľkové zásobovanie teplom,</li><li> Náklady na distribúciu diaľkového tepla.</li></ul><p> V každom scenári sa predpokladá určité rozdelenie medzi centrálnym a decentrálnym zásobovaním teplom spolu s predpokladmi vývoja potreby tepla v regióne. Môže sa napríklad porovnať analýza citlivosti pre súbor rôznych veľkostí systémov diaľkového vykurovania s rôznymi technológiami zásobovania. Scenár sa môže líšiť v závislosti od kapacity generátorov tepla v systéme diaľkového vykurovania, rýchlosti pripojenia k systému diaľkového vykurovania alebo nákladov a cien za rôzne technológie. Podobne je možné pri decentrálnom zásobovaní meniť rôzne parametre systému a analyzovať vplyvy na celkový vykurovací systém v regióne.</p><p> Používateľ nezávisle spustí rôzne výpočtové moduly pre každý zvažovaný scenár, výsledky skopíruje do príslušných hárkov zošita programu Excel a potom ich porovná pre rôzne nastavenia scenára. Tento postup je popísaný v nasledujúcich častiach tejto wiki stránky.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="scenario-assessment-inputs-and-outputs" href="#scenario-assessment-inputs-and-outputs"><i class="fa fa-link"></i></a> Vstupy a výstupy na hodnotenie scenára</h2><p> Vstupy zostavené do zošita na hodnotenie scenárov sa generujú pomocou nasledujúcich výpočtových modulov:</p><p> <strong>1. <a href="/en/CM-Decentral-heating-supply">CM - Decentrálny prísun tepla</a></strong></p><p> <strong>2. <a href="/en/CM-District-heating-supply-dispatch">CM - expedícia dodávky diaľkového tepla</a></strong></p><p> <strong>3. <a href="/en/CM-District-heating-potential-economic-assessment">CM - Potenciál diaľkového vykurovania: ekonomické hodnotenie</a></strong></p><p> Vstupy a výstupy týchto modulov by sa mali uložiť pre každý scenár a potom sa kompilovať do zošita na hodnotenie scenárov. Bunky, ktoré sa majú vyplniť, sú správne označené a na prvom hárku zošita je uvedená legenda farebného kódovania, ako je vysvetlené v nasledujúcom odseku <a href="#interpretation-of-input-parameters">Interpretácia vstupných parametrov</a> . Tri vyššie uvedené výpočtové moduly vyžadujú určité vstupy, ktoré už možno máte, alebo ktoré možno budete musieť vypočítať pri spustení ďalších modulov, ako je uvedené v nasledujúcom odseku a tiež v časti <strong><a href="/en/training-material">Výcvik</a></strong> .</p><p> Hárok „Záverečná tabuľka“ počíta a zobrazuje porovnanie nasledujúcich ukazovateľov pre každý definovaný scenár na obrázkoch aj v grafoch:</p><ul><li> Cena za rok pre rôzne kategórie nákladov a technológie v <em><strong>mil. EUR / rok</strong></em> ,</li><li> Vyrovnané náklady na dodávku tepla v <em><strong>EUR / MWh</strong></em> ,</li><li> Emisie CO2 pre rôzne technológie v <em><strong>tCO <sub>2</sub> / rok</strong></em> ,</li><li> Konečná potreba energie pre rôzne technológie v <em><strong>GWh / rok</strong></em> ,</li><li> Užitočná potreba energie pre rôzne technológie v <em><strong>GWh / rok</strong></em> ,</li><li> Podiely obnoviteľnej energie (OZE) a diaľkového vykurovania (CZT).</li></ul><p> Pre každý scenár sú nasledujúce ukazovatele zobrazené vo forme skladaného stĺpcového grafu:</p><ul><li> Celkové (agregované) náklady na dodávku tepla systémom diaľkového vykurovania a systémom decentrálneho vykurovania v <em><strong>mil. EUR / rok</strong></em></li><li> Celkové (agregované) emisie CO <sub>2</sub> podľa systému diaľkového vykurovania a systému decentrálneho vykurovania v <em><strong>tCO <sub>2</sub> / rok</strong></em></li><li> Celková (agregovaná) konečná energia a dopyt po užitočnej energii v <em><strong>GWh / rok</strong></em></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-input-parameters" href="#interpretation-of-input-parameters"><i class="fa fa-link"></i></a> Interpretácia vstupných parametrov</h2><p> Vstupné parametre potrebné na spustenie tohto modulu sú rozdelené na:</p><ul><li> Parametre, ktoré sa majú vybrať / vyplniť vo výpočtových moduloch na paneli nástrojov: v zošite sú zvýraznené tyrkysovou farbou.</li><li> Parametre, ktoré sa majú v zošite vybrať / vyplniť, ale tieto sú už poskytnuté ako predvolené hodnoty: v zošite sú zvýraznené zelenou farbou.</li><li> Parametre poskytované ako výstupné údaje v paneli nástrojov, ktoré sa majú kopírovať do zošita, v poliach zvýraznených žltou farbou.</li><li> Parametre vypočítané a poskytnuté ako výstupné údaje v zošite, ktoré sa majú kopírovať do iného hárka ako vstup pre ďalšie spracovanie: zvýraznené červenou farbou.</li></ul><p> Okrem toho má zošit červené pokyny a ďalšie výpočty, ktoré by sa nemali upravovať v sivých bunkách. Obrázok nižšie ukazuje, ako vyzerá farebné označenie uvedené na prednom hárku zošita.</p><img src="/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg"/><h3><a class="anchor" id="final-table---overview-of-assessment-results" href="#final-table---overview-of-assessment-results"><i class="fa fa-link"></i></a> Záverečná tabuľka - prehľad výsledkov hodnotenia</h3><p> Hárok s názvom „Finálna tabuľka“ zobrazuje hlavne celkové výstupné parametre na obrázkoch a grafoch. Má tiež niekoľko vstupných parametrov, ktoré musí používateľ poskytnúť.</p><p> <em>Tabuľka scenárov</em> (R4: Z17) je pripravená na vyplnenie krátkym popisom rôznych hodnotených scenárov. Táto tabuľka, umiestnená priamo nad grafmi, môže byť pre používateľa pripomienkou alebo vysvetlením pre ďalších spolupracovníkov.</p><p> Ďalej v tabuľke sú niektoré parametre, ktoré už boli vyplnené, ale je možné ich upraviť, pokiaľ nezostanú prázdne:</p><ul><li> <em>Obnoviteľný faktor</em> (F102: H116): používa sa na výpočet konečnej obnoviteľnej energie z celkovej konečnej potreby energie.</li><li> <em>Všeobecný faktor účinnosti</em> (K102): používa sa na výpočet celkovej potreby užitočnej energie z celkovej konečnej potreby energie.</li><li> <em>Straty v sieti</em> (F121: N121): používa sa na výpočet potreby dodávky tepla v systéme diaľkového vykurovania z podielu užitočnej energie dodanej diaľkovým vykurovaním (pozri nasledujúci obrázok).</li></ul><img src="/en/CM-Scenario-assessment/picture3.jpg"/><h3><a class="anchor" id="definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply" href="#definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply"><i class="fa fa-link"></i></a> Definícia stavebného fondu a výpočet ukazovateľov decentrálneho zásobovania teplom</h3><p> Sada troch listov sa používa na opis stavebného fondu skúmaného regiónu. Tieto tri listy sa používajú na zhromažďovanie výsledkov CM - decentrálneho zásobovania teplom pre jednotlivé budovy, kombinácie jednotlivých budov so stavebným fondom a na výpočet ukazovateľov pre decentrálne zásobovanie teplom potrebných pre celkové hodnotenie scenára. Ďalej je popísaný obsah a náplň rôznych hárkov.</p><p> <strong>1. Rodinné domy</strong> Tento pracovný list je pripravený na zhromaždenie výsledkov <a href="/en/CM-Decentral-heating-supply">CM - Decentrálna dodávka tepla</a> pre rodinné domy. V predvolenej verzii zošita je možné zohľadniť dva rôzne typy rodinných domov. Používateľ však môže prispôsobiť zošit tak, aby kombinoval ľubovoľný počet rôznych rodinných domov (napr. Z rôznych období výstavby alebo z rôznych typov, ako sú samostatné alebo dvojdomy).</p><p> <strong>2. Budovy MF a iné budovy</strong> Tento pracovný list je pripravený na zhromaždenie výsledkov <a href="/en/CM-Decentral-heating-supply">CM - Decentrálne zásobovanie teplom</a> pre viacgeneračné aj neobytné budovy. V predvolenej verzii zošita je možné zohľadniť 8 rôznych typov viacgeneračných a nebytových budov. Používateľ však môže prispôsobiť zošit tak, aby kombinoval ľubovoľný počet rôznych viacgeneračných a nebytových budov (napr. Z rôznych období výstavby alebo rôznych typov, ako sú malé viacgeneračné budovy, bytové domy, kancelárie, hotely a reštaurácie, vzdelávanie , atď.).</p><p> <strong>Zásoby budov a december</strong> V tomto hárku je zostavený fond budov skúmaného regiónu z typov budov definovaných a vypočítaných v predchádzajúcich dvoch pracovných listoch (C15: L15). Ďalej je definované rozdelenie technológií, ktoré sa majú použiť v rôznych typoch budov (C17: L25), a vypočítajú sa ukazovatele decentrálneho zásobovania teplom v stavebnom fonde (E44: E77). Z tohto dôvodu musí užívateľ definovať celkovú potrebu tepla v skúmanom regióne (E9), ako aj predpokladanú cenu CO <sub>2</sub> (E10).</p><h3><a class="anchor" id="ref.-decentral-dec.-heating-supply" href="#ref.-decentral-dec.-heating-supply"><i class="fa fa-link"></i></a> Ref. Decentrálny (dec.) Dodávka tepla</h3><p> V tomto pracovnom liste je možné definovať rôzne scenáre decentrálneho zásobovania teplom v skúmanom regióne. Za týmto účelom je možné do žlto označených buniek v tomto hárku skopírovať výsledky z výpočtu v predchádzajúcom pracovnom hárku (Zásoba budov a december, bunky E44: E77). Pracovný list vo svojej predvolenej verzii je pripravený na zostavenie 9 rôznych scenárov. Užívateľ sa môže slobodne rozhodnúť, ktoré scenáre decentrálneho zásobovania teplom sú zhromaždené v tomto dokumente (napr. Rozdielne rozdelenie technológií v rôznych druhoch budov, rozdielne ceny CO <sub>2</sub> alebo rozdielne požiadavky na teplo v regióne).</p><h3><a class="anchor" id="ref.-dh-economic-assessment" href="#ref.-dh-economic-assessment"><i class="fa fa-link"></i></a> Ref. Ekonomické posúdenie DH</h3><p> V tomto pracovnom liste možno definovať rôzne scenáre výstavby sietí diaľkového vykurovania v skúmanom regióne. Za týmto účelom používateľ spustí rôzne scenáre s <a href="/en/CM-District-heating-potential-economic-assessment">potenciálom CM - Diaľkové vykurovanie: ekonomické posúdenie</a> a do tohto pracovného hárka skopíruje výsledky modulu zo súboru nástrojov (bunky C29: T44). Zo širšej množiny kauzulovaných scenárov si potom užívateľ vyberie 9 scenárov, ktoré sa majú použiť na celkové posúdenie scenára (C52: K67). Užívateľ sa môže slobodne rozhodnúť, ktoré scenáre výstavby sietí diaľkového vykurovania sú uvedené v tomto hárku (napr. Rôzne trhové podiely diaľkového vykurovania v oblastiach diaľkového vykurovania, rôzne stropy nákladov na rozvodnú sieť alebo rôzne celkové požiadavky na teplo v regióne).</p><h3><a class="anchor" id="ref.-dh-supply-dispatch" href="#ref.-dh-supply-dispatch"><i class="fa fa-link"></i></a> Ref. Expedícia dodávky DH</h3><p> V tomto pracovnom liste možno definovať rôzne scenáre dodávok tepla do potenciálnych systémov diaľkového vykurovania. Za týmto účelom užívateľ spustí rôzne scenáre s <a href="/en/CM-District-heating-supply-dispatch">expedíciou dodávky CM - diaľkového vykurovania</a> a skopíruje výsledky modulu zo súboru nástrojov do tohto pracovného hárka (bunky D84: L98 pre výsledky v časti nazvanej „INDIKÁTORY“ a bunky D104: L195. pre výsledky v časti nazvanej „GRAFIKA“). Užívateľ sa môže slobodne rozhodnúť, ktoré scenáre dodávok tepla do potenciálnych systémov diaľkového vykurovania sú zhromaždené v tomto hárku (napr. Rôzne kombinácie technológií, iná potreba tepla v systémoch diaľkového vykurovania, rôzne ceny CO <sub>2</sub> alebo rôzne ceny nosičov energie). .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-results" href="#interpretation-of-results"><i class="fa fa-link"></i></a> Interpretácia výsledkov</h2><p> Po vyplnení údajov scenára do troch pracovných listov (refer. Dec. Dodávka tepla, refer. Ekonom. Hodnotenie DH, exped. Dod. Dodávka) sa indikátory pre definované scenáre automaticky spočítajú v hárku „Záverečná tabuľka“. Tabuľka v bunkách B7: N88 zobrazuje výsledky týchto celkových scenárov. Ukazovatele sa počítajú za náklady, emisie, dopyt po energii, ako aj podiely obnoviteľnej energie a diaľkového vykurovania.</p><img src="/en/CM-Scenario-assessment/picture1.jpg"/><p> Všeobecne sa všetky tieto výsledky počítajú jednotlivo pre decentrálne aj pre oblasť zásobovanú diaľkovým vykurovaním a aplikujú sa na celkový scenár pomocou ich príslušných podielov. Uvádzajú sa preto osobitne ako jednotlivé komponenty príslušného parametra.</p><h3><a class="anchor" id="costs" href="#costs"><i class="fa fa-link"></i></a> Náklady</h3><p> Súbor na posúdenie scenára ukazuje rozdelenie celkových nákladov na kapitálové výdavky (CAPEX), prevádzkové výdavky (OPEX), výdavky na energiu a na CO <sub>2</sub> . Tieto rôzne kategórie nákladov sa uvádzajú pre centrálne aj decentralizované zásobovanie v regióne. Ďalej sú zobrazené náklady na distribučnú sieť. Všetky tieto nákladové komponenty sú uvedené v <em><strong>mil. EUR / rok</strong></em> . Okrem celkových ročných nákladov sú v tabuľke uvedené aj vyrovnané náklady na dodávku tepla (LCOH). Uvádzajú sa v <em><strong>EUR / MWh.</strong></em> Ročné náklady aj LCOH sú uvedené v obrázkoch. Tieto sa nachádzajú vedľa tabuľky, ako je znázornené na nasledujúcom obrázku.</p><img src="/en/CM-Scenario-assessment/picture2_new.jpg"/><h3><a class="anchor" id="emissions" href="#emissions"><i class="fa fa-link"></i></a> Emisie</h3><p> V súbore na posúdenie scenára sa uvádzajú aj absolútne množstvá emisií CO <sub>2</sub> v rôznych scenároch. Hodnoty sa zobrazujú pre rôzne technológie zásobovania, pričom sa rozlišuje medzi individuálnym (decentrálnym) a diaľkovým vykurovaním (ústredným). Hodnoty sú uvedené v <em><strong>tCO <sub>2</sub> / rok</strong></em> . Množstvá emisií sú opäť zobrazené vo forme diagramu priamo vedľa tabuľky.</p><h3><a class="anchor" id="energy-demand-final-and-useful-energy" href="#energy-demand-final-and-useful-energy"><i class="fa fa-link"></i></a> Energetická náročnosť (konečná a užitočná energia)</h3><p> V tabuľke sú tiež uvedené požiadavky na konečnú a užitočnú energiu. V konečnej požiadavke na energiu sú obsiahnuté aj straty v systéme diaľkového vykurovania. Konečné hodnoty potreby energie pre diaľkové vykurovanie (ústredné) preto odrážajú dopyt po energetickom nosiči v zariadeniach systému diaľkového vykurovania. Hodnoty užitočnej aj konečnej spotreby energie sú uvedené v <em><strong>GWh / rok</strong></em> .</p><h3><a class="anchor" id="shares-of-renewable-energy-and-district-heating" href="#shares-of-renewable-energy-and-district-heating"><i class="fa fa-link"></i></a> Podiely obnoviteľnej energie a diaľkového vykurovania</h3><p> Na záver tabuľka ponúka porovnanie štyroch rôznych podielov: podiel obnoviteľnej energie na decentrálnom zásobovaní, na centrálnom zásobovaní a na celkovom zásobovaní teplom v oblasti a podiel diaľkového vykurovania / centrálneho zásobovania v oblasti. Pokiaľ ide o ďalšie hodnoty, tieto hodnoty sú uvedené aj na obrázkoch hneď vedľa tabuľky.</p><img src="/en/CM-Scenario-assessment/picture4.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Ukážka behu</h2><p> (Tomaszów Mazowiecki)</p><p> Stiahnutím súboru programu Excel získate pripravenú verziu posúdenia scenára. Po úspešnom výpočte scenárov s využitím modulov CM - Decentrally Supply, CM - Potenciál diaľkového vykurovania: ekonomické hodnotenie a CM - Distribúcia dodávky diaľkového tepla, je možné príslušné výsledky modulov skopírovať do príslušných listov dokumentu. V nasledujúcich troch scenároch pre poľské mesto Tomaszów Mazowiecki sú vyhodnotené ako príklad.</p><h3><a class="anchor" id="ref.-dec.-heating-supply" href="#ref.-dec.-heating-supply"><i class="fa fa-link"></i></a> Ref. Dec. Dodávka tepla</h3><p> V tomto príklade bol jeden scenár decentrálneho zásobovania teplom pre mesto Tomaszów Mazowiecki v Poľsku vypočítaný pomocou súpravy nástrojov Hotmaps spolu s listami v sekcii stavebný fond podľa postupu popísaného v <a href="CM-Scenario-assessment#interpretation-of-input-parameters_definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply">tejto časti stránky</a> . Tento scenár decentralizovanej dodávky bol skopírovaný do scenárov 1, 2 a 3 v súbore posúdenia scenárov, pracovnom hárku „Ref. Dec. Dodávka tepla“, aby sa mohol použiť rovnaký scenár individuálneho zásobovania teplom vo všetkých troch porovnávaných scenároch mesta. .</p><img src="/en/CM-Scenario-assessment/sample_run_picture1.jpg"/><h3><a class="anchor" id="ref.-dh-economic-assessment" href="#ref.-dh-economic-assessment"><i class="fa fa-link"></i></a> Ref. Ekonomické hodnotenie DH</h3><p> V tomto príklade bol jeden scenár výstavby siete diaľkového vykurovania pre mesto Tomaszów Mazowiecki v Poľsku vypočítaný pomocou súboru nástrojov Hotmaps. Tento scenár bol skopírovaný do scenárov 1, 2 a 3 v súbore posúdenia scenárov, pracovnom hárku „Ekonomické hodnotenie ref. DH“, aby bolo možné použiť rovnaký scenár výstavby siete diaľkového vykurovania vo všetkých troch porovnávaných scenároch.</p><img src="/en/CM-Scenario-assessment/sample_run_picture2.jpg"/><h3><a class="anchor" id="ref.-dh-supply-dispatch" href="#ref.-dh-supply-dispatch"><i class="fa fa-link"></i></a> Ref. Expedícia dodávky DH</h3><p> V tomto príklade boli pomocou súboru nástrojov Hotmaps vypočítané tri rôzne scenáre dodávok diaľkového vykurovania pre mesto Tomaszów Mazowiecki v Poľsku. Scenáre odrážajú rôzne kombinácie dodávateľských technológií, konkrétne rozdielne kapacity tepelných čerpadiel, prebytočného tepla ako aj kotlov iba na teplo.</p><img src="/en/CM-Scenario-assessment/sample_run_picture3.jpg"/><h3><a class="anchor" id="final-table" href="#final-table"><i class="fa fa-link"></i></a> Finálový stôl</h3><p> Po skopírovaní jednotlivých údajov je možné zostavené scenáre preskúmať v hárku Finálna tabuľka. Na jednej strane je tabuľka s presnými výsledkami a na druhej strane nájdete príslušné grafy na pravej strane tabuľky. V tomto príklade možno účinky využívania rôznych kapacít technológií zásobovania v systéme diaľkového vykurovania hodnotiť na základe nákladov, emisií, dopytu po energii a podielov obnoviteľnej energie.</p><img src="/en/CM-Scenario-assessment/sample_run_picture4.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Ako citovať</h2><p> Giulia Conforto a David Schmidinger, Hotmaps-Wiki, Hodnotenie scenára CM (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori a recenzenti</h2><p> Túto stránku napísali Giulia Conforto a David Schmidinger <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> ☑ Túto stránku skontroloval Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencia</h2><p> Autorské práva © 2016-2020: Giulia Conforto a David Schmidinger</p><p> Medzinárodná licencia Creative Commons Attribution 4.0</p><p> Toto dielo je licencované podľa medzinárodnej licencie Creative Commons CC BY 4.0.</p><p> Identifikátor licencie SPDX: CC-BY-4.0</p><p> Text licencie: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Poďakovanie</h2><p> Chceli by sme najhlbšie oceniť projekt Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (dohoda o grante č. 723677), ktorý poskytol finančné prostriedky na uskutočnenie tohto prešetrovania.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Scenario-assessment) (original) [Bulgarian](../bg/CM-Scenario-assessment)<sup>\*</sup> [Czech](../cs/CM-Scenario-assessment)<sup>\*</sup> [Danish](../da/CM-Scenario-assessment)<sup>\*</sup> [German](../de/CM-Scenario-assessment)<sup>\*</sup> [Greek](../el/CM-Scenario-assessment)<sup>\*</sup> [Spanish](../es/CM-Scenario-assessment)<sup>\*</sup> [Estonian](../et/CM-Scenario-assessment)<sup>\*</sup> [Finnish](../fi/CM-Scenario-assessment)<sup>\*</sup> [French](../fr/CM-Scenario-assessment)<sup>\*</sup> [Irish](../ga/CM-Scenario-assessment)<sup>\*</sup> [Croatian](../hr/CM-Scenario-assessment)<sup>\*</sup> [Hungarian](../hu/CM-Scenario-assessment)<sup>\*</sup> [Italian](../it/CM-Scenario-assessment)<sup>\*</sup> [Lithuanian](../lt/CM-Scenario-assessment)<sup>\*</sup> [Latvian](../lv/CM-Scenario-assessment)<sup>\*</sup> [Maltese](../mt/CM-Scenario-assessment)<sup>\*</sup> [Dutch](../nl/CM-Scenario-assessment)<sup>\*</sup> [Polish](../pl/CM-Scenario-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scenario-assessment)<sup>\*</sup> [Romanian](../ro/CM-Scenario-assessment)<sup>\*</sup>  [Slovenian](../sl/CM-Scenario-assessment)<sup>\*</sup> [Swedish](../sv/CM-Scenario-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated