<h1><a class="anchor" id="cm-shallow-geothermal-potential" href="#cm-shallow-geothermal-potential"><i class="fa fa-link"></i></a>CM Matala geoterminen potentiaali</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisällysluettelo</h2><ul><li> <a href="#in-a-glance">Yhdellä silmäyksellä</a></li><li> <a href="#introduction">Johdanto</a></li><li> <a href="#inputs-and-outputs">Tulot ja lähdöt</a></li><li> <a href="#method">Menetelmä</a></li><li> <a href="#github-repository-of-this-calculation-module">Tämän laskentamoduulin GitHub-arkisto</a></li><li> <a href="#sample-run">Näyte ajo</a></li><li> <a href="#how-to-cite">Kuinka lainata</a></li><li> <a href="#authors-and-reviewers">Kirjoittajat ja arvostelijat</a></li><li> <a href="#license">Lisenssi</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Yhdellä silmäyksellä</h2><p> Tämä moduuli laskee valittujen alueiden maalämpöpumppuissa käytettävän matalan geotermisen energian potentiaalin rasteritiedostona. Syötteet ovat rasteritiedostoja, joissa on alustavat maan lämpötilat, maan syvyyden keskiarvoinen lämmönjohtavuus ja keskimääräinen maan lämpökapasiteetti.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Johdanto</h2><p> Laskentamoduulin tarkoituksena on laskea matala geoterminen potentiaali <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">teoreettisen r.green.gshp.:n</a> perusteella <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot-metodologian mukaisesti</a> . Tässä moduulissa tuotos on teoreettinen enimmäisenergia, joka voidaan muuntaa ihanteellisessa tapauksessa ottamatta huomioon taloudellisia ja spatiaalisia rajoituksia.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Tulot ja lähdöt</h2><p> Syöttöparametrit ja -tasot sekä ulostulotasot ja -parametrit ovat seuraavat.</p><p> <strong>Syöttökerrokset ja parametrit ovat:</strong></p><ul><li> Vektori, jolla on maan keskimääräinen syvyyslämmönjohtavuus [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Arvo lämmityskauden [0-365] päivän kanssa</li><li> Rasteri alustavalla maalämpötilalla T0</li><li> Arvo, jonka syvyys on keskimäärin laskettu maan lämpökapasiteetilla [MJ m <sup>-3</sup> K <sup>-1</sup> ]</li></ul><p> Ennakkotuloparametrit ovat:</p><ul><li> Porausreiän säde [m]</li><li> Porausreiän lämpövastus [m KW <sup>-1</sup> ]</li><li> Porausreiän pituus [m]</li><li> Putken säde [m]</li><li> Porausreiän putkien määrä</li><li> Porausreiän lämmönjohtavuus (maalämpölaasti) [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Nesteen vähimmäis- tai enimmäislämpötila [° C]</li><li> Simuloitu laitoksen käyttöikä [vuotta]</li></ul><p> <strong>Tulostustasot ja parametrit ovat:</strong></p><ul><li> rasterikartta, jossa on geoterminen energiapotentiaali [MWh / (ha * vuosi)]</li><li> indikaattori keskimääräisestä uutettavasta energiasta GCHP-järjestelmää kohti [MWh / vuosi]</li></ul><p> Syvempi selitys oletustulorasterista on saatavana <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Hotmaps-arkistosta</a></p><p> On myös syytä mainita, että koska geotermisen järjestelmän toteuttaminen ei ole aina mahdollista, varsinkin erittäin tiheillä kaupunkialueilla, syöttörasteritiedosto ei tarjoa tietoa useista suurista kaupungeista. Tämä näkyy myös tulostetiedostoissa, eikä se ole virhe laskennassa.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Menetelmä</h2><p> Menetelmä energiapotentiaalin määrittelemiseksi perustuu <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot</a> . Matalan geotermisen energian potentiaali lasketaan <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso et ai. Ehdottaman</a> empiirisen suhteen avulla <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">. (2016)</a> .</p><p> Menetelmällä tuotetaan kartta, jossa on käytetty teho ja energia, joka voidaan ottaa huomioon ottaen huomioon maaston pääominaisuudet (esim. Maan lämpötila / kapasiteetti / johtavuus) ja porausreiän (esim. Pituus, halkaisija jne.).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Tämän laskentamoduulin GitHub-arkisto</h2><p> <a href="https://github.com/HotMaps/gchp_potential/tree/develop">Täältä</a> saat vertailevan kehityksen tälle laskentamoduulille.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Näyte ajo</h2><p> Käyttäjät voivat antaa erilaisia maaperän ominaisuuksia (esim. Maan lämpötila, maan johtavuus ja kapasiteetti), jos niitä on saatavilla. On myös mahdollista määritellä geotermisen järjestelmän erilaiset ominaisuudet, kuten porausreiän geometria.</p><p> Kuten aiemmin mainittiin, ulostulona muodostetaan rasterikerros. Tämä kerros näyttää potentiaalin eri alueilla. Koska tiheiden kaupunkialueiden potentiaalia on vaikea arvioida, syöttörasterikerros ei tarjoa tietoja tällaisille alueille. Tämän seurauksena nämä alueet ovat myös tyhjät lähtökerroksessa.</p><img src="/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuinka lainata</h2><p> Pietro Zambelli ja Giulia Garegnani, Hotmaps Wikissä, CM-matala geoterminen potentiaali (syyskuu 2020)</p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Kirjoittajat ja arvostelijat</h2><p> Tämän sivun ovat kirjoittaneet Giulia Garegnani ja Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Tämän sivun tarkasteli Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Lisenssi</h2><p> Tekijänoikeus © 2016-2020: Pietro Zambelli ja Giulia Garegnani</p><p> Creative Commons Nimeä 4.0 -lisenssi</p><p> Tämä teos on lisensoitu Creative Commons CC BY 4.0 -lisenssillä.</p><p> SPDX-lisenssitunniste: CC-BY-4.0</p><p> Lisenssiteksti: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Haluamme välittää syvän arvostuksemme Horisontti 2020 <a href="https://www.hotmaps-project.eu">Hotmaps -hankkeelle</a> (avustussopimuksen numero 723677), joka tarjosi rahoitusta tämän tutkimuksen suorittamiseen.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Shallow-geothermal-potential) (original) [Bulgarian](../bg/CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](../cs/CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](../da/CM-Shallow-geothermal-potential)<sup>\*</sup> [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](../el/CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](../es/CM-Shallow-geothermal-potential)<sup>\*</sup> [Estonian](../et/CM-Shallow-geothermal-potential)<sup>\*</sup>  [French](../fr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Irish](../ga/CM-Shallow-geothermal-potential)<sup>\*</sup> [Croatian](../hr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Hungarian](../hu/CM-Shallow-geothermal-potential)<sup>\*</sup> [Italian](../it/CM-Shallow-geothermal-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](../lv/CM-Shallow-geothermal-potential)<sup>\*</sup> [Maltese](../mt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Dutch](../nl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Polish](../pl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](../ro/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](../sk/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](../sl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](../sv/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated