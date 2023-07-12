// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../constantes.dart';
import '../../../menu.dart';

class GeotecIntegracao extends StatefulWidget {
  const GeotecIntegracao({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _GeotecIntegracaoState createState() => _GeotecIntegracaoState();
}

class _GeotecIntegracaoState extends State<GeotecIntegracao>
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
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: Text(
                                      "Geotecnologias na Integração, Espacialização e Visualização \nde Dados de Pesquisa da Cafeicultura Mineira",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "Ao longo dos últimos dez anos, pesquisadores vinculados ao Consórcio Brasileiro de Pesquisa Cafeeira (CBP&D/Café) produziram um grande volume de informações e conhecimentos tácitos e explícitos sobre a cafeicultura mineira. No entanto, essas informações estão dispersas, são de difícil acesso e seu volume excede a capacidade de análise pelos métodos tradicionais. Esses métodos podem gerar relatórios a partir dos dados, mas não conseguem analisá-los como um todo. Sendo assim, neste projeto pretende-se integrar, em um único banco de dados geográfico (BDG), informações de dez anos de pesquisa, geradas pelos pesquisadores da Empresa de Pesquisa Agropecuária de Minas Gerais – Epamig e Instituto Nacional de Pesquisas Espaciais – INPE, vinculados ao CBP&D/Café e relaciona-las a uma base de dados cartográfica digital, provendo assim, mecanismos de difusão de informação sobre a cafeicultura mineira para a comunidade científica, tomadores de decisão e demais membros da cadeia produtiva do café. Dados de outras instituições não vinculados ao CBP&D/Café também serão espacializados, integrados, sistematizados e disponibilizados por este projeto. A área de estudo abrangerá o estado de Minas Gerais, em especial, a mesorregião Sul/Sudoeste de Minas. Dentre as áreas do conhecimento cujos resultados de pesquisa serão integrados estão o melhoramento genético, manejo e incidência de pragas e doenças, qualidade de bebida e sementes, caracterização ambiental e uso da terra, dados de produção, área plantada, dados climáticos. Ao final deste projeto, o banco de dados integrado da cafeicultura de Minas Gerais estará disponível na Internet para consultas textuais e espaciais. Trata-se de um projeto que viabilizará a organização/integração de informações tecnológicas já existentes de forma inovadora. O principal impacto desse projeto será prover um ambiente integrado de consulta sobre a cafeicultura mineira, possibilitando a cadeia produtiva do café, acessar dados, informações e conhecimentos, permitindo análises de indicadores da cafeicultura e sua relação com o ambiente.",
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
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Resultados",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "LEME, D.S.; BOELL, M.G.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; ALVES, H.M.R. Banco de dados geográfico sobre a cafeicultura mineira: organização lógica e inserção de dados. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nANDRADE, L.N.; VIEIRA, T.G.C. ; VOLPATO, M.M.L.; SOUZA, V.C.O.; SOUZA, C.G.; ALVES, H.M.R. Modelagem, estruturação e implantação de um banco de dados geográfico de dados de pesquisa da cafeicultura mineira. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.6002-6009.\n\nMESQUITA JÚNIOR, C.H.; VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; LEME, D.S.; BOELL, M.G. Processo de desenvolvimento de um site utilizando WEB Mapping para o laboratório de Geoprocessamento Geosolos. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.\n\nVIEIRA, T.G.C.; SOUZA, V.C.O.; VOLPATO, M.M.L.; ANDRADE, L.N.; ALVES, H.M.R.; SOUZA, C.G. Sistema de informação geográfica na integração do conhecimento científico e tecnológico da cafeicultura em Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.0688-0695.\n\nVENTURIN R.P.; SILVA, V.A.; CUNHA, R.L.; VOLPATO, M.M.L.; CHALFOUN, S.M.; CARVALHO, G.R.; CARVALHO, V.L. A pesquisa e as mudanças climáticas na cafeicultura. Informe Agropecuário. Semana Internacional do Café, Belo Horizonte, v. 34, Edição Especial, p. 34-43, 2013",
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
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Equipe",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding: EdgeInsets.all(10),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Tatiana Grossi Chquiloff Vieira, \n",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: kfontText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        "Helena Maria Ramos Alves, \nMargarete Marin Lordelo Volpato,\nAntonio Rodrigues Vieira,\nMarilusa Pinto Coelho Lacerda, \nMarcelo Ribeiro Malta,\nAndré Luiz Zambalde,\nCésar Elias Botelho, \nEduardo Delgado Assad, \nEmília Hamada, \nGladston Rodrigues Carvalho, \nHilton Silveira Pinto, \nJuliana Costa Rezende, \nJúlio César de Souza, \nRogério Antônio Silva, \nSergio Parreiras Pereira, \nSilvio Julio R. Chaves, \nVicente Luis de Carvalho. ",
                                        textAlign: TextAlign.center,
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
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Financiadores",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Consórcio Brasileiro de Pesquisa e Desenvolvimento do Café.",
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
