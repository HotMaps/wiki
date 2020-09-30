<h1><a class="anchor" id="hotmaps-open-data-repositories" href="#hotmaps-open-data-repositories"><i class="fa fa-link"></i></a>Repositórios de dados abertos de Hotmaps</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Índice</h2><ul><li> <a href="#introduction">Introdução</a></li><li> <a href="#building-stock">Estoque de construção</a><ul><li> <a href="#building-stock_eu-building-stock">Estoque de construção da UE</a></li><li> <a href="#building-stock_heating-and-cooling-demand-density-map">Mapa de densidade de demanda de aquecimento e resfriamento</a></li><li> <a href="#building-stock_gross-floor-area-density-map">Mapa de densidade de área bruta</a></li><li> <a href="#building-stock_gross-volume-density-map">Mapa de densidade de volume bruto</a></li><li> <a href="#building-stock_construction-periods">Períodos de construção</a></li></ul></li><li> <a href="#population">População</a></li><li> <a href="#industry">Indústria</a></li><li> <a href="#climate">Clima</a></li><li> <a href="#renewable-energy-source-potential">Potencial de fonte de energia renovável</a></li><li> <a href="#scenario-data">Dados de cenário</a></li><li> <a href="#technology-data">Dados de tecnologia</a></li><li> <a href="#profiles">Perfis</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles">Perfis de carga de calor por hora - Perfis genéricos</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_residential-profiles-generic">Perfis residenciais - Genérico</a></li><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_tertiary-profiles-generic">Perfis terciários - Genéricos</a></li><li> <a href="#profiles_hourly-heat-load-profiles-generic-profiles_industry-profiles-generic">Perfis da indústria - genérico</a></li></ul></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles">Perfis de carga de calor por hora - perfis específicos do ano</a><ul><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_residential-profiles-year-specific">Perfis residenciais - específicos do ano</a></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_tertiary-profiles-year-specific">Perfis terciários - específico do ano</a></li><li> <a href="#profiles_hourly-heat-load-profiles-year-specific-profiles_industry-profiles-year-specific">Perfis da indústria - específico do ano</a></li></ul></li><li> <a href="#profiles_electricity-load-profiles">Perfis de carga de eletricidade</a></li><li> <a href="#profiles_temperature-profiles">Perfis de temperatura</a></li></ul></li><li> <a href="#transport">Transporte</a></li><li> <a href="#data-sets-for-the-operation-of-the-hotmaps-toolbox">Conjuntos de dados para a operação da caixa de ferramentas Hotmaps</a></li><li> <a href="#references">Referências</a></li><li> <a href="#how-to-cite">Como citar</a></li><li> <a href="#authors-and-reviewers">Autores e revisores</a></li><li> <a href="#license">Licença</a></li><li> <a href="#acknowledgement">Reconhecimento</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introdução</h2><p> No âmbito do projeto Hotmaps, os dados foram recolhidos a vários níveis (nacional, regional e local). Esses dados foram gerados para quatro setores diferentes: residencial (casas unifamiliares, casas multifamiliares e blocos de apartamentos), serviços (escritórios, comércio, educação, saúde, hotéis e restaurantes e outros edifícios não residenciais), indústria (ferro e aço, metais não ferrosos, papel e impressão, minerais não metálicos, indústria química, alimentos, bebidas e tabaco, engenharia e outros não classificados) e transporte (transporte de passageiros - público, privado, ferroviário e de carga - mercadorias pesadas e veículos comerciais leves).</p><p> Todos os conjuntos de dados mencionados acima são armazenados em repositórios de dados Hotmaps no GitLab e podem ser acessados e baixados de lá. Os repositórios de dados do Hotmaps são extensos e compostos por mais de 70 repositórios. Para fornecer uma visão geral melhor de todos os repositórios Hotmaps, aqui, nós os agrupamos em classes diferentes e fornecemos o link direto para eles. Para obter explicações detalhadas sobre a coleta de dados, metodologias, referências, suposições e limitações dos conjuntos de dados Hotmaps, consulte este <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">relatório</a> [1].</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="building-stock" href="#building-stock"><i class="fa fa-link"></i></a> Estoque de construção</h2><h3><a class="anchor" id="eu-building-stock" href="#eu-building-stock"><i class="fa fa-link"></i></a> Estoque de construção da UE</h3><ul><li> <a href="https://gitlab.com/hotmaps/building-stock">Estoque de imóveis no nível NUTS 0 - setores residencial e de serviços</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="heating-and-cooling-demand-density-map" href="#heating-and-cooling-demand-density-map"><i class="fa fa-link"></i></a> Mapa de densidade de demanda de aquecimento e resfriamento</h3><ul><li> <a href="https://gitlab.com/hotmaps/heat/heat_res_curr_density">Densidade da procura de energia final para aquecimento ambiente e água quente sanitária - <strong>Residencial</strong></a></li><li> <a href="https://gitlab.com/hotmaps/heat/heat_nonres_curr_density">Densidade da demanda de energia final para aquecimento ambiente e água quente sanitária - <strong>Não residencial</strong></a></li><li> <a href="https://gitlab.com/hotmaps/heat/heat_tot_curr_density">Densidade da procura de energia final para aquecimento ambiente e água quente sanitária - <strong>Total</strong></a></li><li> <a href="https://gitlab.com/hotmaps/regional_demand">Procura de energia útil para aquecimento ambiente e água quente sanitária em diferentes níveis NUTS</a></li><li> <a href="https://gitlab.com/hotmaps/space_heating_cooling_dhw_demand">Demanda de energia útil e consumo de energia final para aquecimento e refrigeração de ambientes e água quente sanitária no nível NUTS0</a></li><li> <a href="https://gitlab.com/hotmaps/heat/cool_tot_curr_density">O resfriamento do espaço precisa do mapa de densidade</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="gross-floor-area-density-map" href="#gross-floor-area-density-map"><i class="fa fa-link"></i></a> Mapa de densidade de área bruta</h3><ul><li> <a href="https://gitlab.com/hotmaps/gfa_res_curr_density">Mapa de densidade de área bruta de construção - <strong>Residencial</strong></a></li><li> <a href="https://gitlab.com/hotmaps/gfa_nonres_curr_density">Mapa de densidade de área bruta de construção - <strong>não residencial</strong></a></li><li> <a href="https://gitlab.com/hotmaps/gfa_tot_curr_density">Mapa de densidade de área bruta de construção - <strong>Total</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="gross-volume-density-map" href="#gross-volume-density-map"><i class="fa fa-link"></i></a> Mapa de densidade de volume bruto</h3><ul><li> <a href="https://gitlab.com/hotmaps/vol_res_curr_density">Mapa de densidade de volume bruto de edifício aquecido - <strong>Residencial</strong></a></li><li> <a href="https://gitlab.com/hotmaps/vol_nonres_curr_density">Mapa de densidade de volume bruto de edifício aquecido - <strong>Não Residencial</strong></a></li><li> <a href="https://gitlab.com/hotmaps/vol_tot_curr_density">Mapa de densidade de volume bruto de edifício aquecido - <strong>Total</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="construction-periods" href="#construction-periods"><i class="fa fa-link"></i></a> Períodos de construção</h3><p> <strong>Parcela da área bruta do piso em períodos de construção:</strong></p><ul><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_1975_100_share">até 1975</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_1990_100_share">de 1975 a 1990</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_2000_100_share">de 1990 a 2000</a></li><li> <a href="https://gitlab.com/hotmaps/construction_periods/ghs_built_2014_100_share">de 2000 a 2014</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> População</h2><ul><li> <a href="https://gitlab.com/hotmaps/pop_tot_curr_density">Distribuição da população na UE28 em nível de hectare (ha)</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Indústria</h2><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">Locais industriais com uso intensivo de energia georreferenciados</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_industryBenchmarks">Dados de referência sobre a demanda de aquecimento e resfriamento e os potenciais de calor excessivo de processos industriais</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Clima</h2><ul><li> <a href="https://gitlab.com/hotmaps/climate/climate_humidity">Umidade média anual em escala global</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_land_surface_temperature">Temperatura média anual da superfície da terra em escala global</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_wind_speed">Velocidade média anual do vento em escala global</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_precipitation">Precipitação média mensal em escala global</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_solar_radiation">Radiação solar mensal em superfícies com inclinação ideal em escala global</a></li><li> <a href="https://gitlab.com/hotmaps/climate/climate_heating_cooling_degreeday">Graus-dias médios de aquecimento (HDD) e graus-dias de resfriamento (CDD) no nível NUTS 3</a></li><li> <a href="https://gitlab.com/hotmaps/climate/HDD_ha_curr">Graus-dia de aquecimento (HDD) para o período de referência 2002-2012 no nível do hectare</a></li><li> <a href="https://gitlab.com/hotmaps/climate/CDD_ha_curr">Graus-dia de resfriamento (CDD) para o período de referência 1999-2014 no nível do hectare</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="renewable-energy-source-potential" href="#renewable-energy-source-potential"><i class="fa fa-link"></i></a> Potencial de fonte de energia renovável</h2><ul><li> <a href="https://gitlab.com/hotmaps/potential/potential_geothermal_raster">Potencial de energia geotérmica rasa - Com base na condutividade, temperatura do solo e comprimento sazonal - Teórico</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_shallowgeothermal">Potencial de energia geotérmica rasa - Do projeto co-financiado pela CE ThermoMap</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_open_field">Potencial solar - potencial térmico solar médio usando coletor térmico solar de campo aberto</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solarthermal_collectors_rooftop">Potencial solar - potencial térmico solar médio usando coletores térmicos solares montados em telhado</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_solar">Potencial solar - radiação solar global anual em superfícies inclinadas globalmente, considerando a pegada do edifício</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_wind">Potencial Eólico - Potencial de energia total no nível NUTS 3</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_municipal_solid_waste">Potencial energético de resíduos sólidos municipais</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_forest">Potencial de energia de biomassa - potencial de biomassa florestal (raster)</a></li><li> <a href="https://gitlab.com/hotmaps/potential/potential_biomass">Potencial energético de biomassa - resíduos agrícolas, efluentes pecuários e resíduos florestais</a></li><li> <a href="https://gitlab.com/hotmaps/potential/WWTP">Potencial energético de estações de tratamento de águas residuais</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="scenario-data" href="#scenario-data"><i class="fa fa-link"></i></a> Dados de cenário</h2><ul><li> <a href="https://gitlab.com/hotmaps/scen_current_industry_demand">Demanda de energia na <strong>indústria</strong> até o ano 2050 - <strong>Cenário atual</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_industry_demand">Demanda de energia na <strong>indústria</strong> até o ano 2050 - <strong>Cenário ambicioso</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_current_building_demand">Demanda de energia em <strong>edificações</strong> até o ano 2050 - <strong>Cenário atual</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_ambitious_building_demand">Demanda de energia em <strong>edificações</strong> até o ano 2050 - <strong>Cenário ambicioso</strong></a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_CO2">Fatores médios de emissão de CO2 para geração de eletricidade e redes de aquecimento urbano no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_generation_shares">Parcelas de geração (nuclear, fóssil, renovável) para eletricidade e aquecimento urbano no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/scen_all_scenarios_electr_district_heat_efficiency_total">Eficiências de conversão totais para eletricidade e aquecimento urbano no nível NUTS 0</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="technology-data" href="#technology-data"><i class="fa fa-link"></i></a> Dados de tecnologia</h2><ul><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_Lifetime">Tecnologias de geração de vapor industrial - Vitalício</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_CAPEX">Tecnologias de geração de vapor industrial - Despesas de capital (CAPEX)</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_OPEX">Tecnologias de geração de vapor industrial - Despesas operacionais (OPEX)</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_ThermalEfficiency">Tecnologias de geração de vapor industrial - Eficiência térmica</a></li><li> <a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_SteamGenerationData_PowerToHeatRatio">Tecnologias de geração de vapor industrial - Relação de energia para calor</a></li><li> <a href="https://gitlab.com/hotmaps/heating_technologies">Folha de tecnologia de aquecimento</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="profiles" href="#profiles"><i class="fa fa-link"></i></a> Perfis</h2><h3><a class="anchor" id="hourly-heat-load-profiles---generic-profiles" href="#hourly-heat-load-profiles---generic-profiles"><i class="fa fa-link"></i></a> Perfis de carga de calor por hora - Perfis genéricos</h3><p> <strong>Crie seu próprio perfil:</strong></p><p> Os arquivos genéricos devem permitir ao usuário produzir perfis de carga de sua preferência usando seus próprios dados e um ano de estrutura de sua escolha. Para os perfis de carga industrial, fornecemos um perfil de um ano para o ano de 2018 (no qual os dias de tipo são definidos na ordem deste ano). Para perfis de carga terciários e residenciais, fornecemos um perfil de um ano para o ano de 2010. No entanto, queremos dar ao usuário a oportunidade de usar um ano de estrutura de sua escolha (ano de estrutura neste contexto significa a ordem dos dias no curso do ano).</p><p> Os perfis fornecidos aqui não possuem unidades, pois devem ser dimensionados durante a geração de perfis de um ano.</p><p> Consulte os perfis individuais neste wiki ou nos respectivos repositórios de conjuntos de dados para obter mais informações sobre a geração de perfis a partir dos perfis genéricos.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="residential-profiles---generic" href="#residential-profiles---generic"><i class="fa fa-link"></i></a> Perfis residenciais - Genérico</h4><p> Para aquecimento, resfriamento e água quente, fornecemos um perfil de um ano para 2010. No entanto, se os usuários tiverem acesso a perfis de temperatura por hora específicos do local ou a perfis de temperatura de anos diferentes de 2010, queremos dar ao usuário a oportunidade de usar esses dados para gerar perfis de carga com um ano de estrutura diferente ou maior precisão. Portanto, os perfis genéricos devem permitir ao usuário produzir perfis de carga próprios, usando seus próprios dados e um ano de estrutura de sua escolha.</p><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_generic">Perfis horários genéricos no nível NUTS 2 no setor residencial - <strong>água quente sanitária</strong></a></li></ul><p> Para <strong>o fornecimento de água quente</strong> , presumimos que a demanda e, portanto, o perfil de carga correspondente dependem de influências sazonais, semanais e diárias.</p><p> As colunas “tipo de dia” referem-se ao tipo de dia da semana:</p><ul><li> dias da semana = dia digitado 0;</li><li> sábado ou véspera de feriado = dia digitado 1;</li><li> domingo ou feriado = typeday 2</li></ul><p> Para integrar uma influência sazonal ao perfil de demanda, a coluna “temporada” é usada.</p><ul><li> 0 = Verão (15/05 - 14/09)</li><li> 1 = Inverno (1/11 - 20/3)</li><li> 2 = Transição (21/3 - 14/5 e 15/9 - 31/10)</li></ul><p> Perfis de um ano para água quente podem ser gerados a partir dos perfis genéricos fornecidos aqui, seguindo as seguintes etapas:</p><ol><li> determinar o ano da estrutura para o qual os perfis são gerados</li><li> ordenar as tuplas do dia / temporada de acordo com o ano selecionado</li><li> alocar o respectivo valor de carga para o dia de digitação / tupla de temporada para cada hora - escalando a soma total do perfil anual ao longo do ano (ou seja, a integral do perfil) de acordo com a demanda total anual</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_generic">Perfis horários genéricos no nível NUTS 2 no setor residencial - <strong>demanda de aquecimento ambiente</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_generic">Perfis horários genéricos no nível NUTS 2 no setor residencial - <strong>refrigeração ambiente</strong></a></li></ul><p> Para <strong>aquecimento e resfriamento</strong> , assumimos que a demanda não depende do tipo de dia, mas apenas da própria hora do dia e da temperatura externa na respectiva hora (por este motivo, as colunas “tipo dia” e “estação” são não é relevante para perfis de aquecimento e resfriamento).</p><p> Perfis de um ano podem ser gerados a partir de perfis genéricos fornecidos neste repositório seguindo as seguintes etapas:</p><ol><li> determinar o ano da estrutura para o qual os perfis são gerados</li><li> escolher a combinação correta de hora do dia, temperatura e demanda do perfil genérico para cada hora do ano, a fim de obter um perfil sem unidades de um ano</li><li> escalar a soma total do perfil anual de longo prazo (ou seja, a integral do perfil) de acordo com a demanda total anual</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="tertiary-profiles---generic" href="#tertiary-profiles---generic"><i class="fa fa-link"></i></a> Perfis terciários - Genéricos</h4><p> O perfil do setor terciário consiste na demanda de vários subsetores. A configuração é diferente para cada país. Para as respectivas participações subsetoriais por país, consulte o relatório hotmaps WP2, seção 2.7.3 (https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised -final_.pdf).</p><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_generic">Perfis horários genéricos no nível NUTS 2 no setor terciário - <strong>demanda de água quente sanitária</strong></a></li></ul><p> Para <strong>a demanda de água quente</strong> , presumimos que a demanda é independente da temperatura externa, mas depende do tipo de dia da semana e da hora do dia. A coluna “tipo de dia” refere-se ao tipo de dia da semana:</p><ul><li> dias da semana = dia digitado 0;</li><li> sábado ou véspera de feriado = dia digitado 1;</li><li> domingo ou feriado = dia digitado 2 horas do dia varia de 1 (primeira hora) a 24 (última hora)</li></ul><p> Perfis de um ano podem ser gerados a partir dos perfis genéricos fornecidos aqui, seguindo as seguintes etapas:</p><ol><li> determinar o ano da estrutura para o qual os perfis são gerados</li><li> ordenando o dia de digitação de acordo com o ano selecionado</li><li> alocando o respectivo valor de carga para o tipo de dias a cada hora</li><li> escalar a soma total do perfil anual de longo prazo (ou seja, a integral do perfil) de acordo com a demanda total anual</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_generic">Perfis horários genéricos no nível NUTS 2 no setor terciário - <strong>demanda de aquecimento ambiente</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_generic">Perfis horários genéricos no nível NUTS 2 no setor terciário - <strong>demanda de refrigeração de espaço</strong></a></li></ul><p> Para <strong>aquecimento e refrigeração no setor terciário</strong> , fornecemos um perfil de um ano para o ano de 2010. No entanto, queremos dar ao usuário a oportunidade de usar um ano de sua escolha. Além disso, se os usuários tiverem acesso a perfis de temperatura por hora específicos do local, queremos dar ao usuário a oportunidade de usar esses dados para gerar perfis de carga com maior precisão. Portanto, os perfis genéricos devem permitir ao usuário produzir perfis de carga próprios, usando seus próprios dados e um ano de estrutura de sua escolha.</p><p> Assumimos que a procura de aquecimento e arrefecimento no sector terciário depende do tipo de dia, da hora do dia propriamente dita e da temperatura exterior na respectiva hora.</p><p> Os perfis fornecidos aqui não possuem unidades, pois devem ser dimensionados durante a geração de perfis de um ano. Para os perfis genéricos de aquecimento e resfriamento, eles são orientados pelas diferenças entre horas e níveis de temperatura. Além disso, como o setor terciário é impulsionado por um ritmo semanal, os perfis de aquecimento e refrigeração no setor terciário dependem também do tipo de dia. A coluna “tipo de dia” refere-se ao tipo de dia da semana:</p><ul><li> dias da semana = dia digitado 0;</li><li> sábado ou véspera de feriado = dia digitado 1;</li><li> domingo ou feriado = typeday 2</li></ul><p> Perfis de um ano podem ser gerados a partir de perfis genéricos para aquecimento e resfriamento terciário fornecidos neste repositório seguindo as seguintes etapas:</p><ol><li> determinar o ano da estrutura para o qual os perfis são gerados</li><li> escolher a combinação correta de tipo de dia, hora do dia, temperatura e demanda do perfil genérico para cada hora do ano, a fim de obter um perfil sem unidades ao longo do ano</li><li> escalar a soma total do perfil anual de longo prazo (ou seja, a integral do perfil) de acordo com a demanda total anual</li></ol><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="industry-profiles---generic" href="#industry-profiles---generic"><i class="fa fa-link"></i></a> Perfis da indústria - genérico</h4><p> Para os <strong>perfis de carga industrial</strong> , fornecemos um perfil de um ano para o ano de 2018 (no qual os tipos de dias são definidos na ordem deste ano). No entanto, queremos dar ao usuário a oportunidade de usar um ano de estrutura de sua escolha. Ano de estrutura neste contexto significa a ordem dos dias no decorrer do ano. As colunas “tipo de dia” referem-se ao tipo de dia da semana:</p><ul><li> dias da semana = dia digitado 0;</li><li> sábado ou véspera de feriado = dia digitado 1;</li><li> domingo ou feriado = typeday 2</li></ul><p> A coluna “mês” refere-se ao mês do ano. 1 = janeiro, 2 = fevereiro, etc. Os perfis anuais podem ser gerados a partir dos perfis genéricos fornecidos aqui, seguindo as seguintes etapas:</p><ol><li> determinar o ano da estrutura para o qual os perfis são gerados</li><li> ordenando o dia de digitação para cada mês de acordo com o ano selecionado</li><li> alocar o respectivo valor de carga para a tupla do dia / mês para cada hora</li><li> escalar a soma total do perfil anual de longo prazo (ou seja, a integral do perfil) de acordo com a demanda total anual</li></ol><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_generic">Perfis horários genéricos para demanda de calor no nível NUTS 0 na indústria de <strong>papel</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_generic">Perfis horários genéricos para demanda de calor no nível NUTS 0 na indústria de <strong>ferro e aço</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_generic">Perfis horários genéricos para demanda de calor no nível NUTS 0 na indústria de <strong>alimentos e tabaco</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_generic">Perfis horários genéricos para demanda de calor no nível NUTS 0 na indústria de <strong>minerais não metálicos</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_generic">Perfis horários genéricos para a demanda de calor no nível NUTS 0 na indústria <strong>química e petroquímica</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="hourly-heat-load-profiles---year-specific-profiles" href="#hourly-heat-load-profiles---year-specific-profiles"><i class="fa fa-link"></i></a> Perfis de carga de calor por hora - perfis específicos do ano</h3><p> Os perfis específicos do ano (ao longo do ano) fornecidos aqui são gerados com base em perfis horários sintéticos para dias típicos. Neste contexto, enfatizamos que os perfis não são medidos, mas modelados levando em consideração diferentes fatores dependendo do tipo de perfil:</p><ul><li> Para perfis industriais, entre outros padrões de trabalho por turnos, foi considerada a produção histórica por mês / dia da semana.</li><li> Para perfis terciários e residenciais, os perfis dependem do tipo de dia da semana (ou seja, dia da semana, sábado, domingo / feriado), da hora do dia e, no caso de aquecimento e resfriamento, da temperatura externa.</li></ul><p> Usando a estrutura dos dias em um ano, os perfis são montados para um perfil de demanda de um ano.<br/> Todos os perfis fornecidos aqui são sem unidades e normalizados para 1 000 000. Para um perfil, ele deve ser dimensionado de acordo com a demanda anual da respectiva região (ou seja, de modo que a integral dos perfis seja igual à demanda anual por região).</p><p> Para obter explicações detalhadas e uma ilustração gráfica do conjunto de dados, consulte o <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">relatório Hotmaps WP2</a> (seção 2.7).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="residential-profiles---year-specific" href="#residential-profiles---year-specific"><i class="fa fa-link"></i></a> Perfis residenciais - específicos do ano</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_yearlong_2010">Perfil horário no nível NUTS 2 no setor residencial no ano de 2010 para <strong>água quente sanitária</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_heating_yearlong_2010">Perfil horário no nível NUTS 2 no setor residencial no ano de 2010 para <strong>aquecimento ambiente</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_shw_and_heating_yearlong_2010">Perfil horário no nível NUTS 2 no setor residencial no ano de 2010 para <strong>aquecimento ambiente e água quente sanitária</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_residential_cooling_yearlong_2010">Perfil horário no nível NUTS 2 no setor residencial no ano de 2010 para ** refrigeração ambiente **</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="tertiary-profiles---year-specific" href="#tertiary-profiles---year-specific"><i class="fa fa-link"></i></a> Perfis terciários - específico do ano</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_shw_yearlong_2010">Perfil horário no nível NUTS 2 no setor terciário no ano de 2010 para <strong>água quente sanitária</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_heating_yearlong_2010">Perfil horário no nível NUTS 2 no setor terciário no ano de 2010 para <strong>aquecimento ambiente</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile_tertiary_shw_and_heating_yearlong_2010">Perfil horário no nível NUTS 2 no setor terciário no ano de 2010 para <strong>aquecimento ambiente e água quente sanitária</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_tertiary_cooling_yearlong_2010">Perfil horário no nível NUTS 2 no setor terciário no ano de 2010 para <strong>refrigeração ambiente</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h4><a class="anchor" id="industry-profiles---year-specific" href="#industry-profiles---year-specific"><i class="fa fa-link"></i></a> Perfis da indústria - específico do ano</h4><ul><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_paper_yearlong_2018">Perfis horários para a demanda de calor no nível NUTS 0 no ano de 2018 na indústria de <strong>papel</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_iron_and_steel_yearlong_2018">Perfis horários para a demanda de calor no nível NUTS 0 no ano de 2018 na indústria de <strong>ferro e aço</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_food_and_tobacco_yearlong_2018">Perfis horários para a demanda de calor no nível NUTS 0 no ano de 2018 na indústria de <strong>alimentos e tabaco</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_non_metalic_minerals_yearlong_2018">Perfis horários para a demanda de calor no nível NUTS 0 no ano de 2018 na indústria de <strong>minerais não metálicos</strong></a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_industry_chemicals_and_petrochemicals_yearlong_2018">Perfis horários para a demanda de calor no nível NUTS 0 no ano de 2018 na indústria <strong>química e petroquímica</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity-load-profiles" href="#electricity-load-profiles"><i class="fa fa-link"></i></a> Perfis de carga de eletricidade</h3><ul><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_generation_yearly">Mix de geração anual de eletricidade no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_emissions_hourly">Fator médio de emissão de CO2 por hora no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/load_electricity/electricity_prices_hourly">Preços de eletricidade por hora no ano de 2015 no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_demand_yearlong_2014_2015_2016_2017">Demanda horária de eletricidade nos anos de 2014 a 2017 no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_residual_load_electricity_yearlong_2014_2015_2016_2017">Eletricidade residual no nível NUTS 0</a></li><li> <a href="https://gitlab.com/hotmaps/load_profile/load_profile_electricity_wind_on__wind_off__solar_yearlong_2014_2015_2016_2017">Fornecimento de eletricidade de energia eólica onshore, eólica offshore e PV nos anos de 2014 a 2017 no nível NUTS 0</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="temperature-profiles" href="#temperature-profiles"><i class="fa fa-link"></i></a> Perfis de temperatura</h3><ul><li> <a href="https://gitlab.com/hotmaps/hotmaps_task_2.7_temperature_profile_daily_avg_household_yearlong_2010">Temperatura média diária do ano de 2010 no nível NUTS 2 - Locais <strong>residenciais</strong></a></li><li> <a href="https://gitlab.com/hotmaps/temperature_profile_daily_avg_industry_yearlong_2010">Temperatura média diária do ano de 2010 no nível NUTS 2 - sites <strong>industriais</strong></a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="transport" href="#transport"><i class="fa fa-link"></i></a> Transporte</h2><ul><li> <a href="https://gitlab.com/hotmaps/transport/nuts0">Estoque de veículos e projeções no nível NUTS 0</a><ul><li> Estoque e projeções de veículos</li><li> Necessidade de eletricidade para todos os modos de transporte (transporte eletrificado)</li></ul></li><li> <a href="https://gitlab.com/hotmaps/transport/nuts2">Estoque de veículos no nível NUTS 2</a></li><li> <a href="https://gitlab.com/hotmaps/transport/city">Estoque de veículos em nível de cidade</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="data-sets-for-the-operation-of-the-hotmaps-toolbox" href="#data-sets-for-the-operation-of-the-hotmaps-toolbox"><i class="fa fa-link"></i></a> Conjuntos de dados para a operação da caixa de ferramentas Hotmaps</h2><ul><li> <a href="https://gitlab.com/hotmaps/nuts_id_number">Raster para querry em NUTS IDs</a></li><li> <a href="https://gitlab.com/hotmaps/HotmapsLAU">Limites administrativos locais do Hotmaps</a></li><li> <a href="https://gitlab.com/hotmaps/NUTS">Limites NUTS do Hotmaps</a></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> Referências</h2><p> [1] Simon Pezzutto, Stefano Zambotti, Silvia Croce, Pietro Zambelli, Giulia Garegnani, Chiara Scaramuzzino, Ramón Pascual Pascuas, Alyona Zubaryeva, Franziska Haas, Dagmar Exner (EURAC), Andreas Müller (e ‐ think), Michael Hartner (TW) , Tobias Fleiter, Anna ‐ Lena Klingler, Matthias Kühnbach, Pia Manz, Simon Marwitz, Matthias Rehfeldt, Jan Steinbach, Eftim Popovski (Fraunhofer ISI) Revisado por Lukas Kranzl, Sara Fritz (TUW); <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Acesso Online</a></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Como citar</h2><p> Mostafa Fallahnejad, em Hotmaps-Wiki, Hotmaps-data-repository-structure (maio de 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autores e revisores</h2><p> Esta página foi escrita por <strong>Mostafa Fallahnejad</strong> ( <a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a> ).</p><p> ☑ Esta página foi revisada por <strong>Marcus Hummel</strong> ( <a href="https://e-think.ac.at/">e-think</a> )</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licença</h2><p> Copyright © 2016-2019: Mostafa Fallahnejad</p><p> Licença Creative Commons Atribuição 4.0 Internacional</p><p> Este trabalho está licenciado sob uma Licença Internacional Creative Commons CC BY 4.0.</p><p> SPDX-License-Identifier: CC-BY-4.0</p><p> License-Text: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconhecimento</h2><p> Gostaríamos de transmitir o nosso mais profundo agradecimento ao <a href="https://www.hotmaps-project.eu">Projeto Hotmaps</a> Horizonte 2020 (Contrato de Subvenção n.º 723677), que proporcionou o financiamento para a realização da presente investigação.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Hotmaps-open-data-repositories) (original) [Bulgarian](../bg/Hotmaps-open-data-repositories)<sup>\*</sup> [Czech](../cs/Hotmaps-open-data-repositories)<sup>\*</sup> [Danish](../da/Hotmaps-open-data-repositories)<sup>\*</sup> [German](../de/Hotmaps-open-data-repositories)<sup>\*</sup> [Greek](../el/Hotmaps-open-data-repositories)<sup>\*</sup> [Spanish](../es/Hotmaps-open-data-repositories)<sup>\*</sup> [Estonian](../et/Hotmaps-open-data-repositories)<sup>\*</sup> [Finnish](../fi/Hotmaps-open-data-repositories)<sup>\*</sup> [French](../fr/Hotmaps-open-data-repositories)<sup>\*</sup> [Irish](../ga/Hotmaps-open-data-repositories)<sup>\*</sup> [Croatian](../hr/Hotmaps-open-data-repositories)<sup>\*</sup> [Hungarian](../hu/Hotmaps-open-data-repositories)<sup>\*</sup> [Italian](../it/Hotmaps-open-data-repositories)<sup>\*</sup> [Lithuanian](../lt/Hotmaps-open-data-repositories)<sup>\*</sup> [Latvian](../lv/Hotmaps-open-data-repositories)<sup>\*</sup> [Maltese](../mt/Hotmaps-open-data-repositories)<sup>\*</sup> [Dutch](../nl/Hotmaps-open-data-repositories)<sup>\*</sup> [Polish](../pl/Hotmaps-open-data-repositories)<sup>\*</sup>  [Romanian](../ro/Hotmaps-open-data-repositories)<sup>\*</sup> [Slovak](../sk/Hotmaps-open-data-repositories)<sup>\*</sup> [Slovenian](../sl/Hotmaps-open-data-repositories)<sup>\*</sup> [Swedish](../sv/Hotmaps-open-data-repositories)<sup>\*</sup> 

<sup>\*</sup> machine translated