<h1><a class="anchor" id="cm-decentral-heating-supply" href="#cm-decentral-heating-supply"><i class="fa fa-link"></i></a>CM Provvista ta &#39;tisħin deċentralizzat</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Werrej</h2><ul><li> <a href="#in-a-glance">F&#39;daqqa t&#39;għajn</a></li><li> <a href="#introduction">Introduzzjoni</a></li><li> <a href="#inputs-and-outputs">Inputs u outputs</a><ul><li> <a href="#inputs-and-outputs_inputs">Inputs</a><ul><li> <a href="#inputs-and-outputs_inputs_default-input-data">Dejta tal-input awtomatika</a></li><li> <a href="#inputs-and-outputs_inputs_manual-input-data">Dejta ta &#39;input manwali</a></li></ul></li><li> <a href="#inputs-and-outputs_outputs">Outputs</a><ul><li> <a href="#inputs-and-outputs_outputs_indicators">Indikaturi</a></li><li> <a href="#inputs-and-outputs_outputs_graphs">Grafiċi</a></li></ul></li></ul></li><li> <a href="#methodology">Metodoloġija</a></li><li> <a href="#github-repository-of-this-calculation-module">Repożitorju GitHub ta &#39;dan il-modulu ta&#39; kalkolu</a></li><li> <a href="#sample-run">Ġirja tal-kampjun</a><ul><li> <a href="#sample-run_test-run">Test Test</a></li></ul></li><li> <a href="#how-to-cite">Kif tikkwota</a></li><li> <a href="#authors-and-reviewers">Awturi u reviżuri</a></li><li> <a href="#license">Liċenzja</a></li><li> <a href="#acknowledgement">Rikonoxximent</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> F&#39;daqqa t&#39;għajn</h2><p> Dan il-modulu jikkalkula l-ispejjeż tal-provvista tas-sħana fil-bini permezz ta &#39;teknoloġiji deċentralizzati tal-provvista tas-sħana. Inputs għall-modulu huma spejjeż ta &#39;investiment, spejjeż O&amp;M, prezzijiet tal-enerġija, il-profil ta&#39; tagħbija fis-siegħa tad-domanda għas-sħana kif ukoll ħin ta &#39;deprezzament u rata ta&#39; imgħax. Barra minn hekk, il-kompożizzjoni tal-bini u l-istati ta &#39;rinnovazzjoni tal-bini fiż-żona analizzata huma meħtieġa. Ir-riżultati huma spejjeż tal-provvista tas-sħana ta ’diversi teknoloġiji deċentralizzati tal-provvista tas-sħana għall-bini definit u suppożizzjonijiet tal-prezz kif ukoll spejjeż ta’ referenza tal-provvista deċentrali għaż-żona analizzata u emissjonijiet tas-CO2 relatati.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduzzjoni</h2><p> Dan il-modulu tal-kalkolu jikkalkula l-ispiża livellizzata tas-sħana (LCOH) għal diversi teknoloġiji deċentralizzati tal-provvista tas-sħana għall-provvista tas-sħana lil bini definit mill-utent.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/1.png"/><p> It-teknoloġiji huma pereżempju kif ġej:</p><ul><li> Pompa tas-sħana arja-arja, arja-ilma u Salmura-ilma,</li><li> Heater elettriku,</li><li> Bojler taż-żejt bijoloġiku,</li><li> Bojler taż-żejt,</li><li> Bijomassa awtomatika u manwali,</li><li> Stufi tal-injam,</li><li> Gass naturali,</li><li> Solari termali</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="inputs-and-outputs-" href="#inputs-and-outputs-"><i class="fa fa-link"></i></a> Inputs u outputs:</h2><h3><a class="anchor" id="inputs" href="#inputs"><i class="fa fa-link"></i></a> Inputs</h3><h4><a class="anchor" id="default-input-data" href="#default-input-data"><i class="fa fa-link"></i></a> Dejta tal-input awtomatika</h4><p> Parti mid-dejta tal-input tiġi mis-settijiet tad-dejta awtomatiċi tal-Hotmaps. Dawn jinkludu:</p><ul><li> Raster NUTS</li><li> Stokk tal-bini (Livell NUTS0): domanda ta &#39;enerġija utli skont il-klassi tal-bini u l-perjodu tal-kostruzzjoni</li><li> Profili tat-tagħbija (Livell NUTS2)</li><li> Dejta Finanzjarja - Sistemi ta &#39;Tisħin (Livell NUTS0)</li><li> Dejta Finanzjarja - Prezzijiet tat-Trasportatur tal-Enerġija (Livell NUTS0)</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="manual-input-data" href="#manual-input-data"><i class="fa fa-link"></i></a> Dejta ta &#39;input manwali</h4><p> Id-dejta tal-input li ġejja għandha tiddaħħal manwalment wara l-għażla ta &#39;żona:</p><ul><li> Età tal-bini,</li><li> Rata ta &#39;imgħax,</li><li> Erja grossa tal-art,</li><li> Tip ta &#39;Bini,</li><li> Sena (għad-dejta finanzjarja),</li><li> Iffrankar fit-tisħin tal-post,</li><li> Fatturi ta &#39;emissjoni għal kull trasportatur ta&#39; enerġija.</li></ul><p> <strong>NOTA IMPORTANTI</strong> Fil-Hotmaps l-emissjonijiet tal-bijomassa mhumiex preżunti żero minħabba li l-Hotmaps hija għodda mmirata biex tappoġġja t-transizzjoni tal-enerġija li għaddejja. Il-kunsiderazzjoni tal-bijomassa bħala sors ta &#39;enerġija newtrali fil-karbonju timplika li l-ħruq tal-bijomassa jnaqqas l-emissjonijiet totali kurrenti meta mqabbel mal-ħruq ta&#39; karburanti fossili, li mhux veru. Il-ħażna tad-dijossidu tal-karbonju fis-siġar isseħħ matul għexieren ta &#39;snin, filwaqt li r-rilaxx tiegħu fl-atmosfera jseħħ f&#39;daqqa. Għalhekk, jista ’jiġi konkluż li l-bilanċ nett tal-karbonju tal-bijomassa huwa żero fuq medda twila ta’ żmien, iżda mhux fuq medda qasira ta ’żmien u l-miżuri ta’ mitigazzjoni tat-tibdil fil-klima għandhom iġibu riżultati fit-tnaqqis tal-emissjonijiet tal-karbonju fuq medda qasira ta ’żmien.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="outputs-" href="#outputs-"><i class="fa fa-link"></i></a> Outputs:</h3><h4><a class="anchor" id="indicators-" href="#indicators-"><i class="fa fa-link"></i></a> Indikaturi:</h4><p> L-indikaturi huma magħmula minn sommarju tal-parametri tal-input u l-valuri kkalkulati:</p><ul><li> Kodiċi NUTS korrispondenti: Kodiċi NUTS3 tar-reġjun magħżul (meta tuża livell ta &#39;ettaru jew livell LAU),</li><li> daħħal iffrankar fit-tisħin tal-post,</li><li> daħal fl-art gross</li><li> daħal fis-sena,</li><li> rata ta &#39;imgħax imdaħħla,</li><li> daħal fl-età tal-bini,</li><li> tip ta &#39;bini mdaħħal,</li><li> domanda annwali ta &#39;enerġija utli tal-bini,</li><li> Tagħbija tas-Sħana,</li><li> Settur,</li><li> Tip ta &#39;Bini Użat għal kull dejta finanzjarja.</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h4><a class="anchor" id="graphs-" href="#graphs-"><i class="fa fa-link"></i></a> Grafiċi:</h4><ul><li> LCOH</li><li> OPEX</li><li> CAPEX</li><li> Spejjeż tal-Enerġija</li><li> Emissjonijiet ta &#39;CO2</li><li> Effiċjenza Termali</li><li> Id-Domanda Finali tal-Enerġija</li><li> Spejjeż Totali</li><li> Fattur ta &#39;annwalità</li><li> Tagħbija tas-Sħana</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="methodology-" href="#methodology-"><i class="fa fa-link"></i></a> Metodoloġija:</h2><p> Abbażi tar-reġjun magħżul huma ddeterminati r-Reġjuni NUTS0 u NUTS2 korrispondenti.</p><p> Imbagħad, għat-tip ta &#39;bini magħżul u l-età tal-bini u r-reġjun NUTS0 tintgħażel id-domanda speċifika għall-enerġija utli u d-domanda għas-sħana annwali kkalkulata billi tiġi mmultiplikata bl-erja grossa tal-art.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/2.png"/><p> Ibbażat fuq id-domanda annwali tas-sħana tal-bini u l-iffrankar imdaħħal fit-tisħin tal-post it-tagħbija tas-sħana hija kkalkulata bl-użu tal-profili tat-tagħbija tas-sħana.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/3.png"/><p> Bit-tagħbija tas-sħana, id-domanda annwali tas-sħana u s-sena magħżula huma ddeterminati l-ispejjeż tal-investiment u l-ispejjeż operattivi u l-ispejjeż tal-fjuwil <strong>għal kull teknoloġija tat-tisħin</strong> .</p><p> L-investiment speċifiku u l-ispejjeż operattivi huma preżunti li għandhom imġieba esponenzjali:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/4.png"/><p> Ibbażat fuq il-pajjiż, is-sena u t-tip ta &#39;bini tad-dħul imdaħħal, il-fatturi għal kull teknoloġija huma mfissra:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/5.png"/><p> Bil-fatturi ddeterminati, l-ispejjeż assoluti jistgħu jiġu kkalkulati kif ġej:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/6.png"/><p> Għall-ispejjeż tal-fjuwil, id-dejta tal-prezz tat-trasportaturi tal-enerġija hija meħtieġa.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/7.png"/><p> Issa għandna d-dejta kollha meħtieġa u nistgħu nikkalkulaw l-ispiża livellizzata tas-sħana.</p><p> L-ispiża livellizzata tas-sħana għal kull sistema tat-tisħin hija kkalkulata bħala l-valur preżenti nett tal-likwidità u l-ġenerazzjoni tas-sħana matul il-ħajja.</p><p> L-ispiża livellizzata tas-sħana hija mogħtija minn:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/8.png"/><p> F&#39;dan il-kalkolu l-ispejjeż annwali u l-produzzjoni annwali tas-sħana (domanda ta &#39;enerġija utli) huma preżunti kostanti matul il-ħajja u b&#39;hekk is-sommazzjonijiet jittrasformaw f&#39;serje ġeometrika u l-fattur tat-trasformazzjoni jissejjaħ il-fattur ta&#39; annwalità α. Rappreżentazzjoni grafika ta &#39;dan il-proċess ta&#39; trasformazzjoni tidher fil-figuri hawn taħt</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/9.png"/><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/10.png"/><p> Din is-suppożizzjoni tissimplifika l-kalkolu u l-LCOH jingħata bil-formula li ġejja:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/11.png"/><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Repożitorju GitHub ta &#39;dan il-modulu ta&#39; kalkolu</h2><p> <a href="https://github.com/HotMaps/lcoh/tree/develop">Hawnhekk</a> ikollok l-iżvilupp tal-fsada għal dan il-modulu ta &#39;kalkolu.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Ġirja tal-kampjun</h2><h3><a class="anchor" id="test-run" href="#test-run"><i class="fa fa-link"></i></a> Test Test</h3><h4><a class="anchor" id="default-input-parameters" href="#default-input-parameters"><i class="fa fa-link"></i></a> Parametri ta &#39;Input Default</h4><img src="/en/CM-Decentral-heating-supply/inputs.png"/><h4><a class="anchor" id="output-indicators-with-default-input-parameters" href="#output-indicators-with-default-input-parameters"><i class="fa fa-link"></i></a> Indikaturi tal-Produzzjoni b&#39;Parametri tal-Input Default</h4><img src="/en/CM-Decentral-heating-supply/output_indicators_default_decentral.png"/><h4><a class="anchor" id="output-charts-with-default-input-parameters" href="#output-charts-with-default-input-parameters"><i class="fa fa-link"></i></a> Charts tal-Output b&#39;Parametri tal-Input Default</h4><img src="/en/CM-Decentral-heating-supply/output_graphs_default_decentral.png"/><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kif tikkwota</h2><p> Jeton Hasani fil-Hotmaps-Wiki, CM Provvista tat-tisħin deċentralizzata (Novembru 2019)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Awturi u reviżuri</h2><p> Din il-paġna ġiet miktuba minn Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Din il-paġna ġiet riveduta minn Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Liċenzja</h2><p> Copyright © 2016-2020: Jeton Hasani</p><p> Liċenzja Internazzjonali Creative Commons Attribution 4.0</p><p> Dan ix-xogħol huwa liċenzjat taħt Liċenzja Internazzjonali Creative Commons CC BY 4.0.</p><p> Identifikatur tal-Liċenzja SPDX: CC-BY-4.0</p><p> Test tal-Liċenzja: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Rikonoxximent</h2><p> Nixtiequ nwasslu l-apprezzament profond tagħna għall- <a href="https://www.hotmaps-project.eu">Proġett Hotmaps ta &#39;</a> Orizzont 2020 (Grant Agreement numru 723677), li pprovda l-finanzjament biex titwettaq l-investigazzjoni preżenti.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Decentral-heating-supply) (original) [Bulgarian](../bg/CM-Decentral-heating-supply)<sup>\*</sup> [Czech](../cs/CM-Decentral-heating-supply)<sup>\*</sup> [Danish](../da/CM-Decentral-heating-supply)<sup>\*</sup> [German](../de/CM-Decentral-heating-supply)<sup>\*</sup> [Greek](../el/CM-Decentral-heating-supply)<sup>\*</sup> [Spanish](../es/CM-Decentral-heating-supply)<sup>\*</sup> [Estonian](../et/CM-Decentral-heating-supply)<sup>\*</sup> [Finnish](../fi/CM-Decentral-heating-supply)<sup>\*</sup> [French](../fr/CM-Decentral-heating-supply)<sup>\*</sup> [Irish](../ga/CM-Decentral-heating-supply)<sup>\*</sup> [Croatian](../hr/CM-Decentral-heating-supply)<sup>\*</sup> [Hungarian](../hu/CM-Decentral-heating-supply)<sup>\*</sup> [Italian](../it/CM-Decentral-heating-supply)<sup>\*</sup> [Lithuanian](../lt/CM-Decentral-heating-supply)<sup>\*</sup> [Latvian](../lv/CM-Decentral-heating-supply)<sup>\*</sup>  [Dutch](../nl/CM-Decentral-heating-supply)<sup>\*</sup> [Polish](../pl/CM-Decentral-heating-supply)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Decentral-heating-supply)<sup>\*</sup> [Romanian](../ro/CM-Decentral-heating-supply)<sup>\*</sup> [Slovak](../sk/CM-Decentral-heating-supply)<sup>\*</sup> [Slovenian](../sl/CM-Decentral-heating-supply)<sup>\*</sup> [Swedish](../sv/CM-Decentral-heating-supply)<sup>\*</sup> 

<sup>\*</sup> machine translated