<h1><a class="anchor" id="concept-for-using-hotmaps-for-district-cooling" href="#concept-for-using-hotmaps-for-district-cooling"><i class="fa fa-link"></i></a>Концепция за използване на Hotmaps за централно охлаждане</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Съдържание</h2><ul><li> <a href="#in-a-glance">С един поглед</a></li><li> <a href="#introduction">Въведение</a></li><li> <a href="#method">Метод</a><ul><li> <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database">Използване на картата на плътността на охлаждане по подразбиране от базата данни Hotmaps</a></li><li> <a href="#method_use-of-the-cm-scale-heat-and-cool-density-maps-to-adapt-the-default-map">Използване на CM - Scale карти за топлина и хладна плътност за адаптиране на картата по подразбиране</a></li><li> <a href="#method_create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules">Създайте индивидуална карта на плътността на охлаждане отдолу нагоре, като използвате данни и модули Hotmaps</a></li><li> <a href="#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">Използване на CM - потенциални зони за централно отопление: дефинирани от потребителя прагове за идентифициране на потенциални зони за централно охлаждане</a></li></ul></li><li> <a href="#references">Препратки</a></li><li> <a href="#how-to-cite">Как да цитирам</a></li><li> <a href="#authors-and-reviewers">Автори и рецензенти</a></li><li> <a href="#license">Разрешително</a></li><li> <a href="#acknowledgement">Признание</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> С един поглед</h2><p> Тази страница има за цел да покаже как да приложите инструментариума Hotmaps за извършване на планиране на охлаждането. Пилотната зона на община Олборг се приема като учебен случай, тъй като този град работи за планиране на районното охлаждане. Потенциалното приложение на базата данни Hotmaps и инструментариумът се демонстрира чрез показване на използването на различни набори от данни и модули за изчисляване, за да се изследва потребността от охлаждане и потенциала за централно охлаждане в града.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Въведение</h2><p> Базата данни и инструментариумът Hotmaps могат да се използват за планиране на охлаждането по следния начин:</p><ul><li> Използвайте картата на плътността на потреблението по подразбиране за анализ на потенциалите за централно охлаждане</li><li> Използвайте CM - Scale топлинни и хладни карти на плътността, за да увеличите / намалите потребността от охлаждане в слоя по подразбиране, за да се поберат други оценки</li><li> Използвайте свои собствени данни относно сградния фонд в областта на анализа, заедно с данните за специфичните нужди за охлаждане по типове сгради от базата данни Hotmaps и модула за изчисление CM - Персонализирани карти на брутната подова площ и плътността на търсенето на топлина, за да създадете охлаждане отдолу нагоре карта на плътността за по-нататъшно използване</li><li> Използвайте CM - потенциални зони за централно отопление: дефинирани от потребителя прагове, за да идентифицирате зони, потенциално интересни за централно охлаждане</li></ul><p> Тези различни стъпки са обяснени подробно в следващите раздели. Освен това те са илюстрирани на примера на община Олборг.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Метод</h2><h3><a class="anchor" id="use-of-the-default-cooling-density-map-from-the-hotmaps-database" href="#use-of-the-default-cooling-density-map-from-the-hotmaps-database"><i class="fa fa-link"></i></a> Използване на картата на плътността на охлаждане по подразбиране от базата данни Hotmaps</h3><p> Базата данни Hotmaps предоставя карта на плътността на охлаждане за цели страни от ЕС28 на ниво 100 х 100 m. Този растерен слой се съдържа в онлайн <a href="https://www.hotmaps.eu">кутията с инструменти Hotmaps,</a> както и в хранилището за данни на gitlab. По-нататък е обяснено как да се подготви картата за използване в CM - потенциални зони за централно отопление: дефинирани от потребителя прагове.</p><h4><a class="anchor" id="create-an-account-for-the-hotmaps-toolbox." href="#create-an-account-for-the-hotmaps-toolbox."><i class="fa fa-link"></i></a> Създайте акаунт за инструментариума Hotmaps.</h4><p> Можете да намерите описание на процедурата за това на следния <a href="/en/Introduction-to-user-interface">линк</a> .</p><h4><a class="anchor" id="download-a-selection-of-the-default-cooling-density-map-from-the-hotmaps-database" href="#download-a-selection-of-the-default-cooling-density-map-from-the-hotmaps-database"><i class="fa fa-link"></i></a> Изтеглете селекция от картата на плътността на охлаждане по подразбиране от базата данни Hotmaps</h4><p> За да изтеглите картата на плътността на охлаждане (или селекция от картата) като растерния файл и да я запазите на вашия компютър, изпълнете следните стъпки:</p><ul><li> Увеличете до местоположението, което искате да анализирате (например Олборг).</li><li> Щракнете върху ограничителното поле, което съдържа интересуващата област (уверете се, че оставате в скалата „LAU2“), или изберете персонализирана област, като изчертаете границите на местоположението (уверете се, че оставате в скалата „Хектар“). В този случай нарисувайте границите около интересуващата област с помощта на инструмента за рисуване:<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> можете да избирате между правоъгълна, кръгла форма или многоъгълник. След това кликнете върху нарисуваното ограничително поле, за да изберете областта.</li><li> Изберете категорията „Обща плътност на охлаждане“ в левия панел под „Слоеве“.</li><li> Изтеглете картата на плътността на охлаждане като растерния файл и я запазете на вашия компютър за текущо избраната област, като щракнете върху символа „Изтегляне на избора на слой“<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/logo_download_selection_1.jpg" width="20"/> под слоя „Обща плътност на охлаждане“.</li></ul><h4><a class="anchor" id="upload-the-selected-cooling-demand-density-map-to-your-private-account" href="#upload-the-selected-cooling-demand-density-map-to-your-private-account"><i class="fa fa-link"></i></a> Качете избраната карта за плътност на охлаждане в личния си акаунт</h4><p> За да качите данни за търсенето на охлаждане в инструментариума Hotmaps, изпълнете следните стъпки:</p><ul><li> Премахнете избора на всички слоеве в левия панел.</li><li> Влезте в своя потребителски акаунт и след това кликнете върху бутона „акаунт“.</li><li> Кликнете върху „Избор на файлове“ в долния десен ъгъл на прозореца на акаунта и продължете към папката за съхранение, за да качите вашите файлове.</li><li> Изберете растерния файл за „Cooling Density Total“, който сте изтеглили по-горе (например „cool_tot_curr_density.tif“). Изберете типа на растерния файл „(Сграда) Обща плътност на топлината“, въпреки че типът на слоя всъщност е „Обща плътност на охлаждането“. По този начин плътността на охлаждане може да се използва в изчислителните модули за изследване и оценка на потенциала за централно охлаждане.</li><li> Каченият слой ще се появи в горната част на панела от левия слой и може да се използва като вградени слоеве.</li></ul><p> Сега можете да използвате персонализираната карта на плътността на потребностите от охлаждане отдолу-нагоре за планиране на централното охлаждане, като използвате <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Потенциални зони за централно отопление: дефинирани от потребителя прагове,</a> както е описано в <a href="/en/District-Cooling#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">четвъртата стъпка</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="use-of-the-cm---scale-heat-and-cool-density-maps-to-adapt-the-default-map" href="#use-of-the-cm---scale-heat-and-cool-density-maps-to-adapt-the-default-map"><i class="fa fa-link"></i></a> Използване на CM - Scale карти за топлина и хладна плътност за адаптиране на картата по подразбиране</h3><p> Този модул мащабира слоя по подразбиране с даден фактор. Целта е да се осигури възможност за генериране на слой с плътност на топлина или студ с всякаква обща стойност. Например, ако искате да увеличите търсенето на охлаждане с 20%.</p><p> За да мащабирате и изтеглите слой с карта на плътността на охлаждане, който да се използва за CM - потенциални зони за централно отопление: дефинирани от потребителя прагове, изпълнете следните стъпки:</p><ul><li> Увеличете до местоположението, което искате да анализирате (например Олборг).</li><li> Щракнете върху ограничителното поле, което съдържа интересуващата област. Уверете се, че оставате на скалата „LAU2“.</li><li> Или изберете персонализирана област, като изчертаете границите на местоположението. Уверете се, че оставате на скалата &quot;Хектар&quot;.</li><li> Начертайте границите около зоната на интерес с помощта на инструмент за рисуване<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> . Можете да избирате между правоъгълна, кръгла форма или многолиния.</li><li> Щракнете върху нарисуваното ограничително поле, за да изберете областта.</li><li> В левия панел в кутията с инструменти под „Слоеве“ изберете раздела „Модули за изчисление“</li><li> Изберете „CM - Мащабиране на топлинни и хладни карти на плътността“.</li><li> Задайте входните параметри според вашите нужди: Например „1.2“, за да увеличите нуждите за охлаждане с 20%.</li><li> Въведете име за изчислението, което ще извършите (можете да използвате произволно заглавие).</li><li> Стартирайте CM, като щракнете върху бутона „RUN CM“.</li><li> Изчислението дава нов „слой с плътност на охлаждане“ с 20% по-висока нужда от охлаждане, което може да се намери в раздела за слоеве вляво в долната част на всички налични слоеве.</li><li> Изтеглете получения слой (и го преименувайте, ако е необходимо).</li><li> Качете мащабираните данни за търсенето на охлаждане в инструментариума Hotmaps, както е описано <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database_upload-the-selected-cooling-demand-density-map-to-your-private-account">по</a> - <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database_upload-the-selected-cooling-demand-density-map-to-your-private-account">горе</a> .</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules" href="#create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules"><i class="fa fa-link"></i></a> Създайте индивидуална карта на плътността на охлаждане отдолу нагоре, като използвате данни и модули Hotmaps</h3><p> За да разработите персонализирана карта на плътността на охлаждане отдолу-нагоре въз основа на местни данни, изпълнете следните стъпки:</p><ul><li> Получавайте местни данни за сградния фонд (включително местоположение / координати, площ на сградата, тип сграда, година на строителство или период).</li><li> Изтеглете данните на Hotmaps Building Stock за крайното потребление на енергия за отопление на помещенията (SH), охлаждане на помещението (SC) и битова гореща вода (БГВ) за всеки EU28 от <a href="https://gitlab.com/hotmaps/building-stock">тук</a></li><li> Намерете държавата, с която работите, или използвайте средната стойност за ЕС28 в данните на Hotmaps Building Stock.</li><li> Класифицирайте данните за местния си сграден фонд към подсекторите и възрастовия клас на данните на Hotmaps Building Stock.</li><li> Свържете крайното потребление на енергия за охлаждане за всеки подсектор и възрастов клас на сградата с вашите местни данни за запасите от сгради за всяка сграда и изчислете крайното потребление на енергия за охлаждане.</li><li> Преобразувайте електронната си таблица в .csv или .xls, за да създадете шейп файл .shp въз основа на координацията на всяка сграда и крайното потребление на енергия за охлаждане.</li><li> Създайте карта за плътност на охлаждане отдолу нагоре .tif, като използвате персонализирани карти за топлина и брутна площ на подови площи на Hotmaps CM. Описание може да се намери в Wiki страницата <a href="/en/CM-Customized-heat-and-floor-area-density-maps">CM - Персонализирани карти на топлината и брутната площ на подови площи</a> , която също съдържа <a href="https://github.com/HotMaps/customized_h_fa_dm">връзката към кода</a> .</li><li> Качете разработения слой, както бихте направили за избор на слой по подразбиране, както е описано в предишния раздел] (/ en / District-охлаждане_Upload-the-охлаждане-търсене-плътност-map-to-your-private-акаунт).</li></ul><p> Сега можете да използвате персонализираната карта на плътността на потребностите от охлаждане отдолу-нагоре за планиране на централното охлаждане, като използвате <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Потенциални зони за централно отопление: дефинирани от потребителя прагове,</a> както е описано в <a href="/en/District-Cooling#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">четвъртата стъпка</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="use-of-the-cm-–-district-heating-potential-areas--user-defined-thresholds-to-identify-potential-district-cooling-areas" href="#use-of-the-cm-–-district-heating-potential-areas--user-defined-thresholds-to-identify-potential-district-cooling-areas"><i class="fa fa-link"></i></a> Използване на CM - потенциални зони за централно отопление: дефинирани от потребителя прагове за идентифициране на потенциални зони за централно охлаждане</h3><p> Модулът за изчисляване <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Потенциални зони за централно отопление: дефинирани от потребителя прагове</a> генерира файл с форми на потенциални зони за централно охлаждане въз основа на следните входни данни: карта на плътността на охлаждане с разделителна способност 1 хектар (ха), праг на охлаждане за нуждите за охлаждане в всяка клетка от картата на плътността на охлаждане и праг на охлаждащо търсене за групи свързани клетки с потребност от охлаждане над предишния праг (= кохерентна площ).</p><p> За да изчислите и сравните различни сценарии на потенциални зони за централно охлаждане въз основа на двете прагови стойности, използвани в модула, изпълнете следните стъпки:</p><ul><li> Увеличете до мястото, което искате да изследвате (например Олборг).</li><li> Начертайте и изберете ограничаващо поле, което съдържа интересуващата област.</li><li> Забележка Уверете се, че сте в мащаба „Хектар“, за да можете да използвате качените си слоеве.</li><li> Начертайте границите около зоната на интерес с помощта на инструмента за рисуване<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> (правоъгълна, форма на кръг или многоъгълник).</li><li> Щракнете върху нарисуваното ограничително поле, за да изберете областта.</li><li> В левия панел в кутията с инструменти под „Слоеве“ изберете раздела „Модули за изчисление“</li><li> Изберете „CM - Потенциални зони за централно отопление: дефинирани от потребителя прагове“.</li><li> Задайте входните параметри според избраните стойности за изследване и достъп до потенциалите за централно охлаждане. Прагът на плътност трябва да бъде по-нисък за централното охлаждане в сравнение с централното отопление, предвид естеството на централното охлаждане. Параметрите могат да бъдат зададени например на:<ul><li> Мин. потребление на топлина в хектар („Минимално потребление на охлаждане в хектар“): в диапазона между 75 и 15 MWh / ha / год.</li><li> Мин. потребление на топлина в зона за отопление („Минимална потребност от охлаждане в област с постоянен ток“): в диапазона между 10 до 1 GWh / годишно.</li></ul></li><li> В INPUT TYPE SELECTION изберете слоя за плътност на охлаждане, който сте качили и искате да анализирате.</li><li> Въведете име за изчислението, което ще извършите (можете да използвате произволно заглавие).</li><li> Стартирайте CM, като щракнете върху бутона „RUN CM“.</li><li> Когато изчислението е готово, можете да намерите изчислените показатели в раздела за резултати в десния панел на кутията с инструменти. Това дава 3 резултата:<ul><li> Общо потребление на топлина (студ) в GWh в рамките на избраната зона</li><li> Общ потенциал за централно отопление (охлаждане) в GWh в рамките на избраната зона</li><li> Потенциален дял на централното отопление (охлаждане) от общото търсене в избраната зона</li></ul></li><li> Изчислението също така дава 3 нови слоя:<ul><li> DC области - растер, показващ потенциалните DC области,</li><li> Карта на плътността на охлаждане в потенциални DC области - растер, изрязване на входната карта на плътността на охлаждане въз основа на потенциалните DC области</li><li> DC области и техните потенциали - шейпфайл, полигони на потенциалните DC области.</li></ul></li><li> Те могат да бъдат намерени в раздела за слоеве в левия панел (трябва да затворите модулите за изчисление с „X“ и да преминете към „Layers“) в долната част на всички налични слоеве. Направете екранна снимка на тези слоеве и я поставете тук.</li></ul><img src="/en/District-Cooling/DCooling_2-min.png"/> Фигура 1: Идентифицирана зона за потенциално районно охлаждане в центъра на града на община Олборг<p> <strong>ВАЖНА ЗАБЕЛЕЖКА</strong></p><p> За да видите тези изходни слоеве, може да се наложи да премахнете избора от останалите слоеве. В случай, че все още не ги виждате, опитайте да намалите мащаба, тъй като понякога има грешка във визуализацията. Можете също да ги изтеглите и да ги презаредите с помощта на личния си акаунт (трябва да влезете преди това), той винаги решава проблема. Или можете да ги заредите във вашата избрана ГИС програма.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Препратки</h2><p> Pezzutto et. ал., 2019: <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">D2.3 Доклад WP2 - Отворен набор от данни за ЕС28</a></p><p> Pezzutto, Croce, Zambotti, 2019. <a href="https://gitlab.com/hotmaps/building-stock">Анализ на строителния фонд “- разработен по D.2.3 WP2</a></p><p> Mostafa Fallahnejad, 2020. <a href="https://github.com/HotMaps/customized_h_fa_dm">Самостоятелен CM: Персонализирани карти на топлината и брутната площ на плътността на пода</a></p><p> Mostafa Fallahnejad, в Hotmaps-Wiki, CM-Персонализирани карти за топлина и плътност на брутната подова площ (април 2019 г.).</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Как да цитирам</h2><p> Anders M. Odgaard, в Hotmaps-Wiki, Концепция за използване на Hotmaps за централно охлаждане (септември 2020 г.)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Автори и рецензенти</h2><p> Тази страница е написана от Anders M. Odgaard <strong><a href="https://planenergi.dk/">Planenergie</a></strong> .</p><p> ☑ Тази страница е прегледана от Marcus Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Разрешително</h2><p> Copyright © 2016-2020: Андерс М. Одгаард</p><p> Creative Commons Attribution 4.0 International License</p><p> Това произведение е лицензирано под Creative Commons CC BY 4.0 International License.</p><p> Идентификатор на SPDX-лиценз: CC-BY-4.0</p><p> Лиценз-текст: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Признание</h2><p> Бихме искали да <a href="https://www.hotmaps-project.eu">изразим</a> най-дълбоката си благодарност към проекта „Хоризонти 2020“ на „Хоризонт 2020 <a href="https://www.hotmaps-project.eu">“</a> (Споразумение за безвъзмездна помощ № 723677), който осигури финансирането за извършване на настоящото разследване.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/District-Cooling) (original)  [Czech](../cs/District-Cooling)<sup>\*</sup> [Danish](../da/District-Cooling)<sup>\*</sup> [German](../de/District-Cooling)<sup>\*</sup> [Greek](../el/District-Cooling)<sup>\*</sup> [Spanish](../es/District-Cooling)<sup>\*</sup> [Estonian](../et/District-Cooling)<sup>\*</sup> [Finnish](../fi/District-Cooling)<sup>\*</sup> [French](../fr/District-Cooling)<sup>\*</sup> [Irish](../ga/District-Cooling)<sup>\*</sup> [Croatian](../hr/District-Cooling)<sup>\*</sup> [Hungarian](../hu/District-Cooling)<sup>\*</sup> [Italian](../it/District-Cooling)<sup>\*</sup> [Lithuanian](../lt/District-Cooling)<sup>\*</sup> [Latvian](../lv/District-Cooling)<sup>\*</sup> [Maltese](../mt/District-Cooling)<sup>\*</sup> [Dutch](../nl/District-Cooling)<sup>\*</sup> [Polish](../pl/District-Cooling)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/District-Cooling)<sup>\*</sup> [Romanian](../ro/District-Cooling)<sup>\*</sup> [Slovak](../sk/District-Cooling)<sup>\*</sup> [Slovenian](../sl/District-Cooling)<sup>\*</sup> [Swedish](../sv/District-Cooling)<sup>\*</sup> 

<sup>\*</sup> machine translated