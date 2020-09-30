<h1><a class="anchor" id="cm-vehicle-stock-at-nuts-2-level" href="#cm-vehicle-stock-at-nuts-2-level"><i class="fa fa-link"></i></a>CM Автомобилен склад на ниво NUTS 2</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Съдържание</h2><ul><li> <a href="#in-a-glance">С един поглед</a></li><li> <a href="#introduction">Въведение</a></li><li> <a href="#inputs-and-outputs">Входове и изходи</a></li><li> <a href="#method">Метод</a></li><li> <a href="#github-repository-of-this-calculation-module">Хранилище на GitHub на този модул за изчисление</a></li><li> <a href="#sample-run">Пробен старт</a></li><li> <a href="#references">Препратки</a></li><li> <a href="#how-to-cite">Как да цитирам</a></li><li> <a href="#authors-and-reviewers">Автори и рецензенти</a></li><li> <a href="#license">Разрешително</a></li><li> <a href="#acknowledgement">Признание</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> С един поглед</h2><p> Този изчислителен модул демонстрира профила на складовите наличности на ниво NUTS 2 от 1990 г. до 2030 г. въз основа на обичайния сценарий. Наборът от данни може да бъде намерен и в хранилищата за набори от данни на Hotmaps. Илюстрираните числа на ниво NUTS 2 бяха екстраполирани въз основа на стойностите на данните от NUTS 0. Точките от исторически данни бяха екстраполирани въз основа на бъдещи тенденции за избрани показатели, извлечени от референтния сценарий PRIMES – TREMOVE EU 2016.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Въведение</h2><p> Този модул за изчисление демонстрира профила на наличностите на превозното средство в ниво NUTS 2 до 2030 г. въз основа на обичайния сценарий. Наборът от данни може да бъде намерен и в хранилището на Hotmaps. Илюстрираните числа на ниво NUTS 2 бяха екстраполирани въз основа на стойностите на данните от NUTS 0. Точките от исторически данни бяха екстраполирани въз основа на бъдещи тенденции за избрани показатели, извлечени от референтния сценарий PRIMES – TREMOVE EU 2016 <a href="#references">[1]</a> .</p><p> Модулът за изчисление може да се изпълнява само на ниво NUTS 2.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Входове и изходи</h2><p> <strong>Входове</strong> : Този CM не изисква входен параметър от потребителя. Потребителят трябва да избере само един или няколко NUTS 2 региона.</p><p> <strong>Изходи</strong> :</p><ul><li> Индикатори:<ul><li> Запас от превозни средства през първата година от периода</li><li> Запас от превозни средства през последната година от периода</li></ul></li><li> Графика:<ul><li> Изобразена е една стълбовидна диаграма, която показва статуите на запасите от превозни средства през различни години.</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="methodology" href="#methodology"><i class="fa fa-link"></i></a> Методология</h2><p> Данните NUTS2 (2006) са резултат от пространствена интерполация на данните за запасите от превозни средства на ниво NUT0, като се използват данните NUTS2 за броя на превозните средства и БВП на ниво NUTS2 като прокси. Освен това оригиналната 5-годишна резолюция на <a href="https://gitlab.com/hotmaps/transport/nuts0">данните на ниво NUTS0</a> е интерполирана с годишна резолюция. Резултатите са показани под формата на индикатори и графика.</p><p> <strong>Трябва да се отбележи, че в случай на избор на два или повече региона се представя обобщена стойност. Освен това трябва да се отбележи, че данните са налични за различни периоди в зависимост от региона NUTS 2 (например единият регион от 1999 до 2030 г., а другият от 1995 до 2030 г.) Следователно, в случай на избор на два или повече региона, стойностите от съставящите региони също трябва да бъдат взети предвид от потребителя.</strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Хранилище на GitHub на този модул за изчисление</h2><p> <a href="https://github.com/HotMaps/vehicle_stock/tree/develop">Тук</a> ще получите най-новата разработка за този модул за изчисление.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Пробен старт</h2><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/1.png"/><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/2.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Препратки</h2><p> [1] Европейска комисия, „Референтен сценарий на ЕС 2016 г.“ [Онлайн]. Налично: https://data.europa.eu/euodp/data/dataset/energy-modelling.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Как да цитирам</h2><p> Mostafa Fallahnejad, в Hotmaps-Wiki, CM-Vehicle-stock-at-NUTS-2-level (септември 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Автори и рецензенти</h2><p> Тази страница е написана от Мостафа Фалахнежад ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> Page Тази страница е прегледана от Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Разрешително</h2><p> Copyright © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 International License</p><p> Това произведение е лицензирано под Creative Commons CC BY 4.0 International License.</p><p> Идентификатор на SPDX-лиценз: CC-BY-4.0</p><p> Лиценз-текст: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Признание</h2><p> Бихме искали да <a href="https://www.hotmaps-project.eu">изразим</a> най-дълбоката си благодарност към проекта „Хоризонти 2020“ на „Хоризонт 2020 <a href="https://www.hotmaps-project.eu">“</a> (Споразумение за безвъзмездна помощ № 723677), който осигури финансирането за извършване на настоящото разследване.</p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Vehicle-stock-at-NUTS-2-level) (original)  [Czech](../cs/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Danish](../da/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [German](../de/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Greek](../el/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Spanish](../es/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Estonian](../et/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Finnish](../fi/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [French](../fr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Irish](../ga/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Croatian](../hr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Hungarian](../hu/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Italian](../it/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Lithuanian](../lt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Latvian](../lv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Maltese](../mt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Dutch](../nl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Polish](../pl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Romanian](../ro/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovak](../sk/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovenian](../sl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Swedish](../sv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> 

<sup>\*</sup> machine translated