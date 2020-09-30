<h1><a class="anchor" id="cm-decentral-heating-supply" href="#cm-decentral-heating-supply"><i class="fa fa-link"></i></a>CM Decentral värmeförsörjning</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Innehållsförteckning</h2><ul><li> <a href="#in-a-glance">I en blick</a></li><li> <a href="#introduction">Introduktion</a></li><li> <a href="#inputs-and-outputs">In- och utgångar</a><ul><li> <a href="#inputs-and-outputs_inputs">Ingångar</a><ul><li> <a href="#inputs-and-outputs_inputs_default-input-data">Standardindata</a></li><li> <a href="#inputs-and-outputs_inputs_manual-input-data">Manuell inmatningsdata</a></li></ul></li><li> <a href="#inputs-and-outputs_outputs">Utgångar</a><ul><li> <a href="#inputs-and-outputs_outputs_indicators">Indikatorer</a></li><li> <a href="#inputs-and-outputs_outputs_graphs">Grafer</a></li></ul></li></ul></li><li> <a href="#methodology">Metodik</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub-förvar för denna beräkningsmodul</a></li><li> <a href="#sample-run">Provkörning</a><ul><li> <a href="#sample-run_test-run">Provkörning</a></li></ul></li><li> <a href="#how-to-cite">Hur man citerar</a></li><li> <a href="#authors-and-reviewers">Författare och granskare</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Bekräftelse</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> I en blick</h2><p> Denna modul beräknar kostnaderna för värmeförsörjning i byggnader via decentraliserad värmetillförselteknik. Ingångarna till modulen är investeringskostnader, O &amp; M-kostnader, energipriser, timbelastningsprofilen för värmebehov samt avskrivningstid och ränta. Dessutom krävs sammansättning av byggnader och renoveringstillstånd för byggnaderna i det analyserade området. Produktionen är värmekostnadskostnaderna för olika decentraliserade värmetillförseltekniker för de definierade byggnaderna och prisantaganden samt referenskostnader för decentraliserad leverans för det analyserade området och relaterade koldioxidutsläpp.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Denna beräkningsmodul beräknar den nivåiserade värmekostnaden (LCOH) för olika decentraliserade värmetillförseltekniker för att leverera värme till en användardefinierad byggnad.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/1.png"/><p> Teknologierna är till exempel följande:</p><ul><li> Värmepump luft-till-luft, luft-till-vatten och saltlake-till-vatten,</li><li> Elvärmare,</li><li> Biooljepanna,</li><li> Oljepanna,</li><li> Biomassa automatisk och manuell,</li><li> Vedeldad spis,</li><li> Naturgas,</li><li> Solvärme</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="inputs-and-outputs-" href="#inputs-and-outputs-"><i class="fa fa-link"></i></a> In- och utgångar:</h2><h3><a class="anchor" id="inputs" href="#inputs"><i class="fa fa-link"></i></a> Ingångar</h3><h4><a class="anchor" id="default-input-data" href="#default-input-data"><i class="fa fa-link"></i></a> Standardindata</h4><p> En del av indata kommer från Hotmaps standarddatauppsättningar. Dessa inkluderar:</p><ul><li> NUTS Raster</li><li> Byggmaterial (NUTS0-nivå): användbar energibehov efter byggklass och byggperiod</li><li> Lastprofiler (NUTS2-nivå)</li><li> Ekonomiska data - värmesystem (NUTS0-nivå)</li><li> Finansiella data - Energibärarpriser (NUTS0-nivå)</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="manual-input-data" href="#manual-input-data"><i class="fa fa-link"></i></a> Manuell inmatningsdata</h4><p> Följande ingångsdata ska anges manuellt efter val av ett område:</p><ul><li> Byggålder,</li><li> Ränta,</li><li> Äckligt golvutrymme,</li><li> Byggnadstyp,</li><li> År (för finansuppgifter),</li><li> Besparingar i rymdvärme,</li><li> Utsläppsfaktorer per energibärare.</li></ul><p> <strong>VIKTIG OBS!</strong> I Hotmaps antas inte utsläpp av biomassa noll eftersom Hotmaps är ett verktyg som syftar till att stödja den pågående energiomställningen. Att betrakta biomassa som en koldioxidneutral energikälla innebär att förbränning av biomassa minskar de nuvarande totala utsläppen jämfört med förbränning av fossila bränslen, vilket inte är sant. Lagring av koldioxid i träd sker under årtionden, medan dess utsläpp i atmosfären sker på en gång. Därför kan man dra slutsatsen att nettokoldioxidbalansen för biomassa är noll på lång sikt, men inte på kort sikt, och åtgärder för att minska klimatförändringarna måste ge resultat för att minska koldioxidutsläppen på kort sikt.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="outputs-" href="#outputs-"><i class="fa fa-link"></i></a> Utgångar:</h3><h4><a class="anchor" id="indicators-" href="#indicators-"><i class="fa fa-link"></i></a> Indikatorer:</h4><p> Indikatorer består av en sammanfattning av ingångsparametrar och beräknade värden:</p><ul><li> Motsvarande NUTS-kod: NUTS3-kod för den valda regionen (när du använder hektar- eller LAU-nivå),</li><li> besparingar i rymdvärme,</li><li> angett brutto golvyta,</li><li> ingått år,</li><li> angiven ränta,</li><li> gått in i byggnadsåldern,</li><li> angiven byggnadstyp,</li><li> årlig användbar energibehov i byggnaden,</li><li> Värmebelastning,</li><li> Sektor,</li><li> Använd byggnadstyp för varje ekonomisk data.</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h4><a class="anchor" id="graphs-" href="#graphs-"><i class="fa fa-link"></i></a> Diagram:</h4><ul><li> LCOH</li><li> OPEX</li><li> CAPEX</li><li> Energikostnader</li><li> CO2-utsläpp</li><li> Termisk effektivitet</li><li> Slutlig energibehov</li><li> Totala kostnader</li><li> Livräntefaktor</li><li> Värmebelastning</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="methodology-" href="#methodology-"><i class="fa fa-link"></i></a> Metodik:</h2><p> Baserat på den valda regionen bestäms motsvarande NUTS0- och NUTS2-regioner.</p><p> För den valda byggtypen och byggnadsåldern och NUTS0-regionen väljs det specifika användbara energibehovet och det årliga värmebehovet beräknas genom att multiplicera det med bruttoytan.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/2.png"/><p> Baserat på byggnadens årliga värmebehov och de inmatade besparingarna vid uppvärmning beräknas värmebelastningen med användning av värmebelastningsprofilerna.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/3.png"/><p> Med värmebelastningen bestäms det årliga värmebehovet och det valda året investerings- och driftskostnader och bränslekostnader <strong>för varje värmeteknik</strong> .</p><p> De specifika investerings- och driftskostnaderna antas ha ett exponentiellt beteende:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/4.png"/><p> Baserat på land, år och byggnadstyp för de angivna ingångarna räknas faktorerna för varje teknik ut:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/5.png"/><p> Med de bestämda faktorerna kan de absoluta kostnaderna beräknas enligt följande:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/6.png"/><p> För bränslekostnaderna behövs prisuppgifterna för energibärarna.</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/7.png"/><p> Nu har vi alla nödvändiga data och kan beräkna den nivåiserade värmekostnaden.</p><p> Den nivåiserade värmekostnaden för varje värmesystem beräknas som nettonuvärdet av kassaflödet och värmeproduktionen under livslängden.</p><p> Den nivåiserade värmekostnaden ges av:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/8.png"/><p> I denna beräkning antas de årliga kostnaderna och den årliga värmeproduktionen (användbar energibehov) vara konstanta under hela livstiden och därmed summeras summeringarna till en geometrisk serie och transformationsfaktorn kallas livräntsfaktorn α. En grafisk framställning av denna omvandlingsprocess visas i figurerna nedan</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/9.png"/><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/10.png"/><p> Detta antagande förenklar beräkningen och LCOH ges med följande formel:</p><img alt="" src="https://raw.githubusercontent.com/HotMaps/hotmaps_wiki/master/Images/cm_decentral_heating/new/11.png"/><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub-förvar för denna beräkningsmodul</h2><p> <a href="https://github.com/HotMaps/lcoh/tree/develop">Här</a> får du banbrytande utveckling för denna beräkningsmodul.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Provkörning</h2><h3><a class="anchor" id="test-run" href="#test-run"><i class="fa fa-link"></i></a> Provkörning</h3><h4><a class="anchor" id="default-input-parameters" href="#default-input-parameters"><i class="fa fa-link"></i></a> Standardingångsparametrar</h4><img src="/en/CM-Decentral-heating-supply/inputs.png"/><h4><a class="anchor" id="output-indicators-with-default-input-parameters" href="#output-indicators-with-default-input-parameters"><i class="fa fa-link"></i></a> Utgångsindikatorer med standardingångsparametrar</h4><img src="/en/CM-Decentral-heating-supply/output_indicators_default_decentral.png"/><h4><a class="anchor" id="output-charts-with-default-input-parameters" href="#output-charts-with-default-input-parameters"><i class="fa fa-link"></i></a> Utmatningstabeller med standardinmatningsparametrar</h4><img src="/en/CM-Decentral-heating-supply/output_graphs_default_decentral.png"/><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hur man citerar</h2><p> Jeton Hasani i Hotmaps-Wiki, CM Decentral värmeförsörjning (november 2019)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Författare och granskare</h2><p> Denna sida skrevs av Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Denna sida granskades av Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Copyright © 2016-2020: Jeton Hasani</p><p> Creative Commons Attribution 4.0 internationell licens</p><p> Detta arbete är licensierat under en Creative Commons CC BY 4.0 International License.</p><p> SPDX-licensidentifierare: CC-BY-4.0</p><p> Licenstext: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Bekräftelse</h2><p> Vi vill förmedla vår djupaste uppskattning till Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (bidragsavtal nummer 723677), som gav finansieringen för att genomföra den nuvarande utredningen.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Decentral-heating-supply) (original) [Bulgarian](../bg/CM-Decentral-heating-supply)<sup>\*</sup> [Czech](../cs/CM-Decentral-heating-supply)<sup>\*</sup> [Danish](../da/CM-Decentral-heating-supply)<sup>\*</sup> [German](../de/CM-Decentral-heating-supply)<sup>\*</sup> [Greek](../el/CM-Decentral-heating-supply)<sup>\*</sup> [Spanish](../es/CM-Decentral-heating-supply)<sup>\*</sup> [Estonian](../et/CM-Decentral-heating-supply)<sup>\*</sup> [Finnish](../fi/CM-Decentral-heating-supply)<sup>\*</sup> [French](../fr/CM-Decentral-heating-supply)<sup>\*</sup> [Irish](../ga/CM-Decentral-heating-supply)<sup>\*</sup> [Croatian](../hr/CM-Decentral-heating-supply)<sup>\*</sup> [Hungarian](../hu/CM-Decentral-heating-supply)<sup>\*</sup> [Italian](../it/CM-Decentral-heating-supply)<sup>\*</sup> [Lithuanian](../lt/CM-Decentral-heating-supply)<sup>\*</sup> [Latvian](../lv/CM-Decentral-heating-supply)<sup>\*</sup> [Maltese](../mt/CM-Decentral-heating-supply)<sup>\*</sup> [Dutch](../nl/CM-Decentral-heating-supply)<sup>\*</sup> [Polish](../pl/CM-Decentral-heating-supply)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Decentral-heating-supply)<sup>\*</sup> [Romanian](../ro/CM-Decentral-heating-supply)<sup>\*</sup> [Slovak](../sk/CM-Decentral-heating-supply)<sup>\*</sup> [Slovenian](../sl/CM-Decentral-heating-supply)<sup>\*</sup>  

<sup>\*</sup> machine translated