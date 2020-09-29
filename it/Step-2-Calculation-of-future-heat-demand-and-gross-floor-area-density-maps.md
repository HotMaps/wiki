<h1> <a class="anchor" id="local-level---step-2--calculation-of-future-heat-demand-and-gross-floor-area-density-maps" href="#local-level---step-2--calculation-of-future-heat-demand-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a> Livello locale - Fase 2: calcolo della futura domanda di calore e mappe della densità della superficie lorda del pavimento </h1><p> <a href="guide-local-and-municipal-levels#the-hotmaps-scenario-toolchain-different-steps"><strong><code>Scenario Toolchain Steps</code></strong></a> <a href="step-1-analysis-of-current-heat-demand-and-available-resource-potentials"><strong><code>Previous step</code></strong></a> <a href="guide-local-and-municipal-levels#the-hotmaps-scenario-toolchain-different-steps"><strong><code>Scenario Toolchain Steps</code></strong></a> <a href="step-3-Calculation-of-costs-of-decentral-heat-supply"><strong><code>Next step</code></strong></a> <br/></p><h2> <a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sommario </h2><ul><li> <a href="#introduction">introduzione</a> </li><li> <a href="#calculation-of-future-heat-demand-and-gross-floor-area-density-maps">Calcolo della futura domanda di calore e mappe della densità della superficie lorda del pavimento</a> </li><li> <a href="#how-to-cite">Come citare</a> </li><li> <a href="#authors-and-reviewers">Autori e revisori</a> </li><li> <a href="#license">Licenza</a> </li><li> <a href="#acknowledgement">Riconoscimento</a> </li></ul><h2> <a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> introduzione </h2><p> Questa è la seconda fase dell&#39;analisi a livello locale e comunale. </p><img src="/en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps/Hotmaps_Local_Toolchain_Step_2final.png"/><br/> * Figura: I passaggi per calcolare la futura domanda di calore e le mappe della densità della superficie lorda del pavimento sono evidenziati nella Toolchain sopra * <br/><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> <a class="anchor" id="calculation-of-future-heat-demand-and-gross-floor-area-density-maps" href="#calculation-of-future-heat-demand-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a> Calcolo della futura domanda di calore e mappe della densità della superficie lorda del pavimento </h2><p> Il secondo passaggio dell&#39;analisi consiste nel generare la domanda futura di calore e le mappe della densità della superficie lorda del pavimento per la città / regione di interesse. È possibile utilizzare i dati sviluppati nel corso del progetto Hotmaps per tutti i paesi dell&#39;UE-28 ( <a href="https://wiki.hotmaps.eu/en/Hotmaps-open-data-repositories">dati predefiniti Hotmaps</a> , disponibili nel <a href="https://gitlab.com/hotmaps">database Hotmaps</a> ), oppure è possibile utilizzare altre mappe della densità della domanda di calore per la regione di interesse. </p><ul><li> Utilizzare le mappe della domanda di calore e della densità della superficie lorda sviluppate nel corso del progetto Hotmaps - dati predefiniti sulla densità della domanda di calore dal database Hotmaps: <ul><li> Per tutti i 28 Stati membri dell&#39;UE (SM), sono state sviluppate mappe della densità della domanda di calore che riflettono la domanda di calore dal riscaldamento degli ambienti e dalla produzione di acqua calda negli edifici. Sono disponibili come domanda totale in edifici residenziali e non residenziali; ma anche suddivisa tra edifici residenziali e non residenziali. Tutte le mappe sono disponibili a livello di ettaro, cioè con una risoluzione di 100x100m. È possibile accedere alle mappe della densità della domanda di calore nella sezione dei livelli dei set di dati Hotmaps. </li><li> È possibile adattare le mappe di densità della domanda di calore in base a ipotesi riguardanti l&#39;evoluzione futura della domanda di calore negli edifici. È possibile utilizzare due diversi moduli di calcolo (CM): <ul><li> Le <a href="https://wiki.hotmaps.eu/en/CM-Scale-heat-and-cool-density-maps">mappe CM - Scale di calore e densità del freddo</a> possono essere utilizzate per ricalcolare la richiesta di calore in ogni ettaro utilizzando lo stesso fattore per tutti gli elementi dell&#39;ettaro. </li><li> La <a href="https://wiki.hotmaps.eu/en/CM-Demand-projection">proiezione CM - Demand</a> può essere utilizzata per generare la futura domanda di calore e mappe della densità della superficie lorda del pavimento basate su scenari di sviluppo predefiniti del patrimonio edilizio nell&#39;UE. Gli scenari predefiniti possono anche essere adattati tramite diversi parametri come una riduzione della domanda di energia o una riduzione della superficie lorda. </li></ul></li></ul></li><li> Utilizza i propri dati sulla densità della domanda di calore nella tua regione di analisi: <ul><li> È anche possibile caricare mappe di densità di calore in un formato file raster (.tif) nella casella degli strumenti Hotmaps quando si crea un account utente e si accede all&#39;account utente. Gli strati di densità della domanda di calore caricati possono riflettere la situazione attuale delle densità di domanda di calore nella regione di interesse, o anche un possibile scenario futuro di densità di domanda di calore, a seconda dei dati di input utilizzati per generare i rispettivi strati. Ulteriori informazioni su come creare un account utente e su come caricare i propri dati sono disponibili <a href="https://wiki.hotmaps.eu/en/Introduction-to-user-interface#upper-toolbar_connect">qui</a> . </li><li> È anche possibile adattare ulteriormente le proprie mappe di densità di calore con le mappe di densità di <a href="https://wiki.hotmaps.eu/en/CM-Scale-heat-and-cool-density-maps">calore e freddo CM - Scale</a> o tramite la <a href="https://wiki.hotmaps.eu/en/CM-Demand-projection">proiezione CM - Demand</a> come per il layer predefinito. </li></ul></li></ul><p> Le mappe della domanda di calore sviluppata e della densità della superficie lorda del pavimento vengono ulteriormente utilizzate nelle fasi successive di altri moduli di calcolo (CM). </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> <a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Come citare </h2><p> Marcus Hummel, Giulia Conforto, in Hotmaps-Wiki, Linee guida per l&#39;utilizzo del toolbox Hotmaps per analisi a livello locale (agosto 2020) </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> <a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori e revisori </h2><p> Questa pagina è stata scritta da Marcus Hummel e Giulia Conforto ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ). </p><p> ☑ Questa pagina è stata recensita da Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ). </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenza </h2><p> Copyright © 2016-2020: Marcus Hummel, Giulia Conforto </p><p> Licenza internazionale Creative Commons Attribution 4.0 </p><p> Questo lavoro è concesso in licenza con una licenza internazionale Creative Commons CC BY 4.0. </p><p> Identificatore licenza SPDX: CC-BY-4.0 </p><p> Testo della licenza: https://spdx.org/licenses/CC-BY-4.0.html </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Riconoscimento </h2><p> Vorremmo esprimere il nostro più profondo apprezzamento al <a href="https://www.hotmaps-project.eu">progetto Hotmaps di</a> Orizzonte 2020 (contratto di sovvenzione numero 723677), che ha fornito i finanziamenti per svolgere la presente indagine. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps) (original) [German](../de/Step-2-Calculation-of-future-heat-demand-and-gross-floor-area-density-maps)<sup>\*</sup>  

<sup>\*</sup> machine translated