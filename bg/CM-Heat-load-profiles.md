<h1><a class="anchor" id="cm-heat-load-profiles" href="#cm-heat-load-profiles"><i class="fa fa-link"></i></a>CM Профили на топлинно натоварване</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Съдържание</h2><ul><li> <a href="#in-a-glance">С един поглед</a></li><li> <a href="#introduction">Въведение</a></li><li> <a href="#inputs-and-outputs">Входове и изходи</a><ul><li> <a href="#inputs-and-outputs_input-layers-and-parameters">Входни слоеве и параметри</a></li><li> <a href="#inputs-and-outputs_output">Изход</a></li></ul></li><li> <a href="#method">Метод</a><ul><li> <a href="#method_overview">Общ преглед</a></li><li> <a href="#method_details">Подробности</a></li><li> <a href="#method_implementation">Изпълнение</a></li></ul></li><li> <a href="#github-repository-of-this-calculation-module">Хранилище на GitHub на този модул за изчисление</a></li><li> <a href="#sample-run">Пробен старт</a></li><li> <a href="#how-to-cite">Как да цитирам</a></li><li> <a href="#authors-and-reviewers">Автори и рецензенти</a></li><li> <a href="#license">Разрешително</a></li><li> <a href="#acknowledgement">Признание</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> С един поглед</h2><p> Този модул генерира профили на натоварване на търсенето за отопление на помещенията и генериране на топла вода за избран регион. Той използва профили на натоварване по подразбиране за жилищния и висшия сектор на ниво NUTS2 и го мащабира до дадено търсене в тези сектори и осигурява профили на натоварване, разделени за отопление на помещенията и генериране на топла вода.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Въведение</h2><p> Hotmaps предоставя общи и специфични за годината профили на топлинно натоварване на ниво NUTS2. Потребителят може да пожелае да адаптира профилите по подразбиране въз основа на информацията, която има. Този изчислителен модул дава възможност за мащабиране на различни съставящи елементи на профилите нагоре или надолу и получаване на нов профил.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Входове и изходи</h2><h3><a class="anchor" id="input-layers-and-parameters" href="#input-layers-and-parameters"><i class="fa fa-link"></i></a> Входни слоеве и параметри</h3><p> Няколко слоя и профили се използват от набора от данни по подразбиране на Hotmaps:</p><ul><li> Жилищен сектор с топлинна плътност</li><li> Топлинна плътност нежилищен сектор</li><li> Брутна жилищна площ</li><li> Брутна жилищна площ</li><li> Индустриална база данни</li><li> Профили на натоварване за промишлеността</li><li> Товарни профили за отопление на жилища</li><li> Профили на натоварване за третично отопление</li><li> Заредете профили за битова топла вода за битови нужди</li><li> Заредете профили за третична битова гореща вода</li></ul><h3><a class="anchor" id="user-inputs" href="#user-inputs"><i class="fa fa-link"></i></a> Потребителски входове</h3><p> Потребителят трябва да предостави следните параметри:</p><ul><li> <strong>Коефициент за отопление</strong> на жилищата: Търсенето на отопление на жилищата се умножава по този фактор.</li><li> <strong>Третичен коефициент на отопление</strong> : Третичното отопление се умножава по този фактор.</li><li> <strong>Коефициент</strong> на топла вода за жилищни нужди: Търсенето на битова топла вода се умножава по този фактор.</li><li> <strong>Третичен коефициент на водоснабдяване</strong> : Третичното потребление на топла вода се умножава по този фактор.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="output" href="#output"><i class="fa fa-link"></i></a> Изход</h3><h4><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Индикатори</h4><ul><li> <strong>Търсене на топлина по промишленост</strong> : Годишно търсене на топлина по отрасли в избраната област.</li><li> <strong>Потребление на топлина от отопление на жилищата</strong> : Годишна топлина, необходима за отопление на жилища в избраната зона.</li><li> <strong>Потребление на топлина от</strong> топлоснабдяване на жилищата: Годишна топлина, необходима за топлоснабдяване на жилища в избрания район.</li><li> <strong>Потребление на топлина от отопление на третичен сектор</strong> : Годишна топлина, необходима за отопление на третичен сектор в избраната зона.</li><li> <strong>Потребление на топлина от</strong> топлоснабдяване на третичен сектор: Годишна топлина, необходима за топлоснабдяване на третичен сектор в избрания район.</li><li> <strong>Общо потребление на глава</strong> : Годишно общо <strong>потребление на</strong> топлина в избраната област.</li></ul><h4><a class="anchor" id="graphics" href="#graphics"><i class="fa fa-link"></i></a> Графика</h4><ul><li> <strong>Профили на потреблението на топлина</strong> : Графика, показваща горепосочените показатели през годината.</li></ul><p> Оста x представлява времето, а оста y показва мощността в MW. Може да е полезно да скриете определени сектори, за да виждате по-добре други. Това може да стане чрез двукратно щракване върху легендата.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Метод</h2><h3><a class="anchor" id="overview" href="#overview"><i class="fa fa-link"></i></a> Общ преглед</h3><p> Съответните профили на натоварване се присвояват на промишлени обекти, жилищни и третични сгради при избора на потребителя.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="details" href="#details"><i class="fa fa-link"></i></a> Подробности</h3><h4><a class="anchor" id="residential-warm-water-supply" href="#residential-warm-water-supply"><i class="fa fa-link"></i></a> Жилищно топло водоснабдяване</h4><p> Въз основа на брутната площ на жилищните сгради и техния ID на NUTS 0, използваната енергия за топло водоснабдяване се изчислява със следния списък. Използвайки NUTS 2 ID на избраната област, се присвоява профил на натоварване. Жилищното водоснабдяване се умножава по фактора за битово водоснабдяване, в случай че потребителят иска да коригира стойността.</p><p> <em>Специфична енергия на площ за топло водоснабдяване в жилищни сгради в различни страни</em></p><p> | Ядки0 ID | Захранване с топла вода в kWh / m² / a | | ------------- |: -------------: | | AT | 21,67 | | БЪДЕТЕ | 31,95 | | BG | 12,93 | | HR | 21.38 | | CY | 8.80 | | Чехия | 22,83 | | DK | 9,64 | | EE | 14.35 | | FI | 10.15 | | FR | 9,66 | | DE | 8.27 | | EL | 12.51 | | HU | 13,66 | | IE | 15.91 | | ИТ | 14.01 | | LV | 15,71 | | LT | 13.36 | | LU | 8.29 | | MT | 10,99 | | NL | 8.91 | | PL | 10.00 | | PT | 9.48 | | RO | 11.48 | | SK | 21.51 | | SI | 21,74 | | ES | 23.34 | | SE | 13.54 | | Великобритания | 49.03 |</p><h4><a class="anchor" id="residential-heating" href="#residential-heating"><i class="fa fa-link"></i></a> Жилищно отопление</h4><p> Използва се плътността на потреблението на топлина за жилищния сектор. Тъй като този набор от данни вече съдържа енергията, използвана за топла вода, от нея се изважда предишната изчислена енергия за топла вода. На базата на NUTS 2 ID се определя профил за отопление на жилища за всяка плочка от топлинната плътност в избора на потребителя. Жилищното отопление се умножава по коефициента на отопление на жилищата, в случай че потребителят иска да коригира стойността.</p><h4><a class="anchor" id="tertiary-warm-water-supply" href="#tertiary-warm-water-supply"><i class="fa fa-link"></i></a> Третично топло водоснабдяване</h4><p> Подобно на жилищното водоснабдяване с топла вода, необходимата енергия се изчислява с таблица. С NUTS 2 ID на определена област се задава профил на натоварване. Третичното захранване с топла вода се умножава с коефициента на третичното захранване с топла вода, в случай че потребителят иска да коригира стойността.</p><p> <em>Специфична енергия на площ за топло водоснабдяване във висши сгради в различни страни</em></p><p> | Ядки0 ID | Захранване с топла вода в kWh / m² / a | | ------------- |: -------------: | | AT | 6.57 | | БЪДЕТЕ | 13,88 | | BG | 15,88 | | HR | 9.42 | | CY | 6.26 | | Чехия | 9.18 | | DK | 8.03 | | EE | 14.13 | | FI | 10.52 | | FR | 9,57 | | DE | 3.05 | | EL | 6,99 | | HU | 9,51 | | IE | 10,87 | | ИТ | 5.62 | | LV | 7.16 | | LT | 10.46 | | LU | 7.20 | | MT | 10.45 | | NL | 6.89 | | PL | 9,55 | | PT | 21.47 | | RO | 13,85 | | SK | 8.49 | | SI | 27,73 | | ES | 12.44 | | SE | 19,62 | | Великобритания | 13.45 |</p><h4><a class="anchor" id="tertiary-heating" href="#tertiary-heating"><i class="fa fa-link"></i></a> Третично отопление</h4><p> Третичното отопление се изчислява подобно на отоплението в жилищата. Третичното отопление се умножава по коефициента на третичното отопление в случай, че потребителят иска да регулира стойността.</p><h4><a class="anchor" id="industrial-heat-demand" href="#industrial-heat-demand"><i class="fa fa-link"></i></a> Търсенето на промишлена топлина</h4><p> Търсенето на топлина от промишлеността се търси в индустриалната база данни и въз основа на NUTS 0 ID и подсектора се задава профил на натоварване.</p><h4><a class="anchor" id="summation" href="#summation"><i class="fa fa-link"></i></a> Сумиране</h4><p> Петте получени профила се агрегират по абсолютен начин за получаване на крайния профил.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="implementation" href="#implementation"><i class="fa fa-link"></i></a> Изпълнение</h3><h4><a class="anchor" id="load-profiles" href="#load-profiles"><i class="fa fa-link"></i></a> Заредете профили</h4><p> Споменатите профили на натоварване се състоят от 8760 точки, които представляват натоварването за всеки час от 365 дни. Допълнителна информация за <strong><a href="https://gitlab.com/hotmaps/load_profile">профилите</a></strong> на <strong><a href="https://gitlab.com/hotmaps/load_profile">натоварване можете да намерите тук.</a></strong> Всички профили на натоварване са нормализирани, така че интегралът да е равен на 1.</p><h4><a class="anchor" id="industrial-sites" href="#industrial-sites"><i class="fa fa-link"></i></a> Индустриални обекти</h4><p> Източниците на топлина са взети от <strong><a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">индустриалната база данни.</a></strong> Въз основа на излишната им топлина, NUTS 0 ID и индустриалния сектор се създава профил на натоварване, покриващ всеки час от годината за всеки обект.</p><h4><a class="anchor" id="heat-densities" href="#heat-densities"><i class="fa fa-link"></i></a> Плътности на топлината</h4><p> Плътността на потреблението на топлина в жилищния и нежилищния сектор са растерни файлове, които можете да намерите <strong><a href="https://gitlab.com/hotmaps/heat">тук.</a></strong></p><h4><a class="anchor" id="gross-floor-areas" href="#gross-floor-areas"><i class="fa fa-link"></i></a> Брутни подови площи</h4><p> Брутната жилищна площ и брутната нежилищна площ са растерни файлове, които можете да намерите <strong><a href="https://gitlab.com/hotmaps/gfa_res_curr_density">тук</a></strong> и <strong><a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">тук.</a></strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Хранилище на GitHub на този модул за изчисление</h2><p> <a href="https://github.com/HotMaps/load_profile_cm">Тук</a> ще получите най-новата разработка за този модул за изчисление.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Пробен старт</h2><p> Пробен старт в DK05.</p><figure><img alt="" src="../images/cm_load_profile/sample_run.PNG"/><figcaption><i></i></figcaption></figure><p> Пробен старт в DK05. Взема се предвид само избраната синя зона.</p><figure><img alt="" src="../images/cm_load_profile/profile.PNG"/><figcaption><i></i></figcaption></figure><p> Графика, показваща търсенето на топлина в различните сектори през годината.</p><p> Данните от тази графика могат да бъдат експортирани чрез натискане на бутона „ИЗНОС НА ГРАФИКИ“.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Как да цитирам</h2><p> Али Айдемир и Дейвид Шилинг, в Hotmaps Wiki, CM Профили на топлинно натоварване (септември 2020 г.)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Автори и рецензенти</h2><p> Тази страница е написана от Али Айдемир и Дейвид Шилинг ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> ☑ Тази страница е прегледана от Тобиас Флейтер ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Разрешително</h2><p> Copyright © 2016-2020: Али Айдемир и Дейвид Шилинг</p><p> Creative Commons Attribution 4.0 International License</p><p> Това произведение е лицензирано под Creative Commons CC BY 4.0 International License.</p><p> Идентификатор на SPDX-лиценз: CC-BY-4.0</p><p> Лиценз-текст: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Признание</h2><p> Бихме искали да <a href="https://www.hotmaps-project.eu">изразим</a> най-дълбоката си благодарност към проекта „Хоризонти 2020“ на „Хоризонт 2020 <a href="https://www.hotmaps-project.eu">“</a> (Споразумение за безвъзмездна помощ № 723677), който осигури финансирането за извършване на настоящото разследване.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Heat-load-profiles) (original)  [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup> [Estonian](../et/CM-Heat-load-profiles)<sup>\*</sup> [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup> [French](../fr/CM-Heat-load-profiles)<sup>\*</sup> [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup> [Latvian](../lv/CM-Heat-load-profiles)<sup>\*</sup> [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated