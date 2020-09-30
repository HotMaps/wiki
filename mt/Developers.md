<h1><a class="anchor" id="developers" href="#developers"><i class="fa fa-link"></i></a>Żviluppaturi</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Werrej</h2><ul><li> <a href="#introduction">Introduzzjoni</a></li><li> <a href="#dataset-integration">Integrazzjoni tas-sett tad-dejta</a></li><li> <a href="#add-your-datasets-on-gitlab">Żid is-settijiet tad-dejta tiegħek fuq GitLab</a></li><li> <a href="#list-of-main-repositories">Lista tar-repożitorji ewlenin</a></li><li> <a href="#how-to-contribute-code">Kif tikkontribwixxi kodiċi</a></li><li> <a href="#description-of-it-infrastructure">Deskrizzjoni tal-infrastruttura tal-IT</a><ul><li> <a href="#description-of-it-infrastructure_run-with-docker">Mexxi ma &#39;Docker</a></li><li> <a href="#description-of-it-infrastructure_server-infrastructure">Infrastruttura tas-server</a><ul><li> <a href="#description-of-it-infrastructure_server-infrastructure_infrastructure">Infrastruttura</a></li><li> <a href="#description-of-it-infrastructure_server-infrastructure_performance">Prestazzjoni</a></li></ul></li></ul></li><li> <a href="#read-me">Aqra.ME</a></li><li> <a href="#how-to-define-indicators">Kif jiġu definiti l-indikaturi</a></li><li> <a href="#how-to-cite">Kif tikkwota</a></li><li> <a href="#authors-and-reviewers">Awturi u reviżuri</a></li><li> <a href="#license">Liċenzja</a></li><li> <a href="#acknowledgement">Rikonoxximent</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduzzjoni</h2><p> Din il-paġna fiha l-informazzjoni kollha meħtieġa għall-iżviluppaturi biex jikkontribwixxu għall-Pjattaforma Hotmaps jew biex jifhmu kif qed taħdem.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="dataset-integration" href="#dataset-integration"><i class="fa fa-link"></i></a> Integrazzjoni tas-sett tad-dejta</h2><p> L-integrazzjoni ta &#39;settijiet ta&#39; dejta pubbliċi ġodda hija ttrattata kif ġej:</p><ol><li> settijiet ta &#39;dejta għandhom jiġu mbuttati għal repożitorju ta&#39; git ( <a href="#add-your-datasets-on-gitlab">Żid is-settijiet ta &#39;dejta tiegħek fuq GitLab</a> )</li><li> kull lejl skript jintegra s-settijiet tad-dejta ġodda / aġġornati mal-pjattaforma DEV</li><li> jekk kollox ħadem tajjeb, is-sett tad-dejta issa huwa disponibbli fuq il-pjattaforma DEV u l-iżviluppaturi jistgħu jintegrawh fil-kodiċi tagħhom</li><li> Ladarba l-kodifikazzjoni tintemm il-karatteristiċi l-ġodda huma miżjuda mal-pjattaforma tal-produzzjoni permezz ta &#39;ħarġa ġdida</li></ol><p> <strong>Integrazzjoni tad-dejta</strong></p><p> Jekk sett ta &#39;dejta jonqos waqt l-integrazzjoni, tinħoloq kwistjoni fuq Taiga (pjattaforma ta&#39; ġestjoni tal-proġett). Il-kwistjoni turi l-iżball imqajjem u l-iżviluppatur għandu jirranġaha u jimbotta x-xogħol tiegħu għal Git sabiex l-iskript ikun jista &#39;jipprova jintegrah mill-ġdid filgħaxija ta&#39; wara.</p><p> Il-kodiċi tas-sors tal-iskript tal-integrazzjoni huwa disponibbli fuq din il-link: <a href="https://github.com/HotMaps/CI_DatasetIntegration">Integrazzjoni tad-dejta</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="add-your-datasets-on-gitlab" href="#add-your-datasets-on-gitlab"><i class="fa fa-link"></i></a> Żid is-settijiet tad-dejta tiegħek fuq GitLab</h2><p> Biex iżżid settijiet ta &#39;dejta fuq il-lista ta&#39; settijiet ta &#39;dejta pubbliċi, għandhom jiġu mbuttati lejn repożitorju ġdid ta&#39; Git fuq GitLab. Hawn hi l-Organizzazzjoni GitLab fejn għandhom jiġu mbuttati s-settijiet tad- <a href="https://gitlab.com/hotmaps">dejta</a> : <a href="https://gitlab.com/hotmaps">Settijiet tad-dejta fuq il-GitLab</a> .</p><p> Darba kuljum ir-repożitorji jiġu kkontrollati għal impenji ġodda u integrati jekk iva. Il-proċess ta &#39;integrazzjoni jivverifika jekk id-dejta tikkonformax mal-ispeċifikazzjoni jew le.</p><p> Hawn hi l-ispeċifikazzjoni: <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf">Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="list-of-main-repositories" href="#list-of-main-repositories"><i class="fa fa-link"></i></a> Lista tar-repożitorji ewlenin</h2><p> Il-kodiċi tal-applikazzjoni jinsab fuq GitHub taħt l- <a href="https://github.com/HotMaps">organizzazzjoni Hotmaps</a> . Din l-organizzazzjoni għandha diversi repożitorji</p><ul><li> <a href="https://github.com/HotMaps/Hotmaps-toolbox-service">Hotmaps-toolbox-client</a> fih il-frontend tal-applikazzjoni tagħna. Huwa proġett Angulari (JavaScript)</li><li> <a href="https://github.com/HotMaps/Hotmaps-toolbox-service">Hotmaps-toolbox-service</a> fih l-API għall-applikazzjoni tagħna. Huwa bbażat fuq Flask (Python)</li><li> <a href="https://github.com/HotMaps/base_calculation_module">bażi-kalkolu-modulu</a> huwa l-mudell bażiku li tista &#39;tuża biex toħloq il-moduli tal-kalkolu tiegħek stess għal Hotmaps</li><li> lista ta &#39;moduli ta&#39; kalkoli</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-contribute-code" href="#how-to-contribute-code"><i class="fa fa-link"></i></a> Kif tikkontribwixxi kodiċi</h2><p> Jekk trid iżżid xi kodiċi mal-Hotmaps għandek żewġ possibbiltajiet: jekk trid taġġorna l-interface jew il-backend direttament, trid timmodifika l-klijent jew ir-repożitorju tas-servizz tal-kaxxa tal-għodda. Jekk trid iżżid il-modulu tal-kalkolu tiegħek stess, tista &#39;toħloq ir-repożitorju tiegħek billi ssegwi <a href="https://github.com/HotMaps/base_calculation_module">r-readme tar-repożitorju base_calculation_module</a></p><p> Jekk trid twettaq xi xogħol fuq ir-repożitorju Git, jekk jogħġbok ma taħdimx direttament mal-fergħa ewlenija. Oħloq fergħa ġdida mill-fergħa ta &#39;żvilupp, għamel ix-xogħol tiegħek fuq din il-fergħa u meta l-karatteristika tiegħek tiġi ttestjata, tista&#39; tgħaqqad ix-xogħol tiegħek mal-fergħa ta &#39;żvilupp kif muri fil-graff li ġej.</p><p> <strong>Git_workflow</strong></p><p> Sabiex timbotta xi ħaġa lejn xi repożitorju tal-Hotmaps trid tkun membru tat-tim tal-Hotmaps, jekk m&#39;intix xorta tista &#39;twettaq furketta tal-għodda tagħna biex tiżviluppa l-għodda tiegħek stess.</p><p> Tista &#39;ssib aktar informazzjoni dwar kif taħdem f&#39;dawn id-dokumenti:</p><ul><li> <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf">Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf</a></li><li> <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf">Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf</a></li><li> <a href="https://wiki.hotmaps.eu/uploads/GitFlow_Guidelines_CREM_2017-02-01.pdf">GitFlow_Guidelines_CREM_2017-02-01.pdf</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="description-of-it-infrastructure" href="#description-of-it-infrastructure"><i class="fa fa-link"></i></a> Deskrizzjoni tal-infrastruttura tal-IT</h2><p> <strong>ReverseProxy_architecture_latest</strong></p><p> Is-servizzi u l-komponenti kollha jintużaw permezz tal-kontenitur Docker tagħhom stess. Dawn il-kontenituri kollha huma ddefiniti f&#39;fajl wieħed ta &#39;kompożizzjoni ta&#39; docker. L-immaġni ta &#39;hawn fuq tirrappreżenta l-arkitettura tal-IT tal-Hotmaps</p><p> Xi organizzazzjonijiet imsieħba llimitaw il-komunikazzjoni għall-port 80 biss. Biex jiġu evitati l-problemi kkawżati minn din il-limitazzjoni, sar il-ħolqien ta &#39;prokura inversa. Dan ir-reverse proxy joffri punt ta &#39;dħul wieħed u mbagħad iqassam it-talba mibgħuta mill-klijent lis-servizz ikkonċernat. Ir-reverse proxy huwa magħmul minn tliet komponenti:</p><ol><li> Reverse proxy server: iservi bħala punt ta &#39;dħul uniku u jqassam talbiet lis-servizzi t-tajba.</li><li> Proxy-gen: huwa servizz li awtomatikament jimmappja s-servizzi kollha fir-reverse proxy. Għalhekk, mhux meħtieġ li żżid manwalment servizz ġdid mal-konfigurazzjoni tal-prokura</li><li> let-kriptaġġ: huwa servizz li jippermetti l-użu tal-protokoll SSL. Huwa meħtieġ sabiex jiġi attivat il-protokoll https. Iċ-ċertifikati SSL huma ffirmati b&#39;indirizz elettroniku kkonfigurat f&#39;dan is-servizz.</li></ol><p> Jeżistu tliet netwerks:</p><ul><li> hotmaps_nginx jippermetti lir-reverse proxy jikkomunika mal-API, il-frontend u l-GeoServer. Tippermetti prinċipalment li tqassam talba lis-servizz korrett fost it-tlieta.</li><li> hotmaps_backend jippermetti l-komunikazzjoni bejn il-komponenti kollha tal-backend: API, frontend, GeoServer u d-database PostgreSQL.</li><li> hotmaps_cm-net jippermetti l-komunikazzjoni bejn kull modulu ta &#39;kalkolu u l-API.</li></ul><p> Kull modulu ta &#39;kalkolu għandu l-kontenitur Docker tiegħu stess.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="run-with-docker" href="#run-with-docker"><i class="fa fa-link"></i></a> Mexxi ma &#39;Docker</h3><p> Hotmaps tuża s-softwer <a href="https://www.docker.com/">Docker</a> u l <a href="https://docs.docker.com/compose/">-</a> għodda <a href="https://docs.docker.com/compose/">Docker-Compose</a> biex timmaniġġja l-kontenituri. Fajl docker-compose.yml fih il-konfigurazzjoni sħiħa tal-arkitettura Docker (konfigurazzjoni ta ’kontejners, netwerks, links, ...). Dan jippermetti li l-kontenituri jitħaddmu b&#39;kmand wieħed sempliċi:</p><pre> <code class="language-shell">docker-compose up</code></pre><p> <em>Hemm aktar dwar docker-compose fuq il-websajt ta ’Docker: <a href="https://docs.docker.com/compose/reference/">Compose reference-line line</a> u <a href="https://docs.docker.com/compose/compose-file/">Compose file reference</a> .</em></p><p> Hemm kontenitur wieħed biss li jitmexxa separatament minn oħrajn: hija d-database minħabba li teħtieġ tibqa &#39;l-ħin kollu. Huwa għalhekk li mhuwiex fil-fajl tal-konfigurazzjoni tad-docker-compose.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="server-infrastructure" href="#server-infrastructure"><i class="fa fa-link"></i></a> Infrastruttura tas-server</h3><h4><a class="anchor" id="infrastructure" href="#infrastructure"><i class="fa fa-link"></i></a> Infrastruttura</h4><p> Għalissa, is-server huwa ospitat fil-HES-SO fl-Iżvizzera. Hemm 2 magni disponibbli: waħda għall-iżvilupp (żvilupp u ttestjar) u waħda għall-produzzjoni (il-kaxxa tal-għodda attwali, disponibbli fuq <a href="https://www.hotmaps.eu">www.hotmaps.eu</a> ).</p><p> Iż-żewġ magni għandhom l-istess speċifikazzjoni:</p><ul><li> CPU: Intel Xeon E5-2680 v4 (8) @ 2.4GHz)</li><li> RAM: 16GB</li><li> HDD: 500GB</li><li> OS: Ubutnu 16.04 LTS</li></ul><h4><a class="anchor" id="performance" href="#performance"><i class="fa fa-link"></i></a> Prestazzjoni</h4><p> Ħafna drabi nagħmlu testijiet tal-prestazzjoni fuq is-server tal-iżvilupp sabiex niggarantixxu ċertu ammont ta &#39;utenti fl-istess ħin.</p><p> Bħala eżempju, hawn taħt jinsabu r-riżultati tal-ewwel beta release kontra testijiet futuri ta &#39;release. Ir-rilaxx il-ġdid jinkludi xi titjib fil-prestazzjoni.</p><p> <em>Dan l-eżempju juri t-testijiet tal-prestazzjoni ta &#39;utenti konkorrenti li jużaw l-istess funzjoni: &quot;kurva tat-tul għall-għażla tal-ettaru&quot;. Il-linja grassa turi l-limitu fejn is-server jibda jqajjem żbalji. L-għażla tal-ettari hija eżempju tajjeb għax turi l-mistoqsijiet li jeħtieġu l-aktar riżorsi.</em></p><p> <strong>Ħruġ Beta ta &#39;Marzu 2019</strong></p><p> | Numru ta &#39;utenti simulati | Ħin medju | Medjan | Ħin massimu | Ħin minimu | Perċentwal ta &#39;żbalji | --------------------- | ------------ | ------ | -------- | -------- | -------------------- | | 1 | 1042 | 1042 | 1042 | 1042 | 0 | | 20 | 3608 | 3858 | 4475 | 2156 | 0 | | 50 | 7337 | 7595 | 11791 | 1568 | 0 | | 100 | 13897 | 13644 | 24492 | 1875 | 0 | | 200 | 27135 | 26380 | 51967 | 3045 | 0 | | <strong>300</strong> | 41237 | 43083 | 73245 | 3223 | <strong>10.67</strong> |</p><p> <strong>Rilaxx finali (Awwissu 2020)</strong></p><p> | Numru ta &#39;utenti simulati | Ħin medju | Medjan | Ħin massimu | Ħin minimu | Perċentwal ta &#39;żbalji | --------------------- | ------------ | ------ | -------- | -------- | -------------------- | | 1 | 1025 | 970 | 1151 | 956 | 0 | | 20 | 1671 | 1732 | 2085 | 1113 | 0 | | 50 | 3527 | 3622 | 5593 | 982 | 0 | | 100 | 6648 | 6764 | 11854 | 1118 | 0 | | 200 | 12904 | 12801 | 24163 | 1192 | 0 | | 300 | 19521 | 19382 | 38116 | 1060 | 0 |</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="read.me" href="#read.me"><i class="fa fa-link"></i></a> AQRA.ME</h2><p> <a href="Read.ME">Aqra.ME</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-define-indicators" href="#how-to-define-indicators"><i class="fa fa-link"></i></a> Kif jiġu definiti l-indikaturi</h2><p> <a href="Guidelines-for-defining-indicators">Definizzjoni tal-Indikatur</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kif tikkwota</h2><p> Daniel Hunacek, Lucien Zuber, Matthieu Dayer, fil-Hotmaps Wiki, Sezzjoni tal-Iżviluppaturi (Settembru 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Awturi u reviżuri</h2><p> Din il-paġna ġiet miktuba minn Daniel Hunacek, Lucien Zuber, u Matthieu Dayer ( <strong><a href="https://www.hevs.ch">HES-SO</a></strong> ).</p><p> ☑ Din il-paġna ġiet riveduta minn Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Liċenzja</h2><p> Copyright © 2016-2020: Daniel Hunacek, Lucien Zuber, u Matthieu Dayer</p><p> Liċenzja Internazzjonali Creative Commons Attribution 4.0</p><p> Dan ix-xogħol huwa liċenzjat taħt Liċenzja Internazzjonali Creative Commons CC BY 4.0.</p><p> Identifikatur tal-Liċenzja SPDX: CC-BY-4.0</p><p> Test tal-Liċenzja: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Rikonoxximent</h2><p> Nixtiequ nwasslu l-apprezzament profond tagħna għall- <a href="https://www.hotmaps-project.eu">Proġett Hotmaps ta &#39;</a> Orizzont 2020 (Grant Agreement number 723677), li pprovda l-finanzjament biex titwettaq l-investigazzjoni preżenti</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Developers) (original) [Bulgarian](../bg/Developers)<sup>\*</sup> [Czech](../cs/Developers)<sup>\*</sup> [Danish](../da/Developers)<sup>\*</sup> [German](../de/Developers)<sup>\*</sup> [Greek](../el/Developers)<sup>\*</sup> [Spanish](../es/Developers)<sup>\*</sup> [Estonian](../et/Developers)<sup>\*</sup> [Finnish](../fi/Developers)<sup>\*</sup> [French](../fr/Developers)<sup>\*</sup> [Irish](../ga/Developers)<sup>\*</sup> [Croatian](../hr/Developers)<sup>\*</sup> [Hungarian](../hu/Developers)<sup>\*</sup> [Italian](../it/Developers)<sup>\*</sup> [Lithuanian](../lt/Developers)<sup>\*</sup> [Latvian](../lv/Developers)<sup>\*</sup>  [Dutch](../nl/Developers)<sup>\*</sup> [Polish](../pl/Developers)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Developers)<sup>\*</sup> [Romanian](../ro/Developers)<sup>\*</sup> [Slovak](../sk/Developers)<sup>\*</sup> [Slovenian](../sl/Developers)<sup>\*</sup> [Swedish](../sv/Developers)<sup>\*</sup> 

<sup>\*</sup> machine translated