<h1><a class="anchor" id="local-level---step-5--calculation-of-costs-of-heat-supply-to-district-heating" href="#local-level---step-5--calculation-of-costs-of-heat-supply-to-district-heating"><i class="fa fa-link"></i></a>Kohalik tasand - 5. etapp: kaugkütte soojusvarustuse kulude arvutamine</h1><p> <a href="guide-local-and-municipal-levels#the-hotmaps-scenario-toolchain-different-steps"><strong><code>Scenario Toolchain Steps</code></strong></a> <a href="step-4-calculation-of-district-heating-distribution-costs"><strong><code>Previous step</code></strong></a> <a href="step-6-assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area"><strong><code>Next step</code></strong></a></p><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisukord</h2><ul><li> <a href="#introduction">Sissejuhatus</a></li><li> <a href="#estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas">Hinnang üleliigse soojuse kaugküttepiirkondadesse transportimise kulude kohta</a></li><li> <a href="#development-of-future-heat-load-profiles">Tulevaste soojuskoormuse profiilide väljatöötamine</a></li><li> <a href="#calculation-of-costs-and-emissions-of-heat-supply-in-district-heating">Kaugkütte soojusvarustuse kulude ja heitkoguste arvutamine</a></li><li> <a href="#how-to-cite">Kuidas tsiteerida</a></li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a></li><li> <a href="#license">Litsents</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Sissejuhatus</h2><p> See on kohalikul ja kohalikul tasandil analüüsi viies etapp.</p><img src="/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating/Hotmaps_Local_Toolchain_Step_5final.png"/><p> <em>Joonis: Kaugkütte soojusvarustuse kulude arvutamise etapid on esile tõstetud ülaltoodud tööriistaketis</em></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas" href="#estimation-of-costs-for-the-transport-of-excess-heat-to-district-heating-areas"><i class="fa fa-link"></i></a> Hinnang üleliigse soojuse kaugküttepiirkondadesse transportimise kulude kohta</h2><p> Liigse soojuse transportimise kulude hindamiseks potentsiaalsetest allikatest väljaspool kaugküttepiirkondi potentsiaalsetesse kaugküttepiirkondadesse saab kasutada <a href="https://wiki.hotmaps.eu/en/CM-Excess-heat-transport-potential">CM - ülemäärast soojustranspordipotentsiaali</a> . Moodul annab kaugküttevõrku veetava liigse soojuse tasandatud kulud [EUR / MWh]. Seda saab edasi kasutada kaugkütte soojusvarustuskulude arvutamise järgmises etapis.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="development-of-future-heat-load-profiles" href="#development-of-future-heat-load-profiles"><i class="fa fa-link"></i></a> Tulevaste soojuskoormuse profiilide väljatöötamine</h2><p> Hoonete renoveerimine toob kaasa energiatarbimise vähenemise ruumide kütmiseks. See mõjutab ka kaugküttesüsteemide soojavajaduse koormusprofiile: talvised tipunõuded vähenevad ja täiskoormuse tunnid suurenevad tänu sooja vee tootmise osakaalu suurenemisele kogu soojusvajaduses. <a href="https://wiki.hotmaps.eu/en/CM-Heat-load-profiles">CM -</a> soojuskoormuse profiilide abil saab tulevasi soojuskoormuse profiile välja töötada vastavalt erinevatele soojussäästutasemetele. Seda saab teha Hotmapsi andmebaasis pakutavate koormusprofiilide põhjal (vaikeprofiilid kõigi NUTS2 piirkondade jaoks Euroopas) või tööriistakasti üles laaditud enda profiilide põhjal. Saadud koormusprofiile kasutatakse seejärel järgmises etapis, kaugkütte soojusvarustuse kulude ja heitkoguste arvutamiseks koos lähetusmooduliga.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="calculation-of-costs-and-emissions-of-heat-supply-in-district-heating" href="#calculation-of-costs-and-emissions-of-heat-supply-in-district-heating"><i class="fa fa-link"></i></a> Kaugkütte soojusvarustuse kulude ja heitkoguste arvutamine</h2><p> Kaugküttesüsteemi soojusvarustuse kulud ja heitkogused sõltuvad paigaldatud erinevate võimsuste koosmõjust. Seega pakub huvi kõige odavam võimsuste ja nende toimimise kombinatsioon ajas. Et analüüsida erinevate tarnetehnoloogiakombinatsioonide nn tunnitasu ja selle mõju kaugkütte soojusvarustuse kogukuludele ja heitkogustele, saab kasutada <a href="https://wiki.hotmaps.eu/en/CM-District-heating-supply-dispatch">CM - kaugkütte tarnimise lähetust</a> . Mooduli abil saab kulude ja tulude saamiseks arvutada mitu stsenaariumi järgmiste sisendandmete kombinatsioonidega:</p><ul><li> Erinevate tehnoloogiate kombinatsioonid tarneportfellides:<ul><li> Tööstuse liigne soojus (soojuspumbaga või ilma)</li><li> Jäätmete põletamine</li><li> Kõrge efektiivsusega koostootmine</li><li> Päikeseenergia</li><li> Geotermiline</li><li> Biomass</li><li> Erinevate soojusallikatega soojuspumbad, nt<ul><li> reoveepuhastid</li><li> jõevesi</li><li> üleliigne soojus andmekeskustest</li></ul></li></ul></li><li> Hinnastsenaariumid:<ul><li> erinevate energiakandjate hindade jaoks</li><li> CO2 heitkoguste hindade jaoks</li></ul></li></ul><p> Arvutusi saab kasutada kasulike tarneportfellide kindlakstegemiseks erinevates linnades / piirkondades ning nende tundlikkuse suhtes selliste oluliste mõjutavate parameetrite suhtes nagu energiakandja ja CO2 hinnad või intressimäär ja amortisatsiooniaeg.</p><p> Selle etapi tulemused on kaugküttesüsteemi soojusvarustuskulud [EUR / MWh] igas tüüpilises linnas / piirkonnas ja sellega seotud CO2 heitkogused [kt / aastas]. Neid tulemusi kasutatakse seejärel üldises <a href="https://wiki.hotmaps.eu/en/CM-Scenario-assessment">stsenaariumi hindamises</a> <a href="https://wiki.hotmaps.eu/en/Step-6-Assessment-of-scenarios-for-entire-heat-demand-and-supply-for-the-selected-area">6. etapis</a> .</p><p> Järgmine joonis näitab üldist lähenemisviisi.</p><img src="/en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating/Wiki-local-detailed-Step-5final.png"/><p> <em>Joonis: Üldine lähenemine kaugküttekulude soojusvarustuse arvutamisele</em></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuidas tsiteerida</h2><p> Marcus Hummel, Giulia Conforto, Hotmaps-Wiki, Suunised Hotmapsi tööriistakasti kasutamiseks kohalikul tasandil analüüsimiseks (august 2020)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autorid ja retsensendid</h2><p> Selle lehe kirjutasid Marcus Hummel ja Giulia Conforto ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> ☑ Selle lehe vaatas läbi Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Litsents</h2><p> Autoriõigus © 2016-2020: Marcus Hummel, Giulia Conforto</p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents</p><p> See töö on litsentsitud rahvusvahelise Creative Commons CC BY 4.0 litsentsi alusel.</p><p> SPDX-litsentsi identifikaator: CC-BY-4.0</p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Soovime avaldada sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis andis rahalisi vahendeid käesoleva uurimise läbiviimiseks.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating) (original) [Bulgarian](../bg/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Czech](../cs/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Danish](../da/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [German](../de/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Greek](../el/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Spanish](../es/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup>  [Finnish](../fi/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [French](../fr/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Irish](../ga/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Croatian](../hr/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Hungarian](../hu/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Italian](../it/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Lithuanian](../lt/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Latvian](../lv/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Maltese](../mt/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Dutch](../nl/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Polish](../pl/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Romanian](../ro/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Slovak](../sk/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Slovenian](../sl/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> [Swedish](../sv/Step-5-Calculation-of-costs-of-heat-supply-to-district-heating)<sup>\*</sup> 

<sup>\*</sup> machine translated