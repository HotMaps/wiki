<h1><a class="anchor" id="cm-shallow-geothermal-potential" href="#cm-shallow-geothermal-potential"><i class="fa fa-link"></i></a>CM Sekély geotermikus potenciál</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Tartalomjegyzék</h2><ul><li> <a href="#in-a-glance">Egy pillantással</a></li><li> <a href="#introduction">Bevezetés</a></li><li> <a href="#inputs-and-outputs">Bemenetek és kimenetek</a></li><li> <a href="#method">Módszer</a></li><li> <a href="#github-repository-of-this-calculation-module">A számítási modul GitHub-tárháza</a></li><li> <a href="#sample-run">Mintafutás</a></li><li> <a href="#how-to-cite">Hogyan lehet idézni</a></li><li> <a href="#authors-and-reviewers">Szerzők és lektorok</a></li><li> <a href="#license">Engedély</a></li><li> <a href="#acknowledgement">Elismerés</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Egy pillantással</h2><p> Ez a modul raszterfájl formájában kiszámítja a kiválasztott régiók földi hőszivattyúiban felhasználható sekély geotermikus energia potenciálját. A bemenetek raszterfájlok, a talaj kezdeti hőmérsékletével, a mélység átlagolt hővezető képességével és a mélység átlagolt talaj hőteljesítményével.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Bevezetés</h2><p> A számítási modul célja a sekély geotermikus potenciál kiszámítása az <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">r.green.gshp.elméleti</a> alapján a <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot módszertan szerint</a> . Ebben a modulban a kimenet az az elméleti maximális energia, amely ideális esetben átalakítható anélkül, hogy figyelembe vennénk a pénzügyi és a térbeli korlátokat.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Bemenetek és kimenetek</h2><p> A bemeneti paraméterek és rétegek, valamint a kimeneti rétegek és paraméterek a következők.</p><p> <strong>A beviteli rétegek és paraméterek a következők:</strong></p><ul><li> Vektor mélység szerint átlagolt földi hővezető képességgel [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Érték a fűtési szezonnal [0-365] nap</li><li> Raszter a kezdeti talajhőmérséklet mellett T0 [° C]</li><li> A mélység átlagolt földi hőteljesítménye [MJ m <sup>-3</sup> K <sup>-1</sup> ]</li></ul><p> Az előzetes bemeneti paraméterek a következők:</p><ul><li> Fúrólyuk sugara [m]</li><li> Fúrólyuk hőellenállása [m KW <sup>-1</sup> ]</li><li> Fúrólyuk hossza [m]</li><li> Cső sugara [m]</li><li> A fúrólyukban lévő csövek száma</li><li> A furatkitöltés hővezető képessége (geotermikus fugázóanyag) [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Minimális vagy maximális folyadékhőmérséklet [° C]</li><li> Az üzem szimulált élettartama [év]</li></ul><p> <strong>A kimeneti rétegek és paraméterek a következők:</strong></p><ul><li> raszteres térkép a geotermikus energiapotenciállal [MWh / (ha * év)]</li><li> GCHP-rendszerenként kinyerhető átlagos energia mutatója [MWh / év]</li></ul><p> Az alapértelmezett bemeneti raszter részletesebb magyarázata a <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Hotmaps adattárban</a> érhető el</p><p> Érdemes megemlíteni azt is, hogy mivel a geotermikus rendszer megvalósítása nem mindig lehetséges, különösen az igen sűrű városrészekben, a bemeneti raszterfájl nem nyújt információt több nagyvárosról. Ez a kimeneti fájlokban is látható, és NEM hiba a számításban.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Módszer</h2><p> Az energiapotenciál meghatározásának módszere a <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot-</a> on alapul. A sekély geotermikus energia potenciálját <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso és munkatársai</a> által javasolt és empirikus kapcsolat alapján <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">számítják ki. (2016)</a> .</p><p> A módszertan egy térképet készít, amelynek teljesítménye és energiája kinyerhető, figyelembe véve a terep fő jellemzőit (pl. Talajhőmérséklet / kapacitás / vezetőképesség) és a fúrólyukat (pl. Hossz, átmérő stb.).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> A számítási modul GitHub-tárháza</h2><p> <a href="https://github.com/HotMaps/gchp_potential/tree/develop">Itt</a> kapja meg ennek a számítási modulnak az élvonalbeli fejlesztését.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Mintafuttatás</h2><p> A felhasználók különböző talajjellemzőket adhatnak meg (pl. Talajhőmérséklet, talajvezetési tényező és kapacitás), ha rendelkezésre állnak. Meg lehet határozni a geotermikus rendszer különböző jellemzőit, például a furat geometriáját is.</p><p> Mint korábban említettük, kimenetként raszterréteg jön létre. Ez a réteg megmutatja a potenciált a különböző területeken. Mivel nehéz megbecsülni a sűrű városi területeken rejlő potenciált, a bemeneti raszterréteg nem nyújt információt az ilyen régiókról. Ennek eredményeként ezek a régiók is üresek a kimeneti rétegben.</p><img src="/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hogyan lehet idézni</h2><p> Pietro Zambelli és Giulia Garegnani, a Hotmaps Wikiben, CM sekély geotermikus potenciál (2020 szeptember)</p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Szerzők és lektorok</h2><p> Ezt az oldalt Giulia Garegnani és Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ) <strong><a href="http://www.eurac.edu">írták</a></strong> .</p><p> ☑ Ezt az oldalt Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ) vizsgálta felül.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Engedély</h2><p> Copyright © 2016-2020: Pietro Zambelli és Giulia Garegnani</p><p> Creative Commons Attribution 4.0 nemzetközi licenc</p><p> Ez a munka a Creative Commons CC BY 4.0 nemzetközi licenc alatt van licencelve.</p><p> SPDX-licenc-azonosító: CC-BY-4.0</p><p> Licenc-szöveg: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Elismerés</h2><p> Szeretnénk a legnagyobb elismerésünket <a href="https://www.hotmaps-project.eu">kifejezni</a> a Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps projektnek</a> (támogatási szerződés száma 723677), amely finanszírozást nyújtott a jelen vizsgálat elvégzéséhez.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Shallow-geothermal-potential) (original) [Bulgarian](../bg/CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](../cs/CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](../da/CM-Shallow-geothermal-potential)<sup>\*</sup> [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](../el/CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](../es/CM-Shallow-geothermal-potential)<sup>\*</sup> [Estonian](../et/CM-Shallow-geothermal-potential)<sup>\*</sup> [Finnish](../fi/CM-Shallow-geothermal-potential)<sup>\*</sup> [French](../fr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Irish](../ga/CM-Shallow-geothermal-potential)<sup>\*</sup> [Croatian](../hr/CM-Shallow-geothermal-potential)<sup>\*</sup>  [Italian](../it/CM-Shallow-geothermal-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](../lv/CM-Shallow-geothermal-potential)<sup>\*</sup> [Maltese](../mt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Dutch](../nl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Polish](../pl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](../ro/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](../sk/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](../sl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](../sv/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated