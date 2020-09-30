<h1><a class="anchor" id="hotmaps-open-data-repositories" href="#hotmaps-open-data-repositories"><i class="fa fa-link"></i></a>Hotmaps åbner datalagre</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Indholdsfortegnelse</h2><ul><li> <a href="#introduction">Introduktion</a></li><li> <a href="#building-stock">Bygningsmateriale</a><ul><li> <a href="#building-stock_eu-building-stock">EU-bygningsmasse</a></li><li> <a href="#building-stock_heating-and-cooling-demand-density-map">Kort over tæthed for opvarmning og køling</a></li><li> <a href="#building-stock_gross-floor-area-density-map">Kort over bruttoarealtæthed</a></li><li> <a href="#building-stock_gross-volume-density-map">Kort over bruttovolumendensitet</a></li><li> <a href="#building-stock_construction-periods">Byggeperioder</a></li></ul></li><li> <a href="#population">Befolkning</a></li><li> <a href="#industry">Industri</a></li><li> <a href="#climate">Klima</a></li><li> <a href="#renewable-energy-source-potential">Vedvarende energikildepotentiale</a></li><li> <a href="#scenario-data">Scenariedata</a></li><li> <a href="#technology-data">Teknologidata</a></li><li> <a href="#profiles">Profiler</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles">Timevarmeprofiler - Generiske profiler</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_residential-profiles-generic">Boligprofiler - Generisk</a></li><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_tertiary-profiles-generic">Tertiære profiler - Generisk</a></li><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_industry-profiles-generic">Industriprofiler - Generisk</a></li></ul></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles">Timevarmeprofiler - Årspecifikke profiler</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_residential-profiles-year-specific">Boligprofiler - Årsspecifik</a></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_tertiary-profiles-year-specific">Tertiære profiler - Årsspecifik</a></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_industry-profiles-year-specific">Industriprofiler - Årsspecifik</a></li></ul></li><li> <a href="#profiles_electricity-load-profiles">Elektricitetsbelastningsprofiler</a></li><li> <a href="#profiles_temperature-profiles">Temperaturprofiler</a></li></ul></li><li> <a href="#transport">Transportere</a></li><li> <a href="#data-sets-for-the-operation-of-the-hotmaps-toolbox">Datasæt til betjening af Hotmaps-værktøjskassen</a></li><li> <a href="#references">Referencer</a></li><li> <a href="#how-to-cite">Hvordan man citerer</a></li><li> <a href="#authors-and-reviewers">Forfattere og korrekturlæsere</a></li><li> <a href="#license">Licens</a></li><li> <a href="#acknowledgement">Anerkendelse</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introduktion</h2><p> Inden for rammerne af Hotmaps-projektet er data indsamlet på forskellige niveauer (nationalt, regionalt og lokalt niveau). Disse data er genereret for fire forskellige sektorer: boliger (enfamiliehuse, flerfamiliehuse og flerfamiliehuse), service (kontorer, handel, uddannelse, sundhed, hoteller og restauranter og andre ikke-beboelsesejendomme), industri (jern og stål, ikke-jernholdige metaller, papir og trykning, ikke-metalliske mineraler, kemisk industri, mad, drikke og tobak, ingeniørarbejde og andre ikke klassificerede) og transport (passagertransport - offentlig, privat, jernbane- og godstransport - tunge varer og lette erhvervskøretøjer).</p><p> Alle de ovennævnte datasæt er gemt i Hotmaps-datalagre på GitLab og kan tilgås og downloades derfra. Hotmaps-datalagre er omfattende og består af mere end 70 lagre. For at give et bedre overblik over alle Hotmaps-arkiver klyngede vi dem her i forskellige klasser og leverede den direkte link til dem. For detaljerede forklaringer om dataindsamling, metoder, referencer, antagelser og begrænsninger for Hotmaps-datasæt henvises til denne <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">rapport</a> [1].</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="building-stock" href="#building-stock"><i class="fa fa-link"></i></a> Bygningsmateriale</h2><h3><a class="anchor" id="eu-building-stock" href="#eu-building-stock"><i class="fa fa-link"></i></a> EU-bygningsmasse</h3><ul><li> <a href="https://gitlab.com/hotmaps/building-stock">Bygningsmateriale på NUTS 0-niveau - Boliger og servicesektorer</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="heating-and-cooling-demand-density-map" href="#heating-and-cooling-demand-density-map"><i class="fa fa-link"></i></a> Kort over tæthed for opvarmning og køling</h3><ul><li> <a href="https://gitlab.com/hotmaps/heat/heat_res_curr_density">Endelig energiforbrugstæthed til rumopvarmning og varmt vand til <strong>boliger</strong> - <strong>Boliger</strong></a></li><li> <a href="https://gitlab.com/hotmaps/heat/heat_nonres_curr_density">Endelig energibehovstæthed til rumopvarmning og varmt vand <strong>til boliger</strong> - <strong>Ikke-bolig</strong></a></li><li> <a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">Endelig energibehovstæthed til rumopvarmning og varmt vand til boliger - I <strong>alt</strong></a></li><li> <a href="https://gitlab.com/hotmaps/regional_demand">Nyttigt energibehov til rumopvarmning og varmt brugsvand på forskellige NUTS-niveauer</a></li><li> <a href="https://gitlab.com/hotmaps/space_heating_cooling_dhw_demand">Nyttigt energibehov og endeligt energiforbrug til rumopvarmning, rumkøling og varmt brugsvand på NUTS0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/heat/cool_tot_curr_density">Rumkøling har brug for tæthedskort</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="gross-floor-area-density-map" href="#gross-floor-area-density-map"><i class="fa fa-link"></i></a> Kort over bruttoarealtæthed</h3><ul><li> <a href="https://gitlab.com/hotmaps/gfa_res_curr_density">Bygningskort for brutto gulvareal - <strong>Bolig</strong></a></li><li> <a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">Bygningskort for brutto gulvfladeareal - <strong>Ikke-bolig</strong></a></li><li> <a href="https://gitlab.com/hotmaps/gfa_tot_curr_density">Bygningskort for brutto gulvfladeareal - I <strong>alt</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="gross-volume-density-map" href="#gross-volume-density-map"><i class="fa fa-link"></i></a> Kort over bruttovolumendensitet</h3><ul><li> <a href="https://gitlab.com/hotmaps/vol_res_curr_density">Kort over opvarmning af bruttovolumen for opvarmet bygning - <strong>Boliger</strong></a></li><li> <a href="https://gitlab.com/hotmaps/vol_nonres_curr_density">Kort over opvarmning af bruttovolumetæthed for bygninger - <strong>Ikke-bolig</strong></a></li><li> <a href="https://gitlab.com/hotmaps/vol_tot_curr_density">Kort over opvarmet bygnings bruttovolumen - I <strong>alt</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="construction-periods" href="#construction-periods"><i class="fa fa-link"></i></a> Byggeperioder</h3><p> <strong>Andel af bruttoareal i anlægsperioder:</strong></p><ul><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_1975_100_share">indtil 1975</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_1990_100_share">fra 1975 - til 1990</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_2000_100_share">fra 1990 - til 2000</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_2014_100_share">fra 2000 - til 2014</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> Befolkning</h2><ul><li> <a href="https://gitlab.com/hotmaps/pop_tot_curr_density">Befolkningsfordeling i EU28 på hektar (ha) niveau</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Industri</h2><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">Georeferencerede energiintensive industrianlæg</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_industryBenchmarks">Benchmark-data om varme- og kølebehov og overskydende varmepotentialer i industrielle processer</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Klima</h2><ul><li> <a href="https://gitlab.com/hotmaps/climate/climate_humidity">Årlig gennemsnitlig luftfugtighed på global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_land_surface_temperature">Årlig gennemsnitlig jordoverfladetemperatur i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_wind_speed">Årlig gennemsnitlig vindhastighed på verdensplan</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_precipitation">Månedlig gennemsnitlig nedbør på global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_solar_radiation">Månedlig solstråling på optimalt skrå overflader i global skala</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_heating_cooling_degreeday">Gennemsnitlig opvarmningsgrad (HDD) og afkølingsgrad (CDD) på NUTS 3-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/climate/HDD_ha_curr">Varmegradage (HDD) for referenceperioden 2002-2012 på hektar niveau</a></li><li> <a href="https://gitlab.com/hotmaps/climate/CDD_ha_curr">Afkølingsgrad dage (CDD) for referenceperioden 1999-2014 på hektar niveau</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="renewable-energy-source-potential" href="#renewable-energy-source-potential"><i class="fa fa-link"></i></a> Vedvarende energikildepotentiale</h2><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Lavt potentiale for geotermisk energi - Baseret på ledningsevne, jordtemperatur og årstid - Teoretisk</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_shallowgeothermal">Lavt potentiale for geotermisk energi - Fra EF-samfinansieret projekt ThermoMap</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_open_field">Solpotentiale - Gennemsnitligt solvarmepotentiale ved hjælp af solfanger med åben mark</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_rooftop">Solpotentiale - Gennemsnitligt solvarmepotentiale ved hjælp af tagmonterede solvarmesamlere</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solar">Solpotentiale - Årlig global solstråling på globalt skrå overflader ved at overveje bygningens fodaftryk</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_wind">Vindpotentiale - Samlet energipotentiale på NUTS 3-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_municipal_solid_waste">Kommunalt potentiale for fast affaldsenergi</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_forest">Biomasse energipotentiale - skovbiomassepotentiale (raster)</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_biomass">Biomasse energipotentiale - Landbrugsrester, husdyrspildevand og skovbrugsrester</a></li><li> <a href="https://gitlab.com/hotmaps/potential/WWTP">Spildevandsbehandlingsanlægs energipotentiale</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="scenario-data" href="#scenario-data"><i class="fa fa-link"></i></a> Scenariedata</h2><ul><li> <a href="https://gitlab.com/hotmaps/scen_current_industry_demand">Energibehov i <strong>industrien</strong> indtil år 2050 - <strong>Nuværende scenarie</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_industry_demand">Energibehov i <strong>industrien</strong> indtil år 2050 - <strong>Ambitiøst scenarie</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_current_building_demand">Energibehov i <strong>bygninger</strong> indtil år 2050 - <strong>Nuværende scenarie</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_building_demand">Energibehov i <strong>bygninger</strong> indtil år 2050 - <strong>Ambitiøst scenarie</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_CO2">Gennemsnitlige CO2-emissionsfaktorer for elproduktion og fjernvarmeanlæg på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_generation_shares">Produktionsandele (nuklear, fossil, vedvarende) til elektricitet og fjernvarme på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_efficiency_total">Samlet konverteringseffektivitet for el og fjernvarme på NUTS 0-niveau</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="technology-data" href="#technology-data"><i class="fa fa-link"></i></a> Teknologidata</h2><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_Lifetime">Industriel dampgenereringsteknologi - Lifetime</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_CAPEX">Industriel dampgenereringsteknologi - Kapitaludgifter (CAPEX)</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_OPEX">Teknologier til fremstilling af industriel damp - Driftsudgifter (OPEX)</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_ThermalEfficiency">Industriel dampgenereringsteknologi - Termisk effektivitet</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_PowerToHeatRatio">Industriel dampgenereringsteknologi - Power to Heat Ratio</a></li><li> <a href="https://gitlab.com/hotmaps/heating_technologies">Opvarmningsteknologi ark</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="profiles" href="#profiles"><i class="fa fa-link"></i></a> Profiler</h2><h3><a class="anchor" id="hourly-heat-load-profiles---generic-profiles" href="#hourly-heat-load-profiles---generic-profiles"><i class="fa fa-link"></i></a> Timeproduktion af varmebelastning - Generiske profiler</h3><p> <strong>Opret din egen profil:</strong></p><p> Generiske filer skal gøre det muligt for brugeren at fremstille egne belastningsprofiler ved hjælp af sine egne data og et strukturår efter eget valg. For de industrielle belastningsprofiler leverede vi en årslang profil for året 2018 (hvor typedagene er angivet i rækkefølgen af dette år). For tertiære og boligbelastningsprofiler leverede vi en årslang profil for året 2010. Vi ønsker dog at give brugeren mulighed for at bruge et strukturår efter eget valg (Strukturår betyder i denne sammenhæng rækkefølgen af dage i i løbet af året).</p><p> De her viste profiler er enhedsløse, da de skaleres under genereringen af årslange profiler.</p><p> Der henvises til de enkelte profiler i denne wiki eller til de respektive datasætopbevaringssteder for mere information om generering af profiler fra de generiske profiler.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="residential-profiles---generic" href="#residential-profiles---generic"><i class="fa fa-link"></i></a> Boligprofiler - Generisk</h4><p> Til opvarmning, køling og varmt vand leverede vi en årslang profil for året 2010. Men hvis brugerne har adgang til stedsspecifikke timeprofiler i timen eller til temperaturprofiler i andre år end 2010, vil vi give brugeren mulighed for at Brug disse data til at generere belastningsprofiler med et andet strukturår eller højere præcision. Derfor skal de generiske profiler gøre det muligt for brugeren at producere egne belastningsprofiler ved hjælp af sine egne data og et strukturår efter eget valg.</p><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_generic">Generiske timeprofiler på NUTS 2-niveau i boligsektoren - <strong>sanitært varmt vand</strong></a></li></ul><p> Ved <strong>levering af varmt vand</strong> antager vi, at efterspørgsel og dermed den tilsvarende belastningsprofil afhænger af sæsonbestemt, ugentlig og daglig påvirkning.</p><p> Kolonnerne &quot;dagtype&quot; henviser til typen af dag i ugen:</p><ul><li> hverdage = typedag 0;</li><li> lørdag eller dag før en ferie = typedag 1;</li><li> søndag eller ferie = typedag 2</li></ul><p> For at integrere en sæsonbestemt indflydelse i efterspørgselsprofilen bruges kolonnen &quot;sæson&quot;.</p><ul><li> 0 = Sommer (15/05 - 14/09)</li><li> 1 = Vinter (1/11 - 20/3)</li><li> 2 = Overgang (21/3 - 14/5 &amp; 15/9 - 31/10)</li></ul><p> Årslange profiler for varmt vand kan genereres ud fra de generiske profiler, der er angivet her ved hjælp af følgende trin:</p><ol><li> bestemmelse af det strukturår, som profilerne genereres for</li><li> bestilling af typedag / sæson-tuples i henhold til det valgte år</li><li> tildele den respektive belastningsværdi for typedag / sæson tuple til hver time - skalering af den samlede sum af den årlige årslange profil (dvs. integralen af profilen) i henhold til den årlige samlede efterspørgsel</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_generic">Generiske timeprofiler på NUTS 2-niveau i boligsektoren - <strong>behov for rumopvarmning</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_generic">Generiske timeprofiler på NUTS 2-niveau i boligsektoren - <strong>rumkøling</strong></a></li></ul><p> Ved <strong>opvarmning og afkøling</strong> antager vi, at efterspørgslen ikke afhænger af dagtypen, men kun af selve timen på dagen og udetemperaturen i den respektive time (af denne grund er kolonnerne &quot;type dag&quot; og &quot;sæson&quot; ikke relevant for varme- og køleprofiler).</p><p> Årslange profiler kan genereres ud fra de generiske profiler, der findes i dette arkiv ved at følge følgende trin:</p><ol><li> bestemmelse af det strukturår, som profilerne genereres for</li><li> vælge den korrekte kombination af timen på dagen, temperaturen og efterspørgslen fra den generiske profil for hver time i året for at få en årslang, enhedsløs profil</li><li> skalering af den samlede sum af den årlige årslange profil (dvs. integralen af profilen) i henhold til den årlige samlede efterspørgsel</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="tertiary-profiles---generic" href="#tertiary-profiles---generic"><i class="fa fa-link"></i></a> Tertiære profiler - Generisk</h4><p> Den tertiære sektorprofil består af efterspørgsel fra flere undersektorer. Konfigurationen er forskellig for hvert land. For de respektive delsektoraktier pr. Land henviser vi til hotmaps WP2-rapporten, afsnit 2.7.3 (https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised -final_.pdf).</p><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_generic">Generiske timeprofiler på NUTS 2-niveau i tertiær sektor - <strong>sanitær efterspørgsel efter varmt vand</strong></a></li></ul><p> Ved <strong>varmt vandbehov</strong> antager vi, at efterspørgslen er uafhængig af udetemperaturen, men afhænger af dagtypen i en uge og timen på dagen. Kolonnen &quot;dagtype&quot; henviser til typen af dag i ugen:</p><ul><li> hverdage = typedag 0;</li><li> lørdag eller dag før en ferie = typedag 1;</li><li> søndag eller helligdag = typedag 2 Dages time spænder fra 1 (første time) til 24 (sidste time)</li></ul><p> Årslange profiler kan genereres ud fra de generiske profiler, der er angivet her ved hjælp af følgende trin:</p><ol><li> bestemmelse af det strukturår, som profilerne genereres for</li><li> bestilling af skrivedag i henhold til det valgte år</li><li> tildele den respektive belastningsværdi for typedagene til hver time</li><li> skalering af den samlede sum af den årlige årslange profil (dvs. integralen af profilen) i henhold til den årlige samlede efterspørgsel</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_generic">Generiske timeprofiler på NUTS 2-niveau i tertiær sektor - <strong>behov for rumopvarmning</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_generic">Generiske timeprofiler på NUTS 2-niveau i tertiær sektor - <strong>efterspørgsel efter rumkøling</strong></a></li></ul><p> Til <strong>opvarmning og køling i tertiærsektoren</strong> leverede vi en årslang profil for året 2010. Vi ønsker dog at give brugeren mulighed for at bruge et år efter eget valg. Derudover, hvis brugere har adgang til stedsspecifikke timeprofiler i timen, vil vi give brugeren mulighed for at bruge disse data til at generere belastningsprofiler med højere præcision. Derfor skal de generiske profiler gøre det muligt for brugeren at producere egne belastningsprofiler ved hjælp af sine egne data og et strukturår efter eget valg.</p><p> Vi antager, at efterspørgslen efter opvarmning og køling i den tertiære sektor afhænger af dagtypen, selve timen på dagen og udetemperaturen i den respektive time.</p><p> Profilerne, der er angivet her, er enhedsløse, da de skal skaleres under genereringen af årslange profiler. For de generiske profiler til opvarmning og køling er de drevet af forskellene mellem timer og temperaturniveauer. Da den tertiære sektor er drevet af en ugentlig rytme, afhænger profilerne til opvarmning og afkøling i den tertiære sektor desuden også af dagtypen. Kolonnen &quot;dagtype&quot; henviser til typen af dag i ugen:</p><ul><li> hverdage = typedag 0;</li><li> lørdag eller dag før en ferie = typedag 1;</li><li> søndag eller ferie = typedag 2</li></ul><p> Årslange profiler kan genereres ud fra de generiske profiler til tertiær opvarmning og køling, der findes i dette lager ved at følge følgende trin:</p><ol><li> bestemmelse af det strukturår, som profilerne genereres for</li><li> vælge den korrekte kombination af dagtype, timen på dagen, temperatur og efterspørgsel fra den generiske profil for hver time af året for at få en årslang, enhedsløs profil</li><li> skalering af den samlede sum af den årlige årslange profil (dvs. integralen af profilen) i henhold til den årlige samlede efterspørgsel</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="industry-profiles---generic" href="#industry-profiles---generic"><i class="fa fa-link"></i></a> Industriprofiler - Generisk</h4><p> For de <strong>industrielle belastningsprofiler</strong> leverede vi en årslang profil for året 2018 (hvor typen af dage er indstillet i rækkefølgen af dette år). Vi ønsker dog at give brugeren mulighed for at bruge et strukturår efter eget valg. Strukturår betyder i denne sammenhæng rækkefølgen af dage i løbet af året. Kolonnerne &quot;dagstype&quot; henviser til typen af dag i ugen:</p><ul><li> hverdage = typedag 0;</li><li> lørdag eller dag før en ferie = typedag 1;</li><li> søndag eller ferie = typedag 2</li></ul><p> Kolonnen &quot;måned&quot; refererer til året i året. 1 = januar, 2 = februar osv. Årslange profiler kan genereres ud fra de generiske profiler, der er angivet her ved hjælp af følgende trin:</p><ol><li> bestemmelse af det strukturår, som profilerne genereres for</li><li> bestilling af typedag for hver måned i henhold til det valgte år</li><li> tildele den respektive belastningsværdi for typedag / måned tuple til hver time</li><li> skalering af den samlede sum af den årlige årslange profil (dvs. integralen af profilen) i henhold til den årlige samlede efterspørgsel</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_generic">Generiske timeprofiler til varmebehov på NUTS 0-niveau i <strong>papirindustrien</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_generic">Generiske timeprofiler til varmebehov på NUTS 0-niveau i <strong>jern- og stålindustrien</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_generic">Generiske timeprofiler til varmebehov på NUTS 0-niveau i <strong>fødevare- og tobaksindustrien</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_generic">Generiske timeprofiler til varmebehov på NUTS 0-niveau i den <strong>ikke-metalliske mineralindustri</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_generic">Generiske timeprofiler til varmebehov på NUTS 0-niveau i <strong>kemikalie- og petrokemikalieindustrien</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="hourly-heat-load-profiles---year-specific-profiles" href="#hourly-heat-load-profiles---year-specific-profiles"><i class="fa fa-link"></i></a> Timevarmeprofiler - Årspecifikke profiler</h3><p> De årspecifikke (årslange) profiler, der er angivet her, genereres på basis af syntetiske timeprofiler i typiske dage. I denne sammenhæng understreger vi, at profiler ikke måles, men modelleres under hensyntagen til forskellige faktorer afhængigt af profiltypen:</p><ul><li> For industriprofiler, blandt andet skiftarbejdsmønstre, blev historisk output pr. Måned / hverdag taget i betragtning.</li><li> For tertiære profiler og boligprofiler afhænger profiler af ugedagstypen (dvs. hverdag, lørdag, søndag / ferie), timen på dagen og i tilfælde af opvarmning og afkøling ved udetemperatur.</li></ul><p> Ved hjælp af strukturen af dagene i et år samles profilerne til en årslang efterspørgselsprofil.<br/> Alle profiler, der er angivet her, er enhedsløse og normaliserede til 1 000 000. For at kunne profilere skal den skaleres i henhold til den årlige efterspørgsel i den respektive region (dvs. således at profilintegralet svarer til det årlige behov pr. Region).</p><p> For detaljerede forklaringer og en grafisk illustration af datasættet se <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Hotmaps WP2-rapporten</a> (afsnit 2.7).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="residential-profiles---year-specific" href="#residential-profiles---year-specific"><i class="fa fa-link"></i></a> Boligprofiler - Årsspecifik</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_yearlong_2010">Timeprofil på NUTS 2-niveau i boligsektoren i 2010 for <strong>sanitært varmt vand</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_yearlong_2010">Timeprofil på NUTS 2-niveau i boligsektoren i 2010 til <strong>rumopvarmning</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_and_heating_yearlong_2010">Timeprofil på NUTS 2-niveau i boligsektoren i 2010 for <strong>rumopvarmning og sanitært varmt vand</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_yearlong_2010">Timeprofil på NUTS 2-niveau i boligsektoren i år 2010 for ** rumkøling **</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="tertiary-profiles---year-specific" href="#tertiary-profiles---year-specific"><i class="fa fa-link"></i></a> Tertiære profiler - Årsspecifik</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_yearlong_2010">Timeprofil på NUTS 2-niveau i tertiærsektoren i år 2010 for <strong>sanitært varmt vand</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_yearlong_2010">Timeprofil på NUTS 2-niveau i tertiærsektoren i år 2010 til <strong>rumopvarmning</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile_tertiary_shw_and_heating_yearlong_2010">Timeprofil på NUTS 2-niveau i tertiærsektoren i 2010 for <strong>rumopvarmning og sanitært varmt vand</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_yearlong_2010">Timeprofil på NUTS 2-niveau i tertiærsektoren i år 2010 til <strong>rumkøling</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="industry-profiles---year-specific" href="#industry-profiles---year-specific"><i class="fa fa-link"></i></a> Industriprofiler - Årsspecifik</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_yearlong_2018">Timeprofiler for varmebehov på NUTS 0-niveau i 2018 i <strong>papirindustrien</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_yearlong_2018">Timeprofiler for varmebehov på NUTS 0-niveau i år 2018 i <strong>jern- og stålindustrien</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_yearlong_2018">Timeprofiler for varmebehov på NUTS 0-niveau i 2018 i <strong>fødevare- og tobaksindustrien</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_yearlong_2018">Timeprofiler for varmebehov på NUTS 0-niveau i 2018 i den <strong>ikke-metalliske mineralindustri</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_yearlong_2018">Timeprofiler for varmebehov på NUTS 0-niveau i 2018 i <strong>kemikalie- og petrokemikalieindustrien</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity-load-profiles" href="#electricity-load-profiles"><i class="fa fa-link"></i></a> Elektricitetsbelastningsprofiler</h3><ul><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_generation_yearly">Årlig elproduktionsmix på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_emissions_hourly">Gennemsnitlig CO2-emissionsfaktor pr. Time på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_prices_hourly">Timepriser på el i året 2015 på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_demand_yearlong_2014_2015_2016_2017">Timeforbrug efter el i årene 2014 til 2017 på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_residual_load_electricity_yearlong_2014_2015_2016_2017">Restelektricitet på NUTS 0-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_wind_on__wind_off__solar_yearlong_2014_2015_2016_2017">Elforsyning fra vind onshore, vind offshore og solceller i årene 2014 til 2017 på NUTS 0 niveau</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="temperature-profiles" href="#temperature-profiles"><i class="fa fa-link"></i></a> Temperaturprofiler</h3><ul><li> <a href="https://gitlab.com/hotmaps/hotmaps_task_2.7_temperature_profile_daily_avg_household_yearlong_2010">Daglig gennemsnitstemperatur for året 2010 på NUTS 2-niveau - <strong>boligområder</strong></a></li><li> <a href="https://gitlab.com/hotmaps/temperature_profile_daily_avg_industry_yearlong_2010">Daglig gennemsnitstemperatur for året 2010 på NUTS 2-niveau - <strong>Industriområder</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="transport" href="#transport"><i class="fa fa-link"></i></a> Transportere</h2><ul><li> <a href="https://gitlab.com/hotmaps/transport/nuts0">Køretøjslager og fremskrivninger på NUTS 0-niveau</a><ul><li> Køretøjslager og fremskrivninger</li><li> Elbehov til alle transportformer (elektrificeret transport)</li></ul></li><li> <a href="https://gitlab.com/hotmaps/transport/nuts2">Køretøjslager på NUTS 2-niveau</a></li><li> <a href="https://gitlab.com/hotmaps/transport/city">Køretøjslager på byniveau</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="data-sets-for-the-operation-of-the-hotmaps-toolbox" href="#data-sets-for-the-operation-of-the-hotmaps-toolbox"><i class="fa fa-link"></i></a> Datasæt til betjening af Hotmaps-værktøjskassen</h2><ul><li> <a href="https://gitlab.com/hotmaps/nuts_id_number">Raster til querry på NUTS ID&#39;er</a></li><li> <a href="https://gitlab.com/hotmaps/HotmapsLAU">Hotmaps Lokale administrative grænser</a></li><li> <a href="https://gitlab.com/hotmaps/NUTS">Hotmaps NUTS-grænser</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referencer</h2><p> [1] Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Müller (e-think), Michael Hartner (TUW) , Tobias Fleiter, Anna ‐ Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Bedømt af Lukas Kranzl, Sara Fritz (TUW); <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Online adgang</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Hvordan man citerer</h2><p> Mostafa Fallahnejad, i Hotmaps-Wiki, Hotmaps-data-repository-structure (Maj 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Forfattere og korrekturlæsere</h2><p> Denne side blev skrevet af <strong>Mostafa Fallahnejad</strong> ( <a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a> ).</p><p> ☑ Denne side blev gennemgået af <strong>Marcus Hummel</strong> ( <a href="https://e-think.ac.at/">e-think</a> )</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licens</h2><p> Ophavsret © 2016-2019: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 International licens</p><p> Dette arbejde er licenseret under en Creative Commons CC BY 4.0 International licens.</p><p> SPDX-licensidentifikator: CC-BY-4.0</p><p> Licens-tekst: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Anerkendelse</h2><p> Vi vil gerne formidle vores dybeste påskønnelse til Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-projektet</a> (tilskudsaftale nummer 723677), som gav finansieringen til at gennemføre den nuværende undersøgelse.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Hotmaps-open-data-repositories) (original) [Bulgarian](../bg/Hotmaps-open-data-repositories)<sup>\*</sup> [Czech](../cs/Hotmaps-open-data-repositories)<sup>\*</sup>  [German](../de/Hotmaps-open-data-repositories)<sup>\*</sup> [Greek](../el/Hotmaps-open-data-repositories)<sup>\*</sup> [Spanish](../es/Hotmaps-open-data-repositories)<sup>\*</sup> [Estonian](../et/Hotmaps-open-data-repositories)<sup>\*</sup> [Finnish](../fi/Hotmaps-open-data-repositories)<sup>\*</sup> [French](../fr/Hotmaps-open-data-repositories)<sup>\*</sup> [Irish](../ga/Hotmaps-open-data-repositories)<sup>\*</sup> [Croatian](../hr/Hotmaps-open-data-repositories)<sup>\*</sup> [Hungarian](../hu/Hotmaps-open-data-repositories)<sup>\*</sup> [Italian](../it/Hotmaps-open-data-repositories)<sup>\*</sup> [Lithuanian](../lt/Hotmaps-open-data-repositories)<sup>\*</sup> [Latvian](../lv/Hotmaps-open-data-repositories)<sup>\*</sup> [Maltese](../mt/Hotmaps-open-data-repositories)<sup>\*</sup> [Dutch](../nl/Hotmaps-open-data-repositories)<sup>\*</sup> [Polish](../pl/Hotmaps-open-data-repositories)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/Hotmaps-open-data-repositories)<sup>\*</sup> [Romanian](../ro/Hotmaps-open-data-repositories)<sup>\*</sup> [Slovak](../sk/Hotmaps-open-data-repositories)<sup>\*</sup> [Slovenian](../sl/Hotmaps-open-data-repositories)<sup>\*</sup> [Swedish](../sv/Hotmaps-open-data-repositories)<sup>\*</sup> 

<sup>\*</sup> machine translated