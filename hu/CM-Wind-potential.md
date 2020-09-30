<h1><a class="anchor" id="cm-wind-potential" href="#cm-wind-potential"><i class="fa fa-link"></i></a>CM Szélpotenciál</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Tartalomjegyzék</h2><ul><li> <a href="#in-a-glance">Egy pillantással</a></li><li> <a href="#introduction">Bevezetés</a></li><li> <a href="#inputs-and-outputs">Bemenetek és kimenetek</a></li><li> <a href="#method">Módszer</a></li><li> <a href="#github-repository-of-this-calculation-module">A számítási modul GitHub-tárháza</a></li><li> <a href="#sample-run">Mintafutás</a></li><li> <a href="#how-to-cite">Hogyan lehet idézni</a></li><li> <a href="#authors-and-reviewers">Szerzők és lektorok</a></li><li> <a href="#license">Engedély</a></li><li> <a href="#acknowledgement">Elismerés</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Egy pillantással</h2><p> Ez a modul kiszámítja a szélenergia-ellátási potenciált egy kiválasztott területen. A modul bemenete egy raszterfájl, amely tartalmazza az átlagos szélsebességet, valamint a szélkamra és a turbina műszaki leírását.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Bevezetés</h2><p> Ez a modul éves, havi és órás felbontással értékeli a szélerőmű által előállított szélenergiát. A modul megbecsüli az előre meghatározott területre telepíthető turbinák számát. Célja kiszámítani a szélenergia-potenciált és egy kiválasztott terület pénzügyi megvalósíthatóságát az alábbiak figyelembevételével:</p><ul><li> új szélrendszerek telepítése,</li><li> értékelje az új üzemek pénzügyi megvalósíthatóságát.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Bemenetek és kimenetek</h2><p> A bemeneti paraméterek és rétegek, valamint a kimeneti rétegek és paraméterek a következők.</p><p> <strong>A beviteli rétegek és paraméterek a következők:</strong></p><ul><li> raszter fájl:<ul><li> átlagos szélsebesség [m / s]</li><li> a szél kiaknázására rendelkezésre álló területtel. Az alapértelmezett raszter csak az alacsony vagy ritka növényzettel rendelkező területeket, valamint a csupasz és leégett területeket használja (a <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover -</a> 3.2.1. Osztályok, a <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover -</a> 3.2.4. És 3.3.3., 3.3.4. Osztályai). Ezután a fenntarthatósági kritériumok szerint kizártuk a következő területeket:<ul><li> A tengerszint feletti 2500 méter feletti területek (2500 mázsa);</li><li> 1 km-es puffer városi területekről (a CLC 1.1.1. És 1.4.2. Osztályai);</li><li> Folyosók a madárkapcsolathoz (a kijelölt területek közös adatbázisa);</li><li> A Nature 2000 hálózat védett területeinek kizárása.</li></ul></li></ul></li><li> A szélcsomó telepítési költségei (all inclusive; alapértelmezett érték: 2000 € / kWp);</li><li> Szélcsomók közötti távolság (alapértelmezett érték: 1000m);</li><li> Karbantartási és üzemeltetési költségek (alapértelmezett érték: 2%);</li><li> Csúcsteljesítmény (alapértelmezett érték: 800kW);</li><li> Magasság (alapértelmezett érték: 80m);</li><li> Pénzügyi évek (alapértelmezett érték: 20 év);</li><li> Diszkontráta (alapértelmezett érték: 4,0%);</li></ul><p> <strong>A kimeneti rétegek és paraméterek a következők:</strong></p><ul><li> a szélrendszerek megvalósításának teljes költsége;</li><li> a teljes éves energiatermelés;</li><li> a szintezett energiaköltség;</li><li> raszterfájl a szélenergia előállításához legmegfelelőbb területekkel.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Módszer</h2><p> A CM által alkalmazott módszer a felhasználó által kiválasztott terület felhasználása. Az alapértelmezett területek azok a szél potenciálrétegekben meghatározott területek, amelyek csak alacsony vagy ritka növényzetű területeket, valamint a csupasz és leégett területeket veszik figyelembe (a 3.2.1. - 3.2.4. És a 3.3.3., 3.3.4. Osztályok) <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover - CLC</a> ), ezeket a területeket tovább szűrték a következő kizárási kritériumok alapján:</p><ul><li> 2500 masl feletti területek;</li><li> 1 km-es puffer városi területekről (a CLC 1.1.1. És 1.4.2. Osztályai);</li><li> Folyosók a madárkapcsolathoz (a kijelölt területek közös adatbázisa [148]);</li><li> A Nature 2000 hálózat védett területeinek kizárása [149].</li></ul><p> A CM a felhasználó által a hubok közötti távolságot használja a potenciális hubok rácsának létrehozásához a kiválasztott területeken. A potenciálisan telepíthető szélturbinák száma alapján, a szélrendszer fő jellemzői, magassága és műszaki specifikációi alapján a modul kiszámítja a rendszer által előállítható energiát.</p><p> A modul megkapja a havi és az óránkénti profilt, kiszámítva a kijelölt területek barycenterét, és lekérdezve a <a href="https://www.renewables.ninja/">RenewableNinja API-t</a> , amely a MERRAv2 adatkészlet adatait szolgáltatja.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> A számítási modul GitHub-tárháza</h2><p> <a href="https://github.com/HotMaps/wind_potential">Itt</a> kapja meg ennek a számítási modulnak az élvonalbeli fejlesztését.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Mintafutás</h2><img alt="Fig. 1-0" src="https://wiki.hotmaps.hevs.ch/en/CM-Wind-potential/cm-wind.png" title="Végezze el a Wind CM alkalmazást"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hogyan lehet idézni</h2><p> Pietro Zambelli, a Hotmaps-Wiki fájlban, CM-Wind-potential (2020 szeptember)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Szerzők és lektorok</h2><p> Ezt az oldalt Giulia Garegnani és Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ) <strong><a href="http://www.eurac.edu">írták</a></strong> .</p><p> ☑ Ezt az oldalt Simon Pezzutto ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ) vizsgálta felül.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Engedély</h2><p> Copyright © 2016-2020: Giulia Garegnani és Pietro Zambelli</p><p> Creative Commons Attribution 4.0 nemzetközi licenc</p><p> Ez a munka a Creative Commons CC BY 4.0 nemzetközi licenc alatt van licencelve.</p><p> SPDX-licenc-azonosító: CC-BY-4.0</p><p> Licenc-szöveg: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Elismerés</h2><p> Szeretnénk a legnagyobb elismerésünket kifejezni a Horizon 2020 Hotmaps projektnek (támogatási szerződés száma 723677), amely finanszírozást nyújtott a jelen vizsgálat elvégzéséhez.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Wind-potential) (original) [Bulgarian](../bg/CM-Wind-potential)<sup>\*</sup> [Czech](../cs/CM-Wind-potential)<sup>\*</sup> [Danish](../da/CM-Wind-potential)<sup>\*</sup> [German](../de/CM-Wind-potential)<sup>\*</sup> [Greek](../el/CM-Wind-potential)<sup>\*</sup> [Spanish](../es/CM-Wind-potential)<sup>\*</sup> [Estonian](../et/CM-Wind-potential)<sup>\*</sup> [Finnish](../fi/CM-Wind-potential)<sup>\*</sup> [French](../fr/CM-Wind-potential)<sup>\*</sup> [Irish](../ga/CM-Wind-potential)<sup>\*</sup> [Croatian](../hr/CM-Wind-potential)<sup>\*</sup>  [Italian](../it/CM-Wind-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Wind-potential)<sup>\*</sup> [Latvian](../lv/CM-Wind-potential)<sup>\*</sup> [Maltese](../mt/CM-Wind-potential)<sup>\*</sup> [Dutch](../nl/CM-Wind-potential)<sup>\*</sup> [Polish](../pl/CM-Wind-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Wind-potential)<sup>\*</sup> [Romanian](../ro/CM-Wind-potential)<sup>\*</sup> [Slovak](../sk/CM-Wind-potential)<sup>\*</sup> [Slovenian](../sl/CM-Wind-potential)<sup>\*</sup> [Swedish](../sv/CM-Wind-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated