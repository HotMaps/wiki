<h1> Tabla de contenido </h1><ul><li> <a href="#introduction">Introducción</a> </li><li> <a href="#Building-stock">Stock de construcción</a> <ul><li> <a href="#EU-building-stock">Stock de construcción de la UE</a> </li><li> <a href="#Heating-and-cooling-demand-density-map">Mapa de densidad de demanda de calefacción y refrigeración.</a> </li><li> <a href="#Gross-floor-area-density-map">Mapa de densidad de área de piso bruto</a> </li><li> <a href="#Gross-volume-density-map">Mapa de densidad de volumen bruto</a> </li><li> <a href="#Construction-periods">Períodos de construcción</a> </li></ul></li><li> <a href="#Population">Población</a> </li><li> <a href="#Industry">Industria</a> </li><li> <a href="#Climate">Clima</a> </li><li> <a href="#Renewable-energy-source-potential">Fuente de energía renovable potencial</a> </li><li> <a href="#Scenario-data">Datos del escenario</a> </li><li> <a href="#Technology-data">Datos tecnológicos</a> </li><li> <a href="#Profiles">Perfiles</a> <ul><li> <a href="#Hourly-heat-load-profiles---Generic-profiles">Perfiles de carga de calor por hora - Perfiles genéricos</a> <ul><li> <a href="#Residential-profiles---Generic">Perfiles residenciales - Genérico</a> </li><li> <a href="#Tertiary-profiles---Generic">Perfiles terciarios - Genérico</a> </li><li> <a href="#Industry-profiles---Generic">Perfiles de la industria - Genérico</a> </li></ul></li><li> <a href="#Hourly-heat-load-profiles---Year-specific-profiles">Perfiles de carga de calor por hora: perfiles específicos de año</a> <ul><li> <a href="#Residential-profiles---Year-specific">Perfiles residenciales: año específico</a> </li><li> <a href="#Tertiary-profiles---Year-specific">Perfiles terciarios: año específico</a> </li><li> <a href="#Industry-profiles---Year-specific">Perfiles de la industria: año específico</a> </li></ul></li><li> <a href="#Electricity-load-profiles">Perfiles de carga eléctrica</a> </li><li> <a href="#Temperature-profiles">Perfiles de temperatura</a> </li></ul></li><li> <a href="#Transport">Transporte</a> </li><li> <a href="#Data-sets-for-the-operation-of-the-Hotmaps-toolbox">Conjuntos de datos para el funcionamiento de la caja de herramientas Hotmaps</a> </li><li> <a href="#References">Referencias</a> </li><li> <a href="#how-to-cite">Como citar</a> </li><li> <a href="#authors-and-reviewers">Autores y revisores</a> </li><li> <a href="#license">Licencia</a> </li><li> <a href="#acknowledgement">Reconocimiento</a> </li></ul><h1> Introducción </h1><p> Dentro del alcance del proyecto Hotmaps, los datos se han recopilado en varios niveles (niveles nacional, regional y local). Estos datos se han generado para cuatro sectores diferentes: residencial (casas unifamiliares, casas multifamiliares y bloques de apartamentos), servicio (oficinas, comercio, educación, salud, hoteles y restaurantes y otros edificios no residenciales), industria (hierro y acero, metales no ferrosos, papel e impresión, minerales no metálicos, industria química, alimentos, bebidas y tabaco, ingeniería y otros no clasificados), y transporte (transporte de pasajeros - transporte público, privado, ferroviario y de carga - mercancías pesadas y vehículos comerciales ligeros). </p><p> Todos los conjuntos de datos mencionados anteriormente se almacenan en repositorios de datos de Hotmaps en GitLab y se puede acceder y descargar desde allí. Los repositorios de datos de Hotmaps son extensos y están compuestos por más de 70 repositorios. Para proporcionar una mejor visión general de todos los repositorios de Hotmaps, aquí, los agrupamos en diferentes clases y proporcionamos el enlace directo a ellos. Para obtener explicaciones detalladas sobre la recopilación de datos, metodologías, referencias, suposiciones y limitaciones de los conjuntos de datos de Hotmaps, consulte este <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">informe</a> [1]. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Stock de construcción </h1><h2> Stock de construcción de la UE </h2><ul><li> <a href="https://gitlab.com/hotmaps/building-stock">Material de construcción a nivel NUTS 0 - Sectores residencial y de servicios</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Mapa de densidad de demanda de calefacción y refrigeración. </h2><ul><li><p> <a href="https://gitlab.com/hotmaps/heat/heat_res_curr_density">Densidad de demanda energética final para calefacción de espacios y agua caliente sanitaria - <strong>Residencial</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/heat/heat_nonres_curr_density">Densidad de demanda de energía final para calefacción de espacios y agua caliente sanitaria - <strong>No residencial</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">Densidad de demanda final de energía para calefacción de espacios y agua caliente sanitaria - <strong>Total</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/regional_demand">Demanda de energía útil para calefacción de espacios y agua caliente sanitaria a diferentes niveles NUTS</a> </p><p> 🔺 <code>The data is coming from ESPON Project. I guess it should be final energy demand instad of useful energy demand.</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/space_heating_cooling_dhw_demand">Demanda de energía útil y consumo final de energía para calefacción, refrigeración de espacios y agua caliente sanitaria a nivel NUTS0</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/heat/cool_tot_curr_density">El enfriamiento del espacio necesita un mapa de densidad</a> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Mapa de densidad de área de piso bruto </h2><ul><li> <a href="https://gitlab.com/hotmaps/building_footprint_res_curr">Mapa de densidad de área bruta del edificio - <strong>Residencial</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/building_footprint_nonres_curr">Mapa de densidad de área bruta del edificio - <strong>No residencial</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/building_footprint_tot_curr">Mapa de densidad de área bruta del edificio - <strong>Total</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Mapa de densidad de volumen bruto </h2><ul><li> <a href="https://gitlab.com/hotmaps/vol_res_curr_density">Mapa de densidad de volumen bruto del edificio con calefacción - <strong>Residencial</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/vol_nonres_curr_density">Mapa de densidad de volumen bruto del edificio con calefacción - <strong>No residencial</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/vol_tot_curr_density">Mapa de densidad de volumen bruto del edificio calentado - <strong>Total</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Períodos de construcción </h2><ul><li><p> <a href="https://gitlab.com/hotmaps/construction_periods/share_gfa_per_construction_period/tree/master">Parte del área bruta del piso en períodos de construcción</a> </p><p> 🔺 <code>The README file of this repository is incomplete.</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Población </h1><ul><li> <a href="https://gitlab.com/hotmaps/pop_tot_curr_density">Distribución de la población en la UE28 por hectárea (ha)</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Industria </h1><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">Sitios industriales georreferenciados de uso intensivo de energía</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_industryBenchmarks">Datos de referencia sobre la demanda de calefacción y refrigeración y el potencial de calor excesivo de los procesos industriales.</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Clima </h1><ul><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_humidity">Humedad media anual a escala global</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_land_surface_temperature">Temperatura media anual de la superficie terrestre a escala global</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_wind_speed">Velocidad media anual del viento a escala global</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_precipitation">Precipitación mensual promedio a escala global</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_solar_radiation">Radiación solar mensual en superficies óptimamente inclinadas a escala global</a> </p><p> 🔺 El <code>Readme is misleading. in the table within the readme file, it is written annual value. However, in the explanation it is written monthly values!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/climate_heating_cooling_degreeday">Promedio de días de grado de calentamiento (HDD) y días de grado de enfriamiento (CDD) a nivel NUTS 3</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/HDD_ha_curr">Días de grado de calentamiento (HDD) para el período de referencia 2002-2012 en el nivel de hectárea</a> </p><p> 🔺 El <code>Reference period in title and in the description within the readme file does not match</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/climate/CDD_ha_curr">Días de grado de enfriamiento (DDC) para el período de referencia 1999-2014 en el nivel de hectárea</a> </p><p> 🔺 El <code>Reference period in title and in the description within the readme file does not match</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Fuente de energía renovable potencial </h1><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Potencial de energía geotérmica poco profunda - Basado en conductividad, temperatura del suelo y longitud estacional - Teórico</a> </li><li> <a href="https://gitlab.com/hotmaps/potential/potential_shallowgeothermal">Potencial de energía geotérmica superficial: del proyecto cofinanciado por la CE ThermoMap</a> </li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_open_field">Potencial solar: potencial termal solar medio utilizando un colector solar térmico de campo abierto</a> </li></ul><p> Unit <code>The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.</code> </p><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_rooftop">Potencial solar: potencial termal solar promedio utilizando colectores solares térmicos montados en el techo</a> </li></ul><p> Unit <code>The unit of the data set has not been mentioned in the Readme file nor in the datapackage file.</code> </p><ul><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_solar">Potencial solar: radiación solar global anual en superficies inclinadas globalmente al considerar la huella del edificio</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_wind">Potencial de viento: potencial de energía total a nivel NUTS 3</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_municipal_solid_waste">Potencial de energía de residuos sólidos municipales</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_forest">Potencial de energía de biomasa - potencial de biomasa forestal (raster)</a> </p><p> 🔺 <code>In the readme file, explanation of agricultural residues and livestock effluents are provided; but, no data is available for this two.</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/potential_biomass">Potencial energético de la biomasa: residuos agrícolas, efluentes ganaderos y residuos forestales.</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/potential/WWTP">Plantas de tratamiento de aguas residuales potencial energético</a> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Datos del escenario </h1><ul><li> <a href="https://gitlab.com/hotmaps/scen_current_industry_demand">Demanda energética en la <strong>industria</strong> hasta el año 2050: <strong>escenario actual</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_industry_demand">Demanda energética en la <strong>industria</strong> hasta el año 2050: <strong>escenario ambicioso</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_current_building_demand">Demanda energética en <strong>edificios</strong> hasta el año 2050 - <strong>Escenario actual</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_building_demand">Demanda energética en <strong>edificios</strong> hasta el año 2050: <strong>escenario ambicioso</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_CO2">Factores de emisión promedio de CO2 para la generación de electricidad y las redes de calefacción urbana a nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_generation_shares">Acciones de generación (nuclear, fósil, renovable) para electricidad y calefacción urbana a nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_efficiency_total">Eficiencias de conversión totales para electricidad y calefacción urbana a nivel NUTS 0</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Datos tecnológicos </h1><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_Lifetime">Tecnologías industriales de generación de vapor - Vida útil</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_CAPEX">Tecnologías de generación de vapor industrial - Gastos de capital (CAPEX)</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_OPEX">Tecnologías de generación de vapor industrial - Gastos operativos (OPEX)</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_ThermalEfficiency">Tecnologías industriales de generación de vapor - Eficiencia térmica</a> </li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_PowerToHeatRatio">Tecnologías industriales de generación de vapor: relación potencia / calor</a> </li><li> <a href="https://gitlab.com/hotmaps/heating_technologies">Hoja de tecnología de calefacción</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Perfiles </h1><h2> Perfiles de carga de calor por hora - Perfiles genéricos </h2><h3> Perfiles residenciales - Genérico </h3><ul><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_generic">Perfiles genéricos por hora en el nivel NUTS 2 en el sector residencial - <strong>agua caliente sanitaria</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_generic">Perfiles genéricos por hora en el nivel NUTS 2 en el sector residencial - <strong>demanda de calefacción de espacios</strong></a> </p><p> 🔺 ¡ <code>The title of the repository does not match with the title of the readme file and is misleading!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_generic">Perfiles genéricos por hora en el nivel NUTS 2 en el sector residencial - <strong>enfriamiento de espacios</strong></a> </p></li></ul><h3> Perfiles terciarios - Genérico </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_generic">Perfiles genéricos por hora en el nivel NUTS 2 en el sector terciario - <strong>demanda de agua caliente sanitaria</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_generic">Perfiles genéricos por hora en el nivel NUTS 2 en el sector terciario - <strong>demanda de calefacción de espacios</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_generic">Perfiles genéricos por hora en el nivel NUTS 2 en el sector terciario - <strong>demanda de refrigeración espacial</strong></a> </li></ul><h3> Perfiles de la industria - Genérico </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_generic">Perfiles genéricos por hora para la demanda de calor en el nivel NUTS 0 en la industria del <strong>papel</strong> .</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_generic">Perfiles genéricos por hora para la demanda de calor en el nivel NUTS 0 en la <strong>industria</strong> del <strong>hierro y el acero</strong> .</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_generic">Perfiles genéricos por hora para la demanda de calor en el nivel NUTS 0 en la industria <strong>alimentaria y del tabaco</strong> .</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_generic">Perfiles genéricos por hora para la demanda de calor en el nivel NUTS 0 en la industria de <strong>minerales no metálicos</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_generic">Perfiles por hora genéricos para la demanda de calor en el nivel NUTS 0 en la industria <strong>química y petroquímica</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Perfiles de carga de calor por hora: perfiles específicos de año </h2><h3> Perfiles residenciales: año específico </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector residencial en el año 2010 para <strong>agua caliente sanitaria</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector residencial en el año 2010 para <strong>calefacción de espacios</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_and_heating_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector residencial en el año 2010 para <strong>calefacción de espacios y agua caliente sanitaria</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector residencial en el año 2010 para ** refrigeración de espacios **</a> </li></ul><h3> Perfiles terciarios: año específico </h3><ul><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector terciario en el año 2010 para <strong>agua caliente sanitaria</strong></a> </p><p> 🔺 <code>In the readme file title, it is written domestic hot water. Since this is for tertiary sector, it should be amended!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector terciario en el año 2010 para <strong>calefacción de espacios</strong></a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile_tertiary_shw_and_heating_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector terciario en el año 2010 para <strong>calefacción de espacios y agua caliente sanitaria</strong></a> </p><p> 🔺 <code>In the readme file title, it is written domestic hot water. Since this is for tertiary sector, it should be amended!</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_yearlong_2010">Perfil horario en el nivel NUTS 2 en el sector terciario en el año 2010 para <strong>refrigeración de espacios</strong></a> </p></li></ul><h3> Perfiles de la industria: año específico </h3><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_yearlong_2018">Perfiles por hora para la demanda de calor en el nivel NUTS 0 en el año 2018 en la industria del <strong>papel</strong> .</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_yearlong_2018">Perfiles por hora para la demanda de calor en el nivel NUTS 0 en el año 2018 en la industria <strong>siderúrgica</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_yearlong_2018">Perfiles por hora para la demanda de calor en el nivel NUTS 0 en el año 2018 en la industria de <strong>alimentos y tabaco</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_yearlong_2018">Perfiles por hora para la demanda de calor en el nivel NUTS 0 en el año 2018 en la industria de <strong>minerales no metálicos</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_yearlong_2018">Perfiles por hora para la demanda de calor en el nivel NUTS 0 en el año 2018 en la industria <strong>química y petroquímica</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Perfiles de carga eléctrica </h2><ul><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_generation_yearly">Mezcla anual de generación de electricidad en el nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_emissions_hourly">Factor de emisión de CO2 promedio por hora en el nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_prices_hourly">Precios de electricidad por hora en el año 2015 en el nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_demand_yearlong_2014_2015_2016_2017">Demanda de electricidad por hora en los años 2014 a 2017 en el nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_residual_load_electricity_yearlong_2014_2015_2016_2017">Electricidad residual en el nivel NUTS 0</a> </li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_wind_on__wind_off__solar_yearlong_2014_2015_2016_2017">Suministro de electricidad de energía eólica terrestre, eólica marina y fotovoltaica en los años 2014 a 2017 en el nivel NUTS 0</a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Perfiles de temperatura </h2><ul><li> <a href="https://gitlab.com/hotmaps/hotmaps_task_2.7_temperature_profile_daily_avg_household_yearlong_2010">Temperatura promedio diaria del año 2010 en el nivel NUTS 2 - Sitios <strong>residenciales</strong></a> </li><li> <a href="https://gitlab.com/hotmaps/temperature_profile_daily_avg_industry_yearlong_2010">Temperatura promedio diaria del año 2010 en el nivel NUTS 2 - Sitios <strong>industriales</strong></a> </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Transporte </h1><ul><li><p> <a href="https://gitlab.com/hotmaps/transport/nuts0">Stock de vehículos y proyecciones a nivel NUTS 0</a> </p><ul><li> Stock de vehículos y proyecciones </li><li> Necesidad de electricidad para todos los modos de transporte (transporte electrificado) </li></ul></li><li><p> <a href="https://gitlab.com/hotmaps/transport/nuts2">Stock de vehículos a nivel NUTS 2</a> </p><p> 🔺 <code>The README file of this repository is incomplete.</code> </p></li><li><p> <a href="https://gitlab.com/hotmaps/transport/city">Stock de vehículos a nivel de ciudad</a> </p><p> 🔺 <code>The README file of this repository is incomplete.</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Conjuntos de datos para el funcionamiento de la caja de herramientas Hotmaps </h1><ul><li><p> <a href="https://gitlab.com/hotmaps/nuts_id_number">Ráster para consulta sobre ID NUTS</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/HotmapsLAU">Hotmaps Límites administrativos locales</a> </p></li><li><p> <a href="https://gitlab.com/hotmaps/NUTS">Hotmaps NUTS Límites</a> </p><p> 🔺 Faltan <code>Licens from EC is missing in this repository.</code> </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Referencias </h1><p> [1] Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Müller (e-think), Michael Hartner (TUW) , Tobias Fleiter, Anna ‐ Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Revisado por Lukas Kranzl, Sara Fritz (TUW); <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Acceso en linea</a> </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Como citar </h1><p> Mostafa Fallahnejad, en Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/Hotmaps-data-repository-structure (mayo de 2019) </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Autores y revisores </h1><p> Esta página está escrita por Mostafa Fallahnejad *. </p><ul><li> [x] Esta página fue revisada por Lukas Kranzl *. </li></ul><p> * <a href="https://eeg.tuwien.ac.at/">Grupo de Economía Energética - TU Wien</a> </p><p> Instituto de Sistemas de Energía y Accionamientos Eléctricos </p><p> Gusshausstrasse 27-29 / 370 </p><p> 1040 Wien </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Licencia </h1><p> Copyright © 2016-2019: Mostafa Fallahnejad </p><p> Creative Commons Attribution 4.0 International License </p><p> Este trabajo está licenciado bajo una licencia internacional Creative Commons CC BY 4.0. </p><p> Identificador de licencia SPDX: CC-BY-4.0 </p><p> Texto de la licencia: https://spdx.org/licenses/CC-BY-4.0.html </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h1> Reconocimiento </h1><p> Nos gustaría transmitir nuestro más profundo agradecimiento al <a href="https://www.hotmaps-project.eu">Proyecto</a> Horizonte 2020 <a href="https://www.hotmaps-project.eu">Hotmaps</a> (Acuerdo de subvención número 723677), que proporcionó los fondos para llevar a cabo la presente investigación. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-Hotmaps-open-data-repositories) (original) [Bulgarian](bg-Hotmaps-open-data-repositories)<sup>\*</sup> [Croatian](hr-Hotmaps-open-data-repositories)<sup>\*</sup> [Czech](cs-Hotmaps-open-data-repositories)<sup>\*</sup> [Danish](da-Hotmaps-open-data-repositories)<sup>\*</sup> [Dutch](nl-Hotmaps-open-data-repositories)<sup>\*</sup> [Estonian](et-Hotmaps-open-data-repositories)<sup>\*</sup> [Finnish](fi-Hotmaps-open-data-repositories)<sup>\*</sup> [French](fr-Hotmaps-open-data-repositories)<sup>\*</sup> [German](de-Hotmaps-open-data-repositories)<sup>\*</sup> [Greek](el-Hotmaps-open-data-repositories)<sup>\*</sup> [Hungarian](hu-Hotmaps-open-data-repositories)<sup>\*</sup> [Irish](ga-Hotmaps-open-data-repositories)<sup>\*</sup> [Italian](it-Hotmaps-open-data-repositories)<sup>\*</sup> [Latvian](lv-Hotmaps-open-data-repositories)<sup>\*</sup> [Lithuanian](lt-Hotmaps-open-data-repositories)<sup>\*</sup> [Maltese](mt-Hotmaps-open-data-repositories)<sup>\*</sup> [Polish](pl-Hotmaps-open-data-repositories)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-Hotmaps-open-data-repositories)<sup>\*</sup> [Romanian](ro-Hotmaps-open-data-repositories)<sup>\*</sup> [Slovak](sk-Hotmaps-open-data-repositories)<sup>\*</sup> [Slovenian](sl-Hotmaps-open-data-repositories)<sup>\*</sup>  [Swedish](sv-Hotmaps-open-data-repositories)<sup>\*</sup>
<sup>\*</sup>: machine translated