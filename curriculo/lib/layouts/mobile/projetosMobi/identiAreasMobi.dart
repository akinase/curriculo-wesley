// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../constantes.dart';
import '../../../menu.dart';

class IdentiAreasMobi extends StatefulWidget {
  const IdentiAreasMobi({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _IdentiAreasMobiState createState() => _IdentiAreasMobiState();
}

class _IdentiAreasMobiState extends State<IdentiAreasMobi>
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
                Tab(text: 'Sobre'),
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
                                      "Identificação de áreas cafeeiras por meio de geotecnologia e \nabordagens automatizadas não probabilísticas",
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
                                    padding: EdgeInsets.all(15),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.justify,
                                        "Este projeto tem como função a definição de um sistema de classificação automática de imagens de satélite que seja adequado para a identificação e mapeamento do uso e ocupação das terras, com ênfase na cultura do café, por meio de um modelo de Redes Neurais Artificiais.",
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
                                    padding: EdgeInsets.all(15),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        "ANDRADE, L.N.; VIEIRA, T.G.C.; LACERDA, W.S.; VOLPATO, M.M.L.; DAVIS JUNIOR, C.A.; Aplicação de redes neurais artificiais na classificação de áreas cafeeiras da região de Machado (MG). Coffee Science, Lavras, v.8, n.1, p.78-90, jan./mar. 2013",
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
                                    padding: EdgeInsets.all(20),
                                    child: SizedBox(
                                      width: 800,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Tatiana Grossi Chquiloff Vieira, \n",
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
                                        "Helena Maria Ramos Alves, \nMargarete Marin Lordelo Volpato,\nMaurício Alves Moreira,\nMarilusa Pinto Coelho Lacerda, \nElpídio Inácio Fernandes Filho,\nTiago Bernardes,\nTiago Gonçalves Botelho, \nWilian Soares Lacerda, \nMarluce Rodrigues Pereira.",
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
                                        fontSize: 13,
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
                                        "Fundação de Amparo à Pesquisa do Estado de Minas Gerais",
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