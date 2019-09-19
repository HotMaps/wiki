<h2> Sisukord </h2><ul><li> <a href="#introduction">Sissejuhatus</a> </li><li> <a href="#inputs-and-outputs">Sisendid ja väljundid</a> </li><li> <a href="#method">Meetod</a> </li><li> <a href="#sample-run">Proovijooks</a> </li><li> <a href="#authors-and-reviewers">Autorid ja retsensendid</a> </li><li> <a href="#license">Litsents</a> </li><li> <a href="#acknowledgement">Tunnustus</a> </li></ul><h2> Sissejuhatus </h2><p> See moodul annab võimaluse lisada HotMapsi tööriistakasti täiendavaid tööstusalasid koos nende kütte- ja jahutusvajaduse ning liigse soojuspotentsiaaliga. Võimalik on lisada täiendavaid energiamahukaid ja vähem energiamahukaid tööstusi. Kasutaja sisestab vajalikud andmed eraldiseisvasse Exceli tööriista, mis seejärel genereerib andmelehe, mille saab üles laadida HotMapsi tööriistakasti. </p><h2> Sisendid ja väljundid (kuidas kasutada) </h2><h3> Andmete sisestamine kasutaja poolt Exceli tööriistas </h3><p> Laadige alla pakutav Exceli tööriist siit: xxx </p><h4> Lisage üldteave </h4><p> Minge vahekaardilehele: <figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/General_information.PNG"/></figure></p><p> Esimeses etapis sisestage kogu vajalik üldteave nende kohtade kohta, mille jaoks tuleks arvutada soojus- ja jahutusvajadus ning liigne soojuspotentsiaal. Võimalik on lisada kuni 10 tööstusala. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/General_information_Box.PNG"/></figure><h4> Valige arvutusvalik </h4><p> Teises etapis on 3 võimalust, kuidas saab hinnata soojus- ja jahutusvajadust ning liigset soojuspotentsiaali. Pange tähele, et erinevate ettevõtete vahel on võimalik kolme variandi vahel vahetada, kuid mitte ettevõtte enda sees. </p><p> Liigse soojuse temperatuuri osas tuleb mainida, et madala temperatuuriga soojust (&lt;100 ° C) saab sisestada Exceli tööriista, kuid seda ei ole HotMaps-i tööriistakastis veel hinnatud. Kui tuleks arvestada madala temperatuuriga kuumusega, on vajalik soojuspumba rakendamine. Selle jaoks saab kasutaja lisada soojuspumba elektritarbimise elektrienergia lõpptarbimisse ja tõsta tekkiva liigse soojuse temperatuuri vahemikku 100-200 ° C. </p><p> xxx Img sammud xxx </p><h5> 1. võimalus: käsitsi sisestamine </h5><p> Minge vahekaardilehele: <figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Option1.PNG"/></figure></p><p> Valige see suvand, kui soojus- / jahutusvajaduse ning liigse soojuspotentsiaali ja temperatuurijaotuse andmed on valitud ettevõtte jaoks saadaval ja neid saab käsitsi täita. </p><h5> 2. võimalus: taimede valik </h5><p> Minge vahekaardilehele: <figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Option2.PNG"/></figure></p><p> Valige see valik, kui valitud ettevõtte kohta pole teavet soojus- / jahutusvajaduse ja liigse soojuspotentsiaali kohta. Taimepõhise andmebaasi põhjal saab paljude taimede ja toodete / protsesside jaoks valida tüüpilise soojus- / jahutusvajaduse ja temperatuurijaotusega liigse soojuspotentsiaali. Vajaliku sisendina tootespetsiifiliste andmete teisendamiseks tuleb sisestada arvutusaluse väärtus (nt tootmine, pindala jne). Lisateavet arvutusmeetodi kohta leiate [Meetod]. </p><h5> 3. võimalus: sektori valik </h5><p> Minge vahekaardilehele: <figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Option3.PNG"/></figure></p><p> Valige see valik, kui teie jaama tüüp pole 2. variandi korral saadaval. Sektorispetsiifiliste soojusandmete põhjal arvutatakse tüüpiline soojus- / jahutusvajadus ja liigne soojuspotentsiaal. Vajadusel tuleb sisestada küttevajadus soojusvarustuses (GWh / aastas). Lisateavet arvutusmeetodi kohta leiate [Meetod]. </p><h3> Andmete üleslaadimine tööriistakastis HotMaps </h3><p> Minge vahekaardilehele: <figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Data_Import.PNG"/></figure></p><p> Pange tähele: CSV-failide üleslaadimist pole HotMaps-i tööriistakastis veel rakendatud. Lisateave ilmub peagi. </p><h2> Meetod </h2><p> Kui tehase soojus- / jahutusvajadus ja liigne soojuspotentsiaal pole teada, pakutakse kasutajale soojusvajaduse ja liigse soojuspotentsiaali arvutamiseks kahte indikaatoripõhist meetodit. </p><p> Tuleb mainida, et need väärtused on ainult soovituslikud ligikaudsed väärtused tüüpiliste taimede (variant 2) või valdkondlikul tasandil (variant 3) korral ning need ei asenda taime soojusvajaduse ja liigse soojuse detailset analüüsi ja mõõtmist. </p><h3> 2. võimalus: taimede valik </h3><p> Taimede spetsiifilised soojusandmed on võetud andmebaasist Forecast. (Alt-üles või ülalt-alla lähenemine?) Paljude erinevate energiamahukate ja vähem energiamahukate tehasetüüpide jaoks töödeldakse soojuse / jahutuse nõudlust ja liigset soojuspotentsiaali tulenevalt kütuste ja elektri konkreetsest lõpptarbimisest. Oluline on märkida, et aluseks oleva andmebaasi tõttu on selle meetodiga kaetud ainult protsessisoojus ja protsessi jahutamine; ruumi kütmine ja soe vesi ei kuulu siia. Sõltuvalt tehase tüübist on arvutuse aluseks erinevad sisendid (nt tootmismaht tonnides või pindala ruutmeetrites). </p><p> Soojuse ja jahutuse vajaduse arvutamiseks on vaja eeldada muundamise efektiivsust lõppenergiast soojuseks ja jahutuseks. Kuna suurem osa soojusenergia rakendustest on aurupõhised, eeldatakse, et kasutegur on 90% (Was ist mit Electricity?). Jahutusrakenduste puhul eeldatakse, et energiatõhususe suhe (EER) on xxx (von Tobi noch auszufüllen). </p><p> Kogu 2. variandiks kasutatud andmebaas on saadaval siin: Repository_Link </p><h3> 3. võimalus: sektori valik </h3><p> 3. valikuvõimalus annab töötleva tööstuse sektorites soojusvajaduse ja liigse soojuse laiapõhjalise hinnangu (vastavalt NACE 2008). </p><h4> Liigse soojuspotentsiaali arvutamine sektori tasandil </h4><p> Erinevate sektorite liigse soojuspotentsiaali arvutamiseks kasutatakse Brückner 2016 kohaselt liigseid soojustegureid (vt joonis xxx). Liigne soojustegur on määratletud kui heitsoojus, mis tekib ühe kütusekulu kohta. Brückner 2016-s pärinevad töötlevas tööstuses liigse soojuspotentsiaali kindlakstegemiseks kättesaadavad andmed saksamaal riigi tasandil iga nelja aasta tagant läbi viidud heitkoguste uuringust. Vastavalt heitkoguste deklareerimise määrusele (1. BImSchG) peavad kõik tunnustuse saamiseks vajalike tehaste käitajad esitama deklaratsiooni oma heitkoguste kohta iga nelja aasta tagant. Hinnatakse 2008. aasta andmeid ettevõtte tasemel, mis koosneb heitgaaside mahu voogudest ja nende temperatuuritasemest. Koos olemasoleva teabega taimede kütusekulu tüübi ja kvantitatiivsuse kohta arvutatakse tehase liigse soojuse tegur järgmiselt: </p><p> Liigne soojustegur = liigne soojuse / kütusekulu </p><p> Lõpuks arvutatakse liigse soojuse tegur mitte ainult ettevõtte, vaid ka sektori tasandil. Üksikasjalikku teavet leiate Brückner 2016-st. </p><p> Brückner 2016 andmetel hõlmavad liigsed soojustegurid protsessisoojusest tulevat liigset soojust, samuti ruumi soojuse tootmist ja sooja vett. Selle põhjuseks on asjaolu, et analüüsitakse ainult jaamast väljuva heitgaasi mahtu, eraldamata kütusekulu ruumi soojendamiseks, sooja tarbeveeks ja protsessisoojuseks. </p><h4> Soojatarbe arvutamine sektori tasandil </h4><p> tuleb ära teha </p><p> Kogu variandi 3 jaoks kasutatud andmebaas on saadaval siin: Repository_Link </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_add_industry_plant/Factors.PNG"/><figcaption> <i><br/> Muss noch übersetzt werden.</i> </figcaption></figure><h2> Autorid ja retsensendid </h2><p> Selle lehe on kirjutanud Ali Aydemir * ja Lisa Neusel * </p><ul><li> [] Selle lehe on üle vaadanud Tobias Fleiter *. </li></ul><p> * <a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a> Fraunhofer ISI, Breslauer Str. 48, 76139 Karlsruhe </p><h2> Litsents </h2><p> Autoriõigused © 2016-2018: Ali Aydemir, Lisa Neusel </p><p> Creative Commons Attribution 4.0 rahvusvaheline litsents Selle teose litsents on Creative Commons CC BY 4.0 rahvusvahelise litsentsi alusel. </p><p> SPDX-litsentsi identifikaator: CC-BY-4.0 </p><p> Litsentsi tekst: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Tunnustus </h2><p> Soovime avaldada oma sügavat tunnustust <a href="https://www.hotmaps-project.eu">projektile</a> Horisont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (toetuslepingu number 723677), mis eraldas raha käesoleva uurimise läbiviimiseks. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><p> `` </p>

This page was automatically translated. View in another language:

[English](en-CM-Add-industry-plant) (original) [Bulgarian](bg-CM-Add-industry-plant)<sup>\*</sup> [Croatian](hr-CM-Add-industry-plant)<sup>\*</sup> [Czech](cs-CM-Add-industry-plant)<sup>\*</sup> [Danish](da-CM-Add-industry-plant)<sup>\*</sup> [Dutch](nl-CM-Add-industry-plant)<sup>\*</sup>  [Finnish](fi-CM-Add-industry-plant)<sup>\*</sup> [French](fr-CM-Add-industry-plant)<sup>\*</sup> [German](de-CM-Add-industry-plant)<sup>\*</sup> [Greek](el-CM-Add-industry-plant)<sup>\*</sup> [Hungarian](hu-CM-Add-industry-plant)<sup>\*</sup> [Irish](ga-CM-Add-industry-plant)<sup>\*</sup> [Italian](it-CM-Add-industry-plant)<sup>\*</sup> [Latvian](lv-CM-Add-industry-plant)<sup>\*</sup> [Lithuanian](lt-CM-Add-industry-plant)<sup>\*</sup> [Maltese](mt-CM-Add-industry-plant)<sup>\*</sup> [Polish](pl-CM-Add-industry-plant)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-Add-industry-plant)<sup>\*</sup> [Romanian](ro-CM-Add-industry-plant)<sup>\*</sup> [Slovak](sk-CM-Add-industry-plant)<sup>\*</sup> [Slovenian](sl-CM-Add-industry-plant)<sup>\*</sup> [Spanish](es-CM-Add-industry-plant)<sup>\*</sup> [Swedish](sv-CM-Add-industry-plant)<sup>\*</sup>
<sup>\*</sup>: machine translated