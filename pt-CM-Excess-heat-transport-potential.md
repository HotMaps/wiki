<h2> Índice </h2><ul><li> <a href="#introduction">Introdução</a> </li><li> <a href="#inputs-and-outputs">Entradas e saídas</a> </li><li> <a href="#method">Método</a> </li><li> <a href="#sample-run">Amostra de execução</a> </li><li> <a href="#authors-and-reviewers">Autores e revisores</a> </li><li> <a href="#license">Licença</a> </li><li> <a href="#acknowledgement">Reconhecimento</a> </li></ul><h2> Introdução </h2><p> O uso de excesso de calor para aquecimento urbano. </p><h2> Entradas e saídas </h2><h3> Camadas e parâmetros de entrada </h3><h4> Fornecido por Toolbox </h4><ul><li> Áreas de aquecimento urbano (por enquanto fornecidas diretamente pelo potencial de aquecimento urbano CM) </li><li> Banco de dados industrial (por padrão, fornecido pela caixa de ferramentas) </li></ul><h4> Fornecido pelo usuário </h4><ul><li> Min. demanda de calor em hectare. Consulte <a href="https://github.com/HotMaps/hotmaps_wiki/wiki/CM-District-heating-potential-areas-user-defined-thresholds">DH Potencial CM</a> </li><li> Min. demanda de calor em uma área de DH. Consulte <a href="https://github.com/HotMaps/hotmaps_wiki/wiki/CM-District-heating-potential-areas-user-defined-thresholds">DH Potencial CM</a> </li><li> Raio de pesquisa em km </li><li> Vida útil do equipamento em anos </li><li> Taxa de desconto em% </li><li> Fator de custo </li><li> Custos operacionais em% </li><li> Valor limite para linhas de transmissão em ct / kWh </li></ul><h4> Parâmetros de desempenho </h4><ul><li> Resolução de tempo (hora, dia, semana, mês, ano) </li><li> Resolução espacial em km </li></ul><h3> Camadas e indicadores de saída </h3><ul><li> Linhas de transmissão </li><li> Excesso total de calor na área selecionada em GWh </li><li> Excesso de calor conectado em GWh </li><li> Excesso de calor usado em GWh </li><li> Custo da rede em € </li><li> Custos anuais da rede em € / ano </li><li> Custos nivelados do suprimento de calor em ct / kWh </li><li> Gráfico mostrando o potencial DH, excesso de calor total, excesso de calor conectado e excesso de calor usado </li><li> Gráfico mostrando a demanda mensal de calor e excesso </li><li> Gráfico mostrando a demanda diária média de calor e excesso </li></ul><h2> Método </h2><h3> visão global </h3><p> O elemento chave do módulo de excesso de calor é o modelo de coletor de origem usado. Constrói uma rede de transmissão de comprimento mínimo e calcula o fluxo para cada hora do ano com base em perfis de carga de aquecimento residencial com resolução Nuts2 e perfis de carga do setor com resolução Nuts0. Com base nos fluxos de pico médios ao longo do ano, é possível calcular os custos de cada linha de transmissão e trocador de calor no lado da fonte e do dissipador. </p><h3> Detalhes </h3><h4> Modelagem de fontes </h4><p> Com base no ID Nuts0 e no setor industrial, um perfil de carga resolvido a cada ano é atribuído a todas as fontes. </p><h4> Modelagem de pias </h4><p> Com base no módulo de cálculo do potencial de aquecimento urbano, são criados pontos de entrada equidistantes nas áreas coerentes. Dependendo do ID Nuts2 dos pontos de entrada, um perfil de carga é atribuído. </p><h4> Pesquisa de raio fixo </h4><p> Dentro de um raio definido, é verificado quais fontes estão dentro do alcance uma da outra, quais pias estão dentro do alcance uma da outra e quais pias estão dentro do alcance das fontes. Isso pode ser representado por um gráfico com fontes e pias formando os vértices e os vértices no intervalo sendo conectados por uma aresta. </p><h4> Redução ao comprimento mínimo da rede </h4><p> Uma árvore de abrangência mínima é calculada com a distância das arestas como pesos. Isso resulta em um gráfico mantendo sua conectividade enquanto possui um comprimento total mínimo de arestas. Observe que os pontos de entrada de áreas coerentes são conectados internamente gratuitamente, pois formam sua própria rede de distribuição. </p><h4> Cálculo de fluxo </h4><p> O fluxo máximo das fontes para os sumidouros é calculado para cada hora do ano. </p><h4> Determinação de custos </h4><p> O pico de fluxo do ano, calculado em média por 3 horas, determina a capacidade necessária para as linhas de transmissão e trocadores de calor. Os custos das linhas de transmissão dependem do comprimento e da capacidade, enquanto os custos dos trocadores de calor são influenciados apenas pela capacidade. No lado da fonte, é assumido um trocador de calor ar / líquido com bomba integrada para a linha de transmissão e, no lado da pia, um trocador de calor líquido / líquido. </p><h4> Variação da rede </h4><p> Como o custo e o fluxo de cada linha de transmissão são conhecidos, as linhas com a maior relação custo / fluxo podem ser removidas e o fluxo recalculado até que seja alcançado o custo por fluxo desejado. </p><h3> Implementação </h3><h4> Pesquisa de raio fixo </h4><p> Para o cálculo da distância entre dois pontos, é utilizada uma pequena aproximação do ângulo do comprimento do loxódromo. Embora exista também uma implementação precisa da distância do ortodromo, a maior precisão não tem nenhum benefício real, devido às pequenas distâncias em sua maioria inferiores a 20 km e à incerteza do comprimento real da linha de transmissão devido a muitos fatores, como topologia. Se dois pontos estiverem dentro do alcance do raio, ele será armazenado em uma lista de adjacências. A criação dessas listas de adjacência é realizada entre fontes e fontes, sumidouros e sumidouros e fontes e sumidouros. O motivo da separação está na flexibilidade de adicionar certos requisitos de temperatura para fontes ou sumidouros. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/search.svg"/><figcaption> <i><br/> Exemplo de uma pesquisa de raio fixo. Os vértices vermelhos representam fontes e os azuis afundam. Os números representam a distância entre os pontos. Desenho não está em escala.</i> </figcaption></figure><h4> Classe NetworkGraph </h4><p> Com base na biblioteca igraph, uma classe NetworkGraph é implementada com todas as funcionalidades necessárias para o módulo de cálculo. Embora o igraph esteja mal documentado, oferece um desempenho muito melhor do que os módulos python puros como o NetworkX e um suporte mais amplo à plataforma além do Linux, diferentemente da ferramenta gráfica. A classe NetworkGraph descreve apenas uma rede na superfície, mas contém 3 gráficos diferentes. Primeiramente, o gráfico que descreve a rede como é definido pelas três listas de adjacência. Em segundo lugar, o gráfico de correspondência que conecta internamente pias da mesma área coerente e dura o gráfico de fluxo máximo usado para o cálculo do fluxo máximo. </p><h5> Gráfico </h5><p> Contém apenas as fontes reais e sumidouros como vértices. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/graph.svg"/><figcaption> <i><br/> Exemplo de um gráfico. Os vértices vermelhos representam fontes e os azuis afundam.</i> </figcaption></figure><h5> Gráfico de correspondência </h5><p> Cada coletor precisa de um ID de correspondência, que indique se está conectado internamente por uma rede já existente, como em áreas coerentes. Pias com o mesmo ID de correspondência são conectadas a um novo vértice com arestas com pesos zero. Isso é crucial para o cálculo de uma árvore de abrangência mínima e a razão pela qual o gráfico de correspondência é usado para ela. Esse recurso também é implementado para fontes, mas não usado. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/correspondence_graph.svg"/><figcaption> <i><br/> Exemplo de um gráfico de correspondência. Os vértices vermelhos representam fontes e os azuis afundam. As três pias à direita são coerentes conectadas por um vértice maior adicional</i> </figcaption></figure><h5> Gráfico de fluxo máximo </h5><p> Como o igraph não suporta múltiplas fontes e afunda em sua função de fluxo máximo, é necessário um gráfico auxiliar. Introduz uma fonte infinita e um vértice de coletor. Toda fonte real é conectada à fonte infinita e todo coletor real é conectado ao coletor infinito por uma borda. Observe que se um coletor estiver conectado a um vértice de correspondência, esse vértice será conectado em vez do próprio coletor. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/max_flow_graph.svg"/><figcaption> <i><br/> Exemplo de um gráfico de fluxo máximo.</i> </figcaption></figure><h5> Cálculo mínimo da árvore de expansão </h5><p> Com base no gráfico de correspondência, a árvore de abrangência mínima é calculada. As arestas que conectam os dissipadores coerentes sempre têm o peso 0, portanto sempre permanecerão parte da árvore de abrangência mínima. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/correspondence_graph_with_weigths.svg"/><figcaption> <i><br/> Exemplo de um gráfico de correspondência com os pesos de cada aresta e sua árvore de abrangência mínima.</i> </figcaption></figure><h5> Cálculo do fluxo máximo </h5><p> O fluxo através das bordas que conectam as fontes reais ou sumidouros à fonte ou coletor infinito, respectivamente, é limitado à capacidade real de cada fonte ou coletor. Por razões numéricas, as capacidades são normalizadas, de modo que a maior capacidade seja 1. O fluxo através do subconjunto de arestas contido no gráfico de correspondência é limitado a 1000, o que deve, para todos os propósitos intensos, oferecer fluxo irrestrito. Em seguida, o fluxo máximo da fonte infinita para o coletor infinito é calculado e o fluxo redimensionado para seu tamanho original. Como os coletores coerentes não estão diretamente conectados ao vértice de coletor infinito, mas pelo vértice de correspondência, o fluxo através dele é limitado à soma de todos os coletores coerentes. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/max_flow_graph_with_capacities.svg"/><figcaption> <i><br/> Exemplo de um gráfico de fluxo máximo e as capacidades de cada fonte e coletor. O gráfico à direita mostra o fluxo máximo permitido através de cada borda após a normalização. Observe que o fluxo máximo permitido pelas bordas com o símbolo de infinito é realmente limitado a 1000 na implementação.</i> </figcaption></figure><p> A implementação da função de fluxo máximo do igraph usa o algoritmo Push-re-label. Esse tipo de algoritmo não é sensível ao custo e nem sempre pode encontrar a maneira mais curta de rotear o fluxo. Um algoritmo sensível ao custo não está disponível no igraph e o desempenho provavelmente será baixo para poder resolver um fluxo com base horária ao longo do ano. Porém, devido à redução prévia a uma extensão mínima, os casos em que uma solução não ideal é escolhida são muito limitados e improváveis. O algoritmo Push-re-label também tem tendência para rotear o fluxo pela menor quantidade de arestas. A implementação do igraph parece ser determinística na ordem de alocação do fluxo se os gráficos são pelo menos automorfismos, o que é importante para o cálculo de fluxo baseado em uma hora, uma vez que qualquer oscilação de fluxo introduzida artificialmente entre as bordas é indesejável. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/max_flow_graph_with_flows.svg"/><figcaption> <i><br/> Fluxo calculado pelo algoritmo de fluxo máximo e redimensionamento para o tamanho original.</i> </figcaption></figure><h4> Fontes de calor </h4><p> As fontes de calor são retiradas do <strong><a href="https://gitlab.com/hotmaps/industrial_sites/industrial_sites_Industrial_Database">banco de dados industrial.</a></strong> Com base no excesso de calor, o Nuts0 ID e o setor industrial criam um perfil de carga que cobre cada hora do ano para cada local. A adição personalizada de sites está planejada. </p><h4> Dissipadores de calor </h4><p> Os dissipadores de calor são baseados em áreas coerentes com uma demanda de calor conhecida. As áreas coerentes formam uma máscara para uma grade na qual pontos equidistantes são colocados como pontos de entrada. Dependendo do ID Nuts2 selecionado, um perfil de aquecimento residencial é atribuído às pias. A adição personalizada de pontos de entrada e pias é planejada. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/coherent_aera_entry_points.svg"/><figcaption> <i><br/> Exemplo de uma área coerente e seus pontos de entrada gerados.</i> </figcaption></figure><h4> Carregar perfis </h4><p> Os perfis de carga mencionados consistem em 8760 pontos que representam a carga para cada hora dos 365 dias. Mais informações sobre os <strong><a href="https://gitlab.com/hotmaps/load_profile">perfis de carga podem ser encontradas aqui.</a></strong> </p><h4> Cálculo de custos </h4><p> Como os sistemas de aquecimento urbano têm uma grande capacidade de aquecimento, um pico no fluxo não significa que as linhas de transmissão precisam fornecer instantaneamente esse curto pico de calor. Portanto, as capacidades exigidas das linhas de transmissão e trocadores de calor são determinadas pelo pico de carga médio. Especificamente, a função de convolução numpy é usada para calcular a média do fluxo nas últimas três horas, convoluindo com uma função constante. Dependendo desse valor, uma linha de transmissão da tabela a seguir é escolhida. </p><p> <em>Custos específicos das linhas de transmissão utilizadas</em> </p><p> | Potência em MW | Custos em € / m | Temperatura em ° C | | ------------- |: -------------: | -----: | | 0,2 | 195 &lt;150 | 0,3 206 &lt;150 | 0,6 | 220 &lt;150 | 1.2 240 &lt;150 | 1,9 261 &lt;150 | 3,6 | 288 &lt;150 | 6.1 323 &lt;150 | 9,8 | 357 &lt;150 | 20 426 &lt;150 | 45 564 &lt;150 | 75 701 &lt;150 | 125 839 &lt;150 | 190 976 &lt;150 | &gt; 190 976 &lt;150 </p><p> Os custos do trocador de calor no lado da fonte, que é assumido como ar para líquido, são computados com </p><p> C <sub>HSource</sub> (P) = P <sub>pico</sub> * 15.000 € / MW. </p><p> Os custos do trocador de calor líquido para líquido no lado da pia são determinados com </p><p> C <sub>HSink</sub> (P) = P <sub>pico</sub> * 265.000 € / MW se P <sub>pico</sub> &lt;1MW ou </p><p> C <sub>HSink</sub> (P) = P <sub>pico</sub> * 100.000 € / MW mais. </p><p> Os custos da bomba seguem </p><p> <sub>Bomba</sub> C (P) = P <sub>pico</sub> * 240.000 € / MW se P <sub>pico</sub> &lt;1MW ou </p><p> <sub>Bomba</sub> C (P) = P <sub>pico</sub> * 90.000 € / MW mais. </p><h4> Remoção de linhas de transmissão </h4><p> Com um limite de custo para fluxo para linhas de transmissão, eles podem ser removidos se excederem para melhorar a relação fluxo / custo. Após a remoção das arestas, o fluxo deve ser recalculado, pois a continuidade do fluxo no gráfico não é mais garantida. A relação custo / fluxo também pode aumentar para outras arestas agora, portanto, esse processo é repetido até que a soma de todos os fluxos não seja mais alterada. </p><h4> Descrição da rotina completa </h4><p> Primeiro, as fontes de calor e os dissipadores são carregados com seus perfis de carga. Em seguida, a busca por raio fixo é realizada e a rede inicializada. Posteriormente, a rede é reduzida à sua árvore de abrangência mínima e o fluxo máximo é calculado para cada hora do ano. Com base no fluxo, são calculados os custos para cada trocador de calor, bomba e linha de transmissão. Se uma relação de custo-limite for definida, o procedimento de remoção da linha de transmissão é executado. No final, o custo total e o fluxo total da rede e o layout da rede são retornados. </p><h2> Amostra de execução </h2><p> Amostra executada em Aalborg. </p><figure><img alt="" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/cm_excess_heat/aalborg.png"/><figcaption> <i>Amostra executada em Aalborg. As aeras azuis representam o aquecimento urbano. O laranja aponta a fonte de calor e o amarelo aponta os pontos de entrada para a rede de aquecimento urbano.</i> </figcaption></figure><p> Os custos totais são de 13,7 M € e o fluxo anual total é de 185 GWh, o que resulta em 0,74 ct / kWh por um período de investimento de 10 anos. </p><h2> Autores e revisores </h2><p> Esta página foi escrita por Ali Aydemir * e David Schilling * </p><ul><li> [] Esta página foi revisada por Tobias Fleiter *. </li></ul><p> * <a href="https://isi.fraunhofer.de/">Fraunhofer ISI</a> Fraunhofer ISI, Breslauer Str. 48, 76139 Karlsruhe </p><h2> Licença </h2><p> Copyright © 2016-2018: Ali Aydemir, David Schilling </p><p> Licença Internacional Creative Commons Attribution 4.0 Este trabalho está licenciado sob uma Licença Internacional Creative Commons CC BY 4.0. </p><p> Identificador de licença SPDX: CC-BY-4.0 </p><p> Texto da licença: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Reconhecimento </h2><p> Gostaríamos de expressar nossa profunda gratidão ao <a href="https://www.hotmaps-project.eu">Projeto</a> Horizonte <a href="https://www.hotmaps-project.eu">Hotmaps</a> 2020 (Contrato de Doação número 723677), que forneceu o financiamento para a realização da presente investigação. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p>

This page was automatically translated. View in another language:

[English](en-CM-Excess-heat-transport-potential) (original) [Bulgarian](bg-CM-Excess-heat-transport-potential)<sup>\*</sup> [Croatian](hr-CM-Excess-heat-transport-potential)<sup>\*</sup> [Czech](cs-CM-Excess-heat-transport-potential)<sup>\*</sup> [Danish](da-CM-Excess-heat-transport-potential)<sup>\*</sup> [Dutch](nl-CM-Excess-heat-transport-potential)<sup>\*</sup> [Estonian](et-CM-Excess-heat-transport-potential)<sup>\*</sup> [Finnish](fi-CM-Excess-heat-transport-potential)<sup>\*</sup> [French](fr-CM-Excess-heat-transport-potential)<sup>\*</sup> [German](de-CM-Excess-heat-transport-potential)<sup>\*</sup> [Greek](el-CM-Excess-heat-transport-potential)<sup>\*</sup> [Hungarian](hu-CM-Excess-heat-transport-potential)<sup>\*</sup> [Irish](ga-CM-Excess-heat-transport-potential)<sup>\*</sup> [Italian](it-CM-Excess-heat-transport-potential)<sup>\*</sup> [Latvian](lv-CM-Excess-heat-transport-potential)<sup>\*</sup> [Lithuanian](lt-CM-Excess-heat-transport-potential)<sup>\*</sup> [Maltese](mt-CM-Excess-heat-transport-potential)<sup>\*</sup> [Polish](pl-CM-Excess-heat-transport-potential)<sup>\*</sup>  [Romanian](ro-CM-Excess-heat-transport-potential)<sup>\*</sup> [Slovak](sk-CM-Excess-heat-transport-potential)<sup>\*</sup> [Slovenian](sl-CM-Excess-heat-transport-potential)<sup>\*</sup> [Spanish](es-CM-Excess-heat-transport-potential)<sup>\*</sup> [Swedish](sv-CM-Excess-heat-transport-potential)<sup>\*</sup>
<sup>\*</sup>: machine translated