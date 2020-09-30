<h1><a class="anchor" id="cm-shallow-geothermal-potential" href="#cm-shallow-geothermal-potential"><i class="fa fa-link"></i></a>CM Madal geotermiline potentsiaal</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisukord</h2><ul><li> <a href="#in-a-glance">Lühidalt</a></li><li> <a href="#introduction">Sissejuhatus</a></li><li> <a href="#inputs-and-outputs">Sisendid ja väljundid</a></li><li> <a href="#method">Meetod</a></li><li> <a href="#github-repository-of-this-calculation-module">Selle arvutusmooduli GitHubi hoidla</a></li><li> <a href="#sample-run">Proovijooks</a></li><li> <a href="#how-to-cite">Kuidas tsiteerida</a></li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a></li><li> <a href="#license">Litsents</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Lühidalt</h2><p> See moodul arvutab valitud piirkondade maasoojuspumpades kasutatava madala geotermilise energia potentsiaali rasterfaili kujul. Sisenditeks on rasterfailid, millel on maapinna esialgne temperatuur, maapinna keskmise juhtivuse ja maapinna keskmise soojusliku läbilaskevõimega.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Sissejuhatus</h2><p> Arvutusmooduli eesmärk on arvutada madal geotermiline potentsiaal, lähtudes <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">teoreetilisest r.green.gshp.teoreetiliselt</a> vastavalt <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.poti metoodikale</a> . Selles moodulis on väljundiks teoreetiline maksimaalne energia, mida saab ideaaljuhul teisendada, arvestamata rahalisi ja ruumilisi piiranguid.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Sisendid ja väljundid</h2><p> Sisendparameetrid ja kihid, samuti väljundkihid ja parameetrid on järgmised.</p><p> <strong>Sisendkihid ja parameetrid on:</strong></p><ul><li> Maapinna keskmise sügavuse soojusjuhtivusega vektor [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Väärtus koos kütteperioodiga [0-365] päeva</li><li> Raster algse maapinna temperatuuriga T0 [° C]</li><li> Maapinna keskmiselt mõõdetud soojusliku võimsuse väärtus [MJ m <sup>-3</sup> K <sup>-1</sup> ]</li></ul><p> Eelnevalt sisestatud parameetrid on järgmised:</p><ul><li> Puuraugu raadius [m]</li><li> Puurkaevu soojustakistus [m KW <sup>-1</sup> ]</li><li> Puuraugu pikkus [m]</li><li> Toru raadius [m]</li><li> Torude arv puuraugus</li><li> Puurkaevu täitmise soojusjuhtivus (geotermiline vuugisegu) [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Minimaalne või maksimaalne vedeliku temperatuur [° C]</li><li> Tehase eluea simuleerimine [aastat]</li></ul><p> <strong>Väljundkihid ja parameetrid on:</strong></p><ul><li> geotermilise energia potentsiaaliga rasterkaart [MWh / (ha * aasta)]</li><li> näitaja keskmise energia kohta, mida on võimalik eraldada GCHP-süsteemi kohta [MWh / aastas]</li></ul><p> Vaikimisi <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">sisendrastri</a> põhjalikum selgitus on saadaval <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Hotmapsi hoidlas</a></p><p> Samuti väärib mainimist, et kuna geotermilise süsteemi rakendamine pole alati võimalik, eriti väga tihedates linnapiirkondades, ei anna sisendrasterfail teavet mitme suure linna kohta. See on nähtav ka väljundfailides ja EI OLE arvutamisel viga.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Meetod</h2><p> Energiapotentsiaali määratlemise meetod põhineb <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.potil</a> . Madala geotermilise energia potentsiaal arvutatakse <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso jt välja</a> pakutud empiirilise suhte abil <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">. (2016)</a> .</p><p> Metoodika abil koostatakse kaart võimsuse ja energiaga, mida saab eraldada, võttes arvesse maastiku põhiomadusi (nt maapinna temperatuur / läbilaskevõime / juhtivus) ja puurkaevu (nt pikkus, läbimõõt jne).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Selle arvutusmooduli GitHubi hoidla</h2><p> <a href="https://github.com/HotMaps/gchp_potential/tree/develop">Siit</a> saate selle arvutusmooduli jaoks verejooksu arenduse.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Proovijooks</h2><p> Kasutajad saavad võimaluse korral anda erinevad maapinna omadused (nt maapinna temperatuur, juhtivus ja läbilaskevõime). Samuti on võimalik määratleda geotermilise süsteemi erinevad omadused nagu puuraugu geomeetria.</p><p> Nagu varem mainitud, genereeritakse väljundina rasterkiht. See kiht näitab potentsiaali erinevates piirkondades. Kuna tihedates linnapiirkondades on potentsiaali keeruline hinnata, ei anna sisendrasterkiht selliste piirkondade kohta teavet. Seetõttu on ka need piirkonnad väljundkihis tühjad.</p><img src="/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuidas tsiteerida</h2><p> Pietro Zambelli ja Giulia Garegnani, Hotmapsi vikis, CM madala geotermilise potentsiaaliga (september 2020)</p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorid ja retsensendid</h2><p> Selle lehe kirjutasid Giulia Garegnani ja Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Selle lehe vaatas läbi Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Litsents</h2><p> Autoriõigus © 2016-2020: Pietro Zambelli ja Giulia Garegnani</p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents</p><p> See töö on litsentsitud rahvusvahelise Creative Commons CC BY 4.0 litsentsi alusel.</p><p> SPDX-litsentsi identifikaator: CC-BY-4.0</p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Soovime avaldada sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis andis rahalisi vahendeid käesoleva uurimise läbiviimiseks.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Shallow-geothermal-potential) (original) [Bulgarian](../bg/CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](../cs/CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](../da/CM-Shallow-geothermal-potential)<sup>\*</sup> [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](../el/CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](../es/CM-Shallow-geothermal-potential)<sup>\*</sup>  [Finnish](../fi/CM-Shallow-geothermal-potential)<sup>\*</sup> [French](../fr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Irish](../ga/CM-Shallow-geothermal-potential)<sup>\*</sup> [Croatian](../hr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Hungarian](../hu/CM-Shallow-geothermal-potential)<sup>\*</sup> [Italian](../it/CM-Shallow-geothermal-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](../lv/CM-Shallow-geothermal-potential)<sup>\*</sup> [Maltese](../mt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Dutch](../nl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Polish](../pl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](../ro/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](../sk/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](../sl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](../sv/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated