<h2> Índice </h2><ul><li> <a href="#introduction">Introdução</a> </li><li> <a href="#inputs-and-outputs">Entradas e saídas</a> </li><li> <a href="#method">Método</a> </li><li> <a href="#sample-run">Amostra de execução</a> <ul><li> <a href="#test-run-1-default-input-values">Execução de teste 1: valores de entrada padrão</a> </li><li> <a href="#test-run-2-modified-input-values">Execução de teste 2: valores de entrada modificados</a> </li></ul></li><li> <a href="#references">Referências</a> </li><li> <a href="#how-to-cite">Como citar</a> </li><li> <a href="#authors-and-reviewers">Autores e revisores</a> </li><li> <a href="#license">Licença</a> </li><li> <a href="#acknowledgement">Reconhecimento</a> </li></ul><h2> Introdução </h2><p> O objetivo é calcular o potencial de energia fotovoltaica e a viabilidade financeira de uma área selecionada, considerando: </p><ul><li> a instalação de novos sistemas fotovoltaicos em uma porcentagem da área ocupada </li><li> a viabilidade financeira de novas usinas </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Entradas e saídas </h2><p> Os parâmetros e camadas de entrada, bem como as camadas e parâmetros de saída, são os seguintes. </p><p> <strong>As camadas e parâmetros de entrada são:</strong> </p><ul><li> arquivo raster: <ul><li> irradiação solar média anual [kWh m ^ {- 2}] </li><li> pegada de construção calculada a partir do arquivo raster de entrada [-] </li></ul></li><li> fração de edifícios com painéis solares} [-] </li><li> parâmetros da planta de referência: <ul><li> potência máxima instalada média por planta [kW_p] </li><li> eficiência do sistema [-] </li><li> a radiação solar na condição de teste padrão igual a 1 kW m ^ {- 2} </li><li> eficiência do módulo em condições de teste padrão [kW m ^ {- 2}] </li><li> fator de utilização eficaz do telhado do edifício </li></ul></li></ul><p> <strong>As camadas e parâmetros de saída são:</strong> </p><ul><li> o custo total da cobertura da área selecionada com painéis fotovoltaicos [moeda] </li><li> a produção total anual de energia [MWh / ano] </li><li> o custo nivelado de energia [moeda / kWh] </li><li> um arquivo raster com os telhados mais adequados para a produção de energia fotovoltaica </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Método </h2><p> Partindo da área disponível e do tipo de tecnologia fotovoltaica, o módulo calcula a produção de energia fotovoltaica sob as seguintes premissas: </p><ul><li> inclinação ideal do sistema fotovoltaico </li><li> área dos módulos fotovoltaicos igual à porcentagem da área de construção escolhida pelo usuário </li><li> tecnologia selecionada exclusiva para todos os sistemas fotovoltaicos instalados </li><li> eficiência padrão do sistema igual a 0,75 </li></ul><p> Essas premissas foram feitas para considerar uma fase de planejamento para uma região e não o design de um sistema fotovoltaico específico. </p><p> A produção anual de energia é obtida considerando a distribuição espacial da radiação solar anual na pegada do edifício. A produção de energia fotovoltaica é calculada para uma única planta representativa. O pico de potência instalado mais representativo para um sistema fotovoltaico é uma entrada do módulo. Consequentemente, a superfície coberta por uma única planta e o número total de plantas são calculados. </p><p> Finalmente, a área mais adequada é calculada considerando os telhados com maior produção de energia. A produção de energia de cada pixel considera cobrir apenas uma fração dos telhados igual a f_roof. A integral da produção de energia da área mais adequada é igual à produção total de energia da área selecionada. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Teste de Execução 1 </h2><p> Aqui, o módulo de cálculo é executado para a região da Lombardia na Itália (NUTS2). </p><ul><li> Primeiro, selecione Nuts2 e a área escolhida. </li></ul><p><img alt="Fig. 1" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_solar_PV/default_values_01.png" title="Selecione uma região"/></p><ul><li><p> Siga as etapas conforme mostrado na figura abaixo: </p><ul><li> Clique no botão "Camadas" para abrir a janela "Camadas": </li><li> Clique na guia "MÓDULO DE CÁLCULO". </li><li> Clique no botão "SOLAR PV POTENTIAL". </li></ul></li><li><p> Agora, o "Potencial solar fotovoltaico" é aberto e está pronto para ser executado. </p></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> Execução de teste 1: valores de entrada padrão </h3><p> Os valores de entrada padrão consideram a possibilidade de instalar painéis fotovoltaicos montados no telhado em edifícios. Esses valores são redirecionados para uma planta de 3 kWp. Pode ser necessário definir valores abaixo ou acima dos valores padrão, considerando considerações e custos locais adicionais. Portanto, o usuário deve adaptar esses valores para encontrar a melhor combinação de limites para seu estudo de caso. </p><p> Para executar o módulo de cálculo, siga as próximas etapas: </p><ul><li> Atribua um nome à sessão de execução (opcional - aqui, escolhemos "Execução de Teste 1") e defina os parâmetros de entrada (aqui, os valores padrão foram usados). </li></ul><p><img alt="Fig. 2" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_solar_PV/default_values_02.png" title="Teste de execução 1 com valores padrão"/></p><ul><li> Aguarde até o processo terminar. </li><li> Como saída, indicadores e diagramas são mostrados na janela "RESULTADOS". Os indicadores mostram: <ul><li> Produção total de energia, </li><li> Custos totais de instalação, </li><li> Número de sistemas instalados, </li><li> Custo nivelado de energia </li></ul></li></ul><p><img alt="Fig. 3" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_solar_PV/default_values_03.png" title="Execução de teste 1 guia INDICADORES"/></p><ul><li> Também é adicionada uma nova camada à tela, mostrando os edifícios com maior potencial energético. Essa camada é adicionada à lista de camadas na categoria "Módulo de cálculo". O nome da sessão de execução distingue as saídas dessa execução das outras. Se você desmarcou as camadas padrão e selecionou TEST RUN 1, poderá visualizar as áreas mais adequadas para instalações de plantas fotovoltaicas. </li></ul><p><img alt="Fig. 4" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_solar_PV/default_values_03.png" title="Teste 1 Módulo de cálculo CAMADAS"/></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> Execução de teste 2: valores de entrada modificados </h3><p> Dependendo da sua experiência e conhecimento local, você pode aumentar ou diminuir os valores de entrada para obter melhores resultados. Você pode decidir aumentar a superfície do edifício adequada para usinas fotovoltaicas. </p><ul><li><p> Atribua um nome à sessão de execução (opcional - aqui, escolhemos "Execução de Teste 2") e defina os parâmetros de entrada Porcentagem de edifícios com painéis solares igual a 50. Isso significa que estamos cobrindo os 50% dos telhados de edifícios disponíveis. Observe que, como cada pixel pode representar mais de um edifício e não estamos cobrindo todo o telhado com painéis fotovoltaicos, o usuário também pode definir o fator de utilização eficaz do telhado do edifício. Os valores padrão são definidos como 0,15. Isso significa que apenas 15% da superfície do telhado em um pixel é coberta por painéis fotovoltaicos. </p></li><li><p> Aguarde até o processo terminar. </p></li><li><p> Como saída, indicadores e diagramas são mostrados na janela "RESULTADOS". Os indicadores mostram: </p><ul><li> Produção total de energia, </li><li> Custos totais de instalação, </li><li> Número de sistemas instalados, </li><li> Custo nivelado de energia </li></ul></li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Referências </h2><h2> Como citar </h2><p> Giulia Garegnani, no Hotmaps-Wiki, https://github.com/HotMaps/hotmaps_wiki/wiki/CM-Solar-PV-potential (abril de 2019) </p><h2> Autores e revisores </h2><p> Esta página foi escrita por Giulia Garegnani *. </p><p> * <a href="http://www.eurac.edu/en/research/technologies/renewableenergy/researchfields/Pages/Energy-strategies-and-planning.aspx">Grupo Sistema Urbano e Regional de Energia - EURAC Bozen</a> </p><p> Instituto de Energia Renovável Drususallee / Viale Druso 1 I-39100 Bozen / Bolzano Itália </p><h2> Licença </h2><p> Copyright © 2016-2019: Giulia Garegnani </p><p> Licença Internacional Creative Commons Attribution 4.0 </p><p> Este trabalho está licenciado sob uma Licença Internacional Creative Commons CC BY 4.0. </p><p> Identificador de licença SPDX: CC-BY-4.0 </p><p> Texto da licença: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Reconhecimento </h2><p> Gostaríamos de expressar nossa profunda gratidão ao <a href="https://www.hotmaps-project.eu">Projeto</a> Horizonte <a href="https://www.hotmaps-project.eu">Hotmaps</a> 2020 (Contrato de Doação número 723677), que forneceu o financiamento para a realização da presente investigação. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-CM-Solar-thermal-and-PV-potential) (original) [Bulgarian](bg-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Croatian](hr-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Czech](cs-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Danish](da-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Dutch](nl-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Estonian](et-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Finnish](fi-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [French](fr-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [German](de-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Greek](el-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Hungarian](hu-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Irish](ga-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Italian](it-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Latvian](lv-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Lithuanian](lt-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Maltese](mt-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Polish](pl-CM-Solar-thermal-and-PV-potential)<sup>\*</sup>  [Romanian](ro-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Slovak](sk-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Slovenian](sl-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Spanish](es-CM-Solar-thermal-and-PV-potential)<sup>\*</sup> [Swedish](sv-CM-Solar-thermal-and-PV-potential)<sup>\*</sup>
<sup>\*</sup>: machine translated