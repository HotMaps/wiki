<h2> Sommario </h2><ol><li> <a href="#Introduction">introduzione</a> </li><li> <a href="#Indicators-for-raster-layers">Indicatori per livelli raster</a> <ul><li> <a href="#Buildings">edifici</a> </li><li> <a href="#Population">Popolazione</a> </li><li> <a href="#RES-Potentials">Potenziali di fonte di energia rinnovabile</a> </li></ul></li><li> <a href="#Indicators-for-vector-layers">Indicatori per livelli vettoriali</a> <ul><li> <a href="#Industry">Industria</a> </li><li> <a href="#RES--Potentials">Potenziali di fonte di energia rinnovabile</a> </li><li> <a href="#Electricity">elettricità</a> </li></ul></li><li> <a href="#Example">Esempio</a> </li><li> <a href="#How-to-cite">Come citare</a> </li><li> <a href="#Authors-and-reviewers">Autori e recensori</a> </li><li> <a href="#License">Licenza</a> </li></ol><h2> Indroduction </h2><p> A seconda dei livelli e della regione selezionati, gli indicatori per la configurazione vengono visualizzati in una barra laterale a destra dello schermo </p><p><img alt="results.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/results.png"/></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><p> Di seguito esaminiamo gli indicatori visualizzati per i livelli raster e vettoriali. </p><h2> Indicatori per livelli raster </h2><p> Gli indicatori sui livelli raster sono diversi dai livelli vettoriali. Con differenti intendiamo in termini di aggregazione e disaggregazione. Questo diverso comportamento deriva dalle risoluzioni territoriali. </p><p> I livelli raster hanno generalmente una risoluzione molto più elevata mentre i livelli vettoriali hanno solo attributi in punti o poligoni. </p><p> Ciò significa da un lato, ad esempio, che se si seleziona un livello vettoriale definito dai poligoni NUTS3 e si desidera ad esempio selezionare una regione LAU, il valore NUTS3 non verrà disaggregato al livello LAU, invece l'indicatore NUTS3 in cui questo LAU la regione in cui si trova verrà mostrata nella barra laterale dei risultati. </p><p> D'altra parte, i livelli raster sono aggregati e disaggregati "arbitrariamente" * </p><p> * dalle celle contenenti all'interno della regione selezionata (naturalmente entro il limite della risoluzione raster stessa) </p><h3> edifici </h3><p> <strong>Mappa della densità di calore</strong> </p><p><img alt="hdm.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/hdm.png"/></p><p> <strong>Funzionalità extra</strong> </p><p> Quando si selezionano contemporaneamente il livello di denisità termica e il livello di popolazione viene visualizzato un indicatore aggiuntivo (vedere la figura seguente) </p><p><img alt="hdm2.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/hdm2.png"/></p><h3> In generale: </h3><p> Quando si selezionano contemporaneamente uno dei livelli bulding e il livello popolazione, verrà mostrato un indicatore aggiuntivo come descritto in precedenza </p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Mappa della densità di raffreddamento</strong> </p><p><img alt="cdm.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/cdm.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Volumi di costruzione</strong> </p><p><img alt="bvol.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/bvol.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Superficie lorda</strong> </p><p><img alt="gfa.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/gfa.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><h3> Popolazione </h3><p><img alt="pop.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/pop.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><h3> Clima </h3><p> <strong>Temperatura</strong> </p><p><img alt="temp.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/temp.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Giorni di laurea di raffreddamento</strong> </p><p><img alt="cdd.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/cdd.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Giorni di laurea in riscaldamento</strong> </p><p><img alt="hdd.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/hdd.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Radiazione solare</strong> </p><p><img alt="rad.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/rad.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Velocità del vento</strong> </p><p><img alt="wind.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wind.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><h3> Potenziali RES </h3><p> <strong>Radiazione solare sull'impronta dell'edificio</strong> </p><p><img alt="srobf.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/srobf.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Potenziale di vento a 50m</strong> </p><p><img alt="wp.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wp.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Residui della foresta</strong> </p><p><img alt="forest.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/forest.png"/></p><p><ins> <code><strong><a href="#Indicators-for-raster-layers">To Chapter</a></strong></code> </ins> </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Indicatori per livelli vettoriali </h2><h3> Industria </h3><p> <strong>Emissioni di siti industriali</strong> <img alt="ise.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/ise.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Calore in eccesso del sito industriale</strong> <img alt="iseh.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/iseh.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Nome dell'azienda del sito industriale</strong> <img alt="isec.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/isec.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Sottosettore sito industriale</strong> <img alt="ises.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/ises.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><h3> RES- Potenziali </h3><p> <strong>Potenza impianti di trattamento acque reflue</strong> </p><p><img alt="wwp.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wwp.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Capacità degli impianti di trattamento delle acque reflue</strong> </p><p><img alt="wwc.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/wwc.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Residui Argicultural</strong> </p><p><img alt="ar.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/ar.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Effluenti di Lifestock</strong> </p><p><img alt="le.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/le.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Rifiuti solidi urbani</strong> </p><p><img alt="sw.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/sw.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p> <strong>Conducibilità termica potenziale geotermica</strong> </p><p><img alt="geothermal.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/geothermal.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><h3> elettricità </h3><p> <strong>Emissioni di elettricità C02</strong> </p><p><img alt="electricity.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/electricity.png"/></p><p><ins> <code><strong><a href="#Indicators-for-vector-layers">To Chapter</a></strong></code> </ins> </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Esempio </h2><p> Nell'immagine qui sotto puoi vedere come appare quando vengono visualizzati tutti i livelli (ecco l'Austria come NUTS0 selezionato) </p><p><img alt="all_map.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/all_map.png"/></p><p> Sebbene queste mappe appaiano piuttosto confuse, gli indicatori sono illustrati direttamente. Vedi sotto tutti gli indicatori che sono descritti nella barra laterale dei risultati quando selezioni tutti i livelli per l'Austria (NUTS0) </p><p><img alt="all_results.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/general_tool_functionalities_and_structure/all_results.png"/></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Come citare </h2><p> Jeton Hasani, in Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/Retrieve-indicators-of-a-selected-area (aprile 2019) </p><h2> Autori e recensori </h2><p> <code><a href="https://github.com/HotMaps/hotmaps_wiki/wiki/CM-Access/_edit">Review this page !</a></code> </p> <p> Questa pagina è stata scritta da Jeton Hasani *. </p><ul><li> [] Questa pagina è stata rivista da <code>....</code> </li></ul><p> * <a href="https://eeg.tuwien.ac.at/">Energy Economics Group - TU Wien</a> Institute of Energy Systems and Electrical Drives Gusshausstrasse 27-29 / 370 1040 Wien </p><h2> Licenza </h2><p> Copyright © Hotmaps Licenza internazionale Creative Commons Attribution 4.0 Questo lavoro è concesso in licenza in base alla licenza internazionale Creative Commons CC BY 4.0. Identificatore di licenza SPDX: CC-BY-4.0 Testo di licenza: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Riconoscimento </h2><p> Vorremmo esprimere il nostro più profondo apprezzamento al <a href="https://www.hotmaps-project.eu">progetto Hotmaps di</a> Orizzonte 2020 ( <a href="https://www.hotmaps-project.eu">convenzione di</a> sovvenzione numero 723677), che ha fornito i finanziamenti per lo svolgimento della presente indagine. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><p> <code><a href="https://github.com/HotMaps/hotmaps_wiki/wiki/Indicator-Section/_edit">Review this page</a></code> </p>

This page was automatically translated. View in another language:

[English](en-Retrieve-indicators-of-a-selected-area) (original) [Bulgarian](bg-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Croatian](hr-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Czech](cs-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Danish](da-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Dutch](nl-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Estonian](et-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Finnish](fi-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [French](fr-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [German](de-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Greek](el-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Hungarian](hu-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Irish](ga-Retrieve-indicators-of-a-selected-area)<sup>\*</sup>  [Latvian](lv-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Lithuanian](lt-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Maltese](mt-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Polish](pl-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Romanian](ro-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovak](sk-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovenian](sl-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Spanish](es-Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Swedish](sv-Retrieve-indicators-of-a-selected-area)<sup>\*</sup>
<sup>\*</sup>: machine translated