// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../constantes.dart';
import '../../desktop/mapeamento/menuMapeamento.dart';

class MantiqueiraMobi extends StatelessWidget {
  const MantiqueiraMobi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MunuMapeamento(
        menu: "Mantiqueira de Minas",
      ),
      body: Container(
        color: kbackgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: kbackgroundColorSec,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        textAlign: TextAlign.justify,
                        "Mantiqueira de Minas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "O café é o segundo produto na pauta das exportações agrícolas do Brasil, constituindo uma das mais importantes fontes de renda para a economia brasileira. Atualmente, o agronegócio café abrange cerca de 1900 municípios produtores, 370.000 cafeicultores, 1 milhão de trabalhadores rurais e mais de 8 milhões de brasileiros que dependem da atividade agroindustrial da cadeia do café (Cooparaiso, 2007).\n Minas Gerais destaca-se no cenário brasileiro como o maior produtor, sendo a região Sul de Minas a maior produtora do estado e do Brasil. Com um parque cafeeiro que abrange 37.000 propriedades em uma área cultivada estimada em 629 mil hectares, e produção média de 12,7 milhões de sacas de café beneficiado (CONAB, 2005), a região apresenta grandes variações edafoclimáticas, que fazem com que a qualidade do café se expresse de maneiras distintas. Inserida nessa importante mesorregião mineira, destaca-se, pela elevada qualidade sensorial dos cafés produzidos, a Região da Serra da Mantiqueira, considerada uma das mais importantes regiões produtoras de café especiais do Brasil, os quais vêm obtendo crescente reconhecimento pelo mercado internacional que os tem classificados entre os melhores cafés do mundo.\n Este mercado aponta, atualmente, para uma crescente demanda por cafés especiais, com características relacionadas ao meio geográfico. Neste cenário, o setor produtivo e o mercado estabelecem uma relação comercial transparente, pautada na livre escolha por parte do consumidor e na agregação de valores e diferenciação de preços em função da qualidade do produto. A Lei Nº 9.279, de 14.05.96, possibilita aos setores produtivos brasileiros habilitarem-se a colocar no mercado produtos com Indicação de Procedência – IP, ou com Denominação de Origem - DO, que constituem as duas modalidades de Indicação Geográfica previstas na legislação brasileira. Considera-se IP o nome geográfico - do país, da cidade, da região ou da localidade do seu território, que se tenha tornado conhecido como centro de extração, produção ou fabricação de determinado produto ou de prestação de determinado serviço. Já na DO, o nome geográfico designa produto ou serviço cujas qualidades ou características se devam exclusiva ou essencialmente ao meio geográfico, incluindo os fatores naturais e humanos.\n A Região da Serra da Mantiqueira de Minas Gerais é a segunda Indicação Geográfica para café no Brasil. Esta indicação foi concedida pelo INPI em maio de 2011 para a APROCAM (Associação dos Produtores de Café da Mantiqueira) na modalidade Indicação de Procedência. A região delimitada para a utilização da IP compreende 22 municípios sendo eles: Baependi, Brasópolis, Cachoeira de Minas, Cambuquira, Campanha, Carmo de Minas, Caxambu, Conceição das Pedras, Conceição do Rio Verde, Cristina, Dom Viçoso, Heliodora, Jesuânia, Lambari, Natércia, Olímpio Noronha, Paraisópolis, Pedralva, Pouso Alto, Santa Rita do Sapucaí, São Lourenço e Soledade de Minas.\n Inseridos nesse contexto, os cafeicultores da APROCAM - Associação de Produtores de Café da Mantiqueira e da COCARIVE – Cooperativa Regional do Vale do Rio Verde, buscaram a cooperação da Empresa de Pesquisa Agropecuária de Minas Gerais que, em parceria com a Universidade Federal de Lavras, a Embrapa Café, o Instituto Agronômico de Campinas, o Instituto Mineiro de Agropecuária e a Universidade de Brasília, reuniram-se em um esforço conjunto para dar o embasamento técnico-científico necessário à conformidade de padrões de identidade e qualidade do café da região, visando à obtenção de uma Denominação de Origem. Os resultados obtidos possibilitam o melhor entendimento dos fatores envolvidos na expressão da qualidade da bebida dos cafés da Mantiqueira e geram expectativa de agregação de valor ao produto. Os estudos são também fundamentais para o fomento, regulamentação e implementação de projetos de DO para os cafés do Brasil. O protocolo criado estabelece procedimentos para a inspeção e fiscalização da qualidade dos cafés produzidos nessa região pelas organizações ou instituições vinculadas ao Ministério da Agricultura, tendo em vista a verificação da rastreabilidade e conformidade com os padrões de qualidade estabelecidos.\n Localização e características ambientais da Região da Serra da Mantiqueira de Minas Gerais\n A Região da Serra da Mantiqueira de Minas Gerais, delimitada pela Indicação Geográfica, compreende os municípios de Baependi, Brasópolis, Cachoeira de Minas, Cambuquira, Campanha, Carmo de Minas, Caxambu, Conceição das Pedras, Conceição do Rio Verde, Cristina, Dom Viçoso, Heliodora, Jesuânia, Lambari, Natércia, Olímpio Noronha, Paraisópolis, Pedralva, Pouso Alto, Santa Rita do Sapucaí, São Lourenço e Soledade de Minas. Esta região localiza-se na Zona Fisiográfica Sul/sudeste do estado de Minas Gerais, fazendo parte das microrregiões São Lourenço, Itajubá, Santa Rita do Sapucaí e Varginha, pertencente à Bacia do Rio Grande e cortada pelos rios Sapucaí, Verde e Rio Grande (IBGE, 2008).",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Localização e características ambientais da Região da Serra da Mantiqueira de Minas Gerais",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),

                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: const SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A Região da Serra da Mantiqueira de Minas Gerais, delimitada pela Indicação Geográfica, compreende os municípios de Baependi, Brasópolis, Cachoeira de Minas, Cambuquira, Campanha, Carmo de Minas, Caxambu, Conceição das Pedras, Conceição do Rio Verde, Cristina, Dom Viçoso, Heliodora, Jesuânia, Lambari, Natércia, Olímpio Noronha, Paraisópolis, Pedralva, Pouso Alto, Santa Rita do Sapucaí, São Lourenço e Soledade de Minas. Esta região localiza-se na Zona Fisiográfica Sul/sudeste do estado de Minas Gerais, fazendo parte das microrregiões São Lourenço, Itajubá, Santa Rita do Sapucaí e Varginha, pertencente à Bacia do Rio Grande e cortada pelos rios Sapucaí, Verde e Rio Grande (IBGE, 2008).",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/1.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A região de estudo possui uma extensão territorial de 549.269 ha com altitudes mínimas de 812m que compreende o município de Santa Rita do Sapucaí chegando a altitudes máximas de 2.252m para o município de Baependi. A temperatura média anual da região é de 17,9°C sendo observadas médias para temperaturas mínimas de 13°C no município de Paraisópolis e, máximas de 18,5°C para campanha. A precipitação média anual da região fica em torno de 1.665mm, a máxima em 1.774mm observada para o município de Paraisópolis e a mínima em 1.605mm para o município de Campanha. Sua posição geográfica encontra-se inserida em um retângulo envolvente com as coordenadas latitudes sul de 21° 39’ 43’’/22°46’10’’e longitude de 46° 2’ 20’’/44°34’28’’ a oeste conforme apresentado na Figura 1.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/2.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Caracterização ambiental da Região da Serra da Mantiqueira de Minas Gerais",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "O Para que fosse possível atingir os objetivos e metas propostos no projeto, foram realizadas ações em diferentes escalas abrangendo desde a escala regional até a escala detalhada, esta última realizada em uma área de estudo selecionada como representativa de toda a região.\nA primeira etapa do trabalho consistiu em um levantamento de campo para reconhecimento de toda a região. Posteriormente, realizou-se o levantamento de informações secundárias sobre o meio físico e biótico (solos, relevo, clima, vegetação, ocupação agrícola), sendo utilizados como base mapas disponíveis do meio físico e cartas planialtimétricas do IBGE (1973). As informações obtidas foram analisadas e compatibilizadas (ajustadas projeções) por meio dos SIGs SPRING e ArcGis®.\nCom base nestes mapas iniciais foi criado um banco de dados geográfico (BDG) para o armazenamento das geoinformações geradas pelo projeto. Para o mapeamento dos municípios que compõe a região cafeeira da Mantiqueira foram selecionadas imagens do satélite RapidEye . As imagens foram selecionadas do acervo que recobre o estado de Minas Gerais, tendo sido escolhidas as cenas com menor cobertura de nuvens do ano de 2009 (Figura 4).\nUm modelo digital de elevação foi gerado a partir das curvas de nível do Instituto Brasileiro de Geografia e Estatística (IBGE), na escala 1:50.000, com eqüidistância das curvas de nível 20 metros. O MDE com resolução espacial de 25 metros foi gerado por meio do interpolador Spatial Analyst Tools, topo to raster, do SIG ArcGIS 9.3. A partir do MDE, foram gerados os mapas de altitude e declividade, sendo utilizada a função Slope para a declividade. Posteriormente, foi realizada a reclassificação da declividade tendo como base as classes de relevo estabelecidas pela EMBRAPA (1999), ou seja: plano (0-3%), suave ondulado (3-8%), ondulado (8-20%), forte ondulado (20-45%), montanhoso (45-75%) e escarpado (> 75%).\nDados meteorológicos de estações do entorno e do interior da região de estudo foram obtidos do Agritempo visando a elaboração de mapas da distribuição das variáveis precipitação total anual e temperaturas mensais para os anos de 2008 a 2011. A partir das coordenadas dos pontos das estações meteorológicas e dos valores assumidos pela variável desejada em cada ponto de observação, pode-se obter mapas da distribuição espacial desta variável utilizando-se um algoritmo de interpolação. Isto significa que os valores dos pontos desconhecidos foram estimados a partir dos pontos observados. Existem vários métodos de interpolação que podem fornecer diferentes resultados. Desta forma, a escolha do método depende de cada caso específico. O método mais utilizado para variáveis meteorológicas é o Inverso da Potência da Distância. Dentre os estudos pioneiros que utilizaram essa metodologia pode-se citar Assad et al. (1993), para estudar a frequência e probabilidade de ocorrência de veranicos na região dos Cerrados brasileiros e Pellegrino et al. (1998), para gerar mapas de temperatura do ar, água disponível no solo e outras variáveis ambientais para o estado de São Paulo. Em anexo, os mapas gerados podem ser visualizados.\nAtravés do MDE foi possível gerar mapas de altitude e declividade para todos os 22 municípios pertencentes à Região da Serra da Mantiqueira de Minas Gerais.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/3.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Altitude",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "Caracterizando as altitudes mínimas, máximas e médias dos 22 municípios correspondentes deste estudo, descrito na Tabela 1, foi possível quantificar a distribuição das altitudes em cada município. Com este intuito e com a proposta de facilitar a visualização das áreas foi realizado o fatiamento em classes, baseando-se nesta distribuição, como apresentado no mapa da Região da Serra da Mantiqueira de Minas Gerais (Figura 5).",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/4.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "Após o fatiamento das altitudes por classes foi realizado o percentual das classes distribuídas nos 22 municípios como apresentado em gráfico na Figura 6.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/5.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "Pode ser observado no gráfico (Figura 6) que a maior percentagem de classe de altitude concentra-se abaixo de 900 e de 900-1000m perfazendo um total de 57% da área total de estudo.\nA caracterização do relevo foi realizada pelo fatiamento do mapa de declividade nas faixas estabelecidas pela Embrapa para as diferentes classes. Conforme apresentado na Figura 7 o mapa de declividade apresenta as classes relacionadas aos diferentes tipos de relevo reconhecidos pela Embrapa, sendo elas: 0-3% corresponde ao relevo plano, com desnivelamentos muito pequenos; 3-8% corresponde ao relevo suave ondulado, constituída por conjunto de colinas, apresentando declives suaves; 8-20% corresponde ao relevo ondulado, constituída por conjunto de colinas, apresentando declives moderados; 20-45% corresponde ao relevo forte ondulado, formada por morros, com declives fortes; 45-75% corresponde ao relevo montanhoso com predomínio de formas acidentadas, apresentando desnivelamentos grandes e declives fortes ou muito fortes; >75% corresponde ao relevo escarpado compreendendo superfícies muito íngremes com declives muito fortes.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/6.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "Após a descrição das classes por tipo de relevo foi realizado um gráfico (Figura 8) para melhor visualização e compreensão da distribuição em relação à área de estudo. A classe predominante é composta por um relevo forte ondulado e corresponde a um percentual de 42,9%. Com essas características do relevo forte ondulado torna-se impraticável a mecanização da cafeicultura na Região da Serra da Mantiqueira de Minas Gerais que somado ao relevo ondulado com 29,9% e ao montanhoso com 6,4% perfazem o total de 79,2% da área estudada com elevado grau de dificuldade na manutenção e colheita dos cafés. Esse resultado confirma a produção de cafés de montanhas sendo a maior parte da colheita manual, o que resulta em um maior custo para os produtores.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/7.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        " A cafeicultura na Região da Serra da Mantiqueira de Minas Gerais compreende uma área de 45.769,49 hectares, sendo que o total de hectares que perfazem os municípios da região de estudo é de 549.300 (ha). Para a representação da distribuição percentual dos cafés foi confeccionado um gráfico (Figura 9) apresentando os municípios em ordem decrescente de percentagem. Santa Rita do Sapucaí aparece em primeiro lugar com 14% da área de produção seguido pelo município de Carmo de Minas com 10%. O mapa com a espacialização da área de produção está representado na Figura 9. A relação de cada município com as respectivas áreas em hectare pode ser melhor observada na Tabela 2.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/8.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/9.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "Para melhor classificar a região da Serra da Mantiqueira de Minas Gerais por área plantada de café em cada faixa de altitude foi realizada a distribuição espacial no mapa a seguir compreendendo os 22 municípios (Figura 10).",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/10.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "A classe de altitude que predomina na Região de estudo, com 26% do total, é de 1.000 a 1.100 metros como apresentado no gráfico (Figura 11) com as percentagens das classes de altitude em área plantada de café. Considerando apenas as altitudes menores de 1.000 metros para toda a região, a porcentagem corresponde a 33% do total. Sendo que os 67% restantes são de altitudes acima de 1.000 chegado até 1.400 metros caracterizando os cafés do território estudado tipicamente montanhoso.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/11.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "A distribuição das áreas de produção de café por classe de declividade está representada no mapa apresentado na Figura 12. O mapa apresenta as classes seguindo as determinações da Embrapa como citado anteriormente. A percentagem de cada classe de relevo dentro da área de produção predominante na Região de estudo pode ser observada no gráfico abaixo (Figura 13). Pode ser observado que cerca de 31% da região é constituída por relevo suave ondulado seguido pelo relevo ondulado com 26%.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/12.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/13.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "Para a caracterização e mapeamento climático da Região da Serra da Mantiqueira de Minas Gerais foram utilizados dados climáticos do Zoneamento Ecológico Econômico de Minas Gerais (ZEE-MG) elaborado por Carvalho et al. (2007) e dados meteorológicos históricos disponibilizados pelo AGRITEMPO e Fundação Procafé. Para a elaboração dos mapas do ZEE foram utilizadas as Normais Climatológicas referentes aos dados médios de 30 anos, no período de 1961 a 1990. O Agritempo - Sistema de Monitoramento Agrometeorológico, permite aos usuários o acesso, a informações meteorológicas e agrometeorológicas de diversos municípios e estados brasileiros. Os dados são recebidos de várias instituições, em diferentes formatos, e passam por um processo de migração, incluindo a validação, antes de serem inseridos no banco de dados. Estão disponíveis no sistema dados de 84 estações de Minas Gerais, coletados e armazenados desde 1999 pela Companhia Energética de Minas Gerais (Cemig) e os dados nacionais, a partir de 2001, de estações pertencentes ao Instituto Nacional de Meteorologia (INMET). A Fundação Procafé efetua o monitoramento constante das condições climáticas e fitossanitárias de lavouras café das regiões Sul e Oeste de Minas Gerais. Neste monitoramento, além das médias climáticas e dos índices de pragas e doenças, é realizado o balanço hídrico de água no solo e as médias de crescimento e enfolhamento das lavouras cafeeiras, que contribuem para o entendimento dos efeitos do clima nas diferentes fases fenológicas do cafeeiro e suas conseqüências para a produção final das plantas. Na região Sul de Minas estão instaladas 4 estações meteorológicas, entre elas a estação de Carmo de Minas.\n Nas Figuras 14 e 15 são apresentadas a espacialização dos dados climáticos disponibilizados pelo ZEE-MG para pluviosidade e temperatura respectivamente.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/14.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mantiqueira/15.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.justify,
                        "A pluviosidade anual mínima, máxima e média foram 1605, 1774 e 1667 mm, respectivamente, conforme apresentado na Figura 14.\nNa Figura 15 pode ser observada a espacialização das temperaturas mínima, máxima e média respectivamente (13.6, 18,5 e 17,2 °C) de todos os municípios que compõe a Região da Serra da Mantiqueira de Minas Gerais.\nOs dados das temperaturas mínimas e máximas do total dos 22 municípios estão descritos na Tabela 4 e pode ser observado que a mínima de 13,6°C apresentada compreende o município de Paraisópolis e a máxima de 18,5°C observada para o município de Campanha.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
