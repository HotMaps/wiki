<h1><a class="anchor" id="retrieve-indicators-of-a-selected-area" href="#retrieve-indicators-of-a-selected-area"><i class="fa fa-link"></i></a>Too valitud ala indikaatorid</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisukord</h2><ul><li> <a href="#introduction">Sissejuhatus</a></li><li> <a href="#indicators-for-raster-layers">Rasterkihtide näitajad</a><ul><li> <a href="#indicators-for-raster-layers_buildings">Ehitised</a></li><li> <a href="#indicators-for-raster-layers_population">Rahvaarv</a></li><li> <a href="#indicators-for-raster-layers_renewable-energy-source-potentials">Taastuvate energiaallikate potentsiaal</a></li></ul></li><li> <a href="#indicators-for-vector-layers">Vektorkihtide näitajad</a><ul><li> <a href="#indicators-for-vector-layers_industry">Tööstus</a></li><li> <a href="#indicators-for-vector-layers_renewable-energy-source-potentials">Taastuvate energiaallikate potentsiaal</a></li><li> <a href="#indicators-for-vector-layers_electricity">Elekter</a></li></ul></li><li> <a href="#example">Näide</a></li><li> <a href="#how-to-cite">Kuidas tsiteerida</a></li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a></li><li> <a href="#license">Litsents</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Sissejuhatus</h2><p> Sõltuvalt valitud kihtidest ja piirkonnast kuvatakse teie konfiguratsiooni jaoks indikaatorid ekraani paremal külgribal</p><p><img alt="results.png" src="../images/general_tool_functionalities_and_structure/results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><p> Järgnevalt vaatleme indikaatoreid, mis kuvatakse raster- ja vektorikihtide jaoks.</p><h2><a class="anchor" id="indicators-for-raster-layers" href="#indicators-for-raster-layers"><i class="fa fa-link"></i></a> Rasterkihtide näitajad</h2><p> Rasterkihtide näitajad erinevad vektorikihtidest. Erinevatega mõtleme summeerimise ja jaotamise mõttes. See erinev käitumine tuleneb territoriaalsetest resolutsioonidest.</p><p> Rasterkihtidel on üldiselt palju suurem eraldusvõime, samas kui vektorikihtidel on atribuudid ainult punktides või hulknurkades.</p><p> See tähendab ühelt poolt näiteks seda, et kui valite NUTS3 polügoonidega määratletud vektorikihi ja soovite näiteks valida LAU piirkonna, siis NUTS3 väärtust ei lahutata LAU tasemele, selle asemel kuvatakse NUTS3 indikaator, kus see LAU piirkond asub, kuvatakse tulemuste külgribal.</p><p> Teiselt poolt liidetakse rasterkihid kokku ja jaotatakse &quot;meelevaldselt&quot; *</p><p> * valitud piirkonnas sisalduvate lahtritega (loomulikult rasterresolutsiooni enda piires)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="buildings" href="#buildings"><i class="fa fa-link"></i></a> Ehitised</h3><p> <strong>Kuumustiheduse kaart</strong></p><p><img alt="hdm.png" src="../images/general_tool_functionalities_and_structure/hdm.png"/></p><p> <strong>Lisafunktsioon</strong></p><p> Kui valite samaaegselt soojustiheduse kihi ja asustuskihi, kuvatakse täiendav indikaator (vt allolevat pilti)</p><p><img alt="hdm2.png" src="../images/general_tool_functionalities_and_structure/hdm2.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="in-general-" href="#in-general-"><i class="fa fa-link"></i></a> Üldiselt:</h3><p> Kui korraga valitakse üks hoonekihtidest ja asustuskiht, kuvatakse eelnevalt kirjeldatud viisil täiendav näitaja</p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Jahutava tiheduse kaart</strong></p><p><img alt="cdm.png" src="../images/general_tool_functionalities_and_structure/cdm.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Ehitusmahud</strong></p><p><img alt="bvol.png" src="../images/general_tool_functionalities_and_structure/bvol.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Brutopind</strong></p><p><img alt="gfa.png" src="../images/general_tool_functionalities_and_structure/gfa.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> Rahvaarv</h3><p><img alt="pop.png" src="../images/general_tool_functionalities_and_structure/pop.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Kliima</h3><p> <strong>Temperatuur</strong></p><p><img alt="temp.png" src="../images/general_tool_functionalities_and_structure/temp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Jahutuskraadipäevad</strong></p><p><img alt="cdd.png" src="../images/general_tool_functionalities_and_structure/cdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Küttekraadipäevad</strong></p><p><img alt="hdd.png" src="../images/general_tool_functionalities_and_structure/hdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Päikesekiirgus</strong></p><p><img alt="rad.png" src="../images/general_tool_functionalities_and_structure/rad.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Tuule kiirus</strong></p><p><img alt="wind.png" src="../images/general_tool_functionalities_and_structure/wind.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Taastuvate energiaallikate potentsiaal</h3><p> <strong>Päikese kiirgus hoone jalajäljel</strong></p><p><img alt="srobf.png" src="../images/general_tool_functionalities_and_structure/srobf.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Tuule potentsiaal 50 m juures</strong></p><p><img alt="wp.png" src="../images/general_tool_functionalities_and_structure/wp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Metsajäägid</strong></p><p><img alt="mets.png" src="../images/general_tool_functionalities_and_structure/forest.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicators-for-vector-layers" href="#indicators-for-vector-layers"><i class="fa fa-link"></i></a> Vektorkihtide näitajad</h2><h3><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Tööstus</h3><p> <strong>Tööstusobjektide heitkogused</strong><img alt="ise.png" src="../images/general_tool_functionalities_and_structure/ise.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Tööstuspiirkonna liigne kuumus</strong><img alt="iseh.png" src="../images/general_tool_functionalities_and_structure/iseh.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Tööstusettevõtte ettevõtte nimi</strong><img alt="isec.png" src="../images/general_tool_functionalities_and_structure/isec.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Tööstusobjektide allsektor</strong><img alt="ises.png" src="../images/general_tool_functionalities_and_structure/ises.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Taastuvate energiaallikate potentsiaal</h3><p> <strong>Reoveepuhastusjaamade võimsus</strong></p><p><img alt="wwp.png" src="../images/general_tool_functionalities_and_structure/wwp.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Reoveepuhastite võimsus</strong></p><p><img alt="wcc.png" src="../images/general_tool_functionalities_and_structure/wwc.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Põllumajanduslikud jäägid</strong></p><p><img alt="ar.png" src="../images/general_tool_functionalities_and_structure/ar.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Loomade heitveed</strong></p><p><img alt="le.png" src="../images/general_tool_functionalities_and_structure/le.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Tahked olmejäätmed</strong></p><p><img alt="sw.png" src="../images/general_tool_functionalities_and_structure/sw.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Geotermiline potentsiaalne soojusjuhtivus</strong></p><p><img alt="geotermiline.png" src="../images/general_tool_functionalities_and_structure/geothermal.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity" href="#electricity"><i class="fa fa-link"></i></a> Elekter</h3><p> <strong>Elektri C02 heide</strong></p><p><img alt="elekter.png" src="../images/general_tool_functionalities_and_structure/electricity.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="example" href="#example"><i class="fa fa-link"></i></a> Näide</h2><p> Alloleval pildil näete, kuidas see kõigi kihtide visualiseerimisel välja näeb (siin on Austria valitud NUTS0-ga)</p><p><img alt="all_map.png" src="../images/general_tool_functionalities_and_structure/all_map.png"/></p><p> Kuigi see kaart võib esmapilgul veidi segane tunduda, on selle näitajad illustreeritud otse. Kui valite Austria jaoks kõik kihid, vaadake allpool kõiki näitajaid, mida kirjeldatakse tulemuste külgribal (NUTS0)</p><p><img alt="all_results.png" src="../images/general_tool_functionalities_and_structure/all_results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuidas tsiteerida</h2><p> Jeton Hasani, Hotmaps-Wikis, valitud ala näitajate hankimine (aprill 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorid ja retsensendid</h2><p> Selle lehe kirjutas Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Selle lehe vaatas läbi Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Litsents</h2><p> Autoriõigus © 2016-2020: Jeton Hasani</p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents</p><p> See töö on litsentsitud rahvusvahelise Creative Commons CC BY 4.0 litsentsi alusel.</p><p> SPDX-litsentsi identifikaator: CC-BY-4.0</p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Soovime avaldada sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis andis rahalisi vahendeid käesoleva uurimise läbiviimiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> <code><a href="Indicator-Section/_edit">Review this page</a></code></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Retrieve-indicators-of-a-selected-area) (original) [Bulgarian](../bg/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Czech](../cs/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Danish](../da/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [German](../de/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Greek](../el/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Spanish](../es/Retrieve-indicators-of-a-selected-area)<sup>\*</sup>  [Finnish](../fi/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [French](../fr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Irish](../ga/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Croatian](../hr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Hungarian](../hu/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Italian](../it/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Lithuanian](../lt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Latvian](../lv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Maltese](../mt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Dutch](../nl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Polish](../pl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Romanian](../ro/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovak](../sk/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovenian](../sl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Swedish](../sv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> 

<sup>\*</sup> machine translated