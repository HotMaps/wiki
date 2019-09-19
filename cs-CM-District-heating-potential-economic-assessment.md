<h2> Obsah </h2><ul><li> <a href="#introduction">Úvod</a> </li><li> <a href="#inputs-and-outputs">Vstupy a výstupy</a> </li><li> <a href="#method">Metoda</a> </li><li> <a href="#GitHub-Repository-of-this-calculation-module">Úložiště GitHub tohoto výpočetního modulu</a> </li><li> <a href="#sample-run">Ukázka běhu</a> <ul><li> <a href="#test-run-1-default-input-values">Testovací běh 1: výchozí vstupní hodnoty</a> </li><li> <a href="#test-run-2-modified-input-values">Testovací běh 2: upravené vstupní hodnoty</a> </li></ul></li><li> <a href="#references">Reference</a> </li><li> <a href="#how-to-cite">Jak citovat</a> </li><li> <a href="#authors-and-reviewers">Autoři a recenzenti</a> </li><li> <a href="#license">Licence</a> </li><li> <a href="#acknowledgement">Potvrzení</a> </li></ul><h2> Úvod </h2><p> Tento výpočetní modul používá <a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">Evropskou mapu hustoty tepla (EHDM)</a> a <a href="https://gitlab.com/hotmaps/gfa_tot_curr_density">Evropskou mapu hrubé podlahové plochy (EGFAM)</a> , které byly vyvinuty v průběhu <a href="https://www.hotmaps-project.eu/">projektu Hotmaps</a> , pro návrh metody GIS pro stanovení potenciálních DH oblastí se zvláštním zaměřením nákladů na distribuční soustavu dálkového vytápění (DH). DH oblasti jsou stanoveny prováděním analýz citlivosti na EHDM s ohledem na předem definovanou horní hranici průměrných distribučních nákladů. Tento přístup navíc umožňuje odhad délky a průměru přenosových vedení a jejich souvisejících nákladů. Výstupy jsou vrstvy GIS, které znázorňují oblasti, které jsou ekonomicky životaschopné pro výstavbu DH, jakož i nákladově minimální přenosová vedení spojující tyto regiony navzájem. Výpočtový modul lze použít ke studiu dopadu parametrů, jako jsou strop síťových nákladů a podíl na trhu, na potenciál a na rozšíření a rozšíření systémů DH. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Vstupy a výstupy </h2><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Metoda </h2><p> Zde je uvedeno stručné vysvětlení metodiky. Podrobnější vysvětlení metodiky a formulací naleznete v <a href="https://www.sciencedirect.com/science/article/pii/S1876610218304740">článku</a> o tomto modulu výpočtu [ <a href="#References">1</a> ]. </p><p> Cílem výpočtového modulu je najít regiony, ve kterých lze systém DH vybudovat, aniž by překročil uživatelsky definovaný průměrný strop specifických nákladů v <em><em>EUR / MWh</em></em> . To se provádí za následujících předpokladů: </p><ul><li> Ekonomická oblast DH s nejvyšší potřebou tepla je považována za jediný dostupný zdroj tepla. Vytváří teplo pro sebe a všechny ostatní ekonomické koherentní oblasti. </li><li> mezi dvěma oblastmi DH může teplo proudit v jednom směru, </li><li> roční poptávka po DH se považuje za konstantní i po posledním roce investičního období </li><li> podíl na trhu nebo úspora energie má stejná procenta v buňkách oblasti DH a také v různých oblastech DH. </li></ul><p> Stanovení ekonomických oblastí DH se provádí ve třech krocích. </p><p> <strong>KROK 1: Výpočet nákladů na distribuční soustavu na základě potřeby tepla a poměru pozemku pomocí EHDM a EGFAM</strong> </p><p> <strong>KROK 2: Stanovení potenciálních DH oblastí</strong> </p><p> <strong>KROK 3: Stanovení ekonomických oblastí DH a kapacit přenosového vedení a konfigurace potřebné pro vzájemné propojení těchto oblastí.</strong> </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Úložiště GitHub tohoto výpočetního modulu </h2><p> <a href="https://github.com/HotMaps/dh_economic_assessment/tree/develop">Zde</a> získáte vývoj na hraně krvácení pro tento výpočetní modul. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Ukázka běhu </h2><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> Testovací běh 1: výchozí vstupní hodnoty </h3><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> Testovací běh 2: upravené vstupní hodnoty </h3><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Reference </h2><p> [1]. Fallahnejad M, Hartner M, Kranzl L, Fritz S. Dopad distribučních a přenosových investičních nákladů systémů dálkového vytápění na potenciál dálkového vytápění. Energy Procedia 2018; 149: 141–50. doi: 10,016 / j.egypro.2018.08.178. </p><h2> Jak citovat </h2><p> Mostafa Fallahnejad, Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/CM-District-heating-grid-costs (duben 2019) </p><h2> Autoři a recenzenti </h2><p> Tuto stránku napsal Mostafa Fallahnejad *. </p><ul><li> [] Tuto stránku přezkoumal Lukas Kranzl *. </li></ul><p> * <a href="https://eeg.tuwien.ac.at/">Energy Economics Group - TU Wien</a> Institut energetických systémů a elektrických pohonů Gusshausstrasse 27-29 / 370 1040 Wien </p><h2> Licence </h2><p> Copyright © 2016-2019: Mostafa Fallahnejad </p><p> Creative Commons Attribution 4.0 International License Tato práce podléhá licenci Creative Commons CC BY 4.0 International License. </p><p> Identifikátor licence SPDX: CC-BY-4.0 </p><p> Licenční text: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Potvrzení </h2><p> Chtěli bychom vyjádřit naše nejhlubší uznání projektu Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps Project</a> (Grant Agreement Agreement č. 723677), který poskytl finanční prostředky pro provedení tohoto šetření. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-CM-District-heating-potential-economic-assessment) (original) [Bulgarian](bg-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Croatian](hr-CM-District-heating-potential-economic-assessment)<sup>\*</sup>  [Danish](da-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Dutch](nl-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Estonian](et-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Finnish](fi-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [French](fr-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [German](de-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Greek](el-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Hungarian](hu-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Irish](ga-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Italian](it-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Latvian](lv-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Lithuanian](lt-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Maltese](mt-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Polish](pl-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Romanian](ro-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Slovak](sk-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Slovenian](sl-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Spanish](es-CM-District-heating-potential-economic-assessment)<sup>\*</sup> [Swedish](sv-CM-District-heating-potential-economic-assessment)<sup>\*</sup>
<sup>\*</sup>: machine translated