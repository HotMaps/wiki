<h1><a class="anchor" id="cm-shallow-geothermal-potential" href="#cm-shallow-geothermal-potential"><i class="fa fa-link"></i></a>CM Ondiep geothermisch potentieel</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Inhoudsopgave</h2><ul><li> <a href="#in-a-glance">In een oogopslag</a></li><li> <a href="#introduction">Invoering</a></li><li> <a href="#inputs-and-outputs">Ingangen en uitgangen</a></li><li> <a href="#method">Methode</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub repository van deze rekenmodule</a></li><li> <a href="#sample-run">Voorbeeldrun</a></li><li> <a href="#how-to-cite">Hoe te citeren</a></li><li> <a href="#authors-and-reviewers">Auteurs en recensenten</a></li><li> <a href="#license">Licentie</a></li><li> <a href="#acknowledgement">Erkenning</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> In een oogopslag</h2><p> Deze module berekent het potentieel van ondiepe aardwarmte voor gebruik in grondwarmtepompen voor geselecteerde regio&#39;s in de vorm van een rasterbestand. De inputs zijn rasterbestanden met aanvankelijke grondtemperaturen, op diepte gemiddelde thermische geleidbaarheid van de grond en op diepte gemiddelde thermische capaciteit van de grond.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Invoering</h2><p> De rekenmodule heeft tot doel het ondiepe geothermische potentieel te berekenen op basis van <a href="https://grass.osgeo.org/grass76/manuals/addons/r.green.gshp.theoretical.html">r.green.gshp.theoretisch</a> volgens de <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot-methodiek</a> . In deze module is de output de theoretische maximale energie die in het ideale geval kan worden omgezet zonder rekening te houden met de financiële en ruimtelijke beperkingen.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ingangen en uitgangen</h2><p> De invoerparameters en lagen, evenals uitvoerlagen en parameters, zijn als volgt.</p><p> <strong>Invoerlagen en parameters zijn:</strong></p><ul><li> Vector met op diepte gemiddelde thermische geleidbaarheid van de aarde [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Waarde met het stookseizoen [0-365] dagen</li><li> Raster met de aanvankelijke grondtemperatuur T0 [° C]</li><li> Waarde met op de diepte gemiddeld thermisch vermogen van de grond [MJ m <sup>-3</sup> K <sup>-1</sup> ]</li></ul><p> De geavanceerde invoerparameters zijn:</p><ul><li> Boorgatradius [m]</li><li> Thermische weerstand van het boorgat [m KW <sup>-1</sup> ]</li><li> Boorgatlengte [m]</li><li> Buisradius [m]</li><li> Aantal leidingen in het boorgat</li><li> Thermische geleidbaarheid van de boorgatvulling (geothermische grout) [W m <sup>-1</sup> K <sup>-1</sup> ]</li><li> Minimale of maximale vloeistoftemperatuur [° C]</li><li> Gesimuleerde levensduur van de installatie [jaar]</li></ul><p> <strong>Uitvoerlagen en parameters zijn:</strong></p><ul><li> een rasterkaart met het aardwarmtepotentieel [MWh / (ha * jr)]</li><li> een indicator van de gemiddelde energie die kan worden gewonnen per GCHP-systeem [MWh / jr]</li></ul><p> Een diepere uitleg van het standaard <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">invoerraster</a> is beschikbaar in de <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Hotmaps-repository</a></p><p> Het is ook vermeldenswaard dat vanwege het feit dat implementatie van een geothermisch systeem niet altijd mogelijk is, vooral in de zeer dichtbevolkte stadsgebieden, het invoerrasterbestand geen informatie biedt voor verschillende grote steden. Dit is ook zichtbaar in de outputbestanden en is GEEN fout bij de berekening.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Methode</h2><p> De methode om het energiepotentieel te bepalen is gebaseerd op de <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">G.pot</a> . Het potentieel van ondiepe geothermische energie wordt berekend door middel van een empirische relatie voorgesteld door <a href="https://www.sciencedirect.com/science/article/pii/S0360544216303358">Casasso et al. (2016)</a> .</p><p> De methodologie levert een kaart op met het vermogen en de energie die kunnen worden onttrokken rekening houdend met de belangrijkste kenmerken van het terrein (bijv. Grondtemperatuur / capaciteit / geleidbaarheid) en van het boorgat (bijv. Lengte, diameter, enz.).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub repository van deze rekenmodule</h2><p> <a href="https://github.com/HotMaps/gchp_potential/tree/develop">Hier</a> krijg je de meest geavanceerde ontwikkeling voor deze rekenmodule.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Monsterrun</h2><p> Gebruikers kunnen, indien beschikbaar, verschillende aardingskenmerken opgeven (bijv. Grondtemperatuur, grondgeleiding en capaciteit). Het is ook mogelijk om de verschillende kenmerken van het geothermische systeem te definiëren, zoals de boorgatgeometrie.</p><p> Zoals eerder vermeld, wordt een rasterlaag gegenereerd als uitvoer. Deze laag toont het potentieel op verschillende gebieden. Omdat het moeilijk is om het potentieel in dichtbevolkte stedelijke gebieden in te schatten, biedt de invoerrasterlaag geen informatie voor dergelijke regio&#39;s. Hierdoor zijn deze gebieden ook leeg in de outputlaag.</p><img src="/en/CM-Shallow-geothermal-potential/shallow_geothermal_out_raster.png"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hoe te citeren</h2><p> Pietro Zambelli en Giulia Garegnani, in Hotmaps Wiki, CM Ondiep geothermisch potentieel (september 2020)</p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Auteurs en recensenten</h2><p> Deze pagina is geschreven door Giulia Garegnani en Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Deze pagina is beoordeeld door Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licentie</h2><p> Copyright © 2016-2020: Pietro Zambelli en Giulia Garegnani</p><p> Creative Commons Attribution 4.0 Internationale licentie</p><p> Dit werk is gelicentieerd onder een Creative Commons CC BY 4.0 internationale licentie.</p><p> SPDX-licentie-ID: CC-BY-4.0</p><p> Licentie-tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Erkenning</h2><p> We willen onze diepste waardering <a href="https://www.hotmaps-project.eu">uitspreken</a> voor het Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-project</a> (subsidieovereenkomst nummer 723677), dat de financiering heeft verstrekt om het huidige onderzoek uit te voeren.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Shallow-geothermal-potential) (original) [Bulgarian](../bg/CM-Shallow-geothermal-potential)<sup>\*</sup> [Czech](../cs/CM-Shallow-geothermal-potential)<sup>\*</sup> [Danish](../da/CM-Shallow-geothermal-potential)<sup>\*</sup> [German](../de/CM-Shallow-geothermal-potential)<sup>\*</sup> [Greek](../el/CM-Shallow-geothermal-potential)<sup>\*</sup> [Spanish](../es/CM-Shallow-geothermal-potential)<sup>\*</sup> [Estonian](../et/CM-Shallow-geothermal-potential)<sup>\*</sup> [Finnish](../fi/CM-Shallow-geothermal-potential)<sup>\*</sup> [French](../fr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Irish](../ga/CM-Shallow-geothermal-potential)<sup>\*</sup> [Croatian](../hr/CM-Shallow-geothermal-potential)<sup>\*</sup> [Hungarian](../hu/CM-Shallow-geothermal-potential)<sup>\*</sup> [Italian](../it/CM-Shallow-geothermal-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Latvian](../lv/CM-Shallow-geothermal-potential)<sup>\*</sup> [Maltese](../mt/CM-Shallow-geothermal-potential)<sup>\*</sup>  [Polish](../pl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Shallow-geothermal-potential)<sup>\*</sup> [Romanian](../ro/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovak](../sk/CM-Shallow-geothermal-potential)<sup>\*</sup> [Slovenian](../sl/CM-Shallow-geothermal-potential)<sup>\*</sup> [Swedish](../sv/CM-Shallow-geothermal-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated