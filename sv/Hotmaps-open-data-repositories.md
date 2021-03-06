<h1><a class="anchor" id="hotmaps-open-data-repositories" href="#hotmaps-open-data-repositories"><i class="fa fa-link"></i></a>Hotmaps öppnar datalagrar</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Innehållsförteckning</h2><ul><li> <a href="#introduction">Introduktion</a></li><li> <a href="#building-stock">Byggnadsmaterial</a><ul><li> <a href="#building-stock_eu-building-stock">EU: s byggnadsbestånd</a></li><li> <a href="#building-stock_heating-and-cooling-demand-density-map">Karta över densitet och uppvärmningsbehov</a></li><li> <a href="#building-stock_gross-floor-area-density-map">Kartläggning av brutto golvyta</a></li><li> <a href="#building-stock_gross-volume-density-map">Bruttovolymdensitetskarta</a></li><li> <a href="#building-stock_construction-periods">Byggperioder</a></li></ul></li><li> <a href="#population">Befolkning</a></li><li> <a href="#industry">Industri</a></li><li> <a href="#climate">Klimat</a></li><li> <a href="#renewable-energy-source-potential">Förnybar energikällapotential</a></li><li> <a href="#scenario-data">Scenaridata</a></li><li> <a href="#technology-data">Teknikdata</a></li><li> <a href="#profiles">Profiler</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles">Värmeprofiler per timme - Generiska profiler</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_residential-profiles-generic">Bostadsprofiler - Generiska</a></li><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_tertiary-profiles-generic">Tertiära profiler - Generiska</a></li><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_industry-profiles-generic">Branschprofiler - Generisk</a></li></ul></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles">Värmebelastningsprofiler per timme - Årsspecifika profiler</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_residential-profiles-year-specific">Bostadsprofiler - årsspecifikt</a></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_tertiary-profiles-year-specific">Tertiära profiler - Årsspecifikt</a></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_industry-profiles-year-specific">Branschprofiler - Årsspecifikt</a></li></ul></li><li> <a href="#profiles_electricity-load-profiles">Elbelastningsprofiler</a></li><li> <a href="#profiles_temperature-profiles">Temperaturprofiler</a></li></ul></li><li> <a href="#transport">Transport</a></li><li> <a href="#data-sets-for-the-operation-of-the-hotmaps-toolbox">Datauppsättningar för användning av Hotmaps-verktygslådan</a></li><li> <a href="#references">Referenser</a></li><li> <a href="#how-to-cite">Hur man citerar</a></li><li> <a href="#authors-and-reviewers">Författare och granskare</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Bekräftelse</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Inom ramen för Hotmaps-projektet har data samlats in på olika nivåer (nationell, regional och lokal nivå). Dessa data har genererats för fyra olika sektorer: bostäder (enfamiljshus, flerfamiljshus och flerfamiljshus), service (kontor, handel, utbildning, hälsa, hotell och restauranger och andra icke-bostadshus), industri (järn och stål, icke-järnmetaller, papper och tryck, icke-metalliska mineraler, kemisk industri, mat, dryck och tobak, teknik och andra ej klassificerade) och transporter (persontransporter - offentlig, privat, järnväg och godstransport - tunga varor och lätta nyttofordon).</p><p> Alla ovan nämnda datamängder lagras i Hotmaps-datalagrar på GitLab och kan nås och laddas ner därifrån. Hotmaps-datalagren är omfattande och består av mer än 70 arkiv. För att ge en bättre överblick över alla Hotmaps-förråd, här grupperade vi dem i olika klasser och gav den direkta länken till dem. För detaljerade förklaringar om datainsamling, metoder, referenser, antaganden och begränsningar för Hotmaps-datauppsättningar hänvisas till denna <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">rapport</a> [1].</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="building-stock" href="#building-stock"><i class="fa fa-link"></i></a> Byggnadsmaterial</h2><h3><a class="anchor" id="eu-building-stock" href="#eu-building-stock"><i class="fa fa-link"></i></a> EU: s byggnadsbestånd</h3><ul><li> <a href="https://gitlab.com/hotmaps/building-stock">Byggmaterial på NUTS 0-nivå - Bostads- och servicesektorer</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="heating-and-cooling-demand-density-map" href="#heating-and-cooling-demand-density-map"><i class="fa fa-link"></i></a> Karta över densitet och uppvärmningsbehov</h3><ul><li> <a href="https://gitlab.com/hotmaps/heat/heat_res_curr_density">Slutlig energibehovstäthet för rumsuppvärmning och tappvarmvatten - <strong>Bostäder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/heat/heat_nonres_curr_density">Slutlig energibehovstäthet för uppvärmning av varmvatten och tappvatten - <strong>Icke-bostäder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">Slutlig energibehovstäthet för uppvärmning och varmvatten - <strong>Totalt</strong></a></li><li> <a href="https://gitlab.com/hotmaps/regional_demand">Användbart energibehov för uppvärmning av varmvatten och tappvarmvatten vid olika NUTS-nivåer</a></li><li> <a href="https://gitlab.com/hotmaps/space_heating_cooling_dhw_demand">Användbar energibehov och slutlig energiförbrukning för rumsuppvärmning, rymdkylning och tappvarmvatten på NUTS0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/heat/cool_tot_curr_density">Rumskylning behöver densitetskarta</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="gross-floor-area-density-map" href="#gross-floor-area-density-map"><i class="fa fa-link"></i></a> Kartläggning av brutto golvyta</h3><ul><li> <a href="https://gitlab.com/hotmaps/gfa_res_curr_density">Byggnadskarta för brutto golvyta - <strong>bostäder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">Byggnadskarta för brutto golvyta - <strong>Icke-bostäder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/gfa_tot_curr_density">Byggnadskarta för brutto golvyta - <strong>totalt</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="gross-volume-density-map" href="#gross-volume-density-map"><i class="fa fa-link"></i></a> Bruttovolymdensitetskarta</h3><ul><li> <a href="https://gitlab.com/hotmaps/vol_res_curr_density">Uppvärmd byggnads bruttovolymdensitetskarta - <strong>Bostäder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/vol_nonres_curr_density">Uppvärmd byggnads bruttovolymdensitetskarta - <strong>Icke-bostäder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/vol_tot_curr_density">Uppvärmd byggnads bruttovolymdensitetskarta - <strong>Totalt</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="construction-periods" href="#construction-periods"><i class="fa fa-link"></i></a> Byggperioder</h3><p> <strong>Andel av bruttoytan under byggnadsperioder:</strong></p><ul><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_1975_100_share">fram till 1975</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_1990_100_share">från 1975 - till 1990</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_2000_100_share">från 1990 - till 2000</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_2014_100_share">från 2000 - till 2014</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> Befolkning</h2><ul><li> <a href="https://gitlab.com/hotmaps/pop_tot_curr_density">Befolkningsfördelning i EU28 på hektar (ha) nivå</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Industri</h2><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">Georefererade energiintensiva industrianläggningar</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_industryBenchmarks">Jämförelseuppgifter om uppvärmnings- och kylbehov och övervärmepotentialer i industriella processer</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Klimat</h2><ul><li> <a href="https://gitlab.com/hotmaps/climate/climate_humidity">Årlig genomsnittlig luftfuktighet i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_land_surface_temperature">Årlig genomsnittlig landytemperatur i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_wind_speed">Årlig genomsnittlig vindhastighet i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_precipitation">Månatlig genomsnittlig nederbörd i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_solar_radiation">Månadlig solstrålning på optimalt lutande ytor i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_heating_cooling_degreeday">Genomsnittliga värmegraddagar (HDD) och kylningsgraddagar (CDD) på NUTS 3-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/climate/HDD_ha_curr">Uppvärmningsdagar (HDD) för referensperioden 2002-2012 på hektarnivå</a></li><li> <a href="https://gitlab.com/hotmaps/climate/CDD_ha_curr">Kylgradsdagar (CDD) för referensperioden 1999-2014 på hektarnivå</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="renewable-energy-source-potential" href="#renewable-energy-source-potential"><i class="fa fa-link"></i></a> Förnybar energikällapotential</h2><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Kort geotermisk potential - Baserat på konduktivitet, marktemperatur och säsongslängd - Teoretisk</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_shallowgeothermal">Grunn potential för geotermisk energi - Från EG-samfinansierat projekt ThermoMap</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_open_field">Solpotential - Genomsnittlig solvärmepotential med användning av solfångare med öppna fält</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_rooftop">Solpotential - Genomsnittlig solvärmepotential med hjälp av takmonterade solfångare</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solar">Solpotential - Årlig global solstrålning på globalt lutande ytor genom att beakta byggnadens fotavtryck</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_wind">Vindpotential - Total energipotential på NUTS 3-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_municipal_solid_waste">Kommunal potential för fast avfallsenergi</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_forest">Biomassans energipotential - skogens biomassapotential (raster)</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_biomass">Biomassans energipotential - Jordbruksrester, utsläpp från boskap och skogsrester</a></li><li> <a href="https://gitlab.com/hotmaps/potential/WWTP">Avloppsreningsverkens energipotential</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="scenario-data" href="#scenario-data"><i class="fa fa-link"></i></a> Scenaridata</h2><ul><li> <a href="https://gitlab.com/hotmaps/scen_current_industry_demand">Energibehov i <strong>industrin</strong> fram till år 2050 - <strong>Aktuellt scenario</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_industry_demand">Energibehov i <strong>industrin</strong> fram till år 2050 - <strong>Ambitiöst scenario</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_current_building_demand">Energibehov i <strong>byggnader</strong> fram till år 2050 - <strong>Aktuellt scenario</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_building_demand">Energibehov i <strong>byggnader</strong> fram till år 2050 - <strong>Ambitiöst scenario</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_CO2">Genomsnittliga koldioxidutsläppsfaktorer för elproduktion och fjärrvärmenät på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_generation_shares">Produktionsandelar (kärnkraft, fossil, förnybar) för el och fjärrvärme på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_efficiency_total">Total omvandlingseffektivitet för el och fjärrvärme på NUTS 0-nivå</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="technology-data" href="#technology-data"><i class="fa fa-link"></i></a> Teknikdata</h2><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_Lifetime">Industriell ånggenereringsteknik - Lifetime</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_CAPEX">Industriell ånggenereringsteknik - Investeringar (CAPEX)</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_OPEX">Industriell ånggenereringsteknik - Driftskostnader (OPEX)</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_ThermalEfficiency">Industriell ånggenereringsteknik - Värmeeffektivitet</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_PowerToHeatRatio">Industriell ånggenereringsteknik - Power to Heat Ratio</a></li><li> <a href="https://gitlab.com/hotmaps/heating_technologies">Uppvärmningsteknikblad</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="profiles" href="#profiles"><i class="fa fa-link"></i></a> Profiler</h2><h3><a class="anchor" id="hourly-heat-load-profiles---generic-profiles" href="#hourly-heat-load-profiles---generic-profiles"><i class="fa fa-link"></i></a> Värmeprofiler per timme - Generiska profiler</h3><p> <strong>Skapa din egen profil:</strong></p><p> Generiska filer är tänkta att göra det möjligt för användaren att producera egna lastprofiler med hjälp av sina egna data och ett strukturår efter eget val. För industrilastprofilerna tillhandahöll vi en årslång profil för år 2018 (där typdagarna anges i ordningen i år). För tertiär- och bostadsbelastningsprofiler tillhandahöll vi en årslång profil för år 2010. Vi vill dock ge användaren möjlighet att använda ett strukturår efter eget val (Strukturår betyder i detta sammanhang ordningen dagar i året).</p><p> Profilerna som tillhandahålls här är enhetlösa eftersom de måste skalas under genereringen av årslånga profiler.</p><p> Se de enskilda profilerna i denna wiki eller respektive datauppgifter för mer information om generering av profiler från generiska profiler.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="residential-profiles---generic" href="#residential-profiles---generic"><i class="fa fa-link"></i></a> Bostadsprofiler - Generiska</h4><p> För uppvärmning, kylning och varmvatten tillhandahöll vi en årslång profil för året 2010. Om användarna har tillgång till platsspecifika temperaturprofiler per timme eller till temperaturprofiler under andra år än 2010 vill vi ge användaren möjlighet att använda dessa data för att generera lastprofiler med ett annat strukturår eller högre precision. Därför ska de generiska profilerna göra det möjligt för användaren att producera egna lastprofiler med hjälp av sina egna data och ett strukturår efter eget val.</p><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_generic">Generiska timprofiler på NUTS 2-nivå i bostadsbranschen - <strong>sanitärt varmvatten</strong></a></li></ul><p> För <strong>varmvattenförsörjning</strong> antar vi att efterfrågan och därmed motsvarande belastningsprofil beror på säsongens, veckovisa och dagliga påverkan.</p><p> Kolumnerna &quot;dagstyp&quot; avser typen av dag i veckan:</p><ul><li> vardagar = typedag 0;</li><li> lördag eller dag före semester = typedag 1;</li><li> söndag eller helgdag = typedag 2</li></ul><p> För att integrera ett säsongsmässigt inflytande i efterfrågeprofilen används kolumnen &quot;säsong&quot;.</p><ul><li> 0 = sommar (15/05 - 14/09)</li><li> 1 = Vinter (1/11 - 20/3)</li><li> 2 = Övergång (21/3 - 14/5 &amp; 15/9 - 31/10)</li></ul><p> Årslånga profiler för varmvatten kan genereras från de generiska profilerna som tillhandahålls här enligt följande steg:</p><ol><li> bestämma strukturåret för vilket profilerna genereras</li><li> beställa typedag / säsongstubbar enligt det valda året</li><li> fördela respektive belastningsvärde för typedag / säsongstupel till varje timme - skala den totala summan av den årliga årslånga profilen (dvs. integralen av profilen) enligt den årliga totala efterfrågan</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_generic">Generiska timprofiler på NUTS 2-nivå i bostadsområdet - <strong>efterfrågan på uppvärmning av rum</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_generic">Generiska timprofiler på NUTS 2-nivå i bostadsområdet - <strong>rymdkylning</strong></a></li></ul><p> För <strong>uppvärmning och kylning</strong> antar vi att efterfrågan inte beror på dagstypen utan bara på timmen på dagen och utetemperaturen under respektive timme (av denna anledning är kolumnerna &quot;typ dag&quot; och &quot;säsong&quot; inte relevant för värme- och kylprofiler).</p><p> Årslånga profiler kan genereras från de generiska profilerna som finns i detta arkiv genom att följa följande steg:</p><ol><li> bestämma strukturåret för vilket profilerna genereras</li><li> välja rätt kombination av timme på dagen, temperatur och efterfrågan från den generiska profilen för varje timme på året för att få en årslång, enhetlös profil</li><li> skalning av den totala summan av den årliga årslånga profilen (dvs. integralen av profilen) enligt den årliga totala efterfrågan</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="tertiary-profiles---generic" href="#tertiary-profiles---generic"><i class="fa fa-link"></i></a> Tertiära profiler - Generiska</h4><p> Tertiär sektorprofil består av efterfrågan från flera undersektorer. Konfigurationen är olika för varje land. För respektive delsektorer per land hänvisar vi till hotmaps WP2-rapporten, avsnitt 2.7.3 (https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised -final_.pdf).</p><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_generic">Generiska timprofiler på NUTS 2-nivå inom tertiär sektor - <strong>sanitärt varmvattenbehov</strong></a></li></ul><p> För <strong>efterfrågan på varmvatten</strong> antar vi att efterfrågan är oberoende av utomhustemperaturen, men beror på typen av dag i en vecka och timmen på dagen. Kolumnen &quot;dagstyp&quot; hänvisar till typen av dag i veckan:</p><ul><li> vardagar = typedag 0;</li><li> lördag eller dag före semester = typedag 1;</li><li> söndag eller helgdag = typedag 2 Dagens timme varierar från 1 (första timmen) till 24 (sista timmen)</li></ul><p> Årslånga profiler kan genereras från de generiska profilerna som tillhandahålls här enligt följande steg:</p><ol><li> bestämma strukturåret för vilket profilerna genereras</li><li> ordning av typsnittet enligt det valda året</li><li> fördela respektive belastningsvärde för typdagarna till varje timme</li><li> skalning av den totala summan av den årliga årslånga profilen (dvs. integralen av profilen) enligt den årliga totala efterfrågan</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_generic">Generiska timprofiler på NUTS 2-nivå i tertiär sektor - <strong>behov av rymdvärme</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_generic">Generiska timprofiler på NUTS 2-nivå i tertiär sektor - <strong>efterfrågan på rymdkylning</strong></a></li></ul><p> För <strong>uppvärmning och kylning i tertiärsektorn</strong> tillhandahöll vi en årslång profil för året 2010. Vi vill dock ge användaren möjlighet att använda ett år efter eget val. Dessutom, om användare har tillgång till platsspecifika timprofiler per timme, vill vi ge användaren möjlighet att använda dessa data för att generera belastningsprofiler med högre precision. Därför ska de generiska profilerna göra det möjligt för användaren att producera egna lastprofiler med hjälp av sina egna data och ett strukturår efter eget val.</p><p> Vi antar att efterfrågan på uppvärmning och kylning i den tertiära sektorn beror på typ av dag, timmen på dagen och utetemperaturen under respektive timme.</p><p> Profilerna som tillhandahålls här är enhetlösa eftersom de måste skalas under genereringen av årslånga profiler. För de generiska profilerna för uppvärmning och kylning drivs de av skillnaderna mellan timmar och temperaturnivåer. Eftersom tertiärsektorn drivs av en veckorytm beror dessutom profilerna för uppvärmning och kylning i tertiärsektorn också på dagstyp. Kolumnen &quot;dagstyp&quot; hänvisar till typen av dag i veckan:</p><ul><li> vardagar = typedag 0;</li><li> lördag eller dag före semester = typedag 1;</li><li> söndag eller helgdag = typedag 2</li></ul><p> Årslånga profiler kan genereras från de generiska profilerna för tertiär uppvärmning och kylning som tillhandahålls i detta arkiv enligt följande steg:</p><ol><li> bestämma strukturåret för vilket profilerna genereras</li><li> välja rätt kombination av dagstyp, timme på dagen, temperatur och efterfrågan från den generiska profilen för varje timme på året för att få en årslång, enhetlös profil</li><li> skalning av den totala summan av den årliga årslånga profilen (dvs. integralen av profilen) enligt den årliga totala efterfrågan</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="industry-profiles---generic" href="#industry-profiles---generic"><i class="fa fa-link"></i></a> Branschprofiler - Generisk</h4><p> För <strong>industrilastprofilerna</strong> tillhandahöll vi en årslång profil för år 2018 (där typ av dagar ställs in i ordning i år). Vi vill dock ge användaren möjlighet att använda ett strukturår efter eget val. Med strukturår avses i detta sammanhang dagordningen under året. Kolumnerna &quot;dagstyp&quot; avser typen av dag i veckan:</p><ul><li> vardagar = typedag 0;</li><li> lördag eller dag före semester = typedag 1;</li><li> söndag eller helgdag = typedag 2</li></ul><p> Kolumnen ”månad” hänvisar till årets månad. 1 = januari, 2 = februari etc. Årslånga profiler kan genereras från de generiska profilerna som tillhandahålls här enligt följande steg:</p><ol><li> bestämma strukturåret för vilket profilerna genereras</li><li> beställa typdag för varje månad enligt det valda året</li><li> fördela respektive belastningsvärde för typedag / månadstupel till varje timme</li><li> skalning av den totala summan av den årliga årslånga profilen (dvs. integralen av profilen) enligt den årliga totala efterfrågan</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_generic">Generiska timprofiler för värmebehov på NUTS 0-nivå i <strong>pappersindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_generic">Generiska timprofiler för värmebehov på NUTS 0-nivå inom <strong>järn- och stålindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_generic">Generiska timprofiler för värmebehov på NUTS 0-nivå i <strong>livsmedels- och tobaksindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_generic">Generiska timprofiler för värmebehov på NUTS 0-nivå i den <strong>icke-metalliska mineralindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_generic">Generiska timprofiler för värmebehov på NUTS 0-nivå i <strong>kemikalie- och petrokemikalieindustrin</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="hourly-heat-load-profiles---year-specific-profiles" href="#hourly-heat-load-profiles---year-specific-profiles"><i class="fa fa-link"></i></a> Värmebelastningsprofiler per timme - Årsspecifika profiler</h3><p> De årsspecifika (årslånga) profilerna som tillhandahålls här genereras på basis av syntetiska timprofiler för typiska dagar. I detta sammanhang betonar vi att profiler inte mäts utan modelleras med beaktande av olika faktorer beroende på profiltyp:</p><ul><li> För industriprofiler, bland annat skiftarbete, beaktades historisk produktion per månad / vardag.</li><li> För högskole- och bostadsprofiler beror profilerna på veckodagstypen (dvs. vardag, lördag, söndag / helgdag), dygnets timme och vid uppvärmning och kylning vid utetemperatur.</li></ul><p> Med hjälp av dagarnas struktur per år samlas profilerna till en årslång efterfrågan.<br/> Alla profiler som tillhandahålls här är enhetslösa och normaliserade till 1 000 000. För att en profil ska den skalas enligt den årliga efterfrågan i respektive region (dvs. så att profilen integreras lika med den årliga efterfrågan per region).</p><p> För detaljerade förklaringar och en grafisk illustration av datasetet, se <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Hotmaps WP2-rapporten</a> (avsnitt 2.7).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="residential-profiles---year-specific" href="#residential-profiles---year-specific"><i class="fa fa-link"></i></a> Bostadsprofiler - årsspecifikt</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_yearlong_2010">Timprofil på NUTS 2-nivå i bostadsområdet år 2010 för <strong>sanitärt varmvatten</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_yearlong_2010">Timprofil på NUTS 2-nivå i bostadsbranschen år 2010 för <strong>rymdvärme</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_and_heating_yearlong_2010">Timprofil på NUTS 2-nivå i bostadsområdet år 2010 för <strong>rymdvärme och sanitärt varmvatten</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_yearlong_2010">Timprofil på NUTS 2-nivå i bostadsområdet år 2010 för ** rymdkylning **</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="tertiary-profiles---year-specific" href="#tertiary-profiles---year-specific"><i class="fa fa-link"></i></a> Tertiära profiler - Årsspecifikt</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_yearlong_2010">Timprofil på NUTS 2-nivå i tertiärsektorn år 2010 för <strong>sanitärt varmvatten</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_yearlong_2010">Timprofil på NUTS 2-nivå i tertiärsektorn 2010 för <strong>rymdvärme</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile_tertiary_shw_and_heating_yearlong_2010">Timprofil på NUTS 2-nivå i tertiärsektorn år 2010 för <strong>rymdvärme och sanitärt varmvatten</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_yearlong_2010">Timprofil på NUTS 2-nivå i tertiärsektorn 2010 för <strong>rymdkylning</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="industry-profiles---year-specific" href="#industry-profiles---year-specific"><i class="fa fa-link"></i></a> Branschprofiler - Årsspecifikt</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_yearlong_2018">Timprofiler för värmebehov på NUTS 0-nivå år 2018 i <strong>pappersindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_yearlong_2018">Timprofiler för värmebehov på NUTS 0-nivå år 2018 inom <strong>järn- och stålindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_yearlong_2018">Timprofiler för värmebehov på NUTS 0-nivå år 2018 inom <strong>livsmedels- och tobaksindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_yearlong_2018">Timprofiler för värmebehov på NUTS 0-nivå år 2018 inom den <strong>icke-metalliska mineralindustrin</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_yearlong_2018">Timprofiler för värmebehov på NUTS 0-nivå år 2018 inom <strong>kemikalie- och petrokemikalieindustrin</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity-load-profiles" href="#electricity-load-profiles"><i class="fa fa-link"></i></a> Elbelastningsprofiler</h3><ul><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_generation_yearly">Årlig elproduktionsmix på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_emissions_hourly">Genomsnittlig CO2-utsläppsfaktor per timme på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_prices_hourly">Elpriser per timme år 2015 på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_demand_yearlong_2014_2015_2016_2017">Elbehov per timme under åren 2014 till 2017 på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_residual_load_electricity_yearlong_2014_2015_2016_2017">Restelektricitet på NUTS 0-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_wind_on__wind_off__solar_yearlong_2014_2015_2016_2017">Elförsörjning från vind på land, vind till havs och solceller under åren 2014 till 2017 på NUTS 0-nivå</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="temperature-profiles" href="#temperature-profiles"><i class="fa fa-link"></i></a> Temperaturprofiler</h3><ul><li> <a href="https://gitlab.com/hotmaps/hotmaps_task_2.7_temperature_profile_daily_avg_household_yearlong_2010">Daglig medeltemperatur för året 2010 på NUTS 2-nivå - <strong>Bostadsplatser</strong></a></li><li> <a href="https://gitlab.com/hotmaps/temperature_profile_daily_avg_industry_yearlong_2010">Daglig medeltemperatur för året 2010 på NUTS 2-nivå - <strong>Industriområden</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="transport" href="#transport"><i class="fa fa-link"></i></a> Transport</h2><ul><li> <a href="https://gitlab.com/hotmaps/transport/nuts0">Fordonslager och projektioner på NUTS 0-nivå</a><ul><li> Fordonslager och projektioner</li><li> Elbehov för alla transportsätt (elektrifierad transport)</li></ul></li><li> <a href="https://gitlab.com/hotmaps/transport/nuts2">Fordonslager på NUTS 2-nivå</a></li><li> <a href="https://gitlab.com/hotmaps/transport/city">Fordonslager på stadsnivå</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="data-sets-for-the-operation-of-the-hotmaps-toolbox" href="#data-sets-for-the-operation-of-the-hotmaps-toolbox"><i class="fa fa-link"></i></a> Datauppsättningar för användning av Hotmaps-verktygslådan</h2><ul><li> <a href="https://gitlab.com/hotmaps/nuts_id_number">Raster för querry på NUTS ID</a></li><li> <a href="https://gitlab.com/hotmaps/HotmapsLAU">Hotmaps Lokala administrativa gränser</a></li><li> <a href="https://gitlab.com/hotmaps/NUTS">Hotmaps NUTS-gränser</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referenser</h2><p> [1] Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Müller (e-think), Michael Hartner (TUW) , Tobias Fleiter, Anna ‐ Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Recenserad av Lukas Kranzl, Sara Fritz (TUW); <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Online-åtkomst</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hur man citerar</h2><p> Mostafa Fallahnejad, i Hotmaps-Wiki, Hotmaps-data-repository-structure (maj 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Författare och granskare</h2><p> Denna sida skrevs av <strong>Mostafa Fallahnejad</strong> ( <a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a> ).</p><p> ☑ Den här sidan granskades av <strong>Marcus Hummel</strong> ( <a href="https://e-think.ac.at/">e-think</a> )</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Copyright © 2016-2019: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 internationell licens</p><p> Detta arbete är licensierat under en Creative Commons CC BY 4.0 International License.</p><p> SPDX-licensidentifierare: CC-BY-4.0</p><p> Licenstext: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Bekräftelse</h2><p> Vi vill förmedla vår djupaste uppskattning till Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (bidragsavtal nummer 723677), som gav finansieringen för att genomföra den nuvarande utredningen.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Hotmaps-open-data-repositories) (original) [Bulgarian](../bg/Hotmaps-open-data-repositories)<sup>\*</sup> [Czech](../cs/Hotmaps-open-data-repositories)<sup>\*</sup> [Danish](../da/Hotmaps-open-data-repositories)<sup>\*</sup> [German](../de/Hotmaps-open-data-repositories)<sup>\*</sup> [Greek](../el/Hotmaps-open-data-repositories)<sup>\*</sup> [Spanish](../es/Hotmaps-open-data-repositories)<sup>\*</sup> [Estonian](../et/Hotmaps-open-data-repositories)<sup>\*</sup> [Finnish](../fi/Hotmaps-open-data-repositories)<sup>\*</sup> [French](../fr/Hotmaps-open-data-repositories)<sup>\*</sup> [Irish](../ga/Hotmaps-open-data-repositories)<sup>\*</sup> [Croatian](../hr/Hotmaps-open-data-repositories)<sup>\*</sup> [Hungarian](../hu/Hotmaps-open-data-repositories)<sup>\*</sup> [Italian](../it/Hotmaps-open-data-repositories)<sup>\*</sup> [Lithuanian](../lt/Hotmaps-open-data-repositories)<sup>\*</sup> [Latvian](../lv/Hotmaps-open-data-repositories)<sup>\*</sup> [Maltese](../mt/Hotmaps-open-data-repositories)<sup>\*</sup> [Dutch](../nl/Hotmaps-open-data-repositories)<sup>\*</sup> [Polish](../pl/Hotmaps-open-data-repositories)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Hotmaps-open-data-repositories)<sup>\*</sup> [Romanian](../ro/Hotmaps-open-data-repositories)<sup>\*</sup> [Slovak](../sk/Hotmaps-open-data-repositories)<sup>\*</sup> [Slovenian](../sl/Hotmaps-open-data-repositories)<sup>\*</sup>  

<sup>\*</sup> machine translated
