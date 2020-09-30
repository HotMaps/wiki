<h1><a class="anchor" id="select-a-region-in-the-hotmaps-toolbox" href="#select-a-region-in-the-hotmaps-toolbox"><i class="fa fa-link"></i></a>Wybierz region w przyborniku Hotmaps</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Spis treści</h2><ul><li> <a href="#introduction">Wprowadzenie</a></li><li> <a href="#selection-by-nuts-boundaries">Wybór według granic NUTS</a><ul><li> <a href="#selection-by-nuts-boundaries_nuts-0-selection">NUTS 0 Wybór</a></li><li> <a href="#selection-by-nuts-boundaries_nuts-1-selection">Wybór NUTS 1</a></li><li> <a href="#selection-by-nuts-boundaries_nuts-2-selection">Wybór NUTS 2</a></li><li> <a href="#selection-by-nuts-boundaries_nuts-3-selection">Wybór NUTS 3</a></li><li> <a href="#selection-by-nuts-boundaries_lau-selection">Wybór LAU</a></li></ul></li><li> <a href="#custom-selection">Wybór niestandardowy</a></li><li> <a href="#bounding-box-and-area-selection-limit">Obwiednia i limit wyboru obszaru</a></li><li> <a href="#how-to-cite">Jak cytować</a></li><li> <a href="#authors-and-reviewers">Autorzy i recenzenci</a></li><li> <a href="#license">Licencja</a></li><li> <a href="#acknowledgement">Potwierdzenie</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Wprowadzenie</h2><p> Istnieją dwa sposoby na wybranie regionu w przyborniku Hotmaps:</p><ol><li> wybór według <a href="https://ec.europa.eu/eurostat/web/nuts/background">klasyfikacji NUTS (nomenklatura jednostek terytorialnych do celów statystycznych))</a></li><li> niestandardowy dobór hektarów</li></ol><p> Za pomocą <a href="#fig1">przycisków radiowych</a> po prawej stronie ekranu możesz wybrać skalę terytorialną, którą chcesz przeanalizować (regiony NUTS, <a href="https://ec.europa.eu/eurostat/web/nuts/local-administrative-units">LAU (lokalne jednostki administracyjne</a> lub poziom hektarów)</p><p><a name="Fig1"><img alt="radio_buttons_png" src="../images/general_tool_functionalities_and_structure/radio_buttons.png"/></a></p><p> Rys.1 .: Przyciski radiowe dla skali terytorialnej</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="selection-by-nuts-boundaries-" href="#selection-by-nuts-boundaries-"><i class="fa fa-link"></i></a> Wybór według granic NUTS:</h2><p> Po wybraniu regionu i naciśnięciu przycisku <em>LOAD RESULTS</em> wyświetlany jest boczny pasek wyników po prawej stronie iw zależności od wybranej warstwy wyświetlane są dla nich wskaźniki. Możesz zobaczyć, że po wybraniu innego regionu wyniki będą agregowane w locie.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="nuts-0-selection" href="#nuts-0-selection"><i class="fa fa-link"></i></a> NUTS 0 Wybór</h3><img alt="selection_nuts0_gif" src="https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts0.gif"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="nuts-1-selection" href="#nuts-1-selection"><i class="fa fa-link"></i></a> Wybór NUTS 1</h3><img alt="selection_nuts1_gif" src="https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts1.gif"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="nuts-2-selection" href="#nuts-2-selection"><i class="fa fa-link"></i></a> Wybór NUTS 2</h3><img alt="selection_nuts2_gif" src="https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts2.gif"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="nuts-3-selection" href="#nuts-3-selection"><i class="fa fa-link"></i></a> Wybór NUTS 3</h3><img alt="selection_nuts3_gif" src="https://wiki.hotmaps.hevs.ch/images/general_tool_functionalities_and_structure/selecting_nuts3.gif"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="lau-selection" href="#lau-selection"><i class="fa fa-link"></i></a> Wybór LAU</h3><p> Oprócz trzech poziomów NUTS masz również możliwość analizy na poziomie LAU<img alt="selection_lau_gif" src="../images/general_tool_functionalities_and_structure/selecting_lau.gif"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="custom-selection-" href="#custom-selection-"><i class="fa fa-link"></i></a> Wybór niestandardowy:</h2><p> Jeśli potrzebujesz bardziej elastycznego sposobu i chcesz przeanalizować region, który nie jest objęty granicami NUTS lub LAU, lepiej jest określić własne regiony celne. Przybornik oferuje wiele narzędzi do zaznaczania: prostokątne, okrągłe lub wielokątne. Narysuj kształt, który chcesz przeanalizować, a następnie kliknij narysowaną obwiednię, aby zaznaczyć obszar.</p><p> Inną opcją, która jest dostępna tylko na poziomie hektara, jest przesłanie obiektu selekcji GeoJSON. GeoJSON to format do kodowania geograficznych struktur danych. Jeśli utworzyłeś obiekt GeoJSON, który reprezentuje region przestrzeni lub zbiór obiektów ograniczonych przestrzennie, przesyłając swój obiekt GeoJSN, ten wybór będzie łatwo używany w Hotmapach.</p><p><img alt="selection_hectare_gif" src="../images/general_tool_functionalities_and_structure/selecting_hectare.gif"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="bounding-box-and-area-selection-limit" href="#bounding-box-and-area-selection-limit"><i class="fa fa-link"></i></a> Obwiednia i limit wyboru obszaru</h2><p> Podczas wybierania jednego lub więcej regionów na mapie, pole po lewej stronie ekranu z przyciskami do wczytywania wyników pokazuje następujące informacje o aktualnym wyborze:</p><ul><li> Wybrane elementy: liczba pojedynczych stref, które zostały wybrane</li><li> Obwiednia: ogólna powierzchnia najmniejszego prostokątnego kształtu, który może pokryć wybrany obszar</li><li> Skala: poziom, na którym dokonywany jest wybór</li></ul><p> <strong>WAŻNA UWAGA</strong> Ramka ograniczająca ma próg limitu wynoszący około 640 000 km2. Nie można uruchamiać / ładować modułów obliczeniowych i warstw wyników powyżej tego progu. Wybranie obszaru powyżej limitu wyboru zwróci następujący komunikat o błędzie: <em>Przekroczono LIMIT WYBORU OBSZARU dla swobodnego wyboru, jak również dla uruchomionych modułów obliczeniowych! Wybierz mniejszy obszar.</em></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Jak cytować</h2><p> Jeton Hasani, w Hotmaps-Wiki, Select-a-region-in-the-Hotmaps-toolbox (kwiecień 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorzy i recenzenci</h2><p> Ta strona została napisana przez Jetona Hasaniego <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Ta strona została sprawdzona przez Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencja</h2><p> Prawa autorskie © 2016-2020: Jeton Hasani</p><p> Licencja międzynarodowa Creative Commons Attribution 4.0</p><p> Ta praca jest objęta licencją Creative Commons CC BY 4.0 International License.</p><p> Identyfikator licencji SPDX: CC-BY-4.0</p><p> Tekst licencji: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#hotmaps-toolbox">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Potwierdzenie</h2><p> Chcielibyśmy wyrazić nasze najgłębsze uznanie dla <a href="https://www.hotmaps-project.eu">projektu Hotmaps</a> programu „Horyzont 2020 <a href="https://www.hotmaps-project.eu">”</a> (umowa o udzielenie dotacji nr 723677), który zapewnił fundusze na przeprowadzenie obecnego dochodzenia.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Select-a-region-in-the-Hotmaps-toolbox) (original) [Bulgarian](../bg/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Czech](../cs/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Danish](../da/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [German](../de/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Greek](../el/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Spanish](../es/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Estonian](../et/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Finnish](../fi/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [French](../fr/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Irish](../ga/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Croatian](../hr/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Hungarian](../hu/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Italian](../it/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Lithuanian](../lt/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Latvian](../lv/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Maltese](../mt/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Dutch](../nl/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup>  [Portuguese (Portugal, Brazil)](../pt/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Romanian](../ro/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Slovak](../sk/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Slovenian](../sl/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> [Swedish](../sv/Select-a-region-in-the-Hotmaps-toolbox)<sup>\*</sup> 

<sup>\*</sup> machine translated