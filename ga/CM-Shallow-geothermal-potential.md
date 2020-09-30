<h1><a class="anchor" id="cm-shallow-geothermal-potential" href="#cm-shallow-geothermal-potential"><i class="fa fa-link"></i></a>CM Acmhainneacht gheoiteirmeach garbh</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Clár ábhair</h2><ul><li> <a href="#in-a-glance">Sracfhéachaint</a></li><li> <a href="#introduction">Réamhrá</a></li><li> <a href="#inputs-and-outputs">Ionchuir agus aschuir</a></li><li> <a href="#method">Modh</a></li><li> <a href="#github-repository-of-this-calculation-module">Stór GitHub den mhodúl ríofa seo</a></li><li> <a href="#sample-run">Rith samplach</a></li><li> <a href="#how-to-cite">Conas a lua</a></li><li> <a href="#authors-and-reviewers">Údair agus léirmheastóirí</a></li><li> <a href="#license">Ceadúnas</a></li><li> <a href="#acknowledgement">Admháil</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Sracfhéachaint</h2><p> Ríomhann an modúl seo acmhainneacht fuinneamh geoiteirmeach éadomhain atá le húsáid i gcaidéil teasa foinse talún do réigiúin roghnaithe i bhfoirm comhaid raster. Is comhaid raster iad na hionchuir le teocht tosaigh na talún, seoltacht theirmeach talún meán-doimhne agus cumas teirmeach talún meán-doimhne.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Réamhrá</h2><p> Tá sé mar aidhm ag an modúl ríofa an acmhainneacht gheoiteirmeach éadomhain a ríomh bunaithe ar <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">r.green.gshp.theoretical</a> de réir <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">mhodheolaíocht G.pot</a> . Sa mhodúl seo, is é an t-aschur an fuinneamh uasta teoiriciúil is féidir a thiontú sa chás idéalach gan na srianta airgeadais agus spásúla a mheas.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ionchuir agus aschuir</h2><p> Is iad seo a leanas na paraiméadair agus na sraitheanna ionchuir, chomh maith le sraitheanna aschuir agus paraiméadair.</p><p> <strong>Is iad sraitheanna agus paraiméadair ionchuir:</strong></p><ul><li> Veicteoir le seoltacht theirmeach talún meán-doimhne [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Luach leis an Séasúr Teasa [0-365] lá</li><li> Níos gasta leis an teocht tosaigh talún T0 [° C]</li><li> Luach le toilleadh teirmeach talún meán-doimhne [MJ m <sup>-3</sup> K <sup>-1</sup> ]</li></ul><p> Is iad na paraiméadair ionchuir roimh ré:</p><ul><li> Ga tollpholl [m]</li><li> Friotaíocht theirmeach tollpholl [m KW <sup>-1</sup> ]</li><li> Fad tollphoill [m]</li><li> Ga píopa [m]</li><li> Líon na bpíopaí sa pholl tóraíochta</li><li> Seoltacht theirmeach líonadh an tollphoill (grout geoiteirmeach) [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Teocht sreabhach íosta nó uasta [° C]</li><li> Saol insamhalta an phlanda [blianta]</li></ul><p> <strong>Is iad sraitheanna agus paraiméadair aschuir:</strong></p><ul><li> léarscáil raster leis an acmhainneacht fuinnimh geoiteirmeach [MWh / (ha * yr)]</li><li> táscaire ar mheánfhuinnimh is féidir a bhaint in aghaidh an chórais GCHP [MWh / yr]</li></ul><p> Tá míniú níos doimhne ar an raster ionchuir réamhshocraithe ar fáil i <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">stór Hotmaps</a></p><p> Is fiú a lua freisin nach féidir an comhad raster ionchuir a sholáthar i roinnt cathracha móra toisc nach féidir an córas geoiteirmeach a chur i bhfeidhm i gcónaí, go speisialta i gceantair chathracha an-dlúth. Tá sé seo le feiceáil sna comhaid aschuir freisin agus NÍL botún sa ríomh.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Modh</h2><p> Tá an modh chun an acmhainn fuinnimh a shainiú bunaithe ar an <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot</a> . Ríomhtar acmhainneacht fuinneamh geoiteirmeach éadomhain trí bhíthin agus caidreamh eimpíreach a mhol <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso et al. (2016)</a> .</p><p> Táirgeann an mhodheolaíocht léarscáil leis an gcumhacht agus an fuinneamh is féidir a bhaint agus machnamh á dhéanamh ar phríomhthréithe an tír-raon (m.sh. teocht / toilleadh / seoltacht na talún) agus an Pholl Toll (m.sh. fad, trastomhas, srl).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Stór GitHub den mhodúl ríofa seo</h2><p> <a href="https://github.com/HotMaps/gchp_potential/tree/develop">Anseo</a> gheobhaidh tú an fhorbairt ceannródaíoch don mhodúl ríofa seo.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Rith Samplach</h2><p> Is féidir le húsáideoirí tréithe éagsúla talún a thabhairt (m.sh. teocht na talún, seoltacht na talún agus toilleadh), má tá siad ar fáil. Is féidir freisin tréithe éagsúla an chórais gheoiteirmeach cosúil le geoiméadracht an Tollphoill a shainiú.</p><p> Mar a luadh cheana, gintear ciseal raster mar aschur. Taispeánann an tsraith seo an poitéinseal i réimsí éagsúla. Toisc go bhfuil sé deacair an poitéinseal i gceantair uirbeacha dlúth a mheas, ní sholáthraíonn an ciseal raster ionchuir faisnéis do réigiúin den sórt sin. Mar thoradh air sin, tá na réigiúin seo folamh sa chiseal aschuir.</p><img src="/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Conas a lua</h2><p> Pietro Zambelli agus Giulia Garegnani, i Hotmaps Wiki, CM Acmhainneacht gheoiteirmeach garbh (Meán Fómhair 2020)</p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Údair agus léirmheastóirí</h2><p> Scríobh Giulia Garegnani agus Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ) an leathanach seo.</p><p> ☑ Rinne Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG-TU Wien</a></strong> ) athbhreithniú ar an leathanach seo.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Ceadúnas</h2><p> Cóipcheart © 2016-2020: Pietro Zambelli agus Giulia Garegnani</p><p> Creative Commons Attribution 4.0 Ceadúnas Idirnáisiúnta</p><p> Tá an obair seo ceadúnaithe faoi Cheadúnas Idirnáisiúnta Creative Commons CC BY 4.0.</p><p> Aitheantóir SPDX-Ceadúnais: CC-BY-4.0</p><p> Téacs an Cheadúnais: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Admháil</h2><p> Ba mhaith linn ár mbuíochas is doimhne a chur in iúl do <a href="https://www.hotmaps-project.eu">Thionscadal Hotmaps</a> Horizon 2020 (Comhaontú Deontais uimhir 723677), a chuir an maoiniú ar fáil chun an t-imscrúdú reatha a dhéanamh.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Shallow-geothermal-potential) (original) [Bulgarian](../bg/CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](../cs/CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](../da/CM-Shallow-geothermal-potential)<sup>\*</sup> [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](../el/CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](../es/CM-Shallow-geothermal-potential)<sup>\*</sup> [Estonian](../et/CM-Shallow-geothermal-potential)<sup>\*</sup> [Finnish](../fi/CM-Shallow-geothermal-potential)<sup>\*</sup> [French](../fr/CM-Shallow-geothermal-potential)<sup>\*</sup>  [Croatian](../hr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Hungarian](../hu/CM-Shallow-geothermal-potential)<sup>\*</sup> [Italian](../it/CM-Shallow-geothermal-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](../lv/CM-Shallow-geothermal-potential)<sup>\*</sup> [Maltese](../mt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Dutch](../nl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Polish](../pl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](../ro/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](../sk/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](../sl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](../sv/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated