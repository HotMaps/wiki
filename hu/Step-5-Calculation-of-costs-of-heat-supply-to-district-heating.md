<h1><a class="anchor" id="local-level---step-5--calculation-of-costs-of-heat-supply-to-district-heating" href="#local-level---step-5--calculation-of-costs-of-heat-supply-to-district-heating"><i class="fa fa-link"></i></a>Helyi szint - 5. lépés: A távfűtés hőellátásának költségeinek kiszámítása</h1><p> <a href="guide-local-and-municipal-levels#the-hotmaps-scenario-toolchain-different-steps"><strong><code>Scenario Toolchain Steps</code></strong></a> <a href="step-4-calculation-of-district-heating-distribution-costs"><strong><code>Previous step</code></strong></a> <a href="step-6-assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area"><strong><code>Next step</code></strong></a></p><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Tartalomjegyzék</h2><ul><li> <a href="#introduction">Bevezetés</a></li><li> <a href="#estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas">A felesleges hő távfűtési területekre történő szállításának költségeinek becslése</a></li><li> <a href="#development-of-future-heat-load-profiles">A jövőbeni hőterhelési profilok kidolgozása</a></li><li> <a href="#calculation-of-costs-and-emissions-of-heat-supply-in-district-heating">A távfűtés hőellátásának költségeinek és kibocsátásának kiszámítása</a></li><li> <a href="#how-to-cite">Hogyan lehet idézni</a></li><li> <a href="#authors-and-reviewers">Szerzők és lektorok</a></li><li> <a href="#license">Engedély</a></li><li> <a href="#acknowledgement">Elismerés</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Bevezetés</h2><p> Ez az elemzés ötödik lépése helyi és önkormányzati szinten.</p><img src="/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating/Hotmaps_Local_Toolchain_Step_5final.png"/><p> <em>Ábra: A távfűtés hőellátásának költségeinek kiszámításához szükséges lépéseket a fenti Eszköztár emeli ki</em></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas" href="#estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas"><i class="fa fa-link"></i></a> A felesleges hő távfűtési területekre történő szállításának költségeinek becslése</h2><p> A felesleges hőnek a távfűtési területeken kívüli potenciális forrásokból a potenciális távfűtési területekbe történő szállításának költségeinek megbecsléséhez a <a href="https://wiki.hotmaps.eu/en/CM-Excess-heat-transport-potential">CM - felesleges hőtranszportpotenciál</a> használható. A modul a távfűtési hálózatba továbbított hőtöbblet szintezett költségeit eredményezi [EUR / MWh]. Ez tovább felhasználható a távfűtés hőellátási költségeinek kiszámításának következő lépésében.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="development-of-future-heat-load-profiles" href="#development-of-future-heat-load-profiles"><i class="fa fa-link"></i></a> A jövőbeni hőterhelési profilok kidolgozása</h2><p> Az épületek felújítása a helyiségfűtés energiaigényének csökkenéséhez vezet. Ez a távfűtési rendszerek hőigényének terhelési profiljait is befolyásolja: a téli csúcsigény csökken és a teljes terhelési órák száma nő a melegvíz-termelés nagyobb arányának köszönhetően a teljes hőigényben. A <a href="https://wiki.hotmaps.eu/en/CM-Heat-load-profiles">CM - hőterhelési profilokkal a</a> jövőbeni hőterhelési profilok különböző hő-megtakarítási szintek szerint alakíthatók ki. Ez történhet a Hotmaps adatbázisban megadott terhelési profilok (alapértelmezett profilok az összes NUTS2 régió Európában) vagy az eszköztárba feltöltött saját profilok alapján. A kapott terhelési profilokat ezután felhasználjuk a következő lépésben, a távfűtés hőellátásának költségeinek és kibocsátásának kiszámításához a diszpécser modullal.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="calculation-of-costs-and-emissions-of-heat-supply-in-district-heating" href="#calculation-of-costs-and-emissions-of-heat-supply-in-district-heating"><i class="fa fa-link"></i></a> A távfűtés hőellátásának költségeinek és kibocsátásának kiszámítása</h2><p> A távfűtési rendszer hőellátásának költségei és kibocsátásai a különböző beépített ellátási kapacitások kölcsönhatásától függenek. Ezáltal érdekes a kapacitások és azok időbeli működésének legkevésbé költséges kombinációja. A <a href="https://wiki.hotmaps.eu/en/CM-District-heating-supply-dispatch">CM - távfűtési ellátás</a> felhasználható a <a href="https://wiki.hotmaps.eu/en/CM-District-heating-supply-dispatch">távfűtés</a> különböző ellátási technológiai kombinációinak úgynevezett óránkénti elosztásának és a hőellátás összköltségeire és kibocsátására gyakorolt hatás elemzésére. A modul segítségével a következő beviteli adatkombinációkkal több forgatókönyv kiszámítható a költségek és haszon levezetése érdekében:</p><ul><li> Különböző technológiák kombinációi az ellátási portfóliókban:<ul><li> Ipari felesleges hő (hőszivattyúval vagy anélkül)</li><li> Hulladékégetés</li><li> Nagy hatékonyságú koegenerálás</li><li> Napenergia termikus</li><li> Geotermikus</li><li> Biomassza</li><li> Különböző hőforrásokkal rendelkező hőszivattyúk, pl<ul><li> szennyvíztisztító telepek</li><li> folyóvíz</li><li> adatközpontokból származó hőfelesleg</li></ul></li></ul></li><li> Az árak forgatókönyvei:<ul><li> a különböző energiahordozók áraira</li><li> a CO2-kibocsátás árait</li></ul></li></ul><p> A számítások felhasználhatók a különböző reprezentatív városokban / térségekben található előnyös kínálati portfóliók és azok érzékenységének befolyásolására olyan fontos befolyásoló paraméterekkel szemben, mint az energiahordozó és a CO2 árai vagy a kamatláb és az amortizációs idő.</p><p> Ennek a lépésnek a következményei a távfűtési rendszer hőellátási költségei [EUR / MWh] az egyes reprezentatív városokban / területeken, és a kapcsolódó CO2-kibocsátás [kt / év]. Ezeket az eredményeket ezután felhasználjuk a <a href="https://wiki.hotmaps.eu/en/Step-6-Assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area">6. lépés</a> teljes <a href="https://wiki.hotmaps.eu/en/CM-Scenario-assessment">forgatókönyv-értékelésében</a> .</p><p> A következő ábra az átfogó megközelítést mutatja.</p><img src="/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating/Wiki-local-detailed-Step-5final.png"/><p> <em>Ábra: A távfűtési költségek hőellátásának kiszámításának általános megközelítése</em></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hogyan lehet idézni</h2><p> Marcus Hummel, Giulia Conforto, a Hotmaps-Wikiben, Útmutató a Hotmaps eszköztár helyi szintű elemzésekhez történő felhasználásához (2020 augusztus)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Szerzők és lektorok</h2><p> Ezt az oldalt Marcus Hummel és Giulia Conforto ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ) írták.</p><p> ☑ Ezt az oldalt Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ) vizsgálta felül.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Engedély</h2><p> Copyright © 2016-2020: Marcus Hummel, Giulia Conforto</p><p> Creative Commons Attribution 4.0 nemzetközi licenc</p><p> Ez a munka a Creative Commons CC BY 4.0 nemzetközi licenc alatt van licencelve.</p><p> SPDX-licenc-azonosító: CC-BY-4.0</p><p> Licenc-szöveg: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Elismerés</h2><p> Szeretnénk a legnagyobb elismerést <a href="https://www.hotmaps-project.eu">kifejezni</a> a Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps projektnek</a> (támogatási szerződés száma 723677), amely támogatást biztosított a jelen vizsgálat elvégzéséhez.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating) (original) [Bulgarian](../bg/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Czech](../cs/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Danish](../da/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [German](../de/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Greek](../el/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Spanish](../es/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Estonian](../et/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Finnish](../fi/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [French](../fr/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Irish](../ga/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Croatian](../hr/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup>  [Italian](../it/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Lithuanian](../lt/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Latvian](../lv/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Maltese](../mt/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Dutch](../nl/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Polish](../pl/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Romanian](../ro/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Slovak](../sk/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Slovenian](../sl/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Swedish](../sv/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> 

<sup>\*</sup> machine translated