<h1><a class="anchor" id="layers-section-in-the-hotmaps-toolbox" href="#layers-section-in-the-hotmaps-toolbox"><i class="fa fa-link"></i></a>Раздел Слоеве в инструментариума Hotmaps</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Съдържание</h2><ul><li> <a href="#introduction">Въведение</a></li><li> <a href="#layers">Слоеве</a></li><li> <a href="#raster-layers">Растерни слоеве</a></li><li> <a href="#vector-layers">Векторни слоеве</a></li><li> <a href="#calculation-module-layers">Слоеве на изчислителния модул</a></li><li> <a href="#how-to-cite">Как да цитирам</a></li><li> <a href="#authors-and-reviewers">Автори и рецензенти</a></li><li> <a href="#license">Разрешително</a></li><li> <a href="#acknowledgement">Признание</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Въведение</h2><p> Чрез натискане на<img alt="бутон_слоеве" src="../images/general_tool_functionalities_and_structure/layers_button.PNG"/> Бутон странична лента с различни видове слоеве се показва вляво на екрана.</p><p><img alt="слоеве_гиф" src="../images/general_tool_functionalities_and_structure/layers.gif"/></p><p> <strong>Всеки слой има набор от инструменти, както е показано по-долу</strong></p><p><img alt="слоеве_инструменти.png" src="../images/general_tool_functionalities_and_structure/layers_tools.png"/></p><ol><li> Показва раздела за символика на слоя (легенда)</li><li> Показва раздела с информация (основна връзка към хранилището на GitLab, силно се препоръчва да се търси повече информация за данните в <a href="https://gitlab.com/hotmaps">хранилището</a> на <a href="https://gitlab.com/hotmaps">GitLab</a> )</li><li> Изтеглете набора от данни по подразбиране</li><li> Изтеглете слой за избор на слой</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="layers" href="#layers"><i class="fa fa-link"></i></a> Слоеве</h2><p> Има <a href="https://www.gislounge.com/geodatabases-explored-vector-and-raster-data">две категории слоеве</a> :</p><ol><li> Векторни слоеве</li><li> Растерни слоеве</li></ol><p> Следните слоеве могат да бъдат намерени и визуализирани (можете да видите също легендата, както и раздела с информация за всеки слой):</p><p><img alt="sidebar_layer.png" src="../images/general_tool_functionalities_and_structure/all_layers.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="raster-layers" href="#raster-layers"><i class="fa fa-link"></i></a> Растерни слоеве</h2><p> Визуализират се следните растерни слоеве:</p><ol><li><p> <strong>17 x Сградни слоеве:</strong></p><ul><li> Карта на плътността на топлината (общо / жилищна / нежилищна)</li><li> Карта на плътността на охлаждане (общо / жилищно / нежилищно)</li><li> Брутна площ (обща / жилищна / нежилищна)</li><li> Обеми на сгради (общо / жилищни / нежилищни)</li></ul></li><li><p> <strong>1 x Населен слой</strong></p><ul><li> Общо население</li></ul></li><li><p> <strong>3 x Възобновяеми енергийни източници Потенциални слоеве:</strong></p><ul><li> Слънчева радиация върху отпечатъка на сградата</li><li> Потенциал на вятъра на 50м</li><li> Горски остатъци</li></ul></li><li><p> <strong>5 x климатични слоя:</strong></p><ul><li> Температура</li><li> Дни на степента на охлаждане</li><li> Дни на степента на отопление</li><li> Слънчева радиация</li><li> Скоростта на вятъра</li></ul></li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="vector-layers" href="#vector-layers"><i class="fa fa-link"></i></a> Векторни слоеве</h2><p> Визуализират се следните векторни слоеве:</p><ol><li><p> <strong>4x индустриални слоя:</strong></p><ul><li> Промишлени емисии</li><li> Индустриална излишна топлина</li><li> Име на компанията в индустриалния обект</li><li> Подсектор на индустриален обект</li></ul></li><li><p> <strong>6 x Възобновяеми енергийни източници Потенциални слоеве:</strong></p><ul><li> Пречиствателни станции за отпадъчни води Мощност</li><li> Капацитет на пречиствателните станции за отпадъчни води</li><li> Селскостопански остатъци</li><li> Отпадъчни води от добитъка</li><li> Геотермална потенциална топлопроводимост</li><li> Общински твърди отпадъци</li></ul></li><li><p> <strong>1 x Електрически слой:</strong></p><ul><li> Електричество CO2 Емисии Средна държава</li></ul></li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="calculation-module-layers" href="#calculation-module-layers"><i class="fa fa-link"></i></a> Слоеве на изчислителния модул</h2><p> Някои модули за изчисление генерират слой с изчислените резултати, като <a href="/en/CM-Scale-heat-and-cool-density-maps">CM - Scale Heat и Cool Density Maps</a> например. Когато тези CM се изпълняват, относителният слой се появява в лявата част на екрана, в секцията за слоя, в самото дъно. След това слоят може да бъде избран и използван при по-нататъшни изчисления. Както за всеки друг слой, няколко бутона под заглавието на слоя позволяват да се покаже символиката на слоя, налична информация за слоя, изтегляне на набора от данни за слоя и изтегляне на слоя като растов файл.</p><img src="/en/Layers-section-in-the-Hotmaps-toolbox/CM-Layer.JPG"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Как да цитирам</h2><p> Jeton Hasani, в Hotmaps-Wiki, Layers-section-in-the-Hotmaps-toolbox (април 2019 г.)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Автори и рецензенти</h2><p> Тази страница е написана от Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Тази страница е прегледана от Мостафа Фалахнежад <strong><a href="https://eeg.tuwien.ac.at/">ЕЕГ - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Разрешително</h2><p> Copyright © 2016-2020: Jeton Hasani</p><p> Creative Commons Attribution 4.0 International License</p><p> Това произведение е лицензирано под Creative Commons CC BY 4.0 International License.</p><p> Идентификатор на SPDX-лиценз: CC-BY-4.0</p><p> Лиценз-текст: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Признание</h2><p> Бихме искали да <a href="https://www.hotmaps-project.eu">изразим</a> най-дълбоката си благодарност към проекта „Хоризонти 2020“ на „Хоризонт 2020 <a href="https://www.hotmaps-project.eu">“</a> (Споразумение за безвъзмездна помощ № 723677), който осигури финансирането за извършване на настоящото разследване.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Layers-section-in-the-Hotmaps-toolbox) (original)  [Czech](../cs/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Danish](../da/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [German](../de/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Greek](../el/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Spanish](../es/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Estonian](../et/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Finnish](../fi/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [French](../fr/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Irish](../ga/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Croatian](../hr/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Hungarian](../hu/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Italian](../it/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Lithuanian](../lt/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Latvian](../lv/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Maltese](../mt/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Dutch](../nl/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Polish](../pl/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Romanian](../ro/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Slovak](../sk/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Slovenian](../sl/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> [Swedish](../sv/Layers-section-in-the-Hotmaps-toolbox)<sup>\*</sup> 

<sup>\*</sup> machine translated