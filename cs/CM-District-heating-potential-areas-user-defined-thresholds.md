<h1><a class="anchor" id="cm-district-heating-potential-areas-user-defined-thresholds" href="#cm-district-heating-potential-areas-user-defined-thresholds"><i class="fa fa-link"></i></a>Uživatelem definované mezní hodnoty pro oblast dálkového vytápění CM</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Obsah</h2><ul><li> <a href="#in-a-glance">Na první pohled</a></li><li> <a href="#introduction">Úvod</a></li><li> <a href="#inputs-and-outputs">Vstupy a výstupy</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">Úložiště GitHub tohoto výpočetního modulu</a></li><li> <a href="#sample-run">Ukázkový běh</a><ul><li> <a href="#sample-run_test-run-1-default-input-values">Testovací běh 1: výchozí vstupní hodnoty</a></li><li> <a href="#sample-run_test-run-2-modified-input-values">Testovací běh 2: upravené vstupní hodnoty</a></li></ul></li><li> <a href="#how-to-cite">Jak citovat</a></li><li> <a href="#authors-and-reviewers">Autoři a recenzenti</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Potvrzení</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Na první pohled</h2><p> Tento výpočetní modul vypočítává potenciál dálkového vytápění ve vybrané oblasti pomocí 2 prahových hodnot: 1) minimální potřeba tepla na každém hektaru, 2) minimální potřeba tepla v oblasti CZT. Oblasti ve vybrané oblasti, které splňují tyto podmínky, jsou vráceny jako oblasti DH. Potřeba tepla v těchto regionech se navíc vrací ve formě indikátorů jako potenciál DH.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Úvod</h2><p> Potřeba tepla hraje důležitou roli při určování oblastí potenciálního dálkového vytápění (CZT). Například zavedení dálkového vytápění v oblastech s nízkou potřebou tepla není ekonomicky životaschopné. Na druhou stranu může být nepřesné také definování jakékoli oblasti s vysokou hustotou potřeby tepla jako potenciální oblasti DH. Vysoká hustota potřeby tepla v oblasti může být způsobena přítomností několika spotřebitelů s velmi vysokou potřebou tepla v dané oblasti. Naopak nízká průměrná hustota potřeby tepla by mohla být znamením zón s velmi nízkou potřebou tepla ve vybrané oblasti. Cílem výpočtového modulu „CM - POTENCIÁLOVÁ OBLAST OKRUHOVÉHO VYTÁPĚNÍ: PRAHA VYMEZENÁ UŽIVATELEM“ je poskytnout rozumnou rovnováhu mezi hustotou potřeby tepla v oblasti a jejími zónami.</p><p> „Potenciální oblast CM - DISTRICT HEATING POTENCIÁL: UŽIVATELEM DEFINOVANÝ PRAH“ určuje oblasti DH a jejich odpovídající potenciál DH na základě hustoty potřeby tepla. Hustoty potřeby tepla se získávají ze vstupní vrstvy GIS. Sada nástrojů a databáze Hotmaps poskytuje <strong><a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">výchozí mapu hustoty tepla,</a></strong> kterou lze použít v tomto modulu výpočtu. Mapa hustoty tepla Hotmaps je v rastrovém formátu a má rozlišení jednoho hektaru a souřadnicový referenční systém (CRS) „ <em><em>ETRS89 / LAEA Europe - EPSG 3035</em></em> “. Články na mapě ukazují hustotu tepla v <em><strong>MWh / ha</strong></em> . Kromě této výchozí mapy lze do sady nástrojů také nahrát mapy generované uživatelem a použít je v tomto CM.</p><p> Jako výstup je uvedena jedna vrstva GIS, tři indikátory a dva diagramy. Tyto výstupy jsou podrobně vysvětleny v části <a href="#sample-run">Ukázkový běh</a> . Výstupní vrstva ukazuje potenciální oblasti DH. Kliknutím na každou oblast na mapě se zobrazí okno a zobrazí se potenciál DH odpovídající dané oblasti. V oknech INDIKÁTORY / GRAFIKA v části VÝSLEDKY v sadě nástrojů jsou zobrazeny příslušné indikátory a grafy týkající se potenciálu DH ve vybrané zóně a potenciálů v subzónách.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Vstupy a výstupy</h2><p> Vstupní parametry a vrstvy, stejně jako výstupní vrstvy a parametry, jsou následující.</p><p> <strong>Vstupní vrstvy a parametry jsou:</strong></p><ul><li> Minimální potřeba tepla na každém hektaru [ <em><strong>MWh / ha</strong></em> ]: hodnota mezi <em><em>0</em></em> a <em><em>1 000</em></em></li><li> Minimální potřeba tepla v oblasti CZT [ <em><strong>GWh / rok</strong></em> ]: hodnota mezi <em><em>0</em></em> a <em><em>500</em></em></li><li> Mapa hustoty tepla: v panelu nástrojů je k dispozici výchozí mapa; v CM lze také použít vlastní nahrané mapy<ul><li> v rastrovém formátu (* .tif)</li><li> s rozlišením 1 hektar</li><li> hustoty poptávky v <em><strong>MWh / ha</strong></em></li></ul></li></ul><p> <strong>Výstupní vrstvy a parametry jsou:</strong></p><ul><li> DH oblasti v rastrových a tvarových formátech</li><li> Potenciál DH v každé oblasti DH [ <em><strong>GWh / rok</strong></em> ] (klikněte na mapu)</li><li> Celková potřeba tepla v GWh ve vybrané zóně</li><li> Celkový potenciál dálkového vytápění v GWh ve vybrané zóně</li><li> Potenciální podíl dálkového vytápění na celkové poptávce ve vybrané zóně</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Potenciál pro DH v konkrétní oblasti lze definovat celkovou potřebou tepla a jeho prostorovou alokací. V sadě nástrojů Hotmaps je potřeba tepla znázorněna ve formě rastrové mapy. Aby bylo možné správně definovat potenciální oblasti DH, měla by jak potřeba tepla v každém článku, tak v oblasti dosáhnout určité úrovně. Sada nástrojů Hotmaps jako výchozí bod navrhuje výchozí hodnoty pro tyto dva parametry. V závislosti na rozložení požadavku na teplo a také na místních podmínkách může uživatel Hotmaps tyto hodnoty upravit.</p><p> Stanovení oblastí DH se provádí ve dvou krocích:</p><p> V prvním kroku jsou filtrovány všechny články s požadavkem na teplo pod vstupním parametrem „Minimální požadavek na teplo v hektarech“. Vyloučením těchto buněk z mapy získáme skupiny buněk, které jsou navzájem spojené. Každá sada těchto připojených buněk tvoří malé zóny, které jsou zde označovány jako „koherentní oblasti“. Ve druhém kroku se vypočítá celková potřeba tepla v každé soudržné oblasti. Pokud je pro každou souvislou oblast celková potřeba tepla vyšší než vstupní parametr „Minimální potřeba tepla v oblasti DH“, považuje se to za potenciální oblast DH.</p><p> Nakonec se pro oblasti DH vypočítá potenciál a představí se ve formě vrstvy GIS, kterou lze vidět v sadě nástrojů.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Úložiště GitHub tohoto výpočetního modulu</h2><p> <a href="https://github.com/HotMaps/dh_potential/tree/develop">Zde</a> získáte špičkový vývoj pro tento výpočetní modul.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Ukázkový běh</h2><p> Zde je spuštěn výpočetní modul pro případovou studii Aalborgu v Dánsku.</p><ul><li> Nejprve pomocí pruhu „Přejít na místo“ přejděte do Aalborgu a vyberte město.</li></ul><img alt="Fig. 1" src="../images/cm_dh_potential/1.png" title="Přejděte na místo"/><ul><li><p> Postupujte podle pokynů na obrázku níže:</p><ul><li> Kliknutím na tlačítko „Vrstvy“ otevřete okno „Vrstvy“:</li><li> Klikněte na kartu „VÝPOČETNÍ MODULY“.</li><li> Klikněte na tlačítko „CM-DISTRICT HEATING POTENCIÁLNÍ OBLASTI: UŽIVATELEM DEFINOVANÉ PRAHY“.</li></ul></li><li><p> Nyní se otevře výpočetní modul „CM-DISTRICT HEATING POTENCIÁLNÍ OBLASTI: UŽIVATELEM DEFINOVANÉ PRAHY“ a je připraven ke spuštění.</p></li></ul><img alt="Fig. 3" src="../images/cm_dh_potential/3.png" title="POTENCIÁL NDISTRICTOVÉHO TOPENÍ"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-1--default-input-values" href="#test-run-1--default-input-values"><i class="fa fa-link"></i></a> Testovací běh 1: výchozí vstupní hodnoty</h3><p> Výchozí vstupní hodnoty ukazují obecné podmínky, za kterých lze oblast považovat za potenciální oblast DH. Tyto hodnoty by měly být považovány pouze za výchozí bod. Možná budete muset nastavit hodnoty pod nebo nad výchozí hodnoty v sadě nástrojů s ohledem na další místní podmínky. Uživatel by proto měl tyto hodnoty upravit, aby našel nejlepší kombinaci prahových hodnot pro svou případovou studii.</p><p> Chcete-li spustit výpočetní modul, postupujte podle následujících kroků:</p><ul><li> Přiřaďte relaci běhu název (volitelně - zde jsme zvolili „Test Run 1“) a nastavte vstupní parametry (zde byly použity výchozí hodnoty).</li></ul><img alt="Fig. 4-0" src="../images/cm_dh_potential/4-0.png" title="Pojmenujte relaci běhu"/><ul><li> Stiskněte tlačítko „RUN CM“ vlevo dole.</li><li> Počkejte, až se proces dokončí.</li></ul><p> <strong><code>Note: If you wish to change your input parameters, you can press &quot;STOP CM&quot;, modify your input parameters and re-run the CM</code></strong></p><ul><li> Jako výstup jsou indikátory a diagramy zobrazeny v části „VÝSLEDKY“ na pravé straně panelu nástrojů. Ukazatele ukazují:<ul><li> celková potřeba tepla v <em><em>GWh</em></em> ve vybrané zóně,</li><li> celkový potenciál DH v <em><em>GWh</em></em> ve vybrané zóně,</li><li> podíl potenciálu CZT na celkové poptávce, který se získá dělením potenciálu CZT na celkovém požadavku na teplo v regionu.</li></ul></li></ul><img alt="Fig. 4-1" src="../images/cm_dh_potential/4-1.png" title="Záložka INDIKÁTORY"/><p> Dále jsou generovány také dva diagramy. První ukazuje potenciál DH v každé oblasti DH. Odpovídající štítky najdete také na mapě. Druhý diagram ilustruje celkový potenciál DH ve srovnání s celkovou potřebou tepla ve vybrané oblasti.</p><img alt="Fig. 4-2" src="../images/cm_dh_potential/4-2.png" title="Karta GRAFIKA"/><ul><li> Na plátno je také přidána nová vrstva zobrazující oblasti DH. Tato vrstva je přidána do seznamu vrstev v kategorii „Modul výpočtu“ v dolní části sekce vrstev. Název relace běhu odlišuje výstupy tohoto běhu od ostatních.</li></ul><img alt="Fig. 4-3" src="../images/cm_dh_potential/4-3.png" title="Vrstvy modulu výpočtu"/><p> Po těchto krocích získáte představu o vstupních hodnotách a potenciálních oblastech DH.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-2--modified-input-values" href="#test-run-2--modified-input-values"><i class="fa fa-link"></i></a> Testovací běh 2: upravené vstupní hodnoty</h3><p> V závislosti na vašich zkušenostech a místních znalostech můžete zvýšit nebo snížit vstupní hodnoty, abyste dosáhli lepších výsledků. Například v případě Aalborgu možná víte, že potřeba tepla ve vnějších částech města je relativně blízko centrální části města a v těchto oblastech je také proveditelný systém CZT. Proto se můžete rozhodnout snížit minimální potřebu tepla v článcích, které jsou součástí oblasti DH; pro zajištění dostatečné potřeby tepla však můžete zvýšit minimální potřebu tepla v oblasti DH. Zde znovu spustíte výpočetní moduly s novými vstupními parametry.</p><ul><li> Přiřaďte relaci běhu (volitelně - zde jsme zvolili „Test Run 2“) a nastavte vstupní parametry ( <em><em>250 MWh / ha</em></em> pro min. Požadavek na teplo v hektarech a <em><em>35 GWh / rok</em></em> pro minimální požadavek v oblasti DH) .</li></ul><img alt="Fig. 5-0" src="../images/cm_dh_potential/5-0.png" title="Pojmenujte relaci běhu"/><ul><li> Stiskněte tlačítko „RUN CM“ vlevo dole.</li><li> Počkejte, až se proces dokončí.</li><li> Jako výstup jsou indikátory a diagramy zobrazeny v části „VÝSLEDKY“ na pravé straně panelu nástrojů. Ukazatele ukazují:<ul><li> celková potřeba tepla v <em><em>GWh</em></em> ve vybrané zóně,</li><li> celkový potenciál DH v <em><em>GWh</em></em> ve vybrané zóně,</li><li> podíl potenciálu CZT na celkové poptávce, který se získá dělením potenciálu CZT na celkovém požadavku na teplo v regionu.</li></ul></li></ul><img alt="Fig. 5-1" src="../images/cm_dh_potential/5-1.png" title="Záložka INDIKÁTORY"/><p> Dále jsou generovány také dva diagramy. První ukazuje potenciál DH v každé oblasti DH. Odpovídající štítky najdete také na mapě. Druhý diagram ilustruje celkový potenciál DH ve srovnání s celkovou potřebou tepla ve vybrané oblasti.</p><img alt="Fig. 5-2" src="../images/cm_dh_potential/5-2.png" title="Karta GRAFIKA"/><ul><li> Na plátno je také přidána nová vrstva zobrazující oblasti DH. Tato vrstva je přidána do seznamu vrstev v kategorii „Modul výpočtu“. Název relace běhu odlišuje výstupy tohoto běhu od ostatních.</li></ul><img alt="Fig. 5-3" src="../images/cm_dh_potential/5-3.png" title="Vrstvy modulu výpočtu"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Jak citovat</h2><p> Mostafa Fallahnejad, v Hotmaps-Wiki, CM-District-heating-potential-areas: user-defined-thresholds (duben 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autoři a recenzenti</h2><p> Tuto stránku napsal Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Tuto stránku zkontroloval Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Mezinárodní licence Creative Commons Attribution 4.0</p><p> Tato práce podléhá licenci na základě mezinárodní licence Creative Commons CC BY 4.0.</p><p> SPDX-identifikátor licence: CC-BY-4.0</p><p> Text licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Potvrzení</h2><p> Rádi bychom <a href="https://www.hotmaps-project.eu">vyjádřili</a> své nejhlubší uznání projektu Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Grant Agreement number 723677), který poskytl finanční prostředky na provedení tohoto šetření.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-District-heating-potential-areas-user-defined-thresholds) (original) [Bulgarian](../bg/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup>  [Danish](../da/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [German](../de/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Greek](../el/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Spanish](../es/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Estonian](../et/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Finnish](../fi/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [French](../fr/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Irish](../ga/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Croatian](../hr/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Hungarian](../hu/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Italian](../it/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Lithuanian](../lt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Latvian](../lv/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Maltese](../mt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Dutch](../nl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Polish](../pl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Romanian](../ro/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Slovak](../sk/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Slovenian](../sl/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> [Swedish](../sv/CM-District-heating-potential-areas-user-defined-thresholds)<sup>\*</sup> 

<sup>\*</sup> machine translated