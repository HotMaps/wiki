<h1><a class="anchor" id="cm-wind-potential" href="#cm-wind-potential"><i class="fa fa-link"></i></a>CM Potencijal vjetra</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Sadržaj</h2><ul><li> <a href="#in-a-glance">U jednom pogledu</a></li><li> <a href="#introduction">Uvod</a></li><li> <a href="#inputs-and-outputs">Ulazi i izlazi</a></li><li> <a href="#method">Metoda</a></li><li> <a href="#github-repository-of-this-calculation-module">GitHub spremište ovog kalkulacijskog modula</a></li><li> <a href="#sample-run">Uzorak trčanja</a></li><li> <a href="#how-to-cite">Kako citirati</a></li><li> <a href="#authors-and-reviewers">Autori i recenzenti</a></li><li> <a href="#license">Licenca</a></li><li> <a href="#acknowledgement">Priznanje</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> U jednom pogledu</h2><p> Ovaj modul izračunava potencijal opskrbe energijom vjetra u odabranom području. Ulazi u modul su rasterska datoteka s prosječnom brzinom vjetra i tehničkim specifikacijama lopatice vjetra i turbine.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Uvod</h2><p> Ovaj modul procjenjuje energiju vjetra koju može generirati vjetroelektrana s godišnjim, mjesečnim i satnim rezolucijama. Modul procjenjuje broj turbina koje se mogu instalirati na unaprijed definiranom području. Cilj mu je izračunati potencijal energije vjetra i financijsku izvedivost odabranog područja uzimajući u obzir:</p><ul><li> instalacija novih sustava vjetra,</li><li> procijeniti financijsku izvedivost novih postrojenja.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Ulazi i izlazi</h2><p> Ulazni parametri i slojevi, kao i izlazni slojevi i parametri su kako slijedi.</p><p> <strong>Ulazni slojevi i parametri su:</strong></p><ul><li> rasterska datoteka:<ul><li> srednja brzina vjetra [m / s]</li><li> s površinom dostupnom za eksploataciju vjetra. Zadani raster koristi samo područja s niskom ili rijetkom vegetacijom te ogoljena i izgorena područja (klase od 3.2.1. Do 3.2.4. I 3.3.3., 3.3.4. Od <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover - CLC</a> ). Zatim smo isključili sljedeća područja prema kriterijima održivosti:<ul><li> Područja iznad 2500 metara od razine mora (2500 mnv);</li><li> Tampon od 1 km od urbanih područja (razredi od 1.1.1. Do 1.4.2. ZTK-a);</li><li> Koridori za povezanost ptica (Zajednička baza podataka o određenim područjima);</li><li> Isključivanje zaštićenih područja mreže Nature 2000.</li></ul></li></ul></li><li> Troškovi postavljanja vjetrovnih čvorišta (sve uključeno; zadana vrijednost: 2000 € / kWp);</li><li> Udaljenost između čvorišta vjetra (zadana vrijednost: 1000m);</li><li> Troškovi održavanja i rada (zadana vrijednost: 2%);</li><li> Vršna snaga (zadana vrijednost: 800kW);</li><li> Visina (zadana vrijednost: 80m);</li><li> Godine financiranja (zadana vrijednost: 20 godina);</li><li> Diskontna stopa (zadana vrijednost: 4,0%);</li></ul><p> <strong>Izlazni slojevi i parametri su:</strong></p><ul><li> ukupni troškovi implementacije sustava vjetra;</li><li> ukupna godišnja proizvodnja energije;</li><li> nivelirani trošak energije;</li><li> rasterska datoteka s najprikladnijim područjima za proizvodnju energije vjetra.</li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Metoda</h2><p> Metodologija koju koristi CM je korištenje područja koje je korisnik odabrao. Zadana područja su područja identificirana u slojevima potencijalnog vjetra koja su uzimala u obzir samo područja s niskom ili rijetkom vegetacijom te ogoljena i izgorena područja (razredi od 3.2.1 do 3.2.4 i 3.3.3, 3.3.4 od <a href="https://land.copernicus.eu/pan-european/corine-land-cover">Corine Land Cover - CLC</a> ), ta su područja dodatno filtrirana na temelju sljedećih kriterija za izuzeće:</p><ul><li> Područja iznad 2500 mnv;</li><li> Tampon od 1 km od urbanih područja (razredi od 1.1.1. Do 1.4.2. ZTK-a);</li><li> Koridori za povezanost ptica (Zajednička baza podataka o određenim područjima [148]);</li><li> Isključivanje zaštićenih područja mreže Nature 2000 [149].</li></ul><p> CM koristi korisnički definiranu udaljenost između čvorišta za stvaranje mreže potencijalnih čvorišta u odabranim područjima. Na temelju broja vjetroagregata koji se mogu potencijalno instalirati, na temelju glavnih karakteristika sustava vjetra, visine i tehničkih specifikacija, modul izračunava energiju koju sustav može proizvesti.</p><p> Modul dobiva mjesečni i satni profil, računajući barycenter odabranih područja i traži <a href="https://www.renewables.ninja/">RenewableNinja API</a> , koji pruža podatke iz skupa podataka MERRAv2.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub spremište ovog kalkulacijskog modula</h2><p> <a href="https://github.com/HotMaps/wind_potential">Ovdje</a> ćete dobiti vrhunski razvoj za ovaj modul izračuna.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Uzorak trčanja</h2><img alt="Fig. 1-0" src="https://wiki.hotmaps.hevs.ch/en/CM-Wind-potential/cm-wind.png" title="Izvršite CM vjetra"/><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Kako citirati</h2><p> Pietro Zambelli, u Hotmaps-Wiki, CM-Potencijal vjetra (rujan 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autori i recenzenti</h2><p> Ovu su stranicu napisali Giulia Garegnani i Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> ☑ Ovu je stranicu pregledao Simon Pezzutto ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licenca</h2><p> Copyright © 2016-2020: Giulia Garegnani i Pietro Zambelli</p><p> Creative Commons Attribution 4.0 međunarodna licenca</p><p> Ovo je djelo licencirano pod Creative Commons CC BY 4.0 međunarodnom licencom.</p><p> SPDX-identifikator licence: CC-BY-4.0</p><p> Tekst licence: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Priznanje</h2><p> Željeli bismo izraziti našu najdublju zahvalnost projektu Horizon 2020 Hotmaps (Ugovor o dodjeli bespovratnih sredstava broj 723677), koji je osigurao financijska sredstva za provođenje ove istrage.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Wind-potential) (original) [Bulgarian](../bg/CM-Wind-potential)<sup>\*</sup> [Czech](../cs/CM-Wind-potential)<sup>\*</sup> [Danish](../da/CM-Wind-potential)<sup>\*</sup> [German](../de/CM-Wind-potential)<sup>\*</sup> [Greek](../el/CM-Wind-potential)<sup>\*</sup> [Spanish](../es/CM-Wind-potential)<sup>\*</sup> [Estonian](../et/CM-Wind-potential)<sup>\*</sup> [Finnish](../fi/CM-Wind-potential)<sup>\*</sup> [French](../fr/CM-Wind-potential)<sup>\*</sup> [Irish](../ga/CM-Wind-potential)<sup>\*</sup>  [Hungarian](../hu/CM-Wind-potential)<sup>\*</sup> [Italian](../it/CM-Wind-potential)<sup>\*</sup> [Lithuanian](../lt/CM-Wind-potential)<sup>\*</sup> [Latvian](../lv/CM-Wind-potential)<sup>\*</sup> [Maltese](../mt/CM-Wind-potential)<sup>\*</sup> [Dutch](../nl/CM-Wind-potential)<sup>\*</sup> [Polish](../pl/CM-Wind-potential)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Wind-potential)<sup>\*</sup> [Romanian](../ro/CM-Wind-potential)<sup>\*</sup> [Slovak](../sk/CM-Wind-potential)<sup>\*</sup> [Slovenian](../sl/CM-Wind-potential)<sup>\*</sup> [Swedish](../sv/CM-Wind-potential)<sup>\*</sup> 

<sup>\*</sup> machine translated