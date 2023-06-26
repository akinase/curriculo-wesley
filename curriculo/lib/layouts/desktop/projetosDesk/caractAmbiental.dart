// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../constantes.dart';

class CaractAmbiental extends StatefulWidget {
  const CaractAmbiental({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _CaractAmbientalState createState() => _CaractAmbientalState();
}

class _CaractAmbientalState extends State<CaractAmbiental>
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
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(40),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Caracterização Ambiental de Regiões Cafeeiras para Indicação Geográfica",
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
                                        "Na perspectiva moderna de gestão do território, toda ação de planejamento, ordenação ou monitoramento do espaço deve incluir a análise integrada dos componentes do ambiente. A caracterização ambiental é fundamental para o planejamento agrícola e o nível de detalhamento desta, no tempo e no espaço, determina a escala em que os planejamentos podem ser executados e utilizados. As metodologias para o estudo dos agroecossistemas têm evoluído rapidamente. Esta evolução deve-se, principalmente, às geotecnologias que, nas últimas décadas, têm contribuído, de forma econômica e eficiente, para a produção, a análise e a representação de informações sobre o espaço geográfico, da escala regional à global. Por meio de sua aplicação podem-se obter, entre outros, zoneamentos e mapeamentos de culturas agrícolas, bem como seus padrões de localização e evolução, e a identificação de áreas aptas para cada tipo de uso. É possível identificar a distribuição de unidades homogêneas do território e selecionar aquelas que são, a priori, as mais favoráveis para produção. Essas unidades são caracterizadas por um conjunto específico de características do clima, do relevo e do solo. Recentemente, geotecnologias também têm sido utilizadas para embasar processos de agregação de valor à produção agrícola por meio da proteção à propriedade intelectual em uma das modalidades aplicáveis ao agronegócio, a indicação geográfica. A indicação geográfica (IG) de produtos agroalimentares é um tema recente no agronegócio brasileiro, tendo despertado a atenção a partir dos anos 1990, com a constatação de que o mercado de produtos diferenciados cresce e se torna cada vez mais atraente. Os produtos com IG possuem, a rigor, um valor maior que os similares, devido aos seus atributos específicos de origem e qualidade (DUTRA et al., 2009). Num país amplo e diverso, como o Brasil, é possível identificar muitos produtos com diferencial ligado ao território, entre os quais se destaca o café. O Brasil é o maior produtor e também o segundo mercado consumidor de café do mundo. Contudo, ainda está muito atrás de países com tradição na exportação de café industrializado, caso da Itália e da Alemanha, que processam o grão e agregam valor ao produto sem cultivar um pé sequer da planta (PROENÇA, 2006). História, tradição e qualidade não faltam ao café brasileiro que, há uma década, começou a investir na demarcação de territórios, buscando valorizar as características de cada área e agregar valor à sua produção (LIMA, 2007). Na realidade, a delimitação e a caracterização das regiões cafeeiras ou territórios de produção, com base no potencial qualitativo dos ecossistemas, surge como uma tendência no Brasil e no mundo em um momento propício para consolidar a imagem de um país com excelência em café em todos seus aspectos.",
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
                                        "SILVA, L.F.M.; ALVES, H.M.R.; VIEIRA, T.G.C.; BORÉM, R.A.T.; ANGELINI, P.H.B.; VOLPATO, M.M.L. Avaliação de modelos digitais de elevação para aplicação na caracterização do ambiente cafeeiro na região da Serra da Mantiqueira, MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 16., Foz do Iguaçu. Anais... São José dos Campos:INPE, 2013, p.4716-4722.\n\nALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; SILVA, L.F.M.; LACERDA, M.P.C.; BORÉM, F.M.; Mapeamento do uso da terra da Indicação Geográfica da região da Serra da Mantiqueira de Minas Gerias. In: CONGRESSO BRASILEIRO DE CIÊNCIA DO SOLO, 34., 2013,Florianópolis. Anais... Florianópolis: EPAGRI E SBCS, 2013.\n\nVIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; BORÉM, R.A.T.; LACERDA, M.P.C.; SOUZA, V.C.O.; BORÉM, F.M. Mapeamento do uso da terra da Indicação Geográfica Mantiqueira de Minas. . In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 8., 2013. Salvador. Anais... Brasília:Embrapa Café, 2013.",
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
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
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
                                        "Tatiana Grossi Chquiloff Vieira\n",
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
                                        textAlign: TextAlign.center,
                                        "Helena Maria Ramos Alves, \nMargarete Marin Lordelo Volpato.",
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
                                children: <Widget>[
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
