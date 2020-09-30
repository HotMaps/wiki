<h1><a class="anchor" id="cm-demand-projection" href="#cm-demand-projection"><i class="fa fa-link"></i></a>Projekcja CM Demand</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Spis treści</h2><ul><li> <a href="#in-a-glance">W skrócie</a></li><li> <a href="#introduction">Wprowadzenie</a></li><li> <a href="#inputs-and-outputs">Wejścia i wyjścia</a><ul><li> <a href="#inputs-and-outputs_inputs">Wejścia</a></li><li> <a href="#inputs-and-outputs_outputs">Wyjścia</a></li></ul></li><li> <a href="#method">metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">Repozytorium GitHub tego modułu obliczeniowego</a></li><li> <a href="#sample-run">Próbny przebieg</a><ul><li> <a href="#sample-run_test-run-default-input-values">Uruchomienie testowe: domyślne wartości wejściowe</a></li></ul></li><li> <a href="#how-to-cite">Jak cytować</a></li><li> <a href="#authors-and-reviewers">Autorzy i recenzenci</a></li><li> <a href="#license">Licencja</a></li><li> <a href="#acknowledgement">Potwierdzenie</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> W skrócie</h2><p> Moduł ten generuje zarówno gęstość zapotrzebowania na ciepło, jak i mapę zagęszczenia powierzchni brutto w postaci plików rastrowych. Dane wejściowe do modułu stanowią różne scenariusze rozwoju zapotrzebowania na ciepło i powierzchni brutto na poziomie krajowym, w podziale na każdy element rastrowy, a także parametry zdefiniowane przez użytkownika w celu opisania względnego odchylenia od zmian w scenariuszach.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Wprowadzenie</h2><p> Do analizy przyszłych potencjałów dostaw ciepła i chłodu ze źródeł odnawialnych oraz nadmiarowych niezbędne jest uwzględnienie potencjalnego rozwoju zasobów budowlanych analizowanego regionu. Część budynków poddawana jest renowacji w celu zmniejszenia zapotrzebowania na energię do ogrzewania pomieszczeń, część budynków jest wyburzana i budowane są nowe budynki. Prowadzi to do zmian w zapotrzebowaniu na ciepło budynków w regionie. Ponadto ewolucja populacji i produktu krajowego brutto (PKB) w regionie wpływa na rozwój zapotrzebowania na powierzchnię użytkową budynków, a tym samym na ogrzewanie pomieszczeń i wytwarzanie ciepłej wody. Celem modułu obliczeniowego (CM) - Prognoza popytu jest przedstawienie scenariuszy przyszłego rozwoju powierzchni brutto i zapotrzebowania na ciepło w budynkach dla wybranego obszaru w oparciu o obliczenia dla UE-28 na poziomie krajowym. Różne scenariusze, które są obliczane za pomocą modułu Invert / EE-Lab, są rozkładane na poziomie hektarów. Różnią się one współczynnikiem renowacji termicznej, innymi słowy, ile powierzchni brutto jest odnawiane proporcjonalnie. CM zapewnia również możliwość zmiany trzech podstawowych czynników napędowych w scenariuszach i wygenerowania dostosowanych wyników. Te trzy podstawowe czynniki to a) zmniejszenie powierzchni brutto istniejących budynków, b) zmniejszenie specyficznego zapotrzebowania na energię w budynkach oraz c) roczny wzrost liczby ludności oprócz wzrostu domyślnego</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Wejścia i wyjścia</h2><h3><a class="anchor" id="inputs" href="#inputs"><i class="fa fa-link"></i></a> Wejścia</h3><ul><li><p> <em>Wybierz scenariusz:</em></p><ul><li> tutaj możesz wybrać między różnymi scenariuszami obliczonymi za pomocą modułu Invert / EE-Lab do wykorzystania jako opracowanie odniesienia do obliczeń za pomocą modułu</li></ul></li><li><p> <em>Wybierz rok docelowy:</em></p><ul><li> tutaj możesz wybrać rok, dla którego będą wykonywane obliczenia</li></ul></li><li><p> <em>Skaluj w górę lub w dół redukcję powierzchni brutto w porównaniu ze scenariuszem odniesienia:</em></p><ul><li> tym parametrem można zmienić zagospodarowanie powierzchni brutto aktualnie istniejących budynków w stosunku do zagospodarowania przewidzianego w scenariuszu obliczonym z modelu Invert / EE-Lab</li><li> można zdefiniować różne względne zmiany dla istniejących budynków wybudowanych w różnych okresach budowy (przed 1977, między 1977 a 1990, po 1990)</li><li> wartości do wprowadzenia mają jednostkę [%]</li><li> wartość 25 oznacza, że zmniejszenie powierzchni użytkowej brutto w określonym okresie budowy, np. przed 1977 r., pomiędzy początkowym rokiem obliczeń a końcem wybranego scenariusza, jest pomnożone przez 0,25. Np. W wybranym scenariuszu Invert / EE-Lab powierzchnia brutto budynków zbudowanych przed 1977 r. Spada z 10 mln. m² do 6 mln m² od teraz do końca wybranego okresu scenariusza. Odpowiada to zmniejszeniu o 4 mln m². Wybierając wartość 25, efekt scenariusza Invert / EE-Lab zostaje zmieniony, aby nie odzwierciedlał spadku o 4 mln m² w tym okresie, ale tylko o 1 mln. m² (4 * 0,25). Zatem pozostała powierzchnia brutto budynków zbudowanych przed 1977 r. Na koniec okresu objętego scenariuszem wyniosłaby 9 mln. m².</li></ul></li><li><p> <em>Skalować w górę lub w dół redukcję określonych potrzeb energetycznych w porównaniu ze scenariuszem odniesienia:</em></p><ul><li> za pomocą tego parametru można zmienić rozwój specyficznych potrzeb energetycznych do ogrzewania pomieszczeń i wytwarzania ciepłej wody w obecnie istniejących budynkach w porównaniu z rozwojem przewidzianym w scenariuszu obliczonym za pomocą modelu Invert / EE-Lab</li><li> można zdefiniować różne względne zmiany dla istniejących budynków wybudowanych w różnych okresach budowy (przed 1977, między 1977 a 1990, po 1990)</li><li> wartości do wprowadzenia mają jednostkę [%]</li><li> wartość 25 oznacza, że zmniejszenie jednostkowych potrzeb energetycznych w określonym okresie budowy, np. przed 1977 r., między początkowym rokiem obliczeń a końcem wybranego scenariusza, jest pomnożone przez 0,25. Np. W wybranym scenariuszu Invert / EE-Lab specyficzne zapotrzebowanie na energię do ogrzewania pomieszczeń i wytwarzania ciepłej wody w budynkach zbudowanych przed 1977 r. Spada z 200 kWh / m²r do 120 kWh / m²r od chwili obecnej do końca okresu wybranego scenariusza. Oznacza to spadek o 80 kWh / m² rok. Wybierając wartość 25, efekt scenariusza Invert / EE-Lab zmienia się, aby nie odzwierciedlał spadku o 80 kWh / m²r w tym okresie, ale tylko o 20 kWh / m²r (80 * 0,25). Zatem pozostałe specyficzne zapotrzebowanie na energię do ogrzewania pomieszczeń i wytwarzania ciepłej wody w budynkach zbudowanych przed 1977 r. Na koniec okresu objętego scenariuszem wyniesie 180 kWh / m² rok.</li></ul></li><li><p> <em>Roczny wzrost liczby ludności oprócz domyślnego wzrostu:</em></p></li><li><p> Bazowy scenariusz przedstawia szacunki wzrostu populacji na poziomie NUTS3. Porównując wzrost liczby ludności na poziomie NUTS0 i NUTS3 przy użyciu danych historycznych, można obliczyć proporcjonalny wzrost liczby ludności. Parametr „Roczny wzrost liczby ludności oprócz domyślnego wzrostu” może być użyty do wpływania na te stopy wzrostu. W naszym modelu wzrost liczby ludności jest wprost proporcjonalny do wzrostu obszaru, co z kolei skutkuje bezpośrednim wzrostem powierzchni ogrzewanej.</p></li><li><p> <em>Sposób dodawania nowo budowanych budynków do mapy:</em></p><ul><li> w tym miejscu można wybrać metodę stosowaną w celu dodania nowo wybudowanych budynków do wynikowych map powierzchni brutto i gęstości zapotrzebowania na ciepło</li><li> trzy różne metody są wyjaśnione poniżej:<ul><li> Brak nowych budynków: na mapach odzwierciedlone są tylko budynki, które już istnieją w aktualnych zasobach budowlanych i według przewidywań będą istnieć pod koniec okresu symulacji. Zniszczone budynki są usuwane z mapy i nie są dodawane żadne nowe budynki. Powierzchnia brutto, jak również zapotrzebowanie na ciepło odzwierciedlone na mapach, są zatem znacznie niższe w porównaniu z wartościami przewidywanymi z obliczeń.</li><li> Zastąp tylko wyburzone budynki: Na mapach powierzchnia brutto budynków nie zmienia się w porównaniu z powierzchnią brutto w roku początkowym obliczeń. Obecnie istniejące budynki, które mają zostać wyburzone, zastępowane są nowo budowanymi. W przypadku wzrostu powierzchni brutto w scenariuszach wzrost powierzchni brutto nie jest odzwierciedlany na mapach.</li><li> Dodaj wszystkie nowe budynki: na mapach dodawane są wszystkie nowe budynki. W miejscach wyburzania budynków są one zastępowane nowymi budynkami. Dodatkowa nowo wybudowana powierzchnia brutto ze względu na wzrost całkowitej powierzchni brutto w regionie jest umieszczana w różnych lokalizacjach: jej część jest dodawana na szczycie istniejących budynków, część jest umieszczana między istniejącymi budynkami, a część jest umieszczana w lokalizacje, w których obecnie nie ma żadnych budynków.</li></ul></li><li> wybór tej metody nie ma wpływu na wskaźniki pokazane w sekcji wyników obliczeń. Oznacza to, że jest to istotne tylko dla tworzenia map, a nie dla ogólnych wyników scenariuszy.</li></ul></li></ul><h3><a class="anchor" id="outputs" href="#outputs"><i class="fa fa-link"></i></a> Wyjścia</h3><ul><li><p> <em>Wskaźniki:</em></p><ul><li> Podstawowe założenia dotyczące wzrostu populacji od początku do roku docelowego w 5-letnim przyroście</li><li> Ogrzewana powierzchnia całkowita (podłoga brutto) i na mieszkańca w roku początkowym i końcowym roku obliczeń (ze względu na różną dostępność różnych zestawów danych dla różnych lat, powierzchnia na 2014 r. Jest tu pokazana jako wartość początkowa).</li><li> Szacowane (końcowe) zużycie energii ogółem i według obszaru w roku początkowym i końcowym roku obliczenia</li><li> Szacowany obszar, całkowite zużycie energii i jednostkowe zużycie energii na okres budowy w roku początkowym i końcowym roku obliczenia</li><li> Udział nowo wybudowanych budynków pokazany na mapie rastrowej na rok docelowy</li></ul></li><li><p> <em>Grafika:</em></p><ul><li> Wykresy słupkowe przedstawiające ogrzewaną powierzchnię brutto i końcowe zużycie energii w okresie budowy</li></ul></li><li><p> <em>Warstwy:</em></p><ul><li> Mapa gęstości zapotrzebowania na ciepło odzwierciedlająca obliczone zmiany</li><li> Mapa gęstości powierzchni brutto odzwierciedlająca obliczone zmiany</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> metoda</h2><p> Jak napisano wcześniej, moduł ten opiera się na obliczeniach wykonanych za pomocą modułu Invert / EE-Lab dla wszystkich krajów UE 28 (patrz <strong>www.invert.at w</strong> celu zapoznania się z opisem metody modułu Invert / EE-Lab). Obliczone scenariusze analizowane są pod kątem rozwoju następujących typów budynków: mieszkalnych i niemieszkalnych, 3 okresów budowy oraz nowo budowanych budynków. Następnie ocenia się wzrost liczby ludności w regionie NUTS3 i początkowe zasoby budynków (pod względem ogrzewanej powierzchni brutto i zapotrzebowania na energię w okresie budowy i typu budynku) według regionu NUTS 3. Na podstawie tej oceny wyniki obliczonych scenariuszy są przenoszone do odpowiedniego regionu NUTS3. Wyniki NUTS3 są następnie rozdzielane na różne elementy hektarowe zgodnie z metodą opracowaną w Müller et al 2019 ( <strong>REFERENCE</strong> ).</p><h2><a class="anchor" id="provided-scenarios" href="#provided-scenarios"><i class="fa fa-link"></i></a> Dostarczone scenariusze</h2><p> Moduł zapewnia 4 różne scenariusze, które różnią się częstotliwością renowacji. Poprzez wybór 0,5%, 1%, 2% lub 3% całkowitej powierzchni brutto jest odnawiane corocznie. Należy zauważyć, że zaoszczędzone zapotrzebowanie na ogrzewanie nie jest wprost proporcjonalne do wzrostu wskaźnika renowacji, ponieważ dozwolone są różne efektywne renowacje. Przy niewielkim tempie renowacji odnawiane są głównie budynki, w których korzystne środki mogą przynieść duże oszczędności. Przy wysokim wskaźniku renowacji, budynki o wyższej jakości cieplnej są również coraz częściej odnawiane, a ich zaoszczędzona energia grzewcza jest niższa w porównaniu. Podstawowym scenariuszem różnych scenariuszy jest scenariusz odniesienia, który jest opisany w następnej części.</p><p> <strong><em>„odniesienie”:</em></strong> Obecna polityka efektywności nadal obowiązuje i jest skutecznie wdrażana. Zakładamy, że generalnie właściciele budynków i specjaliści przestrzegają przepisów, takich jak przepisy budowlane. Nadal istnieją krajowe różnice w intensywności polityki. W związku z tym intensywność polityki wskazuje jakościowo zakres ambicji politycznych w różnych krajach. Zestaw polityk dotyczących efektywności energetycznej odpowiada obecnym pakietom, które w większości krajów są połączeniem podejść regulacyjnych (kodeksy budowlane, definicje budynków o niemal zerowym zużyciu energii (nZEB), obowiązek OZE-H), wsparcie ekonomiczne (dotacje na modernizację budynków) i opodatkowanie energii. Główne źródła wdrożonych polityk to baza danych Mure (www.measures-odyssee-mure.eu/) oraz projekty ENTRANZE (www.entranze.eu/) i Zebra2020 (www.zebra2020.eu/). Chociaż scenariusz nie uwzględnia ani zdecydowanej poprawy technologii, ani wiążących zobowiązań w zakresie efektywności energetycznej, wdrożono ambitne strategie polityczne wspierające energię odnawialną. Zostało to zrealizowane w oparciu o obowiązkowe kwoty energii odnawialnej na poziomie poszczególnych budynków.</p><p> <em>Ceny energii: Ceny</em> energii rosną umiarkowanie zgodnie ze Scenariuszem Referencyjnym UE 2016 (https://ec.europa.eu/energy/en/data-analysis/energy-modelling).</p><p> <em>Rozwój technologii:</em> Zakładana wiedza technologiczna jest bardzo niska, a koszty wydajnych i odnawialnych technologii ogrzewania / chłodzenia spadają tylko nieznacznie.</p><p> <em>Jakościowy przegląd założeń polityki:</em></p><ul><li> Intensywność polityki dla OZE-H: wysoka</li><li> Intensywność polityki w zakresie efektywności budynków: niska</li><li> Intensywność polityki dla ciepłownictwa: średnia</li><li> Ceny energii: niskie</li><li> Rozwój technologii: niski</li></ul><p> <em>Wyniki:</em> Całkowite końcowe zapotrzebowanie na energię do ogrzewania pomieszczeń, ciepłej wody, chłodzenia i energii pomocniczej w UE-28 wynosi około 3850 TWh dla wszystkich stawek renowacji w 2015 r. I spada do 2800 TWh do 2250 TWh w 2050 r., W zależności od tempa renowacji.</p><p> <strong><em>UE-28:</em></strong><img src="/en/CM-Demand-projection/final_energy_EU28.jpg"/></p><p> <em>Rysunek: Końcowe zapotrzebowanie na energię w UE-28 w latach 2015-2050 dla różnych wskaźników renowacji</em></p><p> Sześć poniższych wykresów przedstawia zmiany końcowego zapotrzebowania na energię do ogrzewania, chłodzenia i przygotowania ciepłej wody użytkowej w poszczególnych państwach członkowskich UE.</p><p> <strong><em>DE, FR, GB, IT i PL:</em></strong><img src="/en/CM-Demand-projection/final_absolute_DE.jpg"/></p><p> <em>Rysunek: Końcowe zapotrzebowanie na energię w DE, FR, GB, IT i PL na lata 2015 i 2050 z różnymi wskaźnikami renowacji</em></p><img src="/en/CM-Demand-projection/final_relative_DE.jpg"/><p> <em>Rysunek: Część końcowego zapotrzebowania na energię w 2050 r. Dla DE, FR, GB, IT i PL w stosunku do 2015 r</em></p><p> <strong><em>NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK i GK:</em></strong><img src="/en/CM-Demand-projection/final_absolute_NL.jpg"/></p><p> <em>Rysunek: Końcowe zapotrzebowanie na energię w NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK i GK na lata 2015 i 2050 z różnymi wskaźnikami renowacji</em></p><img src="/en/CM-Demand-projection/final_relative_NL.jpg"/><p> <em>Rysunek: Udział końcowego zapotrzebowania na energię w 2050 r. Dla NL, ES, BE, SE, CZ, HU, AT, RO, FI, DK i GK w stosunku do 2015 r.</em></p><p> <strong><em>SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY i MT:</em></strong><img src="/en/CM-Demand-projection/final_absolute_SK.jpg"/></p><p> <em>Rysunek: Końcowe zapotrzebowanie na energię w SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY i MT na lata 2015 i 2050 z różnymi wskaźnikami renowacji</em></p><img src="/en/CM-Demand-projection/final_relative_SK.jpg"/><p> <em>Rysunek: Część końcowego zapotrzebowania na energię w 2050 r. Dla SK, IE, PT, HR, BG, LT, LV, SI, EE, LU, CY i MT w stosunku do 2015 r.</em></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repozytorium GitHub tego modułu obliczeniowego</h2><p> <strong><a href="https://github.com/HotMaps/renovation_effect">Tutaj</a></strong> otrzymujesz najnowocześniejszy rozwój tego modułu obliczeniowego.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Próbny przebieg</h2><p> Tutaj uruchamiany jest moduł obliczeniowy dla studium przypadku Wiednia w Austrii. Najpierw użyj paska „Go To Place”, aby przejść do Wiednia i wybrać miasto. Kliknij przycisk „Warstwy”, aby otworzyć okno „Warstwy”, a następnie kliknij zakładkę „MODUŁ OBLICZENIOWY”. Z listy modułów obliczeniowych wybierz „CM - Projekcja popytu”.</p><h3><a class="anchor" id="test-run--default-input-values" href="#test-run--default-input-values"><i class="fa fa-link"></i></a> Uruchomienie testowe: domyślne wartości wejściowe</h3><p> Domyślne wartości wejściowe generują mapę gęstości zapotrzebowania na ciepło na rok 2017. Wartości te należy traktować jedynie jako punkt początkowy. Konieczne może być ustawienie wartości poniżej lub powyżej wartości domyślnych, biorąc pod uwagę dodatkowe kwestie lokalne. Zastosowany scenariusz ma również duży wpływ na produkcję. Dlatego użytkownik powinien dostosować te wartości, aby znaleźć najlepszą kombinację danych wejściowych dla swojego studium przypadku.</p><p> Aby uruchomić moduł obliczeniowy, wykonaj następujące kroki:</p><ul><li> Przypisz nazwę sesji roboczej (opcjonalnie) i ustaw parametry wejściowe (tutaj zostały użyte wartości domyślne), a następnie naciśnij „RUN CM” na końcu wejścia CM.</li><li> Poczekaj, aż proces się zakończy.</li><li> Możesz od razu zobaczyć, że mapa gęstości ciepła została dodana do mapy. Jako wynik, wskaźniki są pokazane w oknie „WYNIKI”, a na mapie pokazana jest nowa mapa gęstości ciepła i powierzchnia brutto.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_jpg-min.jpg"/><p> <em>Rys.: Projekcja zapotrzebowania po uruchomieniu z domyślnym parametrem</em></p><ul><li> Dodatkowo generowane są również dwa diagramy. Pierwsza pokazuje Ogrzewaną powierzchnię brutto dla różnych okresów budowy. Drugi wykres ilustruje zużycie energii na ogrzewanie i ciepłą wodę użytkową również w podzielonych okresach budowy.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_graphs_jpeg.jpg"/><p> <em>Rys.: Projekcja zapotrzebowania po uruchomieniu z domyślnym parametrem, przełączenie na grafikę</em></p><ul><li> Po uruchomieniu obliczeń i zamknięciu modułu obliczeniowego dwie nowe warstwy znajdują się na samym dole pod listą Warstwy. Z jednej strony nowa mapa gęstości ogrzewania, az drugiej nowa mapa powierzchni brutto. Jeśli chcesz je zapisać i wykorzystać w dalszych obliczeniach, musisz je ponownie pobrać i przesłać.</li></ul><img src="/en/CM-Demand-projection/default-sample-run_layers_jpg-min.jpg"/><p> <em>Rysunek: Projekcja popytu po uruchomieniu z domyślnym parametrem, przełączenie na warstwy wynikowe</em></p><p> Jak wspomniano wcześniej, może być konieczne dostosowanie parametrów wejściowych do własnych danych lub sprawdzenie czułości.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Jak cytować</h2><p> Andreas Müller i Marcus Hummel, w Hotmaps-Wiki, CM-Demand-projection (październik 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorzy i recenzenci</h2><p> Ta strona została napisana przez Andreasa Müllera, Marcusa Hummela, Giulię Conforto i Davida Schmidingera ( <strong><a href="https://e-think.ac.at">e-myślenie</a></strong> ).</p><p> ☑ Ta strona została sprawdzona przez Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencja</h2><p> Prawa autorskie © 2016-2020: Andreas Müller i Marcus Hummel</p><p> Licencja międzynarodowa Creative Commons Attribution 4.0</p><p> Ta praca jest objęta licencją Creative Commons CC BY 4.0 International License.</p><p> Identyfikator licencji SPDX: CC-BY-4.0</p><p> Tekst licencji: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Potwierdzenie</h2><p> Chcielibyśmy wyrazić nasze najgłębsze uznanie dla <a href="https://www.hotmaps-project.eu">projektu Hotmaps</a> programu „Horyzont 2020 <a href="https://www.hotmaps-project.eu">”</a> (umowa o udzielenie dotacji nr 723677), który zapewnił fundusze na przeprowadzenie obecnego dochodzenia.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Demand-projection) (original) [Bulgarian](../bg/CM-Demand-projection)<sup>\*</sup> [Czech](../cs/CM-Demand-projection)<sup>\*</sup> [Danish](../da/CM-Demand-projection)<sup>\*</sup> [German](../de/CM-Demand-projection)<sup>\*</sup> [Greek](../el/CM-Demand-projection)<sup>\*</sup> [Spanish](../es/CM-Demand-projection)<sup>\*</sup> [Estonian](../et/CM-Demand-projection)<sup>\*</sup> [Finnish](../fi/CM-Demand-projection)<sup>\*</sup> [French](../fr/CM-Demand-projection)<sup>\*</sup> [Irish](../ga/CM-Demand-projection)<sup>\*</sup> [Croatian](../hr/CM-Demand-projection)<sup>\*</sup> [Hungarian](../hu/CM-Demand-projection)<sup>\*</sup> [Italian](../it/CM-Demand-projection)<sup>\*</sup> [Lithuanian](../lt/CM-Demand-projection)<sup>\*</sup> [Latvian](../lv/CM-Demand-projection)<sup>\*</sup> [Maltese](../mt/CM-Demand-projection)<sup>\*</sup> [Dutch](../nl/CM-Demand-projection)<sup>\*</sup>  [Portuguese (Portugal, Brazil)](../pt/CM-Demand-projection)<sup>\*</sup> [Romanian](../ro/CM-Demand-projection)<sup>\*</sup> [Slovak](../sk/CM-Demand-projection)<sup>\*</sup> [Slovenian](../sl/CM-Demand-projection)<sup>\*</sup> [Swedish](../sv/CM-Demand-projection)<sup>\*</sup> 

<sup>\*</sup> machine translated