<h1><a class="anchor" id="cm-biomass-potential" href="#cm-biomass-potential"><i class="fa fa-link"></i></a>Potenciál CM biomasy</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#in-a-glance">Jedným pohľadom</a></li><li> <a href="#introduction">Úvod</a></li><li> <a href="#inputs-and-outputs">Vstupy a výstupy</a></li><li> <a href="#method">Metóda</a></li><li> <a href="#github-repository-of-this-calculation-module">Úložisko GitHub tohto výpočtového modulu</a></li><li> <a href="#sample-run">Ukážka behu</a></li><li> <a href="#how-to-cite">Ako citovať</a></li><li> <a href="#authors-and-reviewers">Autori a recenzenti</a></li><li> <a href="#license">Licencia</a></li><li> <a href="#acknowledgement">Poďakovanie</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Jedným pohľadom</h2><p> Tento modul počíta energetický potenciál z rôznych zdrojov biomasy (lesné a poľnohospodárske zvyšky) v regióne NUTS3.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Úvod</h2><p> Tento modul hodnotí potenciálnu energiu biomasy, ktorú je možné vyrobiť zo zdroja biomasy. Cieľom tohto CM je posúdiť elektrickú a tepelnú energiu, ktorú je možné využiť z potenciálu biomasy v regiónoch NUTS3. Modul zvažuje odlišnú typológiu biomasy, ktorú je možné využiť na výrobu energie. KM používa predvolený súbor údajov pre celú EÚ, ktorý je na úrovni NUTS3.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vstupy a výstupy</h2><p> Vstupné parametre a vrstvy, ako aj výstupné vrstvy a parametre sú nasledujúce.</p><p> <strong>Vstupné vrstvy a parametre sú:</strong></p><ul><li> vektorová vrstva s hmotou biologických zvyškov, ktoré sú k dispozícii, podľa typológie biomasy;</li><li> Percento tuhého odpadu, ktoré je možné efektívne zbierať (predvolená hodnota: 90%)</li><li> Účinnosť pri transformácii tuhého odpadu na tepelnú energiu (štandardná hodnota: 50%)</li><li> Účinnosť pri transformácii tuhého odpadu na elektrickú energiu (predvolená hodnota: 20%)</li><li> Percento poľnohospodárskych zvyškov, ktoré je možné efektívne zozbierať (predvolená hodnota: 60%)</li><li> Účinnosť pri transformácii poľnohospodárskych zvyškov na tepelnú energiu (štandardná hodnota: 50%)</li><li> Účinnosť pri transformácii zvyškov elektrickej energie v poľnohospodárstve (štandardná hodnota: 20%)</li><li> Percento hospodárskych zvierat, ktoré je možné efektívne zhromažďovať (predvolená hodnota: 50%)</li><li> Efektívnosť pri transformácii odpadových hospodárskych zvierat na tepelnú energiu (predvolená hodnota: 50%)</li><li> Účinnosť pri transformácii odpadových vôd z dobytka na elektrickú energiu (predvolená hodnota: 20%)</li><li> Percento lesných zvyškov, ktoré je možné efektívne zbierať (predvolená hodnota: 50%)</li><li> Účinnosť pri transformácii lesných zvyškov na tepelnú energiu (štandardná hodnota: 50%)</li><li> Účinnosť pri transformácii lesných zvyškov na elektrickú energiu (predvolená hodnota: 20%)</li></ul><p> <strong>Výstupné vrstvy a parametre sú:</strong></p><ul><li> celkový energetický potenciál biomasy</li><li> celkový potenciál elektrickej energie z biomasy</li><li> graf s elektrickou / tepelnou energiou na typ biomasy.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metóda</h2><p> Modul počíta pre každý dostupný zdroj biomasy percento z celkového množstva biomasy, ktoré je možné efektívne a realisticky zhromaždiť. Tieto hodnoty poskytuje užívateľ ako vstup. Pri poskytovaní týchto hodnôt by mal užívateľ vziať do úvahy parametre, ako sú podmienky lesného podložia (napr. Sklon, nerovnosť terénu) a mechanizácia procesu (napr. Použitie lanového žeriavu, kombajnu a vyvážečky atď.), Aby poskytla realistický odhad. Na základe poskytnutej účinnosti transformácie sa počíta energia, ktorú je možné extrahovať z každého zdroja biomasy. Nakoniec sa získa celkový energetický potenciál biomasy a celkový energetický potenciál biomasy.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Úložisko GitHub tohto výpočtového modulu</h2><p> <a href="https://github.com/HotMaps/biomass_potential">Tu</a> získate špičkový vývoj pre tento výpočtový modul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Ukážka behu</h2><p> Tento výpočtový modul je možné prevádzkovať na úrovniach NUTS 0-3. Obrázok nižšie zobrazuje získané tepelné a elektrické potenciály pre každý zdroj biomasy na základe predvolených vstupných parametrov.</p><img src="/en/CM-Biomass-potential/cm_biomass_potential.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Ako citovať</h2><p> Pietro Zambelli, Hotmaps-Wiki, CM - Potenciál biomasy (september 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori a recenzenti</h2><p> Túto stránku napísal Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Túto stránku skontroloval Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencia</h2><p> Autorské práva © 2016-2020: Pietro Zambelli</p><p> Medzinárodná licencia Creative Commons Attribution 4.0</p><p> Toto dielo je licencované podľa medzinárodnej licencie Creative Commons CC BY 4.0.</p><p> Identifikátor licencie SPDX: CC-BY-4.0</p><p> Text licencie: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Poďakovanie</h2><p> Chceli by sme najhlbšie oceniť projekt Horizont 2020 Hotmaps (dohoda o grante č. 723677), ktorý poskytol finančné prostriedky na uskutočnenie tohto prešetrovania.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Biomass-potential) (original) [Bulgarian](../bg/CM-Biomass-potential)<sup>\*</sup> [Czech](../cs/CM-Biomass-potential)<sup>\*</sup> [Danish](../da/CM-Biomass-potential)<sup>\*</sup> [German](../de/CM-Biomass-potential)<sup>\*</sup> [Greek](../el/CM-Biomass-potential)<sup>\*</sup> [Spanish](../es/CM-Biomass-potential)<sup>\*</sup> [Estonian](../et/CM-Biomass-potential)<sup>\*</sup> [Finnish](../fi/CM-Biomass-potential)<sup>\*</sup> [French](../fr/CM-Biomass-potential)<sup>\*</sup> [Irish](../ga/CM-Biomass-potential)<sup>\*</sup> [Croatian](../hr/CM-Biomass-potential)<sup>\*</sup> [Hungarian](../hu/CM-Biomass-potential)<sup>\*</sup> [Italian](../it/CM-Biomass-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Biomass-potential)<sup>\*</sup> [Latvian](../lv/CM-Biomass-potential)<sup>\*</sup> [Maltese](../mt/CM-Biomass-potential)<sup>\*</sup> [Dutch](../nl/CM-Biomass-potential)<sup>\*</sup> [Polish](../pl/CM-Biomass-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Biomass-potential)<sup>\*</sup> [Romanian](../ro/CM-Biomass-potential)<sup>\*</sup>  [Slovenian](../sl/CM-Biomass-potential)<sup>\*</sup> [Swedish](../sv/CM-Biomass-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated