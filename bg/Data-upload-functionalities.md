<h1><a class="anchor" id="data-upload-functionalities" href="#data-upload-functionalities"><i class="fa fa-link"></i></a>Функции за качване на данни</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Съдържание</h2><ul><li> <a href="#introduction">Въведение</a></li><li> <a href="#how-to-upload-a-layer-with-custom-data">Как да качите слой с персонализирани данни</a></li><li> <a href="#how-to-display-an-uploaded-layer">Как да покажа качен слой</a></li><li> <a href="#offline-mode">Офлайн режим</a></li><li> <a href="#data-security-and-privacy">Сигурност на данните и поверителност</a></li><li> <a href="#how-to-cite">Как да цитирам</a></li><li> <a href="#authors-and-reviewers">Автори и рецензенти</a></li><li> <a href="#license">Разрешително</a></li><li> <a href="#acknowledgement">Признание</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Въведение</h2><p> Платформата ви позволява да качвате персонализирани данни от вашия компютър към вашия потребителски акаунт в Hotmaps. Тази част е тясно свързана с функцията за <a href="Data-export-functionalities">експортиране,</a> тъй като крайната цел на тези две функции е да експортира данни, да ги редактира и визуализира в кутията с инструменти по-късно, като импортира тези данни обратно. Моля, обърнете внимание, че качените от вас данни могат да бъдат визуализирани и определен брой от тях могат да бъдат използвани в модулите за изчисление.</p><p> Тази операция <strong>изисква потребителски акаунт</strong> . Процесите на регистрация и влизане са обяснени на следната страница: <a href="Introduction-to-user-interface#Connect">Потребителски акаунт</a> .</p><p> Качените данни трябва да спазват форматите на данните и проекцията, дефинирани от инструментариума. За да сте сигурни, че качвате правилен набор от данни, винаги можете да изтеглите примерни данни от кутията с инструменти за малка площ и впоследствие да ги актуализирате и попълните със собствени данни. В случай на CSV файлове, уверете се, че запазвате всички колони, разделител на колони и типове данни към изтеглената проба. ** Предлагаме да отворите CSV файлове в текстов редактор, а не в MS Excel, за да видите всички символи вътре в него &quot;. По отношение на качването на растерни файлове трябва да се имат предвид следните аспекти:</p><ol><li> Растерът трябва да има координатна система на <strong>ETRS89-удължен / LAEA Европа - EPSG: 3035</strong> ;</li><li> Координатата на растерния произход (горния ляв ъгъл на растра) трябва да бъде множител от 100, например (4334900, 3019700);</li><li> Разделителната способност на растерната карта трябва да бъде 100x100m;</li><li> Растерът трябва да се отнася до местоположение в Европа.</li><li> обърнете внимание на мерните единици от оригиналния набор от данни, показани на кутията с инструменти. Например картата на плътността на топлината има мерната единица <em>MWh / ha</em> и ако каченият ви слой има друга единица, може да срещнете трудности при визуализирането на вашите данни. Освен това няма да получите верен отговор от модулите за изчисление.</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-upload-a-layer-with-custom-data" href="#how-to-upload-a-layer-with-custom-data"><i class="fa fa-link"></i></a> Как да качите слой с персонализирани данни</h2><p> Чрез натискане на<img alt="бутон за акаунт" src="../images/account-btn.png"/> в горния ляв ъгъл на страницата. Това ще изведе страницата на профила отпред.</p><p> На страницата на профила:</p><ol><li> избор на типа набор от данни,</li><li> избор на файл за качване (.tif или .csv),</li><li> качете, като кликнете върху иконата „+“</li></ol><img alt="качване на страница с профил" src="../images/profile-upload.png"/><p> Изборът на типа набор от данни се използва, за да се получи правилната символика. Ако вашият набор от данни не съответства на символиката на слоя, той няма да се покаже правилно.</p><p> След като това бъде направено, ще се покаже съобщение за успех и слоят се появява в списъка със слоеве на страницата на профила.</p><p> Всеки потребител има ограничено дисково пространство, след като потребителят няма достатъчно свободно място, той няма да може да добавя повече файлове. Останалото място в потребителския ви акаунт е показано с кръговата диаграма.</p><p> Преди да може да покаже слоя на картата, сървърът ще се нуждае от известно време (до няколко минути в зависимост от размера на вашия файл) след съобщението за успех, за да импортира правилно набора от данни. Наборът от данни е на разположение за показване, след като размерът му бъде актуализиран във вашия потребителски акаунт.</p><img alt="upload_complete" src="../images/upload_complete.png"/><p> Слоят вече може да се показва на картата, като го активирате в панела със слоеве.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-display-an-uploaded-layer" href="#how-to-display-an-uploaded-layer"><i class="fa fa-link"></i></a> Как да покажа качен слой</h2><p> Възможно е да се покаже слой, който е качен преди това от панела със слоеве, като щракнете върху<img alt="бутон за слоеве" src="../images/layers-btn.png"/> бутон.</p><p> Списъкът с качените слоеве се показва в раздела &quot;Лични слоеве&quot; в горната част на левия панел.</p><p> Един слой може да се покаже, като го активирате в левия панел.</p><img alt="качване на дисплейния слой" src="../images/upload-layers.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="offline-mode" href="#offline-mode"><i class="fa fa-link"></i></a> Офлайн режим</h2><p> Ако сте излезли, няма да имате достъп до нито един от личните си слоеве, но те пак са налични, след като влезете отново.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="data-security-and-privacy" href="#data-security-and-privacy"><i class="fa fa-link"></i></a> Сигурност на данните и поверителност</h2><p> Hotmaps инструментариумът предлага сигурност на потребителите, създаващи акаунт в платформата. Приложени са обичайни мерки за сигурност: HTTPS протокол, хеширане / посоляване на пароли и т.н. Моля, имайте предвид, че за момента качените набори от данни не са криптирани на сървъра. Така че, моля, избягвайте да качвате чувствителни данни.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Как да цитирам</h2><p> Даниел Хуначек и Люсиен Зубер, в Hotmaps Wiki, Функции за качване на данни (септември 2020 г.)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Автори и рецензенти</h2><p> Тази страница е написана от Даниел Хуначек и Люсиен Зубер ( <strong><a href="https://www.hevs.ch">HES-SO</a></strong> ).</p><p> ☑ Тази страница е прегледана от Мостафа Фалахнежад ( <strong><a href="https://eeg.tuwien.ac.at/">ЕЕГ - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Разрешително</h2><p> Copyright © 2016-2020: Даниел Хуначек и Люсиен Зубер</p><p> Creative Commons Attribution 4.0 International License</p><p> Това произведение е лицензирано под Creative Commons CC BY 4.0 International License.</p><p> Идентификатор на SPDX-лиценз: CC-BY-4.0</p><p> Лиценз-текст: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Признание</h2><p> Бихме искали да <a href="https://www.hotmaps-project.eu">изразим</a> най-дълбоката си благодарност към проекта „Хоризонт 2020 <a href="https://www.hotmaps-project.eu">“</a> ( <a href="https://www.hotmaps-project.eu">Hotmaps Project)</a> (Споразумение за безвъзмездна помощ № 723677), който осигури финансирането за извършване на настоящото разследване</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Data-upload-functionalities) (original)  [Czech](../cs/Data-upload-functionalities)<sup>\*</sup> [Danish](../da/Data-upload-functionalities)<sup>\*</sup> [German](../de/Data-upload-functionalities)<sup>\*</sup> [Greek](../el/Data-upload-functionalities)<sup>\*</sup> [Spanish](../es/Data-upload-functionalities)<sup>\*</sup> [Estonian](../et/Data-upload-functionalities)<sup>\*</sup> [Finnish](../fi/Data-upload-functionalities)<sup>\*</sup> [French](../fr/Data-upload-functionalities)<sup>\*</sup> [Irish](../ga/Data-upload-functionalities)<sup>\*</sup> [Croatian](../hr/Data-upload-functionalities)<sup>\*</sup> [Hungarian](../hu/Data-upload-functionalities)<sup>\*</sup> [Italian](../it/Data-upload-functionalities)<sup>\*</sup> [Lithuanian](../lt/Data-upload-functionalities)<sup>\*</sup> [Latvian](../lv/Data-upload-functionalities)<sup>\*</sup> [Maltese](../mt/Data-upload-functionalities)<sup>\*</sup> [Dutch](../nl/Data-upload-functionalities)<sup>\*</sup> [Polish](../pl/Data-upload-functionalities)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Data-upload-functionalities)<sup>\*</sup> [Romanian](../ro/Data-upload-functionalities)<sup>\*</sup> [Slovak](../sk/Data-upload-functionalities)<sup>\*</sup> [Slovenian](../sl/Data-upload-functionalities)<sup>\*</sup> [Swedish](../sv/Data-upload-functionalities)<sup>\*</sup> 

<sup>\*</sup> machine translated