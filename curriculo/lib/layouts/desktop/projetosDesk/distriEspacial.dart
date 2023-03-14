// ignore: file_names
import 'package:flutter/material.dart';
import '../../../constantes.dart';
import '../../componete_menu_desktop.dart';

class DistriEspacial extends StatefulWidget {
  const DistriEspacial({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _DistriEspacialState createState() => _DistriEspacialState();
}

class _DistriEspacialState extends State<DistriEspacial>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ListaMenu(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            color: kbackgroundColor,
            child: const Center(
              child: Text(
                "Projeto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: kbackgroundColorSec,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Sobre o projeto'),
                Tab(text: 'Resultados'),
                Tab(text: 'Integrantes'),
                Tab(text: 'Financiadores'),
              ],
              labelColor: Colors.black,
              indicatorColor: kTextColor,
            ),
          ),
          Expanded(
            child: Container(
              color: kbackgroundColor,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "Distribuição espacial e padrões ambientais dos cafés especiais \nda microrregião da Serra da Mantiqueira de Minas Gerais, por meio de \nprocessamentos geocomputacionais",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Área de Estudo",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "O planejamento agrícola se baseia no levantamento dos fatores edafoclimáticos que definem as aptidões agrícolas. O nível de conhecimento destes fatores no tempo e espaço determina a precisão com que os planejamentos poderão ser executados e utilizados. O Brasil ainda é um país carente de caracterizações detalhadas de seus recursos naturais e é nesta lacuna que as geotecnologias e os sistemas computacionais podem contribuir. A caracterização, no tempo e espaço, dos agroecossistemas cafeeiros da microrregião da Serra da Mantiqueira do Sul de Minas é de extrema importância para o planejamento e gestão do setor cafeeiro e o desenvolvimento sócio-econômico regional. O mapeamento da qualidade do café produzido na região, com a delimitação de ambientes homogêneos, para o direcionamento das atividades agrícolas e da preservação dos recursos naturais, fornece os subsídios necessários para a formulação de políticas públicas voltadas ao estímulo da competitividade e da sustentabilidade do agronegócio café da região. O presente estudo tem como objetivo caracterizar detalhadamente os ambientes cafeeiros da microrregião da Serra da Mantiqueira mineira, desenvolvendo sistemas computacionais para modelar e mapear o relevo, os solos, o clima, o uso da terra, com a identificação das áreas ocupadas pelas lavouras cafeeiras, e a qualidade do café. A partir desta caracterização, conhecer a dinâmica espacial e temporal da cafeicultura regional, para estabelecer as relações entre a qualidade do café e o ambiente e fornecer a fundamentação científica requerida para a obtenção de Indicação Geográfica para os cafés especiais produzidos na região. Por meio das geotecnologias, criar um sistema de informações georreferenciado e interativo que será usado para a disponibilização, na internet, da base de dados, mapas e informações geradas pelo projeto.\n\nAs indicações geográficas representam uma nova filosofia de produção, voltada para a qualidade, a especialidade e a tipicidade, oriundas da origem da produção. A partir dos estudos propostos neste projeto será possível o entendimento dos fatores envolvidos na expressão da qualidade da bebida dos cafés da microrregião. Por este motivo o projeto reveste-se de grande importância na medida em que visa estabelecer um protocolo para o estabelecimento de padrões elevados de qualidade e agregação de valor ao produto em função da indicação geográfica, que poderá ter impactos sócio-econômicos positivos para os cafeicultores dos 22 municípios que compõem essa microrregião. Desta forma, por solicitação dos cafeicultores da APROCAM - Associação de Produtores de Café da Mantiqueira e da COCARIVE – Cooperativa Regional do Vale do Rio Verde, pesquisadores da Universidade Federal de Lavras, da Embrapa Café, do Instituto Agronômico de Campinas, da Empresa de Pesquisa Agropecuária de Minas Gerais, da Embrapa Meio Ambiente, da Embrapa Informática na Agropecuária, da Universidade de Brasília e da Universidade de Campinas, entre outras instituições colaboradoras, reuniram-se em um esforço conjunto para desenvolver um embasamento técnico e científico para a conformidade de padrões de identidade e qualidade do café da região conhecida como “Serra da Mantiqueira”, tendo em vista a delimitação geográfica com a caracterização do potencial climático e edáfico para a cafeicultura de alto desempenho sensorial.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
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
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "Resultados",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Texto de citações e arquivos",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const SizedBox(
                                      width: 800,
                                      child: Text(
                                        "SILVA, L.F.M.; ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; BORÉM, F.M. Avaliação de interpoladores espaciais para representação da temperatura do ar na região da Serra da Mantiqueira, Minas Gerais. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 42., 2013. Fortaleza. Anais... Jaboticabal:SBEA, 2013.\n\n LUZ, M.P.S.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, F.M. Caracterização da temperatura do ar e precipitação em áreas cafeeiras na região da Serra da Mantiqueira de Minas Gerais. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 42., 2013. Fortaleza. Anais... Jaboticabal:SBEA, 2013\n\n VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; SILVA, L.F.M.; BORÉM, F.M.; MEIRELES, E.J.L.; BORÉM R.A.T. Espacialização da temperatura do ar na região de Indicação Geográfica da Mantiqueira de Minas. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013. \n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Comportamento sazonal do índice espectral EV12 do sensor orbital MODIS para o monitoramento de áreas cafeeiras do Sul de Minas Gerais. In: CONGRESSO BRASILEIRO DE ENGENHARIA AGRÍCOLA, 43., 2014, Campo Grande. Anais... Jaboticabal:SBEA, 2014.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
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
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "Equipe",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Coordenadora",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: const SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Helena Maria Ramos Alves.\n",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Integrantes",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 40),
                                    child: const SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Tatiana Grossi Chquiloff Vieira, \nMaurício Alves Moreira, \nRosângela Alves Tristão Borém, \nMargarete Marin Lordelo Volpato, \nH. ANDRADE, \nTiago Bernardes, \nMarilusa Pinto Coelho Lacerda, \nElza Jacqueline Leite Meireles, \nMarcelo Ribeiro Malta, \nGerson Silva Giomo, \nFlávio Meira Borém, \nEder Pedroza Isquierdo, \nJuliana Neves Barbosa, \nEduardo Delgado Assad, \nEmília Hamada, \nHilton Silveira Pinto, \nSergio Parreiras Pereira, \nMarcelo Ângelo Cirillo, \nPaulo Henrique Grazziotti, \nMária Bruna Pereira Ribeiro.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
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
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "Financiadores",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Consórcio Brasileiro de Pesquisa e Desenvolvimento do Café",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}