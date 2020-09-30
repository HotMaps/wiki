<h1><a class="anchor" id="cm-customized-heat-and-gross-floor-area-density-maps" href="#cm-customized-heat-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a>CM Přizpůsobené mapy tepla a hustoty hrubé podlahové plochy</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#in-a-glance">Na první pohled</a></li><li> <a href="#introduction">Úvod</a></li><li> <a href="#inputs-and-outputs">Vstupy a výstupy</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">Úložiště GitHub tohoto výpočetního modulu</a></li><li> <a href="#how-to-cite">Jak citovat</a></li><li> <a href="#authors-and-reviewers">Autoři a recenzenti</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Potvrzení</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Na první pohled</h2><p> Tento modul generuje rastrové soubory jak pro hustotu tepla, tak pro mapu hustoty hrubé podlahové plochy ve formátu požadovaném v panelu nástrojů Hotmaps. Vstupní údaje jsou poskytovány ve formě souboru CSV obsahujícího informace o umístění, hrubé podlahové ploše a požadavku na teplo pro každou jednotlivou budovu, které je třeba zohlednit.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Úvod</h2><p> Tento modul generuje jak hustotu tepla, tak mapu hustoty hrubé podlahové plochy ve formě rastrových souborů. Vstupem do modulu je soubor CSV s určitými záhlavími sloupců. Mělo by obsahovat následující údaje: souřadnice X a Y středu budov v EPSG: referenční systém souřadnic 3035, hrubá podlahová plocha a roční potřeba tepla budov. Vygenerované rastrové soubory sledují požadovanou projekci a rozlišení pomocí sady nástrojů Hotmaps, a proto je lze snadno nahrát do uživatelských účtů.</p><p> Tento modul je k dispozici pouze jako samostatný modul; není integrován do online verze sady nástrojů Hotmaps. Uživatelé tohoto CM by měli být obeznámeni s programováním v pythonu a mít nainstalované požadované knihovny (např. Numpy, Pandas, GeoPandas a GDAL).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vstupy a výstupy</h2><p> <strong>Vstupy</strong></p><p> Modul přijímá jako vstup soubor CSV. Následující záhlaví se očekávají v případě některého z typů vstupních souborů (měly by být k dispozici v záhlaví souboru CSV):</p><ul><li> <strong>hotmaps_ID</strong> : poskytnout jedinečné celočíselné ID pro každý prvek (mnohoúhelník)</li><li> <strong>Typ</strong> : <strong>Typ</strong> budovy: nastaven na 1 pro sektor služeb; ostatní hodnoty jsou považovány za rezidenční (volitelně: lze ponechat prázdné)</li><li> <strong>Year_Construction</strong> : Year of construction (optional: can be left empty)</li><li> <strong>Adresa</strong> : Adresa budovy (volitelně: může být ponechána prázdná)</li><li> <strong>GFA</strong> : Hrubá podlahová plocha <strong><em>vm <sup>2</sup></em></strong></li><li> <strong>Stopa</strong> : půdorys budovy <strong><em>vm <sup>2</sup></em></strong> (vyžadováno, pokud nejsou uvedeny hodnoty pro GFA)</li><li> <strong>NrFloor</strong> : počet pater (požadováno, pokud nejsou uvedeny hodnoty pro GFA)</li><li> <strong>spec_demand</strong> : Specifická potřeba tepla každého prvku (mnohoúhelníku) v <strong><em>kWh</em></strong></li><li> <strong>poptávka</strong> : Potřeba tepla každého prvku (polygonu) v <strong><em>kWh</em></strong></li><li> <strong>X_3035</strong> : Souřadnice X středu prvku (mnohoúhelník) v projekci EPSG 3035 (povinné pro soubor CSV: lze ponechat prázdné)</li><li> <strong>Y_3035</strong> : Souřadnice Y středu prvku (mnohoúhelník) v projekci EPSG 3035 (povinné pro soubor CSV: lze ponechat prázdné)</li></ul><p> <strong>Důležitá poznámka</strong> : <code>The headers should be written as stated above. Otherwise, the code will break and returns an error.</code></p><p> <strong>Výstupy</strong></p><p> Jako výstup jsou generovány dva rastrové soubory:</p><ul><li> Hrubá mapa hustoty podlahové plochy s hodnotami pixelů v <strong><em>m <sup>2</sup> na hektar</em></strong></li><li> Mapa hustoty požadavku na teplo s hodnotami pixelů v <strong><em>MWh na hektar</em></strong></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Chcete-li vizualizovat vlastní rastrový soubor v sadě nástrojů Hotmaps, měl by respektovat pravidla definovaná v sadě nástrojů. Obecně by rastr měl:</p><ol><li> mít CRS <strong>ETRS89-extended / LAEA Europe - EPSG: 3035</strong> ;</li><li> Souřadnice počátku rastru (levý horní roh rastru) by měla být multiplikátor 100, např. (4334900, 3019700);</li><li> Rozlišení rastrové mapy by mělo být 100x100m;</li><li> Rastr by měl odkazovat na umístění v Evropě.</li></ol><p> Na základě výše uvedených kritérií a souřadnic uvedených ve vstupním souboru CSV je každá vstupní souřadnice přiřazena určitému pixelu. Položky přidělené jednomu pixelu jsou agregovány. Levý dolní pixel a pravý horní pixel určují rozsah pixelu. Rozlišení mapy je 100x100m. Podle toho se vygeneruje mapa hustoty tepla a mapa hrubé podlahové plochy.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Úložiště GitHub tohoto výpočetního modulu</h2><p> <strong><a href="https://github.com/HotMaps/customized_h_fa_dm">Zde</a></strong> získáte špičkový vývoj pro tento výpočetní modul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Jak citovat</h2><p> Mostafa Fallahnejad, v Hotmaps-Wiki, CM Přizpůsobené mapy tepla a hustoty hrubé podlahové plochy (září 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autoři a recenzenti</h2><p> Tuto stránku napsal Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Tuto stránku zkontroloval Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Mezinárodní licence Creative Commons Attribution 4.0</p><p> Tato práce podléhá licenci na základě mezinárodní licence Creative Commons CC BY 4.0.</p><p> SPDX-identifikátor licence: CC-BY-4.0</p><p> Text licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Potvrzení</h2><p> Rádi bychom <a href="https://www.hotmaps-project.eu">vyjádřili</a> své nejhlubší uznání projektu Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Grant Agreement number 723677), který poskytl finanční prostředky na provedení tohoto šetření.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Customized-heat-and-floor-area-density-maps) (original) [Bulgarian](../bg/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup>  [Danish](../da/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [German](../de/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Greek](../el/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Spanish](../es/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Estonian](../et/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Finnish](../fi/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [French](../fr/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Irish](../ga/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Croatian](../hr/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Hungarian](../hu/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Italian](../it/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Polish](../pl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Slovenian](../sl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Swedish](../sv/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated