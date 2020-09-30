<h1><a class="anchor" id="cm-scenario-assessment" href="#cm-scenario-assessment"><i class="fa fa-link"></i></a>CM scenārija novērtējums</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Satura rādītājs</h2><ul><li> <a href="#at-a-glance">Īsumā</a></li><li> <a href="#introduction">Ievads</a></li><li> <a href="#scenario-assessment-inputs-and-outputs">Scenārija novērtēšanas ievades un rezultāti</a></li><li> <a href="#interpretation-of-input-parameters">Ievades parametru interpretācija</a></li><li> <a href="#interpretation-of-results">Rezultātu interpretācija</a></li><li> <a href="#sample-run">Izlases skrējiens</a></li><li> <a href="#how-to-cite">Kā citēt</a></li><li> <a href="#authors-and-reviewers">Autori un recenzenti</a></li><li> <a href="#license">Licence</a></li><li> <a href="#acknowledgement">Pateicība</a></li></ul><h2><a class="anchor" id="at-a-glance" href="#at-a-glance"><i class="fa fa-link"></i></a> Īsumā</h2><p> Šis modulis ļauj salīdzināt dažādus apkures scenārijus. Modulis nav integrēts Hotmaps rīkjoslā, bet tas tiek nodrošināts kā atsevišķa Excel darbgrāmata, kas apvieno citu iepriekš izpildāmo aprēķinu moduļu rezultātus. Veidne, kāda tā ir, ļauj salīdzināt līdz pat 9 dažādiem scenārijiem, taču, ja tā ir pareizi pielāgota, tā var darboties jebkuram scenāriju skaitam. Atsevišķas darblapas tiek izveidotas, lai apkopotu galvenos rādītājus no katra aprēķina moduļa, savukārt galvenie rādītāji tiek automātiski apkopoti galīgajā tabulā un attēloti diagrammās.</p><p> <a href="https://github.com/HotMaps/scenario_assessment/raw/master/data/ScenarioAssessment_Template.xlsx"><strong>SCENĀRIJU NOVĒRTĒŠANAS DARBA GRĀMATA: NOKLIKŠĶINIET šeit</strong></a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Ievads</h2><p> Vairāku dažādu apkures scenāriju novērtēšanas pieeja seko šai aprēķinu secībai:</p><ul><li> Apbūves fonds izvēlētajā apgabalā,</li><li> Izmaksas, emisijas un enerģijas pieprasījums pēc decentralizētas siltumapgādes,</li><li> Centralizētās siltumapgādes izmaksas, emisijas un enerģijas pieprasījums,</li><li> Centralizētās siltumenerģijas sadales izmaksas.</li></ul><p> Katrā scenārijā tiek pieņemts noteikts sadalījums starp centrālo un decentralizēto siltumapgādi kopā ar pieņēmumiem par siltuma pieprasījuma attīstību reģionā. Piemēram, var salīdzināt jutīguma analīzi dažādu centralizētās siltumapgādes sistēmu izmēriem ar dažādām piegādes tehnoloģijām. Scenārijs var atšķirties atkarībā no siltuma ģeneratoru jaudas centralizētajā siltumapgādes sistēmā, pieslēguma ātruma centralizētajai siltumapgādes sistēmai vai dažādu tehnoloģiju izmaksām un cenām. Līdzīgi decentralizētai piegādei var mainīt dažādus sistēmas parametrus un analizēt ietekmi uz kopējo apkures sistēmu reģionā.</p><p> Lietotājs patstāvīgi palaiž dažādus aprēķinu moduļus katram izskatāmajam scenārijam, kopē rezultātus attiecīgajās Excel darbgrāmatas lapās un pēc tam salīdzina tos ar dažādiem scenārija iestatījumiem. Šī procedūra ir aprakstīta nākamajās šīs wiki lapas sadaļās.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="scenario-assessment-inputs-and-outputs" href="#scenario-assessment-inputs-and-outputs"><i class="fa fa-link"></i></a> Scenārija novērtēšanas ievades un rezultāti</h2><p> Scenārija novērtēšanas darbgrāmatā apkopotie dati tiek ģenerēti, izmantojot šādus aprēķinu moduļus:</p><p> <strong>1. <a href="/en/CM-Decentral-heating-supply">CM - decentralizēta siltumapgāde</a></strong></p><p> <strong>2. <a href="/en/CM-District-heating-supply-dispatch">CM - centralizētās siltumapgādes padeve</a></strong></p><p> <strong>3. <a href="/en/CM-District-heating-potential-economic-assessment">CM - centralizētās siltumapgādes potenciāls: ekonomiskais novērtējums</a></strong></p><p> Šo moduļu ievadi un izejas jāsaglabā katram scenārijam un pēc tam jāapkopo scenārija novērtēšanas darbgrāmatā. Aizpildāmās šūnas ir pareizi marķētas, un darbgrāmatas pirmajā lapā tiek ziņots par krāsu kodēšanas leģendu, kā paskaidrots nākamajā <a href="#interpretation-of-input-parameters">sadaļā Ievades parametru interpretācija</a> . Trim iepriekšminētajiem aprēķinu moduļiem ir nepieciešami daži ievadi, kas jums jau var būt, vai arī jums, iespējams, būs jāaprēķina citu moduļu darbība, kā norādīts nākamajā punktā, kā arī sadaļā <strong><a href="/en/training-material">Apmācība</a></strong> .</p><p> Lapā &quot;Gala tabula&quot; tiek aprēķināts un parādīts šādu rādītāju salīdzinājums katram definētajam scenārijam gan attēlos, gan diagrammās:</p><ul><li> Izmaksas gadā dažādām izmaksu kategorijām un tehnoloģijām, <em><strong>M EUR / gadā</strong></em> ,</li><li> Izlīdzinātas siltumapgādes izmaksas <em><strong>EUR / MWh</strong></em> ,</li><li> CO2 emisijas dažādām tehnoloģijām <em><strong>tCO <sub>2</sub> / gadā</strong></em> ,</li><li> Galīgais enerģijas pieprasījums pēc dažādām tehnoloģijām <em><strong>GWh / gadā</strong></em> ,</li><li> Noderīgs enerģijas pieprasījums pēc dažādām tehnoloģijām <em><strong>GWh / gadā</strong></em> ,</li><li> Atjaunojamās enerģijas (AER) un centralizētās siltumapgādes (DH) daļas.</li></ul><p> Katram scenārijam šādi rādītāji tiek parādīti sakrautas joslu diagrammas veidā:</p><ul><li> Siltumapgādes kopējās (apkopotās) izmaksas pa centralizēto siltumapgādes sistēmu un decentralizēto siltumapgādes sistēmu, <em><strong>M EUR / gadā</strong></em></li><li> Kopējās (apkopotās) CO <sub>2</sub> emisijas pēc centralizētās siltumapgādes sistēmas un decentralizētās apkures sistēmas <em><strong>tCO <sub>2</sub> gadā</strong></em></li><li> Kopējais (apkopotais) enerģijas un lietderīgās enerģijas pieprasījums <em><strong>GWh gadā</strong></em></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-input-parameters" href="#interpretation-of-input-parameters"><i class="fa fa-link"></i></a> Ievades parametru interpretācija</h2><p> Šī moduļa darbībai nepieciešamie ievades parametri ir sadalīti:</p><ul><li> Parametri, kas jāizvēlas / jāaizpilda rīkjoslas aprēķinu moduļos: darbgrāmatā izcelti tirkīza krāsā.</li><li> Parametri, kas jāizvēlas / jāaizpilda darbgrāmatā, taču tie jau ir norādīti kā noklusējuma vērtības: darbgrāmatā izcelti zaļā krāsā.</li><li> Parametri, kas tiek parādīti kā izvades dati rīkjoslā, kas jākopē darbgrāmatā laukos, kas izcelti ar dzeltenu krāsu.</li><li> Parametri, kas aprēķināti un sniegti kā izejas dati darbgrāmatā, kas jāpārkopē citā lapā kā ievads turpmākai izstrādei: izcelti sarkanā krāsā.</li></ul><p> Papildus tam darbgrāmatā ir instrukcijas sarkanā tekstā un papildu aprēķini, kurus nevajadzētu rediģēt pelēkās šūnās. Zemāk redzamajā attēlā redzams, kā izskatās krāsu kodēšana, kas norādīta darbgrāmatas priekšējā loksnē.</p><img src="/en/CM-Scenario-assessment/CM-Scenario-Assessment-Colour-Coding.jpg"/><h3><a class="anchor" id="final-table---overview-of-assessment-results" href="#final-table---overview-of-assessment-results"><i class="fa fa-link"></i></a> Noslēguma tabula - pārskats par novērtēšanas rezultātiem</h3><p> Lapā ar nosaukumu &quot;Gala tabula&quot; galvenokārt parādīti kopējie izejas parametri gan attēlos, gan diagrammās. Turklāt tam ir maz ieejas parametru, kas jānorāda lietotājam.</p><p> <em>Scenāriju tabula</em> (R4: Z17) ir gatava aizpildīt īsu dažādu novērtēto scenāriju aprakstu. Šī tabula, kas atrodas tieši virs diagrammām, var būt atgādinājums lietotājam vai paskaidrojums citiem līdzstrādniekiem.</p><p> Tālāk lapā ir daži parametri, kas jau ir aizpildīti, bet kurus var pielāgot, ja vien tie nav atstāti tukši:</p><ul><li> <em>Atjaunojamais koeficients</em> (F102: H116): tiek izmantots, lai aprēķinātu atjaunojamo galīgo enerģiju no kopējā enerģijas galīgā pieprasījuma.</li><li> <em>Vispārējais efektivitātes koeficients</em> (K102): tiek izmantots, lai aprēķinātu kopējo lietderīgās enerģijas pieprasījumu no kopējā enerģijas galīgā pieprasījuma.</li><li> <em>Tīkla zudumi</em> (F121: N121): izmanto, lai aprēķinātu siltumapgādes pieprasījumu centralizētajā siltumapgādes sistēmā no lietderīgās enerģijas daļas, ko piegādā centralizētā siltumapgāde (skat. Nākamo attēlu).</li></ul><img src="/en/CM-Scenario-assessment/picture3.jpg"/><h3><a class="anchor" id="definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply" href="#definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply"><i class="fa fa-link"></i></a> Ēku krājuma noteikšana un decentralizētās siltumapgādes rādītāju aprēķināšana</h3><p> Trīs lapu komplekts tiek izmantots, lai aprakstītu pētāmā reģiona ēku krājumus. Trīs lapas tiek izmantotas, lai apkopotu CM rezultātus - decentralizēta siltumapgāde atsevišķām ēkām, apvienotu atsevišķas ēkas ar ēku fondu un aprēķinātu decentralizētās siltumapgādes rādītājus, kas nepieciešami scenārija vispārējam novērtējumam. Dažādu lapu saturs un aizpildīšana ir aprakstīta turpmāk.</p><p> <strong>1. Vienģimeņu ēkas</strong> Šī darblapa ir sagatavota, lai apkopotu <a href="/en/CM-Decentral-heating-supply">CM - Decentral apkures piegāde</a> vienas ģimenes ēkām rezultātus. Darbgrāmatas noklusējuma versijā var ņemt vērā divus dažādus vienas ģimenes ēku veidus. Tomēr lietotājs var pielāgot darbgrāmatu, lai apvienotu jebkādu skaitu dažādu vienas ģimenes ēku (piemēram, no dažādiem būvniecības periodiem vai dažādiem tipiem, piemēram, savrupām vai daļēji savrupām).</p><p> <strong>2. MF un nerezervējošas ēkas</strong> Šī darblapa ir sagatavota, lai apkopotu <a href="/en/CM-Decentral-heating-supply">CM - Decentral apkures piegāde</a> daudzģimeņu, kā arī nedzīvojamām (nedzīvojamām) ēkām. Darbgrāmatas noklusējuma versijā var ņemt vērā 8 dažādus daudzģimeņu un nedzīvojamo ēku veidus. Tomēr lietotājs var pielāgot darbgrāmatu, lai apvienotu jebkuru dažādu daudzģimeņu un nedzīvojamo ēku skaitu (piemēram, no dažādiem būvniecības periodiem vai dažādiem tipiem, piemēram, mazām daudzģimeņu ēkām, daudzdzīvokļu namiem, birojiem, viesnīcām un restorāniem, izglītību utt.).</p><p> <strong>Ēku krājumi un piegādes decembris</strong> Šajā lapā pētāmā reģiona ēku krājumi tiek apkopoti no ēku tipiem, kas definēti un aprēķināti divās iepriekšējās darblapās (C15: L15). Turklāt tiek definēts tehnoloģiju sadalījums, ko pieņemts izmantot dažādos ēku veidos (C17: L25), un tiek aprēķināti decentralizētās siltumapgādes rādītāji ēku fondā (E44: E77). Šim nolūkam lietotājam ir jānosaka arī kopējais siltuma pieprasījums izmeklējamajā reģionā (E9), kā arī pieņemtā CO <sub>2</sub> cena (E10).</p><h3><a class="anchor" id="ref.-decentral-dec.-heating-supply" href="#ref.-decentral-dec.-heating-supply"><i class="fa fa-link"></i></a> Ref. Decentralizēta (dec.) Siltumapgāde</h3><p> Šajā darblapā var definēt dažādus decentralizētās siltumapgādes scenārijus izmeklējamajā reģionā. Lai to izdarītu, iepriekšējā darblapā veikto aprēķinu rezultātus (Building stock &amp; Dec supply, šūnas E44: E77) var nokopēt šīs darblapas dzeltenās atzīmes šūnās. Darblapa noklusējuma versijā ir sagatavota, lai apkopotu 9 dažādus scenārijus. Lietotājs var brīvi izlemt, kuri decentralizētās siltumapgādes scenāriji ir apkopoti šajā lapā (piemēram, dažādu tehnoloģiju sadalījums dažādos ēku veidos, atšķirīgas CO <sub>2</sub> cenas vai atšķirīgas siltuma prasības reģionā).</p><h3><a class="anchor" id="ref.-dh-economic-assessment" href="#ref.-dh-economic-assessment"><i class="fa fa-link"></i></a> Ref. CH ekonomiskais novērtējums</h3><p> Šajā darblapā var definēt dažādus centralizētās siltumapgādes tīklu izbūves scenārijus izmeklējamajā reģionā. Lai to izdarītu, lietotājs izpilda dažādus scenārijus ar <a href="/en/CM-District-heating-potential-economic-assessment">CM - Centralizētās siltumapgādes potenciāls: ekonomiskais novērtējums</a> un moduļa rezultātus no rīkjoslas kopē šajā darblapā (šūnas C29: T44). No plašāka mēroga scenāriju kopas lietotājs izvēlas 9 scenārijus, kas jāizmanto vispārējā scenārija novērtējumā (C52: K67). Lietotājs var brīvi izlemt, kuri scenāriji centralizētās siltumapgādes tīklu izbūvei ir apkopoti šajā lapā (piemēram, dažādas centralizētās siltumapgādes tirgus daļas centralizētās siltumapgādes rajonos, atšķirīgas tīkla izmaksu griesti vai atšķirīgas kopējās siltuma prasības reģionā).</p><h3><a class="anchor" id="ref.-dh-supply-dispatch" href="#ref.-dh-supply-dispatch"><i class="fa fa-link"></i></a> Ref. CH piegāde</h3><p> Šajā darblapā var definēt dažādus siltuma piegādes scenārijus potenciālajām centralizētās siltumapgādes sistēmām. Lai to izdarītu, lietotājs izpilda dažādus scenārijus ar <a href="/en/CM-District-heating-supply-dispatch">CM - Centralizētās siltumapgādes dispečers</a> un moduļa rezultātus no rīkjoslas kopē šajā darblapā (šūnas D84: L98 rezultātiem sadaļā &quot;RĀDĪTĀJI&quot; un šūnas D104: L195 rezultātiem sadaļā &quot;GRAFIKA&quot;). Lietotājs var brīvi izlemt, kuri scenāriji siltumenerģijas piegādei potenciālajām centralizētās siltumapgādes sistēmām ir apkopoti šajā lapā (piemēram, dažādas tehnoloģiju kombinācijas, atšķirīgas siltuma prasības centralizētās siltumapgādes sistēmās, atšķirīgas CO <sub>2</sub> cenas vai dažādas enerģijas nesēju cenas). .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="interpretation-of-results" href="#interpretation-of-results"><i class="fa fa-link"></i></a> Rezultātu interpretācija</h2><p> Pēc scenārija datu aizpildīšanas trīs darblapās (Ref. Dec. siltumapgāde, Ref. CH ekonomiskais novērtējums, Ref. CH piegādes nosūtīšana), definēto scenāriju rādītāji tiek automātiski aprēķināti lapā &quot;Gala tabula&quot;. Šūnās B7: N88 esošajā tabulā parādīti šo vispārējo scenāriju rezultāti. Rādītājus aprēķina attiecībā uz izmaksām, emisijām, enerģijas pieprasījumu, kā arī atjaunojamās enerģijas un centralizētās siltumenerģijas īpatsvaru.</p><img src="/en/CM-Scenario-assessment/picture1.jpg"/><p> Kopumā visi šie rezultāti tiek individuāli aprēķināti attiecībā uz decentralizēto, kā arī ar centralizēto siltumapgādi aprīkoto platību un tiek piemēroti vispārējam scenārijam, izmantojot to attiecīgās daļas. Tāpēc tie ir atsevišķi uzskaitīti kā atsevišķas attiecīgā parametra sastāvdaļas.</p><h3><a class="anchor" id="costs" href="#costs"><i class="fa fa-link"></i></a> Izmaksas</h3><p> Scenārija novērtējuma lietā redzams kopējo izmaksu sadalījums kapitāla izdevumos (CAPEX), darbības izdevumos (OPEX), izdevumos enerģijai, kā arī CO <sub>2</sub> . Šīs dažādās izmaksu kategorijas ir norādītas gan centrālajai, gan decentralizētajai piegādei reģionā. Turklāt tiek parādītas sadales tīkla izmaksas. Visas šīs izmaksu sastāvdaļas tiek uzrādītas <em><strong>M EUR gadā</strong></em> . Papildus kopējām gada izmaksām tabulā ir norādītas arī izlīdzinātās siltumapgādes (LCOH) izmaksas. Tās ir norādītas <em><strong>EUR / MWh.</strong></em> Gada izmaksas, kā arī LCOH ir parādītas arī skaitļos. Tos var atrast blakus tabulai, kā parādīts nākamajā attēlā.</p><img src="/en/CM-Scenario-assessment/picture2_new.jpg"/><h3><a class="anchor" id="emissions" href="#emissions"><i class="fa fa-link"></i></a> Emisijas</h3><p> Scenārija novērtējuma failā ir norādīti arī absolūtie CO <sub>2</sub> emisiju apjomi dažādos scenārijos. Vērtības ir parādītas dažādām piegādes tehnoloģijām, nošķirot individuālo (decentralizēto) un centralizēto siltumapgādi (centralizēto). Vērtības ir norādītas <em><strong>tCO <sub>2</sub> / gadā</strong></em> . Arī šoreiz emisiju apjomi diagrammas veidā tiek parādīti tieši blakus tabulai.</p><h3><a class="anchor" id="energy-demand-final-and-useful-energy" href="#energy-demand-final-and-useful-energy"><i class="fa fa-link"></i></a> Enerģijas pieprasījums (galīgā un lietderīgā enerģija)</h3><p> Tabulā ir norādītas arī prasības pēc galīgās un lietderīgās enerģijas. Galīgajā enerģijas pieprasījumā ir iekļauti arī zaudējumi centralizētajā siltumapgādes sistēmā. Tāpēc centralizētās siltumapgādes (centrālās) apgādes galīgās enerģijas pieprasījuma vērtības atspoguļo enerģijas nesēja pieprasījumu centralizētās siltumapgādes sistēmas stacijās. Gan lietderīgā, gan galīgā enerģijas pieprasījuma vērtības tiek parādītas <em><strong>GWh / gadā</strong></em> .</p><h3><a class="anchor" id="shares-of-renewable-energy-and-district-heating" href="#shares-of-renewable-energy-and-district-heating"><i class="fa fa-link"></i></a> Atjaunojamās enerģijas un centralizētās siltumapgādes daļas</h3><p> Visbeidzot, tabulā ir salīdzinātas četras dažādas daļas: atjaunojamās enerģijas daļa decentralizētajā apgādē, centrālajā apgādē un kopējā siltumapgādē šajā apgabalā un centralizētās siltumapgādes / centrālās piegādes daļa apgabalā. Attiecībā uz pārējām vērtībām šīs vērtības ir norādītas arī skaitļos blakus tabulai.</p><img src="/en/CM-Scenario-assessment/picture4.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Izlases skrējiens</h2><p> (Tomaszów Mazowiecki)</p><p> Lejupielādējot Excel failu, jūs saņemsiet scenārija novērtējuma gatavu aizpildīšanai versiju. Pēc veiksmīga scenāriju aprēķina, izmantojot moduļus CM - decentralizēta siltumapgāde, CM - centralizētās siltumapgādes potenciāls: ekonomiskais novērtējums un CM - centralizētās siltumapgādes piegāde, attiecīgos moduļu rezultātus var nokopēt attiecīgajās dokumenta lapās. Turpmākajos trīs Polijas pilsētas scenārijos Tomaszów Mazowiecki tiek vērtēts kā piemērs.</p><h3><a class="anchor" id="ref.-dec.-heating-supply" href="#ref.-dec.-heating-supply"><i class="fa fa-link"></i></a> Ref. Decembra siltumapgāde</h3><p> Šajā piemērā viena scenārija decentralizētās apkures piegādi pilsētas Tomaszów Mazowiecki Polijā tika aprēķināts, izmantojot Hotmaps Toolbox kopā ar lapām, kas sadaļā ēkas krājumu saskaņā ar aprakstīto procedūru, <a href="CM-Scenario-assessment#interpretation-of-input-parameters_definition-of-the-building-stock-and-calculation-of-indicators-for-decentral-heating-supply">šajā sadaļā lapas</a> . Šis decentralizētās piegādes scenārijs ir nokopēts 1., 2. un 3. scenārijā scenāriju novērtēšanas failā, darblapā &quot;Ref. Dec. Siltumapgāde&quot;, lai visos trīs pilsētas salīdzinātajos scenārijos izmantotu to pašu individuālo siltumapgādes scenāriju. .</p><img src="/en/CM-Scenario-assessment/sample_run_picture1.jpg"/><h3><a class="anchor" id="ref.-dh-economic-assessment" href="#ref.-dh-economic-assessment"><i class="fa fa-link"></i></a> Ref. CH ekonomiskais novērtējums</h3><p> Šajā piemērā viens no centralizētās siltumapgādes tīkla izbūves scenārijiem Tomaszów Mazowiecki pilsētai Polijā ir aprēķināts, izmantojot rīkjoslu Hotmaps. Šis scenārijs ir nokopēts 1., 2. un 3. scenārijā scenāriju novērtēšanas failā, darblapā &quot;Ref. DH ekonomiskais novērtējums&quot;, lai visos trijos salīdzinātajos pilsētas scenārijos izmantotu to pašu centralizētās siltumapgādes tīkla izbūves scenāriju.</p><img src="/en/CM-Scenario-assessment/sample_run_picture2.jpg"/><h3><a class="anchor" id="ref.-dh-supply-dispatch" href="#ref.-dh-supply-dispatch"><i class="fa fa-link"></i></a> Ref. CH piegāde</h3><p> Šajā piemērā ir izmantoti trīs dažādi centralizētās siltumapgādes scenāriji Tomaszów Mazowiecki pilsētai Polijā, izmantojot rīkjoslu Hotmaps. Scenāriji atspoguļo dažādas piegādes tehnoloģiju kombinācijas, proti, dažādas siltumsūkņu, liekā siltuma, kā arī tikai siltuma katlu jaudas.</p><img src="/en/CM-Scenario-assessment/sample_run_picture3.jpg"/><h3><a class="anchor" id="final-table" href="#final-table"><i class="fa fa-link"></i></a> Fināla galds</h3><p> Pēc atsevišķu datu kopēšanas apkopotos scenārijus var apskatīt lapas Galīgajā tabulā. No vienas puses, ir tabula, kurā norādīti precīzi rezultāti, un, no otras puses, tabulas labajā pusē varat atrast atbilstošus grafikus. Šajā piemērā dažādu piegādes tehnoloģiju jaudu izmantošanas ietekmi uz centralizēto siltumapgādes sistēmu var novērtēt, pamatojoties uz izmaksām, emisijām, enerģijas pieprasījumu un atjaunojamās enerģijas īpatsvaru.</p><img src="/en/CM-Scenario-assessment/sample_run_picture4.jpg"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kā citēt</h2><p> Giulia Conforto un David Schmidinger, Hotmaps-Wiki, CM-Scenario-assessment (2020. gada septembris)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori un recenzenti</h2><p> Šo lapu rakstīja Džūlija Konforto un Deivids Šmidingers <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> ☑ Šo lapu pārskatīja Marcul Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licence</h2><p> Autortiesības © 2016-2020: Giulia Conforto un David Schmidinger</p><p> Creative Commons Attribution 4.0 starptautiskā licence</p><p> Šis darbs ir licencēts saskaņā ar Creative Commons CC BY 4.0 starptautisko licenci.</p><p> SPDX-licences identifikators: CC-BY-4.0</p><p> Licences teksts: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Pateicība</h2><p> Mēs vēlamies paust visdziļāko pateicību projektam Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (grantu līguma numurs 723677), kas nodrošināja finansējumu šīs izmeklēšanas veikšanai.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Scenario-assessment) (original) [Bulgarian](../bg/CM-Scenario-assessment)<sup>\*</sup> [Czech](../cs/CM-Scenario-assessment)<sup>\*</sup> [Danish](../da/CM-Scenario-assessment)<sup>\*</sup> [German](../de/CM-Scenario-assessment)<sup>\*</sup> [Greek](../el/CM-Scenario-assessment)<sup>\*</sup> [Spanish](../es/CM-Scenario-assessment)<sup>\*</sup> [Estonian](../et/CM-Scenario-assessment)<sup>\*</sup> [Finnish](../fi/CM-Scenario-assessment)<sup>\*</sup> [French](../fr/CM-Scenario-assessment)<sup>\*</sup> [Irish](../ga/CM-Scenario-assessment)<sup>\*</sup> [Croatian](../hr/CM-Scenario-assessment)<sup>\*</sup> [Hungarian](../hu/CM-Scenario-assessment)<sup>\*</sup> [Italian](../it/CM-Scenario-assessment)<sup>\*</sup> [Lithuanian](../lt/CM-Scenario-assessment)<sup>\*</sup>  [Maltese](../mt/CM-Scenario-assessment)<sup>\*</sup> [Dutch](../nl/CM-Scenario-assessment)<sup>\*</sup> [Polish](../pl/CM-Scenario-assessment)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Scenario-assessment)<sup>\*</sup> [Romanian](../ro/CM-Scenario-assessment)<sup>\*</sup> [Slovak](../sk/CM-Scenario-assessment)<sup>\*</sup> [Slovenian](../sl/CM-Scenario-assessment)<sup>\*</sup> [Swedish](../sv/CM-Scenario-assessment)<sup>\*</sup> 

<sup>\*</sup> machine translated