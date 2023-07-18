// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../constantes.dart';
import '../../../menu.dart';

class MineracaoPragaDoencasMobi extends StatefulWidget {
  const MineracaoPragaDoencasMobi({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MineracaoPragaDoencasMobiState createState() =>
      _MineracaoPragaDoencasMobiState();
}

class _MineracaoPragaDoencasMobiState extends State<MineracaoPragaDoencasMobi>
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
      appBar: const ListaMenu(menu: "Projetos"),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: double.infinity,
            color: kbackgroundColor,
            child: const Center(
              child: Text(
                "Projeto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
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
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Mineração de Dados na Identificação de Padrões Espectrais, \nEspaciais e Climáticos para a Modelagem de Ocorrência de Pragas e Doenças \ndo Cafeeiro no Sul de Minas Gerais",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Área de Estudo",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "Uma das maiores dificuldades para implementação de monitoramentos fitossanitários baseado em variáveis climáticas é a aquisição de dados meteorológicos locais. A rede de estações de superfície é deficiente e mal distribuída e nem sempre os dados são disponibilizados. Deve-se considerar, ainda, que a grande variabilidade espacial e temporal destes dados impede que os dados locais representem adequadamente uma região. Uma alternativa para superar este problema é utilizar dados e produtos de imagens obtidas por satélites, em função da excelente cobertura espacial e temporal, e de sua relação com as variações do clima e da vegetação de uma região. São inúmeras as aplicações dos dados de sensoriamento remoto em estudos agrometeorológicos e de dinâmica da vegetação. Entretanto, são escassos os exemplos de aplicação na identificação e monitoramento de pragas e doenças nas lavouras, uma vez que, para o desenvolvimento desse tipo de modelagem, é necessária a utilização de metodologias que permitam a análise de grande número de dados. Diante deste problema o presente projeto objetiva aplicar técnicas de mineração de dados para encontrar e validar modelos de dados climáticos e espectrais associados à ocorrência de pragas e doenças da cafeicultura, de forma que possam ser utilizados no monitoramento fitossanitário e estender esses modelos para condições climáticas previstas nas projeções do IPCC. Para tanto os estudo será realizada nos municípios de São Sebastião do Paraíso e Machado, localizados no Sul de Minas Gerais, que além de possuir fazendas da EPAMIG (Empresa de Pesquisa Agropecuária de Minas Gerais) com histórico de trinta anos de monitoramento fitossanitário, possuem também estações meteorológicas pertencentes à rede oficial do INMET. A metodologia baseia-se no processo de descoberta de conhecimento (KDD) proposto por Fayyad et al (1996). Espera-se com este estudo desenvolver modelos matemáticos e softwares que possam monitorar a ocorrência/desenvolvimento das principais pragas e doenças de cafeeiros no Sul de Minas Gerias, utilizando-se produtos de imagens do satélite TERRA/MODIS, que são geradas periodicamente, possibilitando o monitoramento da cafeicultura com um menor custo quando comparado ao monitoramento tradicional. Estes modelos poderão ser utilizados pelos diversos setores do agronegócio café para tomada de decisão relacionada ao manejo da cultura. Proporcionará economia reduzindo o custo de produção por meio de aplicações oportunas de medidas de controle e segurança envolvendo não apenas a cultura, reduzindo efeitos tóxicos sobre as plantas, mas também o ambiente externo, reduzindo a exposição de agrotóxicos a outras espécies de plantas, aos trabalhadores e aos consumidores.",
                                        style: TextStyle(
                                          fontSize: 10,
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
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Resultados",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Texto de citações e arquivos",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        "ALVARENGA, M. T.; LACERDA, W. S.; ANDRADE, L. N.; VOLPATO, M. M. L.; CUNHA, R. L.; MARUJO, R. F. B. Mineração de Dados Espectrais e Climáticos para Modelagem de Ocorrência de Cercospora (Cercorsporacoffeicola Berkeley &Cooke) em Cafeeiros. In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 25., 2012, Lavras. Anais... Lavras:PRP-UFLA, 2012.\n\nBOELL, V.G; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; ALVARENGA, M.T.; SOUZA, J.C. Mineração de dados espectrais e climáticos para modelagem de ocorrência de broca do café (Hypothenemus hampei). In: CONGRESSO DE INICIAÇÃO CIENTÍFICA DA UFLA, 26., 2013. Anais... ... Lavras:PRP-UFLA, 2013.\n\nVOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, L.N.; SOARES, W.L.; SOUZA, V.C.O.; ALVARENGA, M.T.; BOELL, M.G. Mineração de dados espectrais para modelagem de ocorrência de Cercosporiose em cafeeiros. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nSOUZA, V.C.O.; CUNHA, L.R.; ANDRADE, L.N.; VOLPATO, M.M.L.; CARVALHO, V.L.; ESMIN, A.A.A. Técnicas de extração de conhecimentos aplicadas à modelagem de ocorrência da Cercosporiose ( Cercospora coffeicola Berkeley & Cooke) em cafeeiros na região Sul de Minas Gerais.  Coffe Science, Lavras, v.8, n.1, p.91-100, jan./mar. 2013",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 10,
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
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Equipe",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Coordenadora",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Margarete Marin Lordelo Volpato\n",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Integrantes",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 15),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Tatiana Grossi Chquiloff Vieira, \nPaulo Rebelles Reis, \nH.M.R. ALVES, \nWilian Soares Lacerda, \nH. ANDRADE, \nMarluce Rodrigues Pereira, \nElza Jacqueline Leite Meireles, \nEduardo Delgado Assad, \nEmília Hamada, \nJúlio César de Souza, \nRogério Antônio Silva, \nVicente Luis de Carvalho, \nAhmed Ali Abdalla Esmin, \nAline de Holanda Nunes Maia, \nDarlan Einsten Livramento, \nMauricio Sergio Zacarias, \nRodrigo Luz da Cunha, \nSara Maria Chalfoun.",
                                        style: TextStyle(
                                          fontSize: 10,
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
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              color: const Color.fromARGB(183, 255, 255, 255),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Financiadores",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Consórcio Brasileiro de Pesquisa e Desenvolvimento do Café",
                                        style: TextStyle(
                                          fontSize: 13,
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
