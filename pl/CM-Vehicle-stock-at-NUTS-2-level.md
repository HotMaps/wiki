<h1><a class="anchor" id="cm-vehicle-stock-at-nuts-2-level" href="#cm-vehicle-stock-at-nuts-2-level"><i class="fa fa-link"></i></a>Zapas pojazdów CM na poziomie NUTS 2</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Spis treści</h2><ul><li> <a href="#in-a-glance">W skrócie</a></li><li> <a href="#introduction">Wprowadzenie</a></li><li> <a href="#inputs-and-outputs">Wejścia i wyjścia</a></li><li> <a href="#method">metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">Repozytorium GitHub tego modułu obliczeniowego</a></li><li> <a href="#sample-run">Próbny przebieg</a></li><li> <a href="#references">Bibliografia</a></li><li> <a href="#how-to-cite">Jak cytować</a></li><li> <a href="#authors-and-reviewers">Autorzy i recenzenci</a></li><li> <a href="#license">Licencja</a></li><li> <a href="#acknowledgement">Potwierdzenie</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> W skrócie</h2><p> Ten moduł obliczeniowy przedstawia profil zapasów pojazdów na poziomie NUTS 2 od 1990 r. Do 2030 r. W oparciu o scenariusz normalnej działalności. Zestaw danych można również znaleźć w repozytoriach zestawów danych Hotmaps. Zilustrowane liczby na poziomie NUTS 2 ekstrapolowano na podstawie wartości z danych NUTS 0. Punkty danych historycznych ekstrapolowano w oparciu o przyszłe trendy dla wybranych wskaźników pochodzących ze scenariusza odniesienia PRIMES – TREMOVE EU 2016.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Wprowadzenie</h2><p> Ten moduł obliczeniowy przedstawia profil zapasów pojazdów na poziomie NUTS 2 do roku 2030 w oparciu o scenariusz normalnej działalności. Zestaw danych można również znaleźć w repozytorium Hotmaps. Zilustrowane liczby na poziomie NUTS 2 ekstrapolowano na podstawie wartości z danych NUTS 0. Punkty danych historycznych ekstrapolowano na podstawie przyszłych trendów dla wybranych wskaźników pochodzących ze scenariusza odniesienia PRIMES – TREMOVE EU 2016 <a href="#references">[1]</a> .</p><p> Moduł obliczeniowy można uruchomić tylko na poziomie NUTS 2.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Wejścia i wyjścia</h2><p> <strong>Dane wejściowe</strong> : ten CM nie wymaga od użytkownika żadnego parametru wejściowego. Użytkownik powinien wybrać tylko jeden lub kilka regionów NUTS 2.</p><p> <strong>Wyjścia</strong> :</p><ul><li> Wskaźniki:<ul><li> Dostępność pojazdów w pierwszym roku okresu</li><li> Dostępność pojazdów w ostatnim roku okresu</li></ul></li><li> Grafika:<ul><li> Przedstawiony jest jeden wykres słupkowy, który przedstawia stan zapasów pojazdów w różnych latach.</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="methodology" href="#methodology"><i class="fa fa-link"></i></a> Metodologia</h2><p> Dane NUTS2 (2006) są wynikiem przestrzennej interpolacji danych dotyczących taboru pojazdów na poziomie NUT0, z wykorzystaniem danych NUTS2 dotyczących liczby pojazdów i PKB na poziomie NUTS2 jako wartości zastępczej. Ponadto pierwotna <a href="https://gitlab.com/hotmaps/transport/nuts0">pięcioletnia</a> rozdzielczość <a href="https://gitlab.com/hotmaps/transport/nuts0">danych na poziomie NUTS0</a> została interpolowana z rozdzielczością roczną. Wyniki przedstawiono w postaci wskaźników i wykresu.</p><p> <strong>Należy zauważyć, że w przypadku wyboru dwóch lub więcej regionów prezentowana jest wartość zagregowana. Ponadto należy zauważyć, że dane są dostępne dla różnych okresów w zależności od regionu NUTS 2 (np. Jeden region od 1999 do 2030, a drugi od 1995 do 2030). Dlatego w przypadku wyboru dwóch lub więcej regionów, wartości z regionów konstytuujących powinny być również brane pod uwagę przez użytkownika.</strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repozytorium GitHub tego modułu obliczeniowego</h2><p> <a href="https://github.com/HotMaps/vehicle_stock/tree/develop">Tutaj</a> otrzymujesz najnowocześniejszy rozwój tego modułu obliczeniowego.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Próbny przebieg</h2><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/1.png"/><img src="/en/CM-Vehicle-stock-at-NUTS-2-level/2.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Bibliografia</h2><p> [1] Komisja Europejska, „EU Reference Scenario 2016”. [Online]. Dostępne: https://data.europa.eu/euodp/data/dataset/energy-modelling.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Jak cytować</h2><p> Mostafa Fallahnejad, w Hotmaps-Wiki, CM-Vehicle-stock-at-NUTS-2-level (wrzesień 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorzy i recenzenci</h2><p> Ta strona została napisana przez Mostafę Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Ta strona została sprawdzona przez Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencja</h2><p> Prawa autorskie © 2016-2020: Mostafa Fallahnejad</p><p> Licencja międzynarodowa Creative Commons Attribution 4.0</p><p> Ta praca jest objęta licencją Creative Commons CC BY 4.0 International License.</p><p> Identyfikator licencji SPDX: CC-BY-4.0</p><p> Tekst licencji: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Potwierdzenie</h2><p> Chcielibyśmy wyrazić nasze najgłębsze uznanie dla <a href="https://www.hotmaps-project.eu">projektu Hotmaps</a> programu „Horyzont 2020 <a href="https://www.hotmaps-project.eu">”</a> (umowa o udzielenie dotacji nr 723677), który zapewnił fundusze na przeprowadzenie obecnego dochodzenia.</p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Vehicle-stock-at-NUTS-2-level) (original) [Bulgarian](../bg/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Czech](../cs/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Danish](../da/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [German](../de/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Greek](../el/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Spanish](../es/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Estonian](../et/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Finnish](../fi/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [French](../fr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Irish](../ga/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Croatian](../hr/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Hungarian](../hu/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Italian](../it/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Lithuanian](../lt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Latvian](../lv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Maltese](../mt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Dutch](../nl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup>  [Portuguese (Portugal, Brazil)](../pt/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Romanian](../ro/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovak](../sk/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Slovenian](../sl/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> [Swedish](../sv/CM-Vehicle-stock-at-NUTS-2-level)<sup>\*</sup> 

<sup>\*</sup> machine translated