<h2> Turinys </h2><ul><li> <a href="#introduction">Įvadas</a> </li><li> <a href="#inputs-and-outputs">Įėjimai ir išėjimai</a> </li><li> <a href="#method">Metodas</a> </li><li> <a href="#sample-run">Mėginio paleidimas</a> <ul><li> <a href="#test-run-1-default-input-values">1 bandymo eiga: numatytosios įvesties vertės</a> </li><li> <a href="#test-run-2-modified-input-values">2 testas: modifikuotos įvesties vertės</a> </li></ul></li><li> <a href="#references">Nuorodos</a> </li><li> <a href="#how-to-cite">Kaip cituoti</a> </li><li> <a href="#authors-and-reviewers">Autoriai ir recenzentai</a> </li><li> <a href="#license">Licencija</a> </li><li> <a href="#acknowledgement">Pripažinimas</a> </li></ul><h2> Įvadas </h2><p> Ja siekiama apskaičiuoti negilų geoterminį potencialą remiantis <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">r.green.gshp.theoretical</a> pagal <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot metodiką</a> . Šiame modulyje išėjimas yra teorinė maksimali energija, kurią idealiu atveju galima paversti neatsižvelgiant į finansinius ir erdvinius apribojimus. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Įėjimai ir išėjimai </h2><p> Įvesties parametrai ir sluoksniai, taip pat išvesties sluoksniai ir parametrai yra šie. </p><p> <strong>Įvesties sluoksniai ir parametrai yra šie:</strong> </p><ul><li> Vektorius, turintis žemės gylio vidutinį šilumos laidumą [W m-1 K-1] </li><li> Vertė su šildymo sezono [0-365] dienomis </li><li> Rastras, kurio pradinė žemės temperatūra T0 [° C] </li><li> Vertė atsižvelgiant į vidutinę gylio grunto šiluminę galią [MJ m-3 K-1] </li><li> Reikšmė su vidutine gylio grunto šilumine talpa [MJ m <sup>-3</sup> K <sup>-1</sup> ] </li></ul><p> Išplėstinė įvestis yra: </p><ul><li> Gręžinio spindulys [m] </li><li> Gręžinio šiluminė varža [m KW <sup>-1</sup> ] </li><li> Kiaurymės ilgis [m] </li><li> Vamzdžio spindulys [m] </li><li> Vamzdžių skaičius gręžinyje </li><li> Gręžinio užpildymo šiluminis laidumas (geoterminis skiedinys) [W m-1 K-1] </li><li> Minimali arba maksimali skysčio temperatūra [° C] </li><li> Imituotas augalo tarnavimo laikas [metai] </li></ul><p> <strong>Išvesties sluoksniai ir parametrai yra šie:</strong> </p><ul><li> rastrinis žemėlapis su geoterminės galios potencialu [W] </li><li> rastrinis žemėlapis su geoterminės energijos potencialu [MWh] </li></ul><p> <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Detalesnį</a> numatytojo įvesties rastro paaiškinimą galite rasti „ <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Hotmaps“ saugykloje</a> </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Metodas </h2><p> Energijos potencialo apibrėžimo metodas pagrįstas <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot</a> . <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Negilios</a> geoterminės energijos potencialas apskaičiuojamas remiantis <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso ir kt.</a> Pasiūlytais empiriniais ryšiais <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">. (2016)</a> . </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> 1 bandomasis bėgimas </h2><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> 1 bandymo eiga: numatytosios įvesties vertės </h3><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> 2 testas: modifikuotos įvesties vertės </h3><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Nuorodos </h2><h2> Kaip cituoti </h2><h2> Autoriai ir recenzentai </h2><p> Šį puslapį parašė Pietro Zambelli * ir Giulia Garegnani *. </p><p> * <a href="http://www.eurac.edu/en/research/technologies/renewableenergy/researchfields/Pages/Energy-strategies-and-planning.aspx">Miestų ir regionų energetikos sistemos grupė - EURAC Bozen</a> </p><p> Atsinaujinančios energijos institutas „Drususallee“ / „Viale Druso 1 I-39100 Bozen“ / Bolzano, Italija </p><h2> Licencija </h2><p> Autorinės teisės © 2016-2019: Giulia Garegnani </p><p> Tarptautinė „Creative Commons Attribution 4.0“ licencija </p><p> Šis darbas yra licencijuotas pagal „Creative Commons CC BY 4.0“ tarptautinę licenciją. </p><p> SPDX licencijos identifikatorius: CC-BY-4.0 </p><p> Licencijos tekstas: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Pripažinimas </h2><p> Norėtume išreikšti savo <a href="https://www.hotmaps-project.eu">nuoširdumą</a> „Horizon 2020“ <a href="https://www.hotmaps-project.eu">karštųjų žemėlapių projektui</a> (dotacijos sutarties numeris 723677), kuris skyrė lėšų šiam tyrimui atlikti. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-CM-Shallow-geothermal-potential) (original) [Bulgarian](bg-CM-Shallow-geothermal-potential)<sup>\*</sup> [Croatian](hr-CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](cs-CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](da-CM-Shallow-geothermal-potential)<sup>\*</sup> [Dutch](nl-CM-Shallow-geothermal-potential)<sup>\*</sup> [Estonian](et-CM-Shallow-geothermal-potential)<sup>\*</sup> [Finnish](fi-CM-Shallow-geothermal-potential)<sup>\*</sup> [French](fr-CM-Shallow-geothermal-potential)<sup>\*</sup> [German](de-CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](el-CM-Shallow-geothermal-potential)<sup>\*</sup> [Hungarian](hu-CM-Shallow-geothermal-potential)<sup>\*</sup> [Irish](ga-CM-Shallow-geothermal-potential)<sup>\*</sup> [Italian](it-CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](lv-CM-Shallow-geothermal-potential)<sup>\*</sup>  [Maltese](mt-CM-Shallow-geothermal-potential)<sup>\*</sup> [Polish](pl-CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](ro-CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](sk-CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](sl-CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](es-CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](sv-CM-Shallow-geothermal-potential)<sup>\*</sup>
<sup>\*</sup>: machine translated