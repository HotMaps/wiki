<h1><a class="anchor" id="cm-solar-thermal-and-pv-potential" href="#cm-solar-thermal-and-pv-potential"><i class="fa fa-link"></i></a>CM Saulės šilumos ir saulės energijos potencialas</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Turinys</h2><ul><li> <a href="#in-a-glance">Žvilgsniu</a></li><li> <a href="#introduction">Įvadas</a></li><li> <a href="#inputs-and-outputs">Įėjimai ir išėjimai</a></li><li> <a href="#method">Metodas</a><ul><li> <a href="#method_example">Pavyzdys</a></li></ul></li><li> <a href="#github-repository-of-this-calculation-module">Šio skaičiavimo modulio „GitHub“ saugykla</a></li><li> <a href="#sample-run">Pavyzdinis bėgimas</a><ul><li> <a href="#sample-run_test-run-1-default-input-values">1 bandomasis važiavimas: numatytosios įvesties vertės</a></li><li> <a href="#sample-run_test-run-2-modified-input-values">2 bandomasis važiavimas: modifikuotos įvesties vertės</a></li></ul></li><li> <a href="#how-to-cite">Kaip cituoti</a></li><li> <a href="#authors-and-reviewers">Autoriai ir recenzentai</a></li><li> <a href="#license">Licencija</a></li><li> <a href="#acknowledgement">Pripažinimas</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Žvilgsniu</h2><p> Šis modulis apskaičiuoja energijos tiekimo potencialą ir susijusias išlaidas ant stogo įrengtoms saulės šilumos ir saulės energijos sistemoms apibrėžtoje srityje. Modulio įvestys yra pastato pėdsako ir saulės apšvitinimo rastrinės bylos, saulės šiluminių ir saulės energiją naudojančių etaloninių sistemų sąnaudos ir efektyvumas bei naudingos stogo zonos, kurioje sumontuotos saulės šilumos ir saulės energijos sistemos, dalys.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Įvadas</h2><p> Skaičiavimo moduliu siekiama apskaičiuoti saulės šilumos ir fotoelektros energijos potencialą ir finansinę pasirinktos srities galimybes atsižvelgiant į:</p><ul><li> naujų saulės šiluminių ir (arba) saulės energiją naudojančių sistemų įrengimas procentinėje dalyje turimų plotų (numatytasis plotas yra pastato pėdsakas),</li><li> įvertinti naujų gamyklų finansinį pagrįstumą.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Įėjimai ir išėjimai</h2><p> Įvesties parametrai ir sluoksniai, taip pat išvesties sluoksniai ir parametrai yra tokie.</p><p> <strong>Įvesties sluoksniai ir parametrai yra šie:</strong></p><ul><li> rastrinis failas:<ul><li> vidutinė metinė saulės spinduliuotė [kWh / m <sup>2</sup> ],</li><li> su galimais saulės energijos panaudojimo plotais. Numatytasis rastras naudoja pastato pėdsako rastro failą [m <sup>2</sup> ],</li></ul></li><li> galimo ploto, kurį galima padengti saulės baterijomis, procentinė dalis [%],</li><li> etaloniniai augalų parametrai:<ul><li> vidutinė įrenginio didžiausia įrengta didžiausia galia [kW_p],</li><li> sistemos efektyvumas, vertė nuo 0 iki 1 [-],</li><li> saulės spinduliuotė esant standartinei bandymo sąlygai lygi 1 kW / m <sup>2</sup> ,</li><li> modulio efektyvumas standartinėmis bandymo sąlygomis [kW m <sup>2</sup> ].</li></ul></li></ul><p> <strong>Išvesties sluoksniai ir parametrai yra šie:</strong></p><ul><li> Bendra pasirinkto ploto padengimo PV plokštėmis kaina [valiuta]</li><li> Bendra metinė energijos gamyba [MWh / metai]</li><li> Išlyginta energijos kaina [EUR / kWh]</li><li> Rastrinė byla su tinkamiausiomis vietomis PV energijai gaminti</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metodas</h2><p> Pradedant nuo turimos zonos ir PV technologijos rūšies, modulis apskaičiuoja PV energijos gamybą pagal šias prielaidas:</p><ul><li> Optimalus PV sistemos polinkis;</li><li> PV modulių plotas, lygus vartotojo pasirinkto pastato ploto procentui;</li><li> Unikali parinkta technologija visoms įdiegtoms PV sistemoms;</li><li> Numatytasis sistemos efektyvumas lygus 0,75.</li></ul><p> Šios prielaidos buvo padarytos siekiant atsižvelgti į regiono planavimo etapą, o ne į konkrečios PV sistemos projektą.</p><p> Metinė energijos išeiga nustatoma atsižvelgiant į metinio saulės spinduliavimo erdvinį pasiskirstymą pastato pėdsakuose. PV energijos gamyba apskaičiuojama vienai tipinei gamyklai. Labiausiai reprezentatyvi PV sistemos įdiegta didžiausia galia yra modulio įvestis. Taigi apskaičiuojamas vieno augalo padengtas paviršius ir bendras augalų skaičius.</p><p> Galiausiai apskaičiuojamas tinkamiausias plotas, atsižvelgiant į didesnio energijos gamybos stogus. Kiekvieno pikselio energijos gamyba apima tik dalį stogų, lygų f_roof. Tinkamiausio ploto energijos gamybos integralas yra lygus visai pasirinktos zonos energijos gamybai.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="example" href="#example"><i class="fa fa-link"></i></a> Pavyzdys</h3><p> Pateikiant praktinį pavyzdį, CM logika / metodika taikoma iš anksto apibrėžtai sričiai. Pagal numatytuosius nustatymus įvesties sritis yra pastatų pėdsakas. Pavyzdžiui, Bolzano miestas (Italija), kadangi didelė miesto dalis yra istorinis centras (kur neįmanoma sumontuoti saulės baterijų), galime apskaičiuoti, kad saulės energijai surinkti gali būti naudojamas tik 1 stogas kas 5. (~ 20%). Vietoj to, jei nurodote plotą, kurį galima panaudoti tam tikram saulės laukui įgyvendinti, galite nustatyti, kad 100% ploto gali būti naudojama Saulės sistemai.</p><p> Kurį 20% Bolzano stogų plotą gali dengti PV plokštės? Uždengti visą stogą nėra realu, nes dalis stogo nėra tinkamos orientacijos. Kadangi pastatas paprastai turi 4 šonus, galime įsivaizduoti, kad maždaug 25% stogo yra gerai orientuoti (bent jau Bolzane, kur dauguma stogų nėra plokšti ir turi 2 arba 4 stogų šlaitus). Nepaisant to, mes turime šešėlių efektą iš aplinkinių medžių, pastatų, kalnų ir tt, ir apskritai paliekame šiek tiek vietos arti stogų ribos, todėl įsivaizduokime, kad PV gali naudoti 50% gerai orientuoto stogo (25 % * 50% = 12,5%), numatytoji vertė yra kiek optimistiškesnė (15%).</p><p> Saulės lauko atveju PV stygos užima apie 40-50% ploto, kad būtų išvengta šešėlių efekto tarp PV stygų.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="example-with-a-pv-system-on-a-building-footprint" href="#example-with-a-pv-system-on-a-building-footprint"><i class="fa fa-link"></i></a> Pavyzdys su PV sistema ant pastato pėdsako</h4><p> Pavyzdžiui, paaiškiname vieno pikselio (1 hektaro ploto) metodiką. CM ta pati logika taikoma kiekvienam pikseliui vartotojo pasirinktoje srityje. Numatytojo sluoksnio (pastato pėdsako) pikselių matmenys yra 100x100m, todėl turime 10000 m² plotą. Šiame pavyzdyje įsivaizduokite, kad pikselyje yra tik 3000 m² stogų, kita trūkstama paviršiaus dalis yra trasoms, želdynams, upėms ir kt. Skirta CM dalis. CM įgyvendinama logika:</p><ul><li> pritaikykite pirmąjį procentą, kad gautumėte tik stogus, kuriuos galiu priimti sistemoje: <code>available_surface = 3000 [m²] * 20% = 600 [m²]</code></li><li> Apskaičiuota, kad paviršius, kurį tikrai gali dengti PV sistemos, yra 12,5%, todėl: <code>available_pv_surface = 600 [m²] * 12.5% = 75 [m²]</code></li><li> Tada mes naudojame PV efektyvumo informaciją (pagal numatytuosius nustatymus 0,15), kad apskaičiuotume paviršių, reikalingą vienai <code>single_pv_surface = 3 [kWp] / 0.15 = 20 [m²]</code> elektrinei (pagal nutylėjimą - 3 kWp). <code>single_pv_surface = 3 [kWp] / 0.15 = 20 [m²]</code></li><li> tada apskaičiuojame PV sistemų, kurias galima įdiegti pikselyje, skaičių: <code>n_pv_plants = 75 [m²] // 20 [m²] = 3</code> , todėl mes turėsime 3 3 KWp įrenginius, įrengtus pikselyje 100 x 100 m (taigi 9 kWp), tada padauginsime šią vertę iš pagamintos energijos iš 1 kWp ir padauginsime iš PV sistemų (keitiklio ir perdavimo, pagal numatytuosius nustatymus: 0,85) efektyvumo, kad gautume visą pikselio pagamintą energiją: <code>pv_energy = solar_radiation [kWh/kWp/year] * 9 [kWp] * 0.85</code></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="example-with-a-solar-pv-field" href="#example-with-a-solar-pv-field"><i class="fa fa-link"></i></a> Pavyzdys su saulės saulės lauku</h4><p> Dabar turime 100x100m pikselį, kurį galima naudoti PV lauko sistemai:</p><ul><li> kaip sakyta anksčiau, pirmasis procentas yra 100%, nes visoje srityje gali būti PV sistema: <code>available_surface = (100 x 100) [m²] * 100% = 10000 [m²]</code></li><li> Paviršius, kurį galima padengti PV sistemomis, yra: <code>available_pv_surface = 10000 m² * 50% = 5000 m²</code></li><li> Tada mes naudojame PV efektyvumo informaciją (pagal numatytuosius nustatymus 0,15), kad apskaičiuotume paviršių, reikalingą vienai <code>single_pv_surface = 3 [kWp] / 0.15 = 20 [m²]</code> elektrinei (pagal nutylėjimą - 3 kWp). <code>single_pv_surface = 3 [kWp] / 0.15 = 20 [m²]</code></li><li> tada apskaičiuojame sistemų, kurias galima įdiegti pikselyje, skaičių: <code>n_pv_plants = 5000 // 20 = 250</code> , todėl turėsime 250 3 KWp įrenginių, įrengtų 100 x 100 m pikselyje (taigi 750 kWp), tada padauginsime šią vertę iš valandos pagamintos energijos iš 1 kWp ir padauginsime iš PV sistemų efektyvumo (keitiklio ir perdavimo, pagal nutylėjimą: 0,85), kad gautume visą pikselio pagamintą energiją: <code>pv_energy = solar_radiation [kWh/kWp/year] * 750 kWp * 0.85</code></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="example-with-a-pv-&amp;-st-system-on-a-building-footprint" href="#example-with-a-pv-&amp;-st-system-on-a-building-footprint"><i class="fa fa-link"></i></a> Pavyzdys su PV ir ST sistema ant pastato pėdsako</h4><p> Pastato paviršius, kurį galima naudoti, yra ribotas išteklius. Todėl negalima naudoti to paties paviršiaus saulės energijai rinkti naudojant PV sistemą ir tuo pačiu metu naudoti saulės šilumos sistemą. Taigi, prisimindami ankstesnį pavyzdį, mes jau turime 75 m² ploto, skirto PV, mes apskaičiavome, kad gerai orientuotas stogas užima 25% viso paviršiaus, todėl mes turime dar likusius 75 [m²]. Galime naudoti tik dalį, tarkime, kad 7,5 proc. Tai reiškia, kad jei prieš tai apsvarstysime 25% stogo su gera ekspozicija, tai mes manome, kad 12,5% yra skirti PV ir 7,5 skirti ST, todėl mes naudojame 20% 25%.</p><p> Taigi pateikiu praktinį pavyzdį:</p><ul><li> pritaikykite pirmąjį procentą, kad gautumėte tik stogus, kuriuos galiu priimti sistemoje: <code>available_surface = 3000 [m²] * 20% = 600 [m²]</code></li><li> Paviršius, kurį tikrai gali padengti ST sistemos, yra: 600 m² * 7,5% = 67,5 m² <code>available_st_surface = 600 [m²] * 7.5% = 45 [m²]</code> atkreipkite dėmesį, kad <code>75 + 45 = 120 [m²]</code> yra mažesnis nei apskaičiuotas paviršius, kurio ekspozicija galėtų būti gera ( <code>available_surface * 25% = 150 [m²]</code> ).</li><li> Tada apskaičiuodami ST augalų skaičių naudojame ST sistemos reikalaujamą ST paviršiaus informaciją (pagal nutylėjimą 5 m²): <code>n_st_plants = 45 [m²] // 5 [m²] = 9</code></li><li> tada apskaičiuojame sumontuotą ST augalų paviršių: st_surface = 9 * 5 m² = 45 [m²] &quot;</li><li> ir dabar taikome visuotinę saulės spinduliuotę (kWh / m²) padengtu paviršiumi pagal ST plokščių efektyvumą (pagal nutylėjimą 0,85): <code>solar_radiation [kWh/m²] * 45 [m²] * 0.85</code></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Šio skaičiavimo modulio „GitHub“ saugykla</h2><p> <a href="https://github.com/HotMaps/solar_potential/tree/develop">Čia</a> gausite šio skaičiavimo modulio vystymosi pažangą.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="test-run-1" href="#test-run-1"><i class="fa fa-link"></i></a> 1 bandomasis važiavimas</h2><p> Čia skaičiavimo modulis vykdomas Lombardijos regione Italijoje (NUTS2).</p><ul><li> Pirmiausia pasirinkite „Riešutai2“ ir pasirinktą sritį.</li></ul><img src="/images/cm_solar_PV/default_values_01.png"/> 1 pav. Pasirinkite regioną<ul><li><p> Atlikite toliau pateiktame paveikslėlyje nurodytus veiksmus:</p><ul><li> Spustelėkite mygtuką „Sluoksniai“, kad atidarytumėte langą „Sluoksniai“:</li><li> Spustelėkite skirtuką „APSKAIČIAVIMO MODULIS“.</li><li> Spustelėkite mygtuką „SOLAR PV POTENTIAL“.</li></ul></li><li><p> Dabar atidaromas „Saulės PV potencialas“ ir yra paruoštas veikti.</p></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Pavyzdinis bėgimas</h2><h3><a class="anchor" id="test-run-1--default-input-values" href="#test-run-1--default-input-values"><i class="fa fa-link"></i></a> 1 bandomasis važiavimas: numatytosios įvesties vertės</h3><p> Pagal numatytąsias įvesties vertes atsižvelgiama į galimybę ant pastatų montuoti ant stogo montuojamas PV plokštes. Šios vertės nurodo 3 kWp jėgainę. Atsižvelgiant į papildomus vietos aspektus ir išlaidas, gali tekti nustatyti mažesnes arba didesnes numatytąsias reikšmes. Todėl vartotojas turėtų pakoreguoti šias vertes, kad surastų geriausią jo / jos tyrimo ribų derinį.</p><p> Norėdami paleisti skaičiavimo modulį, atlikite kitus veiksmus:</p><ul><li> Priskirkite paleistos sesijos pavadinimą (nebūtina - čia mes pasirinkome „Test Run 1“) ir nustatykite įvesties parametrus (čia buvo naudojamos numatytosios vertės).</li></ul><img alt="Fig. 2" src="../images/cm_solar_PV/default_values_02.png" title="1 bandomasis važiavimas su numatytosiomis vertėmis"/><ul><li> Palaukite, kol procesas bus baigtas.</li><li> Kaip išvestį rodikliai ir diagramos rodomi lange „REZULTATAI“. Rodikliai rodo:<ul><li> Bendra energijos gamyba,</li><li> Bendros sąrankos išlaidos,</li><li> Įdiegtų sistemų skaičius,</li><li> Išlyginta energijos kaina.</li></ul></li></ul><img alt="Fig. 3" src="../images/cm_solar_PV/default_values_03.png" title="1 bandomojo važiavimo indikatorių skirtukas"/><ul><li> Taip pat ant drobės pridedamas naujas sluoksnis, rodantis pastatus, turinčius didesnį energijos potencialą. Šis sluoksnis pridedamas prie kategorijų „Skaičiavimo modulis“ sluoksnių sąrašo. Vykdymo sesijos pavadinimas išskiria šio vykdymo išvestis iš kitų. Jei atšaukėte numatytuosius sluoksnius ir pasirinkote TEST RUN 1, galite vizualizuoti tinkamiausias vietas saulės elektrinių įrengimams.</li></ul><img alt="Fig. 4" src="../images/cm_solar_PV/default_values_03.png" title="1 bandomasis važiavimas Skaičiavimo modulis Sluoksniai"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="test-run-2--modified-input-values" href="#test-run-2--modified-input-values"><i class="fa fa-link"></i></a> 2 bandomasis važiavimas: modifikuotos įvesties vertės</h3><p> Atsižvelgdami į savo patirtį ir vietines žinias, galite padidinti arba sumažinti įvesties vertes, kad gautumėte geresnių rezultatų. Galite nuspręsti padidinti pastato paviršių, tinkamą PV elektrinėms.</p><ul><li><p> Priskirkite vykdymo sesijai pavadinimą (nebūtina - čia pasirinkome „Test Run 2“) ir nustatykite įvesties parametrus Pastatų su saulės baterijomis procentinė dalis yra lygi 50. Tai reiškia, kad mes padengiame 50% turimų pastatų stogų. Atkreipkite dėmesį, kad kiekvienas pikselis gali atspindėti daugiau nei vieną pastatą, o mes nepadengiame viso stogo PV plokštėmis, todėl vartotojas taip pat gali nustatyti efektyvų pastato stogo panaudojimo koeficientą. Numatytoji vertė nustatyta į 0,15. Tai reiškia, kad tik 15% pikselio stogo paviršiaus yra padengti PV plokštėmis.</p></li><li><p> Palaukite, kol procesas bus baigtas.</p></li><li><p> Kaip išvestį rodikliai ir diagramos rodomi lange „REZULTATAI“. Rodikliai rodo:</p><ul><li> Bendra energijos gamyba,</li><li> Bendros sąrankos išlaidos,</li><li> Įdiegtų sistemų skaičius,</li><li> Išlyginta energijos kaina.</li></ul></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kaip cituoti</h2><p> Giulia Garegnani, „Hotmaps-Wiki“, CM-Solar-PV-potential (2019 m. Balandžio mėn.)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autoriai ir recenzentai</h2><p> Šį puslapį parašė Giulia Garegnani ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Šį puslapį peržiūrėjo Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licencija</h2><p> Autorių teisės © 2016-2020: Giulia Garegnani</p><p> „Creative Commons Attribution 4.0“ tarptautinė licencija</p><p> Šis darbas licencijuotas pagal „Creative Commons CC BY 4.0“ tarptautinę licenciją.</p><p> SPDX licencijos identifikatorius: CC-BY-4.0</p><p> Licencijos tekstas: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Pripažinimas</h2><p> Norėtume nuoširdžiai vertinti „Horizon 2020“ „ <a href="https://www.hotmaps-project.eu">Hotmaps“ projektą</a> (dotacijos sutarties numeris 723677), kuris skyrė finansavimą šiam tyrimui atlikti.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Solar-thermal-and-PV-potential) (original) [Bulgarian](../bg/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Czech](../cs/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Danish](../da/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [German](../de/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Greek](../el/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Spanish](../es/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Estonian](../et/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Finnish](../fi/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [French](../fr/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Irish](../ga/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Croatian](../hr/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Hungarian](../hu/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Italian](../it/CM-Solar-thermal-and-PV-potential)<sup>\*</sup>  [Latvian](../lv/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Maltese](../mt/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Dutch](../nl/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Polish](../pl/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Romanian](../ro/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Slovak](../sk/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Slovenian](../sl/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Swedish](../sv/CM-Solar-thermal-and-PV-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated