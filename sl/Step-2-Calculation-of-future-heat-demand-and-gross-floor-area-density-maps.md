<h1><a class="anchor" id="local-level---step-2--calculation-of-future-heat-demand-and-gross-floor-area-density-maps" href="#local-level---step-2--calculation-of-future-heat-demand-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a>Lokalna raven - 2. korak: Izračun prihodnjih potreb po toploti in zemljevidov bruto gostote tal</h1><p> <a href="guide-local-and-municipal-levels#the-hotmaps-scenario-toolchain-different-steps"><strong><code>Scenario Toolchain Steps</code></strong></a> <a href="step-1-analysis-of-current-heat-demand-and-available-resource-potentials"><strong><code>Previous step</code></strong></a> <a href="step-3-Calculation-of-costs-of-decentral-heat-supply"><strong><code>Next step</code></strong></a><br/></p><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Kazalo</h2><ul><li> <a href="#introduction">Uvod</a></li><li> <a href="#calculation-of-future-heat-demand-and-gross-floor-area-density-maps">Izračun prihodnjih potreb po toploti in zemljevidov bruto gostote tal</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Avtorji in recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Zahvala</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> To je drugi korak analize na lokalni in občinski ravni.</p><img src="/en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps/Hotmaps_Local_Toolchain_Step_2final.png"/><p> <em>Slika: Koraki za izračun prihodnjih potreb po toploti in zemljevidi bruto gostote tal so poudarjeni v orodni verigi zgoraj</em></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="calculation-of-future-heat-demand-and-gross-floor-area-density-maps" href="#calculation-of-future-heat-demand-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a> Izračun prihodnjih potreb po toploti in zemljevidov bruto gostote tal</h2><p> Drugi korak v analizi je ustvariti prihodnje karte povpraševanja po toploti in bruto gostote tal za vaše mesto / regijo, ki vas zanima. Uporabite lahko podatke, razvite med projektom Hotmaps za vse države EU-28 ( <a href="https://wiki.hotmaps.eu/en/Hotmaps-open-data-repositories">privzeti podatki Hotmaps</a> so na voljo v <a href="https://gitlab.com/hotmaps">bazi podatkov Hotmaps</a> ), ali pa uporabite druge zemljevide gostote povpraševanja po toploti za svojo regijo, ki vas zanima.</p><ul><li> Uporabite zemljevide povpraševanja po toploti in bruto gostote tal, razvite med projektom Hotmaps - privzeti podatki o gostoti toplote iz baze podatkov Hotmaps:<ul><li> Za vse države članice EU-28 so bile razvite karte gostote povpraševanja po toploti, ki odražajo potrebe po toploti zaradi ogrevanja prostorov in proizvodnje tople vode v stavbah. Na voljo so kot skupno povpraševanje v stanovanjskih in nestanovanjskih stavbah; ampak tudi razdeljeni med stanovanjske in nestanovanjske stavbe. Vsi zemljevidi so na voljo na ravni hektarjev, to je z ločljivostjo 100x100m. Zemljevidi gostote potrebe po toploti so dostopni v odseku plasti podatkovnih nizov Hotmaps.</li><li> Zemljevide gostote potrebe po toploti je mogoče prilagoditi predpostavkam glede prihodnjega razvoja potrebe po toploti v stavbah. Uporabljata se lahko dva različna računska modula (CM):<ul><li> <a href="https://wiki.hotmaps.eu/en/CM-Scale-heat-and-cool-density-maps">Karte CM - Scale za toploto in gostoto mraza</a> lahko uporabimo za ponovni izračun potrebe po toploti na vsakem hektarju z uporabo enakega faktorja za vse hektarske elemente.</li><li> <a href="https://wiki.hotmaps.eu/en/CM-Demand-projection">Projekcijo povpraševanja CM</a> lahko uporabimo za ustvarjanje prihodnjih potreb po toploti in zemljevidov bruto gostote tal na podlagi privzetih razvojnih scenarijev stavbnega fonda v EU. Privzete scenarije je mogoče prilagoditi tudi z več parametri, kot je zmanjšanje potrebe po energiji ali zmanjšanje bruto talne površine.</li></ul></li></ul></li><li> Uporabite lastne podatke o gostoti potrebe po toploti v vašem območju analize:<ul><li> Zemljevide gostote toplote v obliki rastrske datoteke (.tif) je mogoče naložiti v orodjarno Hotmaps pri ustvarjanju uporabniškega računa in prijavi v uporabniški račun. Naložene plasti gostote potrebe po toploti lahko odražajo trenutno stanje gostote potrebe po toploti v območju, ki nas zanima, ali pa tudi morebitni prihodnji scenarij gostote potrebe po toploti, odvisno od vhodnih podatkov, uporabljenih za generiranje posameznih slojev. Več informacij o tem, kako ustvariti uporabniški račun in kako naložiti svoje podatke, najdete <a href="https://wiki.hotmaps.eu/en/Introduction-to-user-interface#upper-toolbar_connect">tukaj</a> .</li><li> Lastne karte gostote toplote je mogoče tudi dodatno prilagoditi s kartami <a href="https://wiki.hotmaps.eu/en/CM-Scale-heat-and-cool-density-maps">CM - Scale heat and cold gostote</a> ali s pomočjo <a href="https://wiki.hotmaps.eu/en/CM-Demand-projection">projekcije CM - Demand,</a> kot za privzeti sloj.</li></ul></li></ul><p> Razvite karte povpraševanja po toploti in bruto gostote tal se v nadaljnjih korakih uporabljajo v drugih računskih modulih (CM).</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Marcus Hummel, Giulia Conforto, v Hotmaps-Wiki, Smernice za uporabo orodjarne Hotmaps za analize na lokalni ravni (avgust 2020)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Avtorji in recenzenti</h2><p> To stran sta napisala Marcus Hummel in Giulia Conforto ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> ☑ To stran je pregledal Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Avtorske pravice © 2016-2020: Marcus Hummel, Giulia Conforto</p><p> Creative Commons Attribution 4.0 International License</p><p> To delo je licencirano pod licenco Creative Commons CC BY 4.0 International.</p><p> Identifikator licence SPDX: CC-BY-4.0</p><p> Besedilo licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Zahvala</h2><p> Radi bi izraziti našo najglobljo zahvalo Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps projekta</a> (Sporazum o dodelitvi sredstev številka 723677), ki je zagotovil sredstva za izvedbo te preiskave.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps) (original) [Bulgarian](../bg/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Czech](../cs/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Danish](../da/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [German](../de/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Greek](../el/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Spanish](../es/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Estonian](../et/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Finnish](../fi/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [French](../fr/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Irish](../ga/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Croatian](../hr/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Hungarian](../hu/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Italian](../it/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Lithuanian](../lt/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Latvian](../lv/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Maltese](../mt/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Dutch](../nl/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Polish](../pl/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Romanian](../ro/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> [Slovak](../sk/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup>  [Swedish](../sv/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated