<h1><a class="anchor" id="cm-heat-load-profiles" href="#cm-heat-load-profiles"><i class="fa fa-link"></i></a>CM siltuma slodzes profili</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Satura rādītājs</h2><ul><li> <a href="#in-a-glance">Vienā acu uzmetienā</a></li><li> <a href="#introduction">Ievads</a></li><li> <a href="#inputs-and-outputs">Ieejas un izejas</a><ul><li> <a href="#inputs-and-outputs_input-layers-and-parameters">Ievades slāņi un parametri</a></li><li> <a href="#inputs-and-outputs_output">Rezultāts</a></li></ul></li><li> <a href="#method">Metode</a><ul><li> <a href="#method_overview">Pārskats</a></li><li> <a href="#method_details">Sīkāka informācija</a></li><li> <a href="#method_implementation">Īstenošana</a></li></ul></li><li> <a href="#github-repository-of-this-calculation-module">Šī aprēķina moduļa GitHub krātuve</a></li><li> <a href="#sample-run">Izlases skrējiens</a></li><li> <a href="#how-to-cite">Kā citēt</a></li><li> <a href="#authors-and-reviewers">Autori un recenzenti</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Pateicība</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Vienā acu uzmetienā</h2><p> Šis modulis ģenerē pieprasījumu pēc apkures un karstā ūdens ražošanas pieprasījuma izvēlētajā reģionā. Tas izmanto noklusējuma slodzes profilus dzīvojamo un terciārajā sektorā NUTS2 līmenī un mērogo to atbilstoši noteiktajam pieprasījumam šajās nozarēs un nodrošina slodzes profilus, kas atdalīti telpu apsildei un karstā ūdens ražošanai.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Ievads</h2><p> Hotmaps nodrošina vispārīgus un gada specifiskus siltuma slodzes profilus NUTS2 līmenī. Lietotājs var vēlēties pielāgot noklusējuma profilus, pamatojoties uz viņa rīcībā esošo informāciju. Šis aprēķina modulis dod iespēju mērogot dažādus profilu elementus uz augšu vai uz leju un iegūt jaunu profilu.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ieejas un izejas</h2><h3><a class="anchor" id="input-layers-and-parameters" href="#input-layers-and-parameters"><i class="fa fa-link"></i></a> Ievades slāņi un parametri</h3><p> No Hotmaps noklusējuma datu kopas tiek izmantoti vairāki slāņi un profili:</p><ul><li> Siltuma blīvuma dzīvojamais sektors</li><li> Siltuma blīvums nedzīvojamo sektoru</li><li> Dzīvojamā platība kopējā platībā</li><li> Neapdzīvojamā platība bruto</li><li> Rūpniecības datu bāze</li><li> Slodzes profili rūpniecībai</li><li> Slodzes profili dzīvojamo māju apkurei</li><li> Slodzes profili terciārajai apkurei</li><li> Dzīvojamo māju karstā ūdens slodzes profili</li><li> Karstā ūdens terciārā ūdens slodzes profili</li></ul><h3><a class="anchor" id="user-inputs" href="#user-inputs"><i class="fa fa-link"></i></a> Lietotāja ievadi</h3><p> Lietotājam jānorāda šādi parametri:</p><ul><li> <strong>Dzīvojamo māju apkures koeficients</strong> : dzīvojamo māju apkures pieprasījums tiek reizināts ar šo koeficientu.</li><li> <strong>Terciārais apkures koeficients</strong> : terciārā apkures pieprasījums tiek reizināts ar šo koeficientu.</li><li> <strong>Dzīvojamo māju karstā ūdens apgādes koeficients</strong> : Pieprasījums pēc karstā ūdens mājokļos tiek reizināts ar šo koeficientu.</li><li> <strong>Terciārā karstā ūdens apgādes koeficients</strong> : terciārā karstā ūdens pieprasījums tiek reizināts ar šo koeficientu.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="output" href="#output"><i class="fa fa-link"></i></a> Rezultāts</h3><h4><a class="anchor" id="indicators" href="#indicators"><i class="fa fa-link"></i></a> Rādītāji</h4><ul><li> <strong>Siltuma pieprasījums pēc nozarēm</strong> : Gada siltuma pieprasījums pēc nozares izvēlētajā apgabalā.</li><li> <strong>Siltuma pieprasījums pēc dzīvojamo māju apkures</strong> : Gada siltums, kas nepieciešams dzīvojamo māju apkurei izvēlētajā apgabalā.</li><li> <strong>Siltuma pieprasījums pēc mājokļu siltā ūdens apgādes</strong> : Gada siltums, kas nepieciešams mājokļu siltā ūdens apgādei izvēlētajā apgabalā.</li><li> <strong>Siltuma pieprasījums pēc terciārā sektora apkures</strong> : Gada siltums, kas nepieciešams terciārā sektora apkurei izvēlētajā apgabalā.</li><li> <strong>Siltuma pieprasījums pēc terciārā sektora siltā ūdens apgādes</strong> : Gada siltums, kas nepieciešams terciārā sektora siltā ūdens apgādei izvēlētajā apgabalā.</li><li> <strong>Kopējais galvas pieprasījums</strong> : gadā nepieciešamais kopējais siltums izvēlētajā apgabalā.</li></ul><h4><a class="anchor" id="graphics" href="#graphics"><i class="fa fa-link"></i></a> Grafika</h4><ul><li> <strong>Siltuma pieprasījuma profili</strong> : grafika, kas parāda iepriekš uzskaitītos rādītājus gada laikā.</li></ul><p> X ass apzīmē laiku, un y ass parāda jaudu MW. Var būt noderīgi slēpt noteiktus sektorus, lai labāk redzētu citus. To var izdarīt, veicot dubultklikšķi uz leģendas.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metode</h2><h3><a class="anchor" id="overview" href="#overview"><i class="fa fa-link"></i></a> Pārskats</h3><p> Atbilstošie slodzes profili lietotāju atlasē tiek piešķirti rūpniecības objektiem, dzīvojamām un terciārajām ēkām.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="details" href="#details"><i class="fa fa-link"></i></a> Sīkāka informācija</h3><h4><a class="anchor" id="residential-warm-water-supply" href="#residential-warm-water-supply"><i class="fa fa-link"></i></a> Dzīvojamo māju siltā ūdens apgāde</h4><p> Pamatojoties uz dzīvojamo ēku bruto platību un to NUTS 0 ID, siltā ūdens apgādei izmantotā enerģija tiek aprēķināta ar šādu sarakstu. Izmantojot izvēlētā apgabala NUTS 2 ID, tiek piešķirts slodzes profils. Dzīvokļa karstā ūdens apgāde tiek reizināta ar dzīvojamo māju karstā ūdens apgādes koeficientu gadījumā, ja lietotājs vēlas pielāgot vērtību.</p><p> <em>Īpatnējā enerģija vienā apgabalā siltā ūdens apgādei dažādu valstu dzīvojamās ēkās</em></p><p> | Rieksti0 ID | Siltā ūdens padeve, kWh / m² / a | | ------------- |: -------------: | | AT | 21.67 | | BE | 31,95 | | BG | 12,93 | | HR | 21.38 | | CY | 8.80 | | CZ | 22.83 | | DK | 9,64 | | EE | 14.35 | | FI | 10.15 | | FR | 9.66 | | DE | 8.27 | | EL | 12.51 | | HU | 13.66 | | IE | 15.91 | | IT | 14.01 | | LV | 15.71 | | LT | 13.36 | | LU | 8.29 | | MT | 10,99 | | NL | 8.91 | | PL | 10.00 | | PT | 9.48 | | RO | 11.48 | | SK | 21.51 | | SI | 21.74 | | ES | 23.34 | | DA | 13.54 | | UK | 49,03 |</p><h4><a class="anchor" id="residential-heating" href="#residential-heating"><i class="fa fa-link"></i></a> Dzīvojamo māju apkure</h4><p> Tiek izmantots siltuma pieprasījuma blīvums dzīvojamā sektorā. Tā kā šajā datu kopā jau ir siltam ūdenim izmantotā enerģija, no tā tiek atņemta iepriekšējā aprēķinātā siltā ūdens enerģija. Pamatojoties uz NUTS 2 ID, katrai siltuma blīvuma flīzei lietotāja atlasē tiek piešķirts dzīvojamās telpas apkures profils. Dzīvokļa apkure tiek reizināta ar dzīvojamās telpas apkures koeficientu gadījumā, ja lietotājs vēlas pielāgot vērtību.</p><h4><a class="anchor" id="tertiary-warm-water-supply" href="#tertiary-warm-water-supply"><i class="fa fa-link"></i></a> Terciārā siltā ūdens apgāde</h4><p> Līdzīga dzīvojamo māju siltā ūdens apgādei nepieciešamā enerģija tiek aprēķināta ar tabulu. Ar konkrētas zonas NUTS 2 ID tiek piešķirts slodzes profils. Terciārā siltā ūdens padeve tiek reizināta ar terciārā karstā ūdens padeves koeficientu gadījumā, ja lietotājs vēlas pielāgot vērtību.</p><p> <em>Īpatnējā enerģija vienā apgabalā siltā ūdens apgādei terciārajās ēkās dažādās valstīs</em></p><p> | Rieksti0 ID | Siltā ūdens padeve, kWh / m² / a | | ------------- |: -------------: | | AT | 6.57 | | BE | 13.88 | | BG | 15.88 | | HR | 9.42 | | CY | 6.26 | | CZ | 9.18 | | DK | 8.03 | | EE | 14.13 | | FI | 10.52 | | FR | 9.57 | | DE | 3,05 | | EL | 6,99 | | HU | 9.51 | | IE | 10,87 | | IT | 5.62 | | LV | 7.16 | | LT | 10.46 | | LU | 7.20 | | MT | 10.45 | | NL | 6.89 | | PL | 9.55 | | PT | 21.47 | | RO | 13.85 | | SK | 8.49 | | SI | 27,73 | | ES | 12.44 | | DA | 19.62 | | UK | 13.45 |</p><h4><a class="anchor" id="tertiary-heating" href="#tertiary-heating"><i class="fa fa-link"></i></a> Terciārā apkure</h4><p> Terciārā apkure tiek aprēķināta līdzīgi kā dzīvojamā apkure. Terciārā apkure tiek reizināta ar terciāro apkures koeficientu gadījumā, ja lietotājs vēlas pielāgot vērtību.</p><h4><a class="anchor" id="industrial-heat-demand" href="#industrial-heat-demand"><i class="fa fa-link"></i></a> Rūpnieciskais siltuma pieprasījums</h4><p> Nozares pieprasījums pēc siltuma tiek meklēts rūpniecības datu bāzē, un, pamatojoties uz NUTS 0 ID un apakšsektoru, tiek piešķirts slodzes profils.</p><h4><a class="anchor" id="summation" href="#summation"><i class="fa fa-link"></i></a> Apkopojums</h4><p> Pieci iegūtie profili tiek apkopoti absolūtā veidā, lai iegūtu galīgo profilu.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="implementation" href="#implementation"><i class="fa fa-link"></i></a> Īstenošana</h3><h4><a class="anchor" id="load-profiles" href="#load-profiles"><i class="fa fa-link"></i></a> Slodzes profili</h4><p> Minētie slodzes profili sastāv no 8760 punktiem, kas atspoguļo slodzi katrai 365 dienu stundai. Plašāka informācija par <strong><a href="https://gitlab.com/hotmaps/load_profile">slodzes profiliem atrodama šeit.</a></strong> Visi slodzes profili tiek normalizēti tā, lai integrālis būtu vienāds ar 1.</p><h4><a class="anchor" id="industrial-sites" href="#industrial-sites"><i class="fa fa-link"></i></a> Rūpnieciskās vietas</h4><p> Siltuma avoti tiek ņemti no <strong><a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">rūpniecības datu bāzes.</a></strong> Pamatojoties uz pārmērīgo siltumu, NUTS 0 ID un rūpniecības sektoru, katrai vietnei tiek izveidots slodzes profils, kas aptver katru stundu gadā.</p><h4><a class="anchor" id="heat-densities" href="#heat-densities"><i class="fa fa-link"></i></a> Siltuma blīvums</h4><p> Dzīvojamo un nedzīvojamo sektoru siltuma pieprasījuma blīvums ir rastra faili, kurus var atrast <strong><a href="https://gitlab.com/hotmaps/heat">šeit.</a></strong></p><h4><a class="anchor" id="gross-floor-areas" href="#gross-floor-areas"><i class="fa fa-link"></i></a> Bruto grīdas platības</h4><p> Dzīvojamā platība un nedzīvojamā platība ir rastra faili, kurus var atrast <strong><a href="https://gitlab.com/hotmaps/gfa_res_curr_density">šeit</a></strong> un <strong><a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">šeit.</a></strong></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Šī aprēķina moduļa GitHub krātuve</h2><p> <a href="https://github.com/HotMaps/load_profile_cm">Šeit</a> jūs iegūstat šī aprēķina moduļa pilnīgu attīstību.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Izlases skrējiens</h2><p> Izlases skrējiens DK05.</p><figure><img alt="" src="../images/cm_load_profile/sample_run.PNG"/><figcaption><i></i></figcaption></figure><p> Izlases skrējiens DK05. Tiek ņemts vērā tikai izvēlētais zilais apgabals.</p><figure><img alt="" src="../images/cm_load_profile/profile.PNG"/><figcaption><i></i></figcaption></figure><p> Grafika, kas parāda dažādu sektoru siltuma pieprasījumu gada laikā.</p><p> Datus no šīs grafikas var eksportēt, nospiežot pogu &quot;EKSPORTA GRĀBAS&quot;.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kā citēt</h2><p> Ali Aydemir un David Schilling, Hotmaps Wiki, CM Heat slodzes profili (2020. gada septembris)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori un recenzenti</h2><p> Šo lapu ir uzrakstījuši Ali Aydemir un David Schilling ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> ☑ Šo lapu pārskatīja Tobias Fleiter ( <strong><a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Autortiesības © 2016-2020: Ali Aydemir un David Schilling</p><p> Creative Commons Attribution 4.0 starptautiskā licence</p><p> Šis darbs ir licencēts saskaņā ar Creative Commons CC BY 4.0 starptautisko licenci.</p><p> SPDX-licences identifikators: CC-BY-4.0</p><p> Licences teksts: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Pateicība</h2><p> Mēs vēlamies paust visdziļāko pateicību projektam Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (grantu līguma numurs 723677), kas nodrošināja finansējumu šīs izmeklēšanas veikšanai.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Heat-load-profiles) (original) [Bulgarian](../bg/CM-Heat-load-profiles)<sup>\*</sup> [Czech](../cs/CM-Heat-load-profiles)<sup>\*</sup> [Danish](../da/CM-Heat-load-profiles)<sup>\*</sup> [German](../de/CM-Heat-load-profiles)<sup>\*</sup> [Greek](../el/CM-Heat-load-profiles)<sup>\*</sup> [Spanish](../es/CM-Heat-load-profiles)<sup>\*</sup> [Estonian](../et/CM-Heat-load-profiles)<sup>\*</sup> [Finnish](../fi/CM-Heat-load-profiles)<sup>\*</sup> [French](../fr/CM-Heat-load-profiles)<sup>\*</sup> [Irish](../ga/CM-Heat-load-profiles)<sup>\*</sup> [Croatian](../hr/CM-Heat-load-profiles)<sup>\*</sup> [Hungarian](../hu/CM-Heat-load-profiles)<sup>\*</sup> [Italian](../it/CM-Heat-load-profiles)<sup>\*</sup> [Lithuanian](../lt/CM-Heat-load-profiles)<sup>\*</sup>  [Maltese](../mt/CM-Heat-load-profiles)<sup>\*</sup> [Dutch](../nl/CM-Heat-load-profiles)<sup>\*</sup> [Polish](../pl/CM-Heat-load-profiles)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Heat-load-profiles)<sup>\*</sup> [Romanian](../ro/CM-Heat-load-profiles)<sup>\*</sup> [Slovak](../sk/CM-Heat-load-profiles)<sup>\*</sup> [Slovenian](../sl/CM-Heat-load-profiles)<sup>\*</sup> [Swedish](../sv/CM-Heat-load-profiles)<sup>\*</sup> 

<sup>\*</sup> machine translated