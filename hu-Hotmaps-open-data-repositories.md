<h1> Tartalomjegyzék </h1><ul><li> <a href="#introduction">Bevezetés</a> </li><li> <a href="#Building-stock">Építési készlet</a> <ul><li> <a href="#EU-building-stock">EU épületállomány</a> </li><li> <a href="#Heating-and-cooling-demand-density-map">Fűtési és hűtési igénysűrűség-térkép</a> </li><li> <a href="#Gross-floor-area-density-map">Bruttó alapterület-sűrűségtérkép</a> </li><li> <a href="#Gross-volume-density-map">Bruttó térfogatsűrűség-térkép</a> </li><li> <a href="#Construction-periods">Építési periódusok</a> </li></ul></li><li> <a href="#Population">Népesség</a> </li><li> <a href="#Industry">Ipar</a> </li><li> <a href="#Climate">Éghajlat</a> </li><li> <a href="#Renewable-energy-source-potential">Megújuló energiaforrás potenciálja</a> </li><li> <a href="#Scenario-data">Forgatókönyv adatai</a> </li><li> <a href="#Technology-data">Technológiai adatok</a> </li><li> <a href="#Profiles">profilok</a> <ul><li> <a href="#Hourly-heat-load-profiles---Generic-profiles">Óránkénti hőterhelési profilok - általános profilok</a> <ul><li> <a href="#Residential-profiles---Generic">Lakossági profilok - Általános</a> </li><li> <a href="#Tertiary-profiles---Generic">Harmadik szintű profilok - általános</a> </li><li> <a href="#Industry-profiles---Generic">Ipari profilok - általános</a> </li></ul></li><li> <a href="#Hourly-heat-load-profiles---Year-specific-profiles">Óránkénti hőterhelési profilok - Éves specifikus profilok</a> <ul><li> <a href="#Residential-profiles---Year-specific">Lakossági profilok - év specifikus</a> </li><li> <a href="#Tertiary-profiles---Year-specific">Felsőfokú profilok - év specifikus</a> </li><li> <a href="#Industry-profiles---Year-specific">Iparági profilok - Éves specifikus</a> </li></ul></li><li> <a href="#Electricity-load-profiles">Villamosenergia-terhelési profilok</a> </li><li> <a href="#Temperature-profiles">Hőmérsékleti profilok</a> </li></ul></li><li> <a href="#Transport">Szállítás</a> </li><li> <a href="#Data-sets-for-the-operation-of-the-Hotmaps-toolbox">Adatkészletek a Hotmaps eszközkészlet működéséhez</a> </li><li> <a href="#References">Irodalom</a> </li><li> <a href="#how-to-cite">Hogyan lehet idézni</a> </li><li> <a href="#authors-and-reviewers">Szerzők és áttekintők</a> </li><li> <a href="#license">Engedély</a> </li><li> <a href="#acknowledgement">Elismerés</a> </li></ul><h1> Bevezetés </h1><p> A Hotmaps projekt keretein belül adatokat gyűjtöttek különböző szinteken (nemzeti, regionális és helyi szinten). Ezeket az adatokat négy különféle ágazatra vonatkozóan állítottuk elő: lakóépületek (családi házak, többlakásos házak és apartmanházak), szolgáltatás (irodák, kereskedelem, oktatás, egészségügy, szállodák és éttermek, valamint egyéb nem lakóépületek), az ipar (vas- és acél, színesfém, papír és nyomtatás, nemfém ásványok, vegyipar, élelmiszer-, ital- és dohányipar, műszaki és más, nem osztályozott termékek, valamint közlekedés (személyszállítás - köz-, magán-, vasúti és teherfuvarozás - nehéz áruk és könnyű haszongépjárművek). </p><p> Az összes fent említett adatkészletet a GitLab Hotmaps adattárában tárolják, és ott hozzáférhetők és letölthetők. A Hotmaps adattárak kiterjedtek és több mint 70 adattárból állnak. Annak érdekében, hogy jobb áttekintést kapjunk az összes Hotmaps-tárhelyről, itt különféle osztályokba csoportosítottuk őket, és közvetlen kapcsolatot biztosítottunk hozzájuk. Az adatgyűjtés, a módszerek, a referenciák, a feltételezések és a Hotmaps adatkészletek korlátozásainak részletes magyarázatát lásd ebben a <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">jelentésben</a> [1]. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Építési készlet </h1><h2> EU épületállomány </h2><ul><li> <a href="https://gitlab.com/hotmaps/building-stock">Épületállomány NUTS 0 szinten - Lakossági és szolgáltató szektor</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Fűtési és hűtési igénysűrűség-térkép </h2><ul><li><p> <a href="https://gitlab.com/hotmaps/heat/heat_res_curr_density">A végső energiaigény sűrűsége a helyiségfűtéshez és a használati melegvízhez - <strong>lakossági</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/heat/heat_nonres_curr_density">A végső energiaigény sűrűsége a helyiségfűtéshez és a használati melegvízhez - <strong>nem lakossági</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">A végső energiaigény sűrűsége a helyiségfűtés és a használati meleg víz számára - <strong>Összesen</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/regional_demand">Hasznos energiaigény a helyiségfűtéshez és a használati melegvízhez különböző NUTS szinteken</a> </p><p> 🔺 <code>The data is coming from ESPON Project. I guess it should be final energy demand instad of useful energy demand.</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/space_heating_cooling_dhw_demand">Hasznos energiaigény és végső energiafogyasztás helyiségfűtéshez, helyiséghűtéshez és használati melegvízhez NUTS0 szinten</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/heat/cool_tot_curr_density">A térhűtéshez szükség van sűrűségtérképre</a> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Bruttó alapterület-sűrűségtérkép </h2><ul><li> <a href="https://gitlab.com/hotmaps/building_footprint_res_curr">Épület bruttó alapterület-sűrűségű térkép - <strong>lakóépület</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/building_footprint_nonres_curr">Épület bruttó alapterület-sűrűségű térkép - <strong>nem lakóépület</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/building_footprint_tot_curr">Az épület bruttó alapterület-sűrűségének térképe - <strong>Összesen</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Bruttó térfogatsűrűség-térkép </h2><ul><li> <a href="https://gitlab.com/hotmaps/vol_res_curr_density">Fűtött épület bruttó térfogatsűrűségi térképe - <strong>Lakossági</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/vol_nonres_curr_density">Fűtött épület bruttó térfogatsűrűségi térképe - <strong>Nem lakóépület</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/vol_tot_curr_density">Fűtött épület bruttó térfogatsűrűségi térképe - <strong>Összesen</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Építési periódusok </h2><ul><li><p> <a href="https://gitlab.com/hotmaps/construction_periods/share_gfa_per_construction_period/tree/master">A bruttó alapterület aránya az építési periódusokban</a> </p><p> This <code>The README file of this repository is incomplete.</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Népesség </h1><ul><li> <a href="https://gitlab.com/hotmaps/pop_tot_curr_density">A népesség eloszlása az EU-28-ban hektár (ha) szinten</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Ipar </h1><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">Georeferenciált energiaigényes ipari helyszínek</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_industryBenchmarks">Összehasonlító adatok a fűtési és hűtési igényekről és az ipari folyamatok túlzott hőpotenciáljáról</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Éghajlat </h1><ul><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_humidity">Éves átlagos páratartalom globális szinten</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_land_surface_temperature">A földterület éves átlagos hőmérséklete globális szinten</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_wind_speed">Éves átlagos szélsebesség globális szinten</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_precipitation">Havi átlagos csapadék globális szinten</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_solar_radiation">Havi napsugárzás az optimális dőlésszögű felületeken globális szinten</a> </p><p> 🔺 A <code>Readme is misleading. in the table within the readme file, it is written annual value. However, in the explanation it is written monthly values!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_heating_cooling_degreeday">Az átlagos fűtési fok napjai (HDD) és a hűtési fok napjai (CDD) a NUTS 3 szintjén</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/HDD_ha_curr">Fűtési fok napjai (HDD) a 2002–2012-es referencia-időszakra hektárszinten</a> </p><p> 🔺 A <code>Reference period in title and in the description within the readme file does not match</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/CDD_ha_curr">Hűtési fokos napok (CDD) az 1999–2014-es referencia-időszakra hektáronként</a> </p><p> 🔺 A <code>Reference period in title and in the description within the readme file does not match</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Megújuló energiaforrás potenciálja </h1><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Sekély geotermikus energiapotenciál - vezetőképesség, talajhőmérséklet és szezonális hossz alapján - elméleti</a> </li><li> <a href="https://gitlab.com/hotmaps/potential/potential_shallowgeothermal">Sekély geotermikus energiapotenciál - az EK által társfinanszírozott ThermoMap projektből</a> </li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_open_field">Napenergia potenciál - Átlagos napenergia hőpotenciál nyílt terepi napkollektor használatával</a> </li></ul><p> 🔺 <code>The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.</code> adatkészlet <code>The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.</code> </p><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_rooftop">Napenergia potenciál - Átlagos napenergia hőpotenciál tetőre szerelt napkollektorokkal</a> </li></ul><p> 🔺 <code>The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.</code> adatkészlet <code>The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.</code> </p><ul><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_solar">Napenergia - éves globális napsugárzás globálisan lejtős felületeken, figyelembe véve az épület lábnyomát</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_wind">Szélpotenciál - A teljes energiapotenciál a NUTS 3 szintjén</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_municipal_solid_waste">A települési szilárd hulladék energiapotenciálja</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_forest">Biomassza energiapotenciálja - erdő biomassza potenciálja (raszteres)</a> </p><p> Read <code>In the readme file, explanation of agricultural residues and livestock effluents are provided; but, no data is available for this two.</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_biomass">Biomassza energiapotenciálja - mezőgazdasági maradványok, állattenyésztés és erdészeti maradványok</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/WWTP">A szennyvíztisztító telepek energiapotenciálja</a> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Forgatókönyv adatai </h1><ul><li> <a href="https://gitlab.com/hotmaps/scen_current_industry_demand">Energiaigény az <strong>iparban</strong> 2050-ig - <strong>Jelenlegi forgatókönyv</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_industry_demand">Energiaigény az <strong>iparban</strong> 2050-ig - <strong>ambiciózus forgatókönyv</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_current_building_demand">Energiaigény az <strong>épületekben</strong> 2050-ig - <strong>Jelenlegi forgatókönyv</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_building_demand">Energiaigény az <strong>épületekben</strong> 2050-ig - <strong>ambiciózus forgatókönyv</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_CO2">Átlagos CO2-kibocsátási tényezők a villamosenergia-termelés és a távfűtési hálózatok számára NUTS 0 szinten</a> </li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_generation_shares">Termelési részesedések (nukleáris, fosszilis, megújuló) a villamos energia és a távfűtés területén NUTS 0 szinten</a> </li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_efficiency_total">A villamos energia és a távhő átalakításának teljes hatékonysága NUTS 0 szinten</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Technológiai adatok </h1><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_Lifetime">Ipari gőzfejlesztési technológiák - Élettartam</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_CAPEX">Ipari gőzfejlesztési technológiák - Tőkeköltségek (CAPEX)</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_OPEX">Ipari gőzfejlesztési technológiák - Működési költségek (OPEX)</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_ThermalEfficiency">Ipari gőzfejlesztési technológiák - Hőhatékonyság</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_PowerToHeatRatio">Ipari gőzfejlesztési technológiák - Teljesítmény és hő arány</a> </li><li> <a href="https://gitlab.com/hotmaps/heating_technologies">Fűtéstechnikai adatlap</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> profilok </h1><h2> Óránkénti hőterhelési profilok - általános profilok </h2><h3> Lakossági profilok - Általános </h3><ul><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_generic">Általános óránkénti profilok a NUTS 2 szintjén a lakóépületben - <strong>egészségügyi melegvíz</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_generic">Általános óránkénti profilok a NUTS 2 szintjén a lakóépületben - <strong>helyiségfűtési igény</strong></a> </p><p> 🔺 <code>The title of the repository does not match with the title of the readme file and is misleading!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_generic">Általános órás profilok NUTS 2 szinten a lakóépületben - <strong>helyhűtés</strong></a> </p></li></ul><h3> Harmadik szintű profilok - általános </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_generic">Általános óránkénti profilok a NUTS 2 szintjén a tercier szektorban - <strong>egészségügyi melegvíz igény</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_generic">Általános óránkénti profilok a NUTS 2 szintjén a tercier szektorban - <strong>helyiségfűtési igény</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_generic">Általános órás profilok NUTS 2 szinten a tercier szektorban - a <strong>helyiség hűtési igénye</strong></a> </li></ul><h3> Ipari profilok - általános </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_generic">A hőszükséglet általános óránkénti profiljai NUTS 0 szinten a <strong>papíriparban</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_generic">A hőszükséglet általános órás profiljai NUTS 0 szinten a <strong>vas- és acéliparban</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_generic">A hőszükséglet általános óránkénti profiljai a NUTS 0 szintjén az <strong>élelmiszer- és dohányiparban</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_generic">Általános órás profilok a hőigényről NUTS 0 szinten a <strong>nemfémes ásványok</strong> iparában</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_generic">Általános órás profilok a hőigényről a NUTS 0 szintjén a <strong>vegyiparban és a petrolkémiai</strong> iparban</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Óránkénti hőterhelési profilok - Éves specifikus profilok </h2><h3> Lakossági profilok - év specifikus </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a háztartási szektorban 2010-ben a <strong>melegvíz szaniter számára</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a lakóépületben 2010-ben a <strong>helyiségfűtéshez</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_and_heating_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a lakóépületben 2010-ben a <strong>helyiségfűtésre és az egészségügyi melegvízre</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a lakóépületben 2010-ben ** helyhűtés **</a> </li></ul><h3> Felsőfokú profilok - év specifikus </h3><ul><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a tercier szektorban 2010-ben az <strong>egészségügyi melegvíz vonatkozásában</strong></a> </p><p> Read <code>In the readme file title, it is written domestic hot water. Since this is for tertiary sector, it should be amended!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a tercier szektorban 2010-ben a <strong>helyiségfűtésre</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile_tertiary_shw_and_heating_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a tercier szektorban 2010-ben a <strong>helyiségfűtéshez és az egészségügyi melegvízhez</strong></a> </p><p> Read <code>In the readme file title, it is written domestic hot water. Since this is for tertiary sector, it should be amended!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_yearlong_2010">Óránkénti profil a NUTS 2 szintjén a tercier szektorban 2010-ben a <strong>helyhűtéshez</strong></a> </p></li></ul><h3> Iparági profilok - Éves specifikus </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_yearlong_2018">Óránkénti hőszükséglet-profilok a NUTS 0 szintjén 2018-ban a <strong>papíriparban</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_yearlong_2018">Óránkénti hőszükséglet-profilok a NUTS 0 szintjén 2018-ban a <strong>vas- és acéliparban</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_yearlong_2018">Az NUTS 0 szintű hőigény óránkénti profiljai 2018-ban az <strong>élelmiszer- és dohányiparban</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_yearlong_2018">Óránkénti hőszükséglet-profilok a NUTS 0 szintjén 2018-ban a <strong>nemfémes ásványok</strong> iparában</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_yearlong_2018">A NUTS 0 szintű hőigény óránkénti profiljai 2018-ban a <strong>vegyiparban és a petrolkémiai</strong> iparban</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Villamosenergia-terhelési profilok </h2><ul><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_generation_yearly">Éves villamosenergia-termelési keverék NUTS 0 szinten</a> </li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_emissions_hourly">Átlagos órás CO2-kibocsátási tényező a NUTS 0 szintjén</a> </li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_prices_hourly">Óránkénti villamosenergia-árak 2015-ben a NUTS 0 szintjén</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_demand_yearlong_2014_2015_2016_2017">Óránkénti villamosenergia-igény 2014-től 2017-ig a NUTS 0 szintjén</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_residual_load_electricity_yearlong_2014_2015_2016_2017">Maradék villamos energia NUTS 0 szinten</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_wind_on__wind_off__solar_yearlong_2014_2015_2016_2017">Villamosenergia-ellátás a szárazföldön, a szélben a tengeren és a szélvédőn keresztül a 2014 és 2017 közötti időszakban a NUTS 0 szintjén</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Hőmérsékleti profilok </h2><ul><li> <a href="https://gitlab.com/hotmaps/hotmaps_task_2.7_temperature_profile_daily_avg_household_yearlong_2010">2010-es napi átlaghőmérséklet a NUTS 2 szintjén - <strong>lakóhelyek</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/temperature_profile_daily_avg_industry_yearlong_2010">2010-es napi átlaghőmérséklet a NUTS 2 szintjén - <strong>ipari</strong> helyszínek</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Szállítás </h1><ul><li><p> <a href="https://gitlab.com/hotmaps/transport/nuts0">Járműállomány és előrejelzések NUTS 0 szinten</a> </p><ul><li> Járműállomány és előrejelzések </li><li> Villamosenergia-igény minden szállítási módhoz (elektromos szállítás) </li></ul></li><li><p> <a href="https://gitlab.com/hotmaps/transport/nuts2">Járműkészlet NUTS 2 szinten</a> </p><p> This <code>The README file of this repository is incomplete.</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/transport/city">Járműkészlet városi szinten</a> </p><p> This <code>The README file of this repository is incomplete.</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Adatkészletek a Hotmaps eszközkészlet működéséhez </h1><ul><li><p> <a href="https://gitlab.com/hotmaps/nuts_id_number">Raszteres kérdés a NUTS-azonosítókon</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/HotmapsLAU">Helyi közigazgatási határok</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/NUTS">Hotmaps NUTS határok</a> </p><p> 🔺 <code>Licens from EC is missing in this repository.</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Irodalom </h1><p> [1] Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Müller (e-gondolom), Michael Hartner (T). , Tobias Fleiter, Anna-Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Lukas Kranzl, Sara Fritz (TUW) áttekintése; <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Online hozzáférés</a> </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Hogyan lehet idézni </h1><p> Mostafa Fallahnejad, a Hotmaps-Wikiben, https://github.com/HotMaps/hotmaps_wiki/wiki/Hotmaps-data-repository-structure (2019. május) </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Szerzők és áttekintők </h1><p> Ezt az oldalt Mostafa Fallahnejad * írta. </p><ul><li> [x] Ezt az oldalt Lukas Kranzl * vizsgálta felül. </li></ul><p> * <a href="https://eeg.tuwien.ac.at/">Energiagazdaságtan Csoport - TU Wien</a> </p><p> Energiarendszerek és Elektromos Meghajtók Intézete </p><p> Gusshausstrasse 27-29 / 370 </p><p> 1040 Wien </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Engedély </h1><p> Szerzői jog © 2016-2019: Mostafa Fallahnejad </p><p> Creative Commons Nevezd meg! 4.0 Nemzetközi licenc </p><p> Ezt a munkát a Creative Commons CC BY 4.0 nemzetközi licenc alapján licencezte. </p><p> SPDX-licenc-azonosító: CC-BY-4.0 </p><p> Licenc-szöveg: https://spdx.org/licenses/CC-BY-4.0.html </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Elismerés </h1><p> Szeretnénk <a href="https://www.hotmaps-project.eu">kifejezni</a> legmélyebb elismerésünket a Horizont 2020 <a href="https://www.hotmaps-project.eu">Hotmaps projekthez</a> (támogatási megállapodás száma: 723677), amely finanszírozást nyújtott a jelen vizsgálat elvégzéséhez. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-Hotmaps-open-data-repositories) (original) [Bulgarian](bg-Hotmaps-open-data-repositories)<sup>\*</sup> [Croatian](hr-Hotmaps-open-data-repositories)<sup>\*</sup> [Czech](cs-Hotmaps-open-data-repositories)<sup>\*</sup> [Danish](da-Hotmaps-open-data-repositories)<sup>\*</sup> [Dutch](nl-Hotmaps-open-data-repositories)<sup>\*</sup> [Estonian](et-Hotmaps-open-data-repositories)<sup>\*</sup> [Finnish](fi-Hotmaps-open-data-repositories)<sup>\*</sup> [French](fr-Hotmaps-open-data-repositories)<sup>\*</sup> [German](de-Hotmaps-open-data-repositories)<sup>\*</sup> [Greek](el-Hotmaps-open-data-repositories)<sup>\*</sup>  [Irish](ga-Hotmaps-open-data-repositories)<sup>\*</sup> [Italian](it-Hotmaps-open-data-repositories)<sup>\*</sup> [Latvian](lv-Hotmaps-open-data-repositories)<sup>\*</sup> [Lithuanian](lt-Hotmaps-open-data-repositories)<sup>\*</sup> [Maltese](mt-Hotmaps-open-data-repositories)<sup>\*</sup> [Polish](pl-Hotmaps-open-data-repositories)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-Hotmaps-open-data-repositories)<sup>\*</sup> [Romanian](ro-Hotmaps-open-data-repositories)<sup>\*</sup> [Slovak](sk-Hotmaps-open-data-repositories)<sup>\*</sup> [Slovenian](sl-Hotmaps-open-data-repositories)<sup>\*</sup> [Spanish](es-Hotmaps-open-data-repositories)<sup>\*</sup> [Swedish](sv-Hotmaps-open-data-repositories)<sup>\*</sup>
<sup>\*</sup>: machine translated