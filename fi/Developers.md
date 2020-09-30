<h1><a class="anchor" id="developers" href="#developers"><i class="fa fa-link"></i></a>Kehittäjät</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sisällysluettelo</h2><ul><li> <a href="#introduction">Johdanto</a></li><li> <a href="#dataset-integration">Tietojoukon integrointi</a></li><li> <a href="#add-your-datasets-on-gitlab">Lisää tietojoukot GitLabiin</a></li><li> <a href="#list-of-main-repositories">Luettelo tärkeimmistä arkistoista</a></li><li> <a href="#how-to-contribute-code">Kuinka lisätä koodi</a></li><li> <a href="#description-of-it-infrastructure">Kuvaus IT-infrastruktuurista</a><ul><li> <a href="#description-of-it-infrastructure_run-with-docker">Suorita Dockerin kanssa</a></li><li> <a href="#description-of-it-infrastructure_server-infrastructure">Palvelininfrastruktuuri</a><ul><li> <a href="#description-of-it-infrastructure_server-infrastructure_infrastructure">Infrastruktuuri</a></li><li> <a href="#description-of-it-infrastructure_server-infrastructure_performance">Esitys</a></li></ul></li></ul></li><li> <a href="#read-me">Lue minulle</a></li><li> <a href="#how-to-define-indicators">Kuinka määritellä indikaattorit</a></li><li> <a href="#how-to-cite">Kuinka lainata</a></li><li> <a href="#authors-and-reviewers">Kirjoittajat ja arvostelijat</a></li><li> <a href="#license">Lisenssi</a></li><li> <a href="#acknowledgement">Tunnustus</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Johdanto</h2><p> Tämä sivu sisältää kaikki tiedot, joita kehittäjät tarvitsevat voidakseen osallistua Hotmaps-alustaan tai ymmärtääkseen sen toiminnan.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="dataset-integration" href="#dataset-integration"><i class="fa fa-link"></i></a> Tietojoukon integrointi</h2><p> Uusien julkisten tietojoukkojen integrointi hoidetaan seuraavasti:</p><ol><li> tietojoukot on siirrettävä git-arkistoon (lisää <a href="#add-your-datasets-on-gitlab">tietojoukot GitLabiin</a> )</li><li> joka ilta komentosarja integroi uudet / päivitetyt tietojoukot DEV-alustalle</li><li> jos kaikki toimi hyvin, tietojoukko on nyt saatavilla DEV-alustalla ja kehittäjät voivat integroida sen koodiinsa</li><li> Kun koodaus on valmis, uudet ominaisuudet lisätään tuotantoalustaan uuden julkaisun kautta</li></ol><p> <strong>Tietojen integrointi</strong></p><p> Jos tietojoukko epäonnistuu integroinnin aikana, Taigaan (projektinhallinta-alusta) luodaan asia. Ongelma osoittaa esiin tulleen virheen, ja kehittäjän tulisi korjata se ja työntää työnsä uudelleen Gitiin, jotta komentosarja voi yrittää integroida sen uudelleen seuraavana iltana.</p><p> Integrointikoodin lähdekoodi on saatavilla tältä linkiltä: <a href="https://github.com/HotMaps/CI_DatasetIntegration">Tietojen integrointi</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="add-your-datasets-on-gitlab" href="#add-your-datasets-on-gitlab"><i class="fa fa-link"></i></a> Lisää tietojoukot GitLabiin</h2><p> Jos haluat lisätä tietoaineistoja julkisten tietojoukkojen luetteloon, ne on siirrettävä uuteen Git-arkistoon GitLabissa. Tässä on GitLab-organisaatio, johon tietojoukot on työnnettävä: <a href="https://gitlab.com/hotmaps">Datasets on GitLab</a> .</p><p> Kerran päivässä arkistoista tarkistetaan uudet sitoumukset ja integroidaan, jos niin. Integraatioprosessi tarkistaa, ovatko tiedot eritelmien mukaisia vai ei.</p><p> Tässä on eritelmä: <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf">Hotmaps_Data-upload-on-Gitlab_2017-12-04_V4.pdf</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="list-of-main-repositories" href="#list-of-main-repositories"><i class="fa fa-link"></i></a> Luettelo tärkeimmistä arkistoista</h2><p> Sovelluksen koodi sijaitsee GitHubissa <a href="https://github.com/HotMaps">Hotmaps-organisaation alla</a> . Tämä organisaatio omistaa useita arkistoja</p><ul><li> <a href="https://github.com/HotMaps/Hotmaps-toolbox-service">Hotmaps-toolbox-client</a> sisältää sovelluksemme käyttöliittymän. Se on kulmaprojekti (JavaScript)</li><li> <a href="https://github.com/HotMaps/Hotmaps-toolbox-service">Hotmaps-toolbox-service</a> sisältää sovellusliittymämme. Se perustuu pulloon (Python)</li><li> <a href="https://github.com/HotMaps/base_calculation_module">peruslaskentamoduuli</a> on perusmalli, jonka avulla voit luoda omia laskentamoduuleja Hotmapsille</li><li> luettelo laskentamoduuleista</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-contribute-code" href="#how-to-contribute-code"><i class="fa fa-link"></i></a> Kuinka lisätä koodi</h2><p> Jos haluat lisätä koodia Hotmapsiin, sinulla on kaksi mahdollisuutta: jos haluat päivittää käyttöliittymän tai taustajärjestelmän suoraan, sinun on muokattava työkalurivin asiakasta tai palveluvarastoa. Jos haluat lisätä oman laskentamoduulin, voit luoda oman arkiston seuraamalla <a href="https://github.com/HotMaps/base_calculation_module">base_calculation_module-tietovaraston readme-tiedostoa</a></p><p> Jos haluat tehdä töitä Git-arkistossa, älä työskentele suoraan päähaaran kanssa. Luo uusi haara kehityshaarasta, tee työsi tällä haaralla, ja kun ominaisuutesi on testattu, voit yhdistää työsi kehitystoiminnan haaraan seuraavan kaavion mukaisesti.</p><p> <strong>Git_workflow</strong></p><p> Jotta voisit viedä jotain joihinkin Hotmaps-arkistoihin, sinun on oltava Hotmaps-tiimin jäsen. Jos et ole, voit silti suorittaa työkalun haarukan kehittääksesi oman työkalun.</p><p> Löydät lisätietoja työskentelystä näistä asiakirjoista:</p><ul><li> <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf">Hotmaps_python_best_practices_tutorial_2017-08-07_v01.pdf</a></li><li> <a href="https://wiki.hotmaps.eu/uploads/Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf">Hotmaps_Testing_in_python_tutorial_pytest_2017-08-07_v01.pdf</a></li><li> <a href="https://wiki.hotmaps.eu/uploads/GitFlow_Guidelines_CREM_2017-02-01.pdf">GitFlow_Guidelines_CREM_2017-02-01.pdf</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="description-of-it-infrastructure" href="#description-of-it-infrastructure"><i class="fa fa-link"></i></a> Kuvaus IT-infrastruktuurista</h2><p> <strong>ReverseProxy_architecture_estest</strong></p><p> Kaikkia palveluja ja komponentteja käytetään oman Docker-kontinsa kautta. Kaikki nämä säilöt on määritelty yhdessä telakointikoneessa. Yllä oleva kuva edustaa Hotmapsin IT-arkkitehtuuria.</p><p> Jotkut kumppaniorganisaatiot rajoittivat viestintää vain porttiin 80. Tämän rajoituksen aiheuttamien ongelmien välttämiseksi luotiin käänteinen välityspalvelin. Tämä käänteinen välityspalvelin tarjoaa yhden lähtökohdan ja jakaa sitten asiakkaan lähettämän pyynnön kyseiselle palvelulle. Käänteinen välityspalvelin koostuu kolmesta osasta:</p><ol><li> Käänteinen välityspalvelin: se toimii ainutlaatuisena lähtökohtana ja jakaa pyynnöt oikeille palveluille.</li><li> Proxy-gen: se on palvelu, joka kartoittaa automaattisesti kaikki palvelut käänteisessä välityspalvelimessa. Siksi uutta palvelua ei tarvitse lisätä manuaalisesti välityspalvelimen kokoonpanoon</li><li> lets-encrypt: se on palvelu, joka sallii SSL-protokollan käytön. Se on tarpeen https-protokollan aktivoimiseksi. SSL-varmenteet allekirjoitetaan tässä palvelussa määritetyllä sähköpostiosoitteella.</li></ol><p> Kolme verkostoa on olemassa:</p><ul><li> hotmaps_nginx antaa käänteisen välityspalvelimen kommunikoida API: n, käyttöliittymän ja GeoServerin kanssa. Se mahdollistaa lähinnä pyynnön jakamisen oikealle palvelulle näiden kolmen kesken.</li><li> hotmaps_backend sallii kommunikoinnin taustajärjestelmän kaikkien komponenttien välillä: API, frontend, GeoServer ja PostgreSQL-tietokanta.</li><li> hotmaps_cm-net mahdollistaa tiedonsiirron kunkin laskentamoduulin ja API: n välillä.</li></ul><p> Jokaisella laskentamoduulilla on oma Docker-kontti.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="run-with-docker" href="#run-with-docker"><i class="fa fa-link"></i></a> Suorita Dockerin kanssa</h3><p> Hotmaps käyttää <a href="https://www.docker.com/">Docker-</a> ohjelmistoa ja <a href="https://docs.docker.com/compose/">Docker-Compose-</a> työkalua konttien hallintaan. Docker-compose.yml-tiedosto sisältää Docker-arkkitehtuurin koko kokoonpanon (kokoonpanot, säilöt, verkot, linkit, ...). Tämän avulla kontteja voidaan ajaa yhdellä yksinkertaisella komennolla:</p><pre> <code class="language-shell">docker-compose up</code></pre><p> <em>Docker-composesta on lisätietoja Docker-verkkosivustolla: <a href="https://docs.docker.com/compose/reference/">Compose komentoriviviite</a> ja <a href="https://docs.docker.com/compose/compose-file/">Compose file reference</a> .</em></p><p> On vain yksi säilö, joka ajetaan erillään muista: se on tietokanta, koska sen on pysyttävä jatkuvasti yllä. Siksi sitä ei ole docker-compose-määritystiedostossa.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="server-infrastructure" href="#server-infrastructure"><i class="fa fa-link"></i></a> Palvelininfrastruktuuri</h3><h4><a class="anchor" id="infrastructure" href="#infrastructure"><i class="fa fa-link"></i></a> Infrastruktuuri</h4><p> Tällä hetkellä palvelinta isännöidään Sveitsin HES-SO: lla. Saatavilla on 2 konetta: yksi kehitykseen (kehitys ja testaus) ja toinen tuotantoon (varsinainen työkalupakki, saatavana osoitteesta <a href="https://www.hotmaps.eu">www.hotmaps.eu</a> ).</p><p> Molemmilla koneilla on sama erittely:</p><ul><li> Suoritin: Intel Xeon E5-2680 v4 (8) @ 2.4GHz)</li><li> RAM: 16 Gt</li><li> Kiintolevy: 500 Gt</li><li> Käyttöjärjestelmä: Ubutnu 16.04 LTS</li></ul><h4><a class="anchor" id="performance" href="#performance"><i class="fa fa-link"></i></a> Esitys</h4><p> Suoritamme usein suorituskykytestejä kehityspalvelimella taatakseen tietyn määrän samanaikaisia käyttäjiä.</p><p> Esimerkkinä alla ovat ensimmäisen beeta-julkaisun tulokset verrattuna tuleviin julkaisutesteihin. Uusi julkaisu sisältää joitain suorituskyvyn parannuksia.</p><p> <em>Tässä esimerkissä esitetään samanaikaisten käyttäjien suorituskykytestit, jotka käyttävät samaa toimintoa: &quot;kestokäyrä hehtaarivalinnalle&quot;. Lihavoitu rivi osoittaa rajan, jossa palvelin alkaa aiheuttaa virheitä. Hektarivalinta on hyvä esimerkki, koska se näyttää kyselyt, jotka vaativat eniten resursseja.</em></p><p> <strong>Betaversio maaliskuussa 2019</strong></p><p> | Nb simuloituja käyttäjiä Keskimääräinen aika | Mediaani | Enimmäisaika | Minimi aika Virheiden prosenttiosuus | --------------------- | ------------ | ------ | -------- | -------- | -------------------- | | 1 | 1042 | 1042 | 1042 | 1042 | 0 | | 20 | 3608 | 3858 | 4475 | 2156 | 0 | | 50 | 7337 | 7595 | 11791 | 1568 | 0 | | 100 | 13897 | 13644 | 24492 | 1875 | 0 | | 200 | 27135 | 26380 | 51967 | 3045 | 0 | | <strong>300</strong> | 41237 | 43083 | 73245 | 3223 | <strong>10,67</strong> |</p><p> <strong>Lopullinen julkaisu (elokuu 2020)</strong></p><p> | Nb simuloituja käyttäjiä Keskimääräinen aika | Mediaani | Enimmäisaika | Minimi aika Virheiden prosenttiosuus | --------------------- | ------------ | ------ | -------- | -------- | -------------------- | | 1 | 1025 | 970 | 1151 | 956 | 0 | | 20 | 1671 | 1732 | 2085 | 1113 | 0 | | 50 | 3527 | 3622 | 5593 | 982 | 0 | | 100 | 6648 | 6764 | 11854 | 1118 | 0 | | 200 | 12904 | 12801 | 24163 | 1192 | 0 | | 300 | 19521 | 19382 | 38116 | 1060 | 0 |</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="read.me" href="#read.me"><i class="fa fa-link"></i></a> READ.ME</h2><p> <a href="Read.ME">Lue minulle</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-define-indicators" href="#how-to-define-indicators"><i class="fa fa-link"></i></a> Kuinka määritellä indikaattorit</h2><p> <a href="Guidelines-for-defining-indicators">Indikaattorin määritelmä</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kuinka lainata</h2><p> Daniel Hunacek, Lucien Zuber, Matthieu Dayer, Hotmaps Wikissä, kehittäjät -osiossa (syyskuu 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Kirjoittajat ja arvostelijat</h2><p> Tämän sivun ovat kirjoittaneet Daniel Hunacek, Lucien Zuber ja Matthieu Dayer ( <strong><a href="https://www.hevs.ch">HES-SO</a></strong> ).</p><p> ☑ Tämän sivun tarkasteli Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Lisenssi</h2><p> Tekijänoikeus © 2016-2020: Daniel Hunacek, Lucien Zuber ja Matthieu Dayer</p><p> Creative Commons Nimeä 4.0 -lisenssi</p><p> Tämä teos on lisensoitu Creative Commons CC BY 4.0 -lisenssillä.</p><p> SPDX-lisenssitunniste: CC-BY-4.0</p><p> Lisenssiteksti: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Tunnustus</h2><p> Haluamme antaa syvän arvostuksen Horisontti 2020 <a href="https://www.hotmaps-project.eu">Hotmaps -hankkeelle</a> (avustussopimuksen numero 723677), joka tarjosi rahoitusta tämän tutkimuksen suorittamiseen</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Developers) (original) [Bulgarian](../bg/Developers)<sup>\*</sup> [Czech](../cs/Developers)<sup>\*</sup> [Danish](../da/Developers)<sup>\*</sup> [German](../de/Developers)<sup>\*</sup> [Greek](../el/Developers)<sup>\*</sup> [Spanish](../es/Developers)<sup>\*</sup> [Estonian](../et/Developers)<sup>\*</sup>  [French](../fr/Developers)<sup>\*</sup> [Irish](../ga/Developers)<sup>\*</sup> [Croatian](../hr/Developers)<sup>\*</sup> [Hungarian](../hu/Developers)<sup>\*</sup> [Italian](../it/Developers)<sup>\*</sup> [Lithuanian](../lt/Developers)<sup>\*</sup> [Latvian](../lv/Developers)<sup>\*</sup> [Maltese](../mt/Developers)<sup>\*</sup> [Dutch](../nl/Developers)<sup>\*</sup> [Polish](../pl/Developers)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Developers)<sup>\*</sup> [Romanian](../ro/Developers)<sup>\*</sup> [Slovak](../sk/Developers)<sup>\*</sup> [Slovenian](../sl/Developers)<sup>\*</sup> [Swedish](../sv/Developers)<sup>\*</sup> 

<sup>\*</sup> machine translated