<h1><a class="anchor" id="retrieve-indicators-of-a-selected-area" href="#retrieve-indicators-of-a-selected-area"><i class="fa fa-link"></i></a>Recuperar indicadores de uma área selecionada</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Índice</h2><ul><li> <a href="#introduction">Introdução</a></li><li> <a href="#indicators-for-raster-layers">Indicadores para camadas raster</a><ul><li> <a href="#indicators-for-raster-layers_buildings">Edifícios</a></li><li> <a href="#indicators-for-raster-layers_population">População</a></li><li> <a href="#indicators-for-raster-layers_renewable-energy-source-potentials">Potenciais de fonte de energia renovável</a></li></ul></li><li> <a href="#indicators-for-vector-layers">Indicadores para camadas vetoriais</a><ul><li> <a href="#indicators-for-vector-layers_industry">Indústria</a></li><li> <a href="#indicators-for-vector-layers_renewable-energy-source-potentials">Potenciais de fonte de energia renovável</a></li><li> <a href="#indicators-for-vector-layers_electricity">Eletricidade</a></li></ul></li><li> <a href="#example">Exemplo</a></li><li> <a href="#how-to-cite">Como citar</a></li><li> <a href="#authors-and-reviewers">Autores e revisores</a></li><li> <a href="#license">Licença</a></li><li> <a href="#acknowledgement">Reconhecimento</a></li></ul><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Introdução</h2><p> Dependendo das camadas e da região que você selecionou, os indicadores para a sua configuração são mostrados em uma barra lateral à direita da tela</p><p><img alt="results.png" src="../images/general_tool_functionalities_and_structure/results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><p> A seguir, veremos os indicadores que são exibidos para camadas raster e vetoriais.</p><h2><a class="anchor" id="indicators-for-raster-layers" href="#indicators-for-raster-layers"><i class="fa fa-link"></i></a> Indicadores para camadas raster</h2><p> Os indicadores nas camadas raster são diferentes das camadas vetoriais. Com diferente, queremos dizer em termos de agregação e desagregação. Esse comportamento diferente vem de resoluções territoriais.</p><p> As camadas raster geralmente têm uma resolução muito mais alta, enquanto as camadas vetoriais têm apenas atributos em pontos ou polígonos.</p><p> Isso significa por um lado, por exemplo, que se você selecionar uma camada vetorial que é definida por polígonos NUTS3 e quiser, por exemplo, selecionar uma região LAU, o valor NUTS3 não será desagregado para o nível LAU, em vez disso, o indicador NUTS3 onde este A região LAU está localizada será mostrada na barra lateral de resultados.</p><p> Por outro lado, as camadas raster são agregadas e desagregadas &quot;arbitrariamente&quot; *</p><p> * pelas células que contêm dentro da região que você selecionou (naturalmente dentro do limite da própria resolução de raster)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="buildings" href="#buildings"><i class="fa fa-link"></i></a> Edifícios</h3><p> <strong>Mapa de densidade de calor</strong></p><p><img alt="hdm.png" src="../images/general_tool_functionalities_and_structure/hdm.png"/></p><p> <strong>Recurso Extra</strong></p><p> Quando você seleciona a camada de densidade de calor e a Camada de população ao mesmo tempo, um indicador extra é mostrado (veja a imagem abaixo)</p><p><img alt="hdm2.png" src="../images/general_tool_functionalities_and_structure/hdm2.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="in-general-" href="#in-general-"><i class="fa fa-link"></i></a> Em geral:</h3><p> Quando uma das camadas de construção e a camada de população são selecionadas ao mesmo tempo, um indicador extra será mostrado conforme descrito antes</p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Mapa de densidade de resfriamento</strong></p><p><img alt="cdm.png" src="../images/general_tool_functionalities_and_structure/cdm.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Volumes de construção</strong></p><p><img alt="bvol.png" src="../images/general_tool_functionalities_and_structure/bvol.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Área bruta de piso</strong></p><p><img alt="gfa.png" src="../images/general_tool_functionalities_and_structure/gfa.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="population" href="#population"><i class="fa fa-link"></i></a> População</h3><p><img alt="pop.png" src="../images/general_tool_functionalities_and_structure/pop.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="climate" href="#climate"><i class="fa fa-link"></i></a> Clima</h3><p> <strong>Temperatura</strong></p><p><img alt="temp.png" src="../images/general_tool_functionalities_and_structure/temp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Grau-dias de resfriamento</strong></p><p><img alt="cdd.png" src="../images/general_tool_functionalities_and_structure/cdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Grau-dias de aquecimento</strong></p><p><img alt="hdd.png" src="../images/general_tool_functionalities_and_structure/hdd.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Radiação solar</strong></p><p><img alt="rad.png" src="../images/general_tool_functionalities_and_structure/rad.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Velocidade do vento</strong></p><p><img alt="wind.png" src="../images/general_tool_functionalities_and_structure/wind.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Potenciais de fonte de energia renovável</h3><p> <strong>Radiação solar na pegada do edifício</strong></p><p><img alt="srobf.png" src="../images/general_tool_functionalities_and_structure/srobf.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Potencial de vento a 50m</strong></p><p><img alt="wp.png" src="../images/general_tool_functionalities_and_structure/wp.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins></p><p> <strong>Resíduos Florestais</strong></p><p><img alt="forest.png" src="../images/general_tool_functionalities_and_structure/forest.png"/></p><p><ins> <code><strong><a href="#indicators-for-raster-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="indicators-for-vector-layers" href="#indicators-for-vector-layers"><i class="fa fa-link"></i></a> Indicadores para camadas vetoriais</h2><h3><a class="anchor" id="industry" href="#industry"><i class="fa fa-link"></i></a> Indústria</h3><p> <strong>Emissões de instalações industriais</strong><img alt="ise.png" src="../images/general_tool_functionalities_and_structure/ise.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Excesso de calor do local industrial</strong><img alt="iseh.png" src="../images/general_tool_functionalities_and_structure/iseh.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Nome da empresa local industrial</strong><img alt="isec.png" src="../images/general_tool_functionalities_and_structure/isec.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Subsetor de local industrial</strong><img alt="ises.png" src="../images/general_tool_functionalities_and_structure/ises.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="renewable-energy-source-potentials" href="#renewable-energy-source-potentials"><i class="fa fa-link"></i></a> Potenciais de fonte de energia renovável</h3><p> <strong>Energia de usinas de tratamento de águas residuais</strong></p><p><img alt="wwp.png" src="../images/general_tool_functionalities_and_structure/wwp.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Capacidade das estações de tratamento de águas residuais</strong></p><p><img alt="wwc.png" src="../images/general_tool_functionalities_and_structure/wwc.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Resíduos Agrícolas</strong></p><p><img alt="ar.png" src="../images/general_tool_functionalities_and_structure/ar.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Efluentes de gado</strong></p><p><img alt="le.png" src="../images/general_tool_functionalities_and_structure/le.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Resíduos sólidos municipais</strong></p><p><img alt="sw.png" src="../images/general_tool_functionalities_and_structure/sw.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins></p><p> <strong>Potencial geotérmico de condutividade de calor</strong></p><p><img alt="geothermal.png" src="../images/general_tool_functionalities_and_structure/geothermal.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h3><a class="anchor" id="electricity" href="#electricity"><i class="fa fa-link"></i></a> Eletricidade</h3><p> <strong>Emissões de C02 de eletricidade</strong></p><p><img alt="eletricidade.png" src="../images/general_tool_functionalities_and_structure/electricity.png"/></p><p><ins> <code><strong><a href="#indicators-for-vector-layers">To Chapter</a></strong></code></ins> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="example" href="#example"><i class="fa fa-link"></i></a> Exemplo</h2><p> Na imagem abaixo você pode ver como fica quando todas as camadas são visualizadas (aqui está a Áustria como NUTS0 selecionado)</p><p><img alt="all_map.png" src="../images/general_tool_functionalities_and_structure/all_map.png"/></p><p> Embora este mapa possa parecer um pouco confuso à primeira vista, seus indicadores são ilustrados de maneira direta. Veja abaixo todos os indicadores que são descritos na barra lateral de resultados ao selecionar todas as camadas para a Áustria (NUTS0)</p><p><img alt="all_results.png" src="../images/general_tool_functionalities_and_structure/all_results.png"/></p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Como citar</h2><p> Jeton Hasani, em Hotmaps-Wiki, Retrieve-indicadores-of-a-selected-area (abril de 2019)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autores e revisores</h2><p> Esta página foi escrita por Jeton Hasani <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> ☑ Esta página foi revisada por Mostafa Fallahnejad <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Licença</h2><p> Copyright © 2016-2020: Jeton Hasani</p><p> Licença Creative Commons Atribuição 4.0 Internacional</p><p> Este trabalho está licenciado sob uma Licença Internacional Creative Commons CC BY 4.0.</p><p> SPDX-License-Identifier: CC-BY-4.0</p><p> License-Text: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Reconhecimento</h2><p> Gostaríamos de transmitir o nosso mais profundo agradecimento ao <a href="https://www.hotmaps-project.eu">Projeto Hotmaps</a> Horizonte 2020 (Contrato de Subvenção n.º 723677), que forneceu o financiamento para a realização da presente investigação.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> <code><a href="Indicator-Section/_edit">Review this page</a></code></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/Retrieve-indicators-of-a-selected-area) (original) [Bulgarian](../bg/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Czech](../cs/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Danish](../da/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [German](../de/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Greek](../el/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Spanish](../es/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Estonian](../et/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Finnish](../fi/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [French](../fr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Irish](../ga/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Croatian](../hr/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Hungarian](../hu/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Italian](../it/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Lithuanian](../lt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Latvian](../lv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Maltese](../mt/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Dutch](../nl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Polish](../pl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup>  [Romanian](../ro/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovak](../sk/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Slovenian](../sl/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> [Swedish](../sv/Retrieve-indicators-of-a-selected-area)<sup>\*</sup> 

<sup>\*</sup> machine translated