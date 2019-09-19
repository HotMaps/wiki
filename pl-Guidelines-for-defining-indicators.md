<h2> Spis treści </h2><ul><li> <a href="#Indicators">Wskaźniki</a> <ul><li> <a href="#Simple-indicator">Prosty wskaźnik</a> </li><li> <a href="#Cross-indicator">Wskaźnik krzyżowy</a> </li></ul></li><li> <a href="#Indicator-result">Wynik wskaźnika</a> </li><li> <a href="#references">Bibliografia</a> </li><li> <a href="#how-to-cite">Jak cytować</a> </li><li> <a href="#authors-and-reviewers">Autorzy i recenzenci</a> </li><li> <a href="#license">Licencja</a> </li><li> <a href="#acknowledgement">Potwierdzenie</a> </li></ul><h2> Wskaźniki </h2><p> Ta dokumentacja wyjaśnia, jak zarządzać wskaźnikami w przyborniku Hotmaps. Wskaźnik to wartość wyświetlana w przyborniku Hotmaps po stronie klienta. Wskaźnik jest częścią warstwy. Wskaźnik to wartość dla określonego regionu przestrzennego z jednostką. Wskaźnik jest częścią słownika warstw. Obiekt warstwy zawiera tablicę o nazwie „wskaźniki”. Ta tabela posłuży do wyświetlenia wszystkich wskaźników, które chcesz zobaczyć dla warstwy. </p><pre> <code>layers = { 'heat_tot_curr_density_tif':{ 'tablename':'heat_tot_curr_density_tif', 'from_indicator_name':'stat_heat_tot_curr_density_tif', 'schema_scalelvl': 'stat', 'schema_hectare': 'geo', 'crs': '3035', 'geo_column': 'geometry', 'table_type':'raster', 'data_lvl':['NUTS 0','NUTS 1','NUTS 2','NUTS 3','LAU 2','Hectare'], 'data_aggregated':True, 'scalelvl_column':'', 'indicators':[ {'table_column': 'sum', 'unit': 'MWh','indicator_id':'consumption'}, {'table_column': 'count', 'unit': 'cells','indicator_id':'count_cell'}, { 'reference_indicator_id_1': 'consumption', 'reference_tablename_indicator_id_1': 'heat_tot_curr_density_tif', 'operator': '/', 'reference_indicator_id_2': 'count_cell', 'reference_tablename_indicator_id_2': 'pop_tot_curr_density_tif', 'unit':'MWh/person', 'indicator_id': 'heat_tot_curr_density_tif_per_pop_tot_curr_density_tif' } ] } }</code> </pre><ul><li> 'Nazwa tabeli' </li></ul><p> Nazwa tabeli DB. (Przykład: „heat_tot_curr_density_tif”) </p><ul><li> „from_indicator_name” </li></ul><p> Subtablename do wyboru wskaźników. <strong>Musi być unikalny.</strong> (Przykład: „stat_heat_tot_curr_density_tif”) </p><ul><li> „data_aggregated” </li></ul><p> Czy dane są agregowane czy nie (Wartości: prawda czy fałsz) </p><ul><li> „scalelvl_column” </li></ul><p> Nazwa kolumny na poziomie skali, jeśli jest inna niż domyślna (Przykład: „kod”) </p><ul><li> „data_lvl” </li></ul><p> Poziomy dostępne dla danych w bazie danych </p><ul><li> „schema_scalelvl” </li></ul><p> Lokalizacja schematu tabeli dla poziomu orzechów. (Przykład: „geo”, „stat”, „public”) </p><ul><li> „schema_hectare” </li></ul><p> Lokalizacja schematu tabeli dla poziomu hektara. (Przykład: „geo”, „stat”, „public”) </p><ul><li> „crs” </li></ul><p> Rzut geometrii (przykład: „3035”, „4326”, „4258”) </p><ul><li> „geo_column” </li></ul><p> Nazwa kolumny geometrii w bazie danych (przykład: „geom”, „geometria”) </p><ul><li> „table_type” </li></ul><p> Typ warstwy w bazie danych (wartości: „wektor” lub „raster”). </p><p> <em><strong>Ważne:</strong></em> Jeśli jest to raster, dostępne kolumny to <strong>liczba, suma, średnia, stddev, min i max</strong> </p><ul><li> „Wskaźniki” </li></ul><p> Istnieją 2 rodzaje wskaźników (wskaźniki proste i wskaźniki krzyżowe). </p><h3> Prosty wskaźnik </h3><p> Prostym wskaźnikiem jest obiekt o 3 parametrach. </p><pre> <code>{ 'table_column': 'count', 'unit': 'cells', 'indicator_id':'count_cell' }</code> </pre><ul><li> „table_column” </li></ul><p> To jest kolumna tabeli wybrana w tabeli. (Przykład: „liczba”) </p><p><img alt="tablecolumnselection" src="/api/assets/table_image.png"/></p><ul><li> 'jednostka' </li></ul><p> Jest to jednostka wskaźnika. (Przykład: „ogniwa”, „MWh”) </p><ul><li> „wskaźnik_id” </li></ul><p> Jest to identyfikator wskaźnika (jak identyfikator). Ta nazwa <strong>musi być unikalna</strong> w tablicy wskaźników. </p><h3> Wskaźnik krzyżowy </h3><p> Wskaźnik krzyżowy to obiekt o 7 parametrach. Celem tego wskaźnika jest wykonanie obliczeń między wskaźnikami prostymi a wskaźnikiem krzyżowym. </p><pre> <code>{ 'reference_indicator_id_1': 'consumption', 'reference_tablename_indicator_id_1':'heat_tot_curr_density_tif', 'operator': '/', 'reference_indicator_id_2':'count_cell', 'reference_tablename_indicator_id_2':'pop_tot_curr_density_tif', 'unit':'MWh/person', 'indicator_id':'heat_tot_curr_density_tif_per_pop_tot_curr_density_tif' }</code> </pre><ul><li> „reference_indicator_id_1” </li></ul><p> Odpowiada identyfikatorowi prostego wskaźnika. Ta nazwa <strong>musi być zdefiniowana</strong> w tablicy wskaźników. Jest to wartość numer 1. </p><ul><li> „reference_tablename_indicator_id_1” </li></ul><p> Odwołanie do nazwy tablicy warstwy, która odwołuje się do wartości numer 1. (Przykład: „heat_tot_curr_density_tif”) </p><ul><li> 'operator' </li></ul><p> Reguła obliczania do zastosowania do 2 wartości (wartości: „/” lub „*” lub „+” lub „-”) </p><ul><li> „reference_indicator_id_1” </li></ul><p> Odpowiada identyfikatorowi prostego wskaźnika. Ta nazwa <strong>musi być zdefiniowana</strong> w tablicy wskaźników. Jest to wartość numer 2. </p><ul><li> „reference_tablename_indicator_id_2” </li></ul><p> Odwołanie do nazwy tablicy warstwy, która odwołuje się do wartości 2. (Przykład: „pop_tot_curr_density_tif”) </p><ul><li> 'jednostka' </li></ul><p> Jest to jednostka wskaźnika. (Przykład: „ogniwa”, „MWh”) </p><ul><li> 'imię' </li></ul><p> To jest nazwa wskaźnika (jak identyfikator). Ta nazwa <strong>musi być unikalna</strong> w tablicy wskaźników. </p><h5> Uwaga: Dla tego przykładu poniżej zamieszczono obliczenia. </h5><pre> <code>reference_indicator_id_1.reference_indicator_id_1 / reference_indicator_id_1.reference_indicator_id_1 = heat_tot_curr_density_tif.consumption / pop_tot_curr_density_tif.count_cell</code> </pre><h2> Wynik wskaźnika </h2><p> Wynik wskaźników jest następujący: </p><pre> <code>{ "values": [ { "unit": "MWh", "name": "heat_tot_curr_density_tif_consumption", "value": "4112030.46" }, { "unit": "cells", "name": "heat_tot_curr_density_tif_count_cell", "value": "46764" }, { "unit": "MWh/person", "name": "heat_tot_curr_density_tif_per_pop_tot_curr_density_tif", "value": "38.0092476775893146" } ], "name": "heat_tot_curr_density_tif" }</code> </pre><h2> Bibliografia </h2><h2> Jak cytować </h2><p> Mostafa Fallahnejad, w Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/Guidelines-for-defining-indicators (kwiecień 2019) </p><h2> Autorzy i recenzenci </h2><p> Ta strona została napisana przez Mostafa Fallahnejad *. </p><ul><li> [] Ta strona została sprawdzona przez Lukasa Kranzla *. </li></ul><p> * <a href="https://eeg.tuwien.ac.at/">Energy Economics Group - TU Wien</a> </p><p> Instytut Systemów Energetycznych i Napędów Elektrycznych </p><p> Gusshausstrasse 27-29 / 370 </p><p> 1040 Wien </p><h2> Licencja </h2><p> Prawa autorskie © 2016-2019: Mostafa Fallahnejad </p><p> Creative Commons Uznanie autorstwa 4.0 Licencja międzynarodowa </p><p> Ten utwór jest objęty licencją Creative Commons CC BY 4.0 International. </p><p> Identyfikator licencji SPDX: CC-BY-4.0 </p><p> Licencja-tekst: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Potwierdzenie </h2><p> Chcielibyśmy wyrazić nasze najgłębsze uznanie dla <a href="https://www.hotmaps-project.eu">projektu „Hotmaps”</a> programu „Horyzont 2020 <a href="https://www.hotmaps-project.eu">”</a> (umowa o udzielenie dotacji nr 723677), który zapewnił środki finansowe na przeprowadzenie obecnego dochodzenia. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-Guidelines-for-defining-indicators) (original) [Bulgarian](bg-Guidelines-for-defining-indicators)<sup>\*</sup> [Croatian](hr-Guidelines-for-defining-indicators)<sup>\*</sup> [Czech](cs-Guidelines-for-defining-indicators)<sup>\*</sup> [Danish](da-Guidelines-for-defining-indicators)<sup>\*</sup> [Dutch](nl-Guidelines-for-defining-indicators)<sup>\*</sup> [Estonian](et-Guidelines-for-defining-indicators)<sup>\*</sup> [Finnish](fi-Guidelines-for-defining-indicators)<sup>\*</sup> [French](fr-Guidelines-for-defining-indicators)<sup>\*</sup> [German](de-Guidelines-for-defining-indicators)<sup>\*</sup> [Greek](el-Guidelines-for-defining-indicators)<sup>\*</sup> [Hungarian](hu-Guidelines-for-defining-indicators)<sup>\*</sup> [Irish](ga-Guidelines-for-defining-indicators)<sup>\*</sup> [Italian](it-Guidelines-for-defining-indicators)<sup>\*</sup> [Latvian](lv-Guidelines-for-defining-indicators)<sup>\*</sup> [Lithuanian](lt-Guidelines-for-defining-indicators)<sup>\*</sup> [Maltese](mt-Guidelines-for-defining-indicators)<sup>\*</sup>  [Portuguese (Portugal, Brazil)](pt-Guidelines-for-defining-indicators)<sup>\*</sup> [Romanian](ro-Guidelines-for-defining-indicators)<sup>\*</sup> [Slovak](sk-Guidelines-for-defining-indicators)<sup>\*</sup> [Slovenian](sl-Guidelines-for-defining-indicators)<sup>\*</sup> [Spanish](es-Guidelines-for-defining-indicators)<sup>\*</sup> [Swedish](sv-Guidelines-for-defining-indicators)<sup>\*</sup>
<sup>\*</sup>: machine translated