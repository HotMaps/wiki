<h1><a class="anchor" id="guidelines-for-using-the-hotmaps-toolbox-for-analyses-at-local-level" href="#guidelines-for-using-the-hotmaps-toolbox-for-analyses-at-local-level"><i class="fa fa-link"></i></a>Pokyny pro používání sady nástrojů Hotmaps pro analýzy na místní úrovni</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#introduction">Úvod</a></li><li> <a href="#the-hotmaps-scenario-toolchain-overview">Řada nástrojů Hotmaps Scenario: Přehled</a></li><li> <a href="#the-hotmaps-scenario-toolchain-different-steps">Řada nástrojů Hotmaps Scenario: Různé kroky</a></li><li> <a href="#pilot-areas-heating-and-cooling-strategy-documents">Dokumenty strategie vytápění a chlazení pilotních oblastí</a></li><li> <a href="#how-to-cite">Jak citovat</a></li><li> <a href="#authors-and-reviewers">Autoři a recenzenti</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Potvrzení</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Úvod</h2><p> Tyto pokyny popisují, jak lze databázi Hotmaps a sadu nástrojů použít k analýze potenciálů, nákladů a emisí pro efektivní a obnovitelné vytápění a chlazení na místní úrovni. Níže uvedené kroky budou připomínány také jako součást procesu popsaného v <a href="https://wiki.hotmaps.hevs.ch/en/guide-national-level-comprehensive-assessment-eed#introduction">pokynech pro používání sady nástrojů Hotmaps pro analýzy na národní úrovni</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="the-hotmaps-scenario-toolchain--overview" href="#the-hotmaps-scenario-toolchain--overview"><i class="fa fa-link"></i></a> Řada nástrojů Hotmaps Scenario: Přehled</h2><p> Pro výpočet scénářů potenciální budoucí poptávky a nabídky vytápění ve městě a souvisejících nákladů a emisí používáme sadu nástrojů Hotmaps. V sadě nástrojů jsou obsaženy různé výpočetní moduly (CM) pro analýzu různých částí systémů vytápění a chlazení. Následující obrázek ukazuje různé CM (ve světle modré barvě), které byly použity, a informace, které byly vytvořeny z CM nebo se do nich přenesly.<br/><br/><img src="/en/guide-local-and-municipal-levels/Toolchain_29_06_2020.jpg"/></p><p> <em>Obrázek: Metoda výpočtu scénářů a citlivosti poptávky a nabídky tepla po tomto strategickém procesu</em><br/><br/><br/> Prvním krokem v analýze bylo vytvoření map hustoty poptávky po teple pro rok 2050. Začalo to analýzou renovačních opatření v budovách města. Byly vypočítány náklady a dopady různých možností renovace pro každou budovu ve městě. Poté byla všechna vypočítaná opatření na renovaci ve všech budovách města seřazeny podle nákladů. Na základě tohoto žebříčku byly identifikovány nejlevnější renovace pro dosažení předem definovaných cílů úspor a aplikovány na budovy v databázi budov. S <a href="https://wiki.hotmaps.eu/en/CM-Customized-heat-and-floor-area-density-maps">CM - Přizpůsobené mapy</a> tepla a hustoty hrubé podlahové plochy byly poté generovány <a href="https://wiki.hotmaps.eu/en/CM-Customized-heat-and-floor-area-density-maps">mapy</a> potřeby tepla a hustoty hrubé podlahové plochy pro různé úrovně úspory tepla ve městě. Tyto mapy potřeby tepla a hrubé hustoty podlahové plochy byly dále použity k analýze citlivosti nákladů na distribuci tepla v potenciálních sítích dálkového vytápění (DH). S <a href="https://wiki.hotmaps.eu/en/CM-District-heating-potential-economic-assessment">potenciálem CM - Dálkové vytápění: ekonomické posouzení</a> byly vypočteny náklady a umístění potenciálních sítí DH pro různé úrovně úspor, podíly na trhu DH a maximální náklady na rozvodnou síť.</p><p> Pomocí <a href="https://wiki.hotmaps.eu/en/CM-Decentral-heating-supply">CM - Decentrální dodávka</a> tepla byly vypočítány náklady na dodávku tepla a související emise pro decentralizované technologie pro různé typy budov a také pro stavy renovace budov. Vážení výsledných nákladů podle možného budoucího stavu budov v různých scénářích úspor a podle technologií, které mají být použity, přineslo průměrné náklady na dodávky tepla pro technologie decentralizovaného zásobování v budoucnosti (decentralizované referenční náklady). Tyto hodnoty byly poté použity k analýze možné expanze dálkového vytápění: náklady na distribuci tepla plus náklady na dodávku tepla v potenciálních systémech CZT by neměly překročit referenční náklady z decentralizované dodávky.</p><p> Náklady na dodávku DH z různých technologií byly kalkulovány s <a href="https://wiki.hotmaps.eu/en/CM-District-heating-supply-dispatch">expedicí dodávky CM - DH</a> . Tento CM vypočítá odeslání různých technologií nainstalovaných v potenciálním systému DH, aby bylo dosaženo minimálních provozních nákladů při pokrytí poptávky po teple po celou dobu roku (nebo celkových nákladů včetně investic, pokud je model použit v režimu optimalizace investic). Pro tento strategický proces byla vypočítána různá různá portfolia dodávek a byly porovnány výsledné náklady a emise. Důležitými vstupy do výpočtů expedice DH jsou profily zátěže poptávky po teple (představující poptávku po teple všech spotřebitelů pro každou hodinu roku). Změna těchto profilů se snižující se potřebou tepla na vytápění byla vypočítána pomocí <a href="https://wiki.hotmaps.hevs.ch/en/CM-Heat-load-profiles">profilů CM - Tepelné zatížení</a> .</p><p> Výsledky pro vybrané scénáře z výpočtů tepelných úspor <a href="https://wiki.hotmaps.eu/en/CM-Customized-heat-and-floor-area-density-maps">(CM - Přizpůsobené mapy hustoty tepla a hrubé podlahové plochy)</a> , modulu decentrálních nákladů na vytápění <a href="https://wiki.hotmaps.eu/en/CM-Decentral-heating-supply">(CM - Decentrální dodávka tepla)</a> , modulu expedice dodávky DH <a href="https://wiki.hotmaps.eu/en/CM-District-heating-supply-dispatch">(CM - expedice dodávky DH)</a> , as stejně jako modul Potenciál CZT: ekonomické posouzení <a href="https://wiki.hotmaps.eu/en/CM-District-heating-potential-economic-assessment">(CM - Potenciál dálkového vytápění: Ekonomické hodnocení)</a> byly poté sestaveny v hodnocení <a href="https://wiki.hotmaps.eu/en/CM-Scenario-assessment">CM - scénář</a> . Výsledkem je srovnání nákladů, podílu obnovitelné energie a souvisejících emisí CO2 různých scénářů budoucích topných systémů.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="the-hotmaps-scenario-toolchain--different-steps" href="#the-hotmaps-scenario-toolchain--different-steps"><i class="fa fa-link"></i></a> Řada nástrojů Hotmaps Scenario: Různé kroky</h2><p> Na následujících samostatných stránkách jsou jednotlivě vysvětleny různé kroky při generování scénářů pro vybrané město nebo region.</p><ul><li> <a href="https://wiki.hotmaps.eu/en/Step-1-Analysis-of-current-heat-demand-and-available-resource-potentials">Krok 1: Analýza aktuální poptávky po teple a dostupného potenciálu zdrojů</a></li><li> <a href="https://wiki.hotmaps.eu/en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps">Krok 2: Výpočet budoucí potřeby tepla a mapy hustoty hrubé podlahové plochy</a></li><li> <a href="https://wiki.hotmaps.eu/en/Step-3-Calculation-of-costs-of-decentral-heat-supply">Krok 3: Výpočet nákladů na decentrální dodávku tepla</a></li><li> <a href="https://wiki.hotmaps.eu/en/Step-4-Calculation-of-district-heating-distribution-costs">Krok 4: Výpočet nákladů na distribuci dálkového vytápění</a></li><li> <a href="https://wiki.hotmaps.eu/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating">Krok 5: Výpočet nákladů na dodávku tepla do dálkového vytápění</a></li><li> <a href="https://wiki.hotmaps.eu/en/Step-6-Assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area">Krok 6: Posouzení scénářů celé poptávky a nabídky tepla pro vybranou oblast</a></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="pilot-areas-heating-and-cooling-strategy-documents" href="#pilot-areas-heating-and-cooling-strategy-documents"><i class="fa fa-link"></i></a> Dokumenty strategie vytápění a chlazení pilotních oblastí</h2><p> Sada nástrojů Hotmaps byla vyvinuta společně s městy, aby se ujistil, že jsou Hotmaps užitečné pro místní úřady a plánovače měst. Sedm evropských pilotních oblastí to úspěšně testovalo a rozvíjelo své strategie vytápění a chlazení: Aalborg (Dánsko), Bistrita (Rumunsko), Frankfurt (Německo), Ženeva (Švýcarsko), Kerry County (Irsko), Milton Keynes (Velká Británie) a San Sebastián (Španělsko). Každé město vyvinulo strategii vytápění a chlazení. Tyto strategické dokumenty ukazují, jak sada nástrojů Hotmaps podporovala pilotní města v jejich městském energetickém plánování, a to testováním a hodnocením různých energetických scénářů a poskytováním integrální analýzy jejich energetických zdrojů.</p><p> Strategické dokumenty pilotních měst jsou po dokončení zveřejněny na <a href="https://www.hotmaps-project.eu/library/">webových stránkách Knihovny projektu Hotmpas</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Jak citovat</h2><p> Marcus Hummel, Giulia Conforto, v Hotmaps-Wiki, Pokyny pro používání sady nástrojů Hotmaps pro analýzy na národní úrovni (říjen 2020)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autoři a recenzenti</h2><p> Tuto stránku napsali Marcus Hummel a Giulia Conforto ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> ☑ Tuto stránku zkontroloval Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Copyright © 2016-2020: Marcus Hummel, Giulia Conforto</p><p> Mezinárodní licence Creative Commons Attribution 4.0</p><p> Tato práce podléhá licenci na základě mezinárodní licence Creative Commons CC BY 4.0.</p><p> SPDX-identifikátor licence: CC-BY-4.0</p><p> Text licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Potvrzení</h2><p> Rádi bychom <a href="https://www.hotmaps-project.eu">vyjádřili</a> své nejhlubší uznání projektu Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Grant Agreement number 723677), který poskytl finanční prostředky na provedení tohoto šetření.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/guide-local-and-municipal-levels) (original) [Bulgarian](../bg/guide-local-and-municipal-levels)<sup>\*</sup>  [Danish](../da/guide-local-and-municipal-levels)<sup>\*</sup> [German](../de/guide-local-and-municipal-levels)<sup>\*</sup> [Greek](../el/guide-local-and-municipal-levels)<sup>\*</sup> [Spanish](../es/guide-local-and-municipal-levels)<sup>\*</sup> [Estonian](../et/guide-local-and-municipal-levels)<sup>\*</sup> [Finnish](../fi/guide-local-and-municipal-levels)<sup>\*</sup> [French](../fr/guide-local-and-municipal-levels)<sup>\*</sup> [Irish](../ga/guide-local-and-municipal-levels)<sup>\*</sup> [Croatian](../hr/guide-local-and-municipal-levels)<sup>\*</sup> [Hungarian](../hu/guide-local-and-municipal-levels)<sup>\*</sup> [Italian](../it/guide-local-and-municipal-levels)<sup>\*</sup> [Lithuanian](../lt/guide-local-and-municipal-levels)<sup>\*</sup> [Latvian](../lv/guide-local-and-municipal-levels)<sup>\*</sup> [Maltese](../mt/guide-local-and-municipal-levels)<sup>\*</sup> [Dutch](../nl/guide-local-and-municipal-levels)<sup>\*</sup> [Polish](../pl/guide-local-and-municipal-levels)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/guide-local-and-municipal-levels)<sup>\*</sup> [Romanian](../ro/guide-local-and-municipal-levels)<sup>\*</sup> [Slovak](../sk/guide-local-and-municipal-levels)<sup>\*</sup> [Slovenian](../sl/guide-local-and-municipal-levels)<sup>\*</sup> [Swedish](../sv/guide-local-and-municipal-levels)<sup>\*</sup> 

<sup>\*</sup> machine translated