<h1> <a class="anchor" id="data-upload-functionalities" href="#data-upload-functionalities"><i class="fa fa-link"></i></a> Funzionalità di caricamento dei dati </h1><h2> <a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sommario </h2><ul><li> <a href="#introduction">introduzione</a> </li><li> <a href="#how-to-upload-a-layer-with-custom-data">Come caricare un livello con dati personalizzati</a> </li><li> <a href="#how-to-display-an-uploaded-layer">Come visualizzare un livello caricato</a> </li><li> <a href="#offline-mode">Modalità offline</a> </li><li> <a href="#data-security-and-privacy">Sicurezza dei dati e privacy</a> </li><li> <a href="#how-to-cite">Come citare</a> </li><li> <a href="#authors-and-reviewers">Autori e revisori</a> </li><li> <a href="#license">Licenza</a> </li><li> <a href="#acknowledgement">Riconoscimento</a> </li></ul><h2> <a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> introduzione </h2><p> La piattaforma ti consente di caricare dati personalizzati dal tuo computer al tuo account utente Hotmaps. Questa parte è strettamente collegata alla funzione di <a href="Data-export-functionalities">esportazione</a> poiché l&#39;obiettivo finale di queste due funzioni è esportare i dati, modificarli e visualizzarli sulla casella degli strumenti in seguito importando nuovamente quei dati. Si noti che i dati caricati possono essere visualizzati e un certo numero di essi può essere utilizzato nei moduli di calcolo. </p><p> Questa operazione <strong>richiede un account utente</strong> . I processi di registrazione e accesso sono spiegati nella pagina seguente: <a href="Introduction-to-user-interface#Connect">Account utente</a> . </p><p> I dati caricati devono rispettare i formati dei dati e la proiezione definiti dalla casella degli strumenti. Per assicurarti di caricare il set di dati corretto, puoi sempre scaricare un campione di dati dalla casella degli strumenti per una piccola area e successivamente aggiornarlo e riempirlo con i tuoi dati. In caso di file CSV, assicurati di mantenere tutte le colonne, il separatore di colonna e i tipi di dati del campione scaricato. ** Consigliamo di aprire i file CSV in un editor di testo piuttosto che in MS Excel per poter vedere tutti i caratteri al suo interno &quot;. Per quanto riguarda il caricamento di file raster, vanno considerati i seguenti aspetti: </p><ol><li> Il raster dovrebbe avere il sistema di riferimento delle coordinate di <strong>ETRS89-extended / LAEA Europe - EPSG: 3035</strong> ; </li><li> La coordinata dell&#39;origine del raster (angolo in alto a sinistra del raster) dovrebbe essere un moltiplicando di 100, ad esempio (4334900, 3019700); </li><li> La risoluzione della mappa raster dovrebbe essere 100x100m; </li><li> Il raster dovrebbe fare riferimento a una località in Europa. </li><li> prestare attenzione alle unità del set di dati originale mostrato nella casella degli strumenti. Ad esempio, la mappa della densità di calore ha l&#39;unità di <em>MWh / ha</em> e se il layer caricato ha un&#39;altra unità, potresti incontrare difficoltà nella visualizzazione dei tuoi dati. Inoltre, non otterrai una risposta corretta dai moduli di calcolo. </li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="how-to-upload-a-layer-with-custom-data" href="#how-to-upload-a-layer-with-custom-data"><i class="fa fa-link"></i></a> Come caricare un livello con dati personalizzati </h2><p> Premendo il pulsante <img alt="pulsante account" src="../images/account-btn.png"/> pulsante nell&#39;angolo in alto a sinistra della pagina. Questo porterà la pagina del profilo in primo piano. </p><p> Nella pagina del profilo: </p><ol><li> selezione del tipo di set di dati, </li><li> selezione del file da caricare (.tif o .csv), </li><li> caricare facendo clic sull&#39;icona &quot;+&quot; </li></ol><p><img alt="caricamento della pagina del profilo" src="../images/profile-upload.png"/></p><p> La selezione del tipo di set di dati viene utilizzata per ottenere la simbologia corretta. Se il tuo set di dati non corrisponde alla simbologia del layer, non verrà visualizzato correttamente. </p><p> Fatto ciò, verrà visualizzato un messaggio di successo e il livello apparirà nell&#39;elenco dei livelli nella pagina del profilo. </p><p> Ogni utente ha uno spazio su disco limitato, una volta che l&#39;utente non ha abbastanza spazio libero, non sarà in grado di aggiungere altri file. Lo spazio rimanente sul tuo account utente viene mostrato con il grafico a torta. </p><p> Prima di poter visualizzare il layer sulla mappa, il server avrà bisogno di un po &#39;di tempo (fino a diversi minuti a seconda delle dimensioni del file) dopo il messaggio di successo per importare correttamente il set di dati. Il set di dati è disponibile per essere visualizzato una volta aggiornate le sue dimensioni nel tuo account utente. </p><p><img alt="caricamento completato" src="../images/upload_complete.png"/></p><p> Il layer può ora essere visualizzato sulla mappa attivandolo nel pannello dei layer. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="how-to-display-an-uploaded-layer" href="#how-to-display-an-uploaded-layer"><i class="fa fa-link"></i></a> Come visualizzare un livello caricato </h2><p> È possibile visualizzare un livello che è stato precedentemente caricato dal pannello dei livelli facendo clic sul <img alt="pulsante dei livelli" src="../images/layers-btn.png"/> pulsante. </p><p> L&#39;elenco dei livelli caricati viene visualizzato nella sezione &quot;Livelli personali&quot; nella parte superiore del pannello di sinistra. </p><p> Un livello può essere visualizzato attivandolo nel pannello di sinistra. </p><p><img alt="carica il livello di visualizzazione" src="../images/upload-layers.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="offline-mode" href="#offline-mode"><i class="fa fa-link"></i></a> Modalità offline </h2><p> Se sei disconnesso, non sarai in grado di accedere a nessuno dei tuoi livelli personali, ma saranno ancora disponibili una volta effettuato nuovamente l&#39;accesso. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="data-security-and-privacy" href="#data-security-and-privacy"><i class="fa fa-link"></i></a> Sicurezza dei dati e privacy </h2><p> Il toolbox Hotmaps offre sicurezza agli utenti che creano un account sulla piattaforma. Sono state implementate le normali misure di sicurezza: protocollo HTTPS, hashing / salting delle password e così via. Tuttavia, tieni presente che per il momento i set di dati caricati non sono crittografati sul server. Quindi, evita di caricare dati sensibili. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Come citare </h2><p> Daniel Hunacek e Lucien Zuber, in Hotmaps Wiki, Funzionalità di caricamento dati (settembre 2020) </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori e revisori </h2><p> Questa pagina è stata scritta da Daniel Hunacek e Lucien Zuber ( <strong><a href="https://www.hevs.ch">HES-SO</a></strong> ). </p><p> ☑ Questa pagina è stata recensita da Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ). </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenza </h2><p> Copyright © 2016-2020: Daniel Hunacek e Lucien Zuber </p><p> Licenza internazionale Creative Commons Attribution 4.0 </p><p> Questo lavoro è concesso in licenza con una licenza internazionale Creative Commons CC BY 4.0. </p><p> Identificatore licenza SPDX: CC-BY-4.0 </p><p> Testo della licenza: https://spdx.org/licenses/CC-BY-4.0.html </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Riconoscimento </h2><p> Vorremmo esprimere il nostro più profondo apprezzamento al <a href="https://www.hotmaps-project.eu">progetto Hotmaps di</a> Orizzonte 2020 (contratto di sovvenzione numero 723677), che ha fornito i finanziamenti per svolgere la presente indagine </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> 
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Data-upload-functionalities) (original) [German](../de/Data-upload-functionalities)<sup>\*</sup>  

<sup>\*</sup> machine translated