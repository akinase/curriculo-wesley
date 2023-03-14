// ignore: file_names
import 'package:curriculo/layouts/desktop/projetosDesk/geotecIntegracao.dart';
import 'package:flutter/material.dart';
import '../../constantes.dart';
import 'projetosDesk/caractAgroecossistemas.dart';
import 'projetosDesk/caractAmbiental.dart';
import 'projetosDesk/distriEspacial.dart';
import 'projetosDesk/identiAreas.dart';
import 'projetosDesk/mineracaoPragaDoencas.dart';

final List<Map<String, String>> materialItens = [
  {
    "titulo":
        "Geotecnologias na Integração, Espacialização e Visualização de Dados de Pesquisa da Cafeicultura Mineira",
    "descricao":
        "Ao longo dos últimos dez anos, pesquisadores vinculados ao Consórcio Brasileiro de Pesquisa Cafeeira (CBP&D/Café) produziram um grande volume de informações e conhecimentos tácitos e explícitos sobre a cafeicultura mineira.",
    "imagemUrl": "assets/projetos/1.png",
  },
  {
    "titulo":
        "Identificação de áreas cafeeiras por meio de geotecnologia e abordagens automatizadas não probabilísticas",
    "descricao":
        "Este projeto tem como função a definição de um sistema de classificação automática de imagens de satélite que seja adequado para a identificação e mapeamento do uso e ocupação das terras, com ênfase na cultura do café, por meio de um modelo de Redes Neurais Artificiais.",
    "imagemUrl": "assets/projetos/2.png",
  },
  {
    "titulo":
        "Distribuição espacial e padrões ambientais dos cafés especiais da microrregião da Serra da Mantiqueira de Minas Gerais, por meio de processamentos geocomputacionais",
    "descricao":
        "O planejamento agrícola se baseia no levantamento dos fatores edafoclimáticos que definem as aptidões agrícolas. O nível de conhecimento destes fatores no tempo e espaço determina a precisão com que os planejamentos poderão ser executados e utilizados. O Brasil ainda é um país carente de caracterizações detalhadas de seus recursos naturais e é nesta lacuna que as geotecnologias e os sistemas computacionais podem contribuir.",
    "imagemUrl": "assets/projetos/3.jpg",
  },
  {
    "titulo":
        "Mineração de Dados na Identificação de Padrões Espectrais, Espaciais e Climáticos para a Modelagem de Ocorrência de Pragas e Doenças do Cafeeiro no Sul de Minas Gerais",
    "descricao":
        "Uma das maiores dificuldades para implementação de monitoramentos fitossanitários baseado em variáveis climáticas é a aquisição de dados meteorológicos locais.",
    "imagemUrl": "assets/projetos/4.png",
  },
  {
    "titulo":
        "Caracterização Ambiental de Regiões Cafeeiras para Indicação Geográfica",
    "descricao":
        "Na perspectiva moderna de gestão do território, toda ação de planejamento, ordenação ou monitoramento do espaço deve incluir a análise integrada dos componentes do ambiente. A caracterização ambiental é fundamental para o planejamento agrícola e o nível de detalhamento desta, no tempo e no espaço, determina a escala em que os planejamentos podem ser executados e utilizados.",
    "imagemUrl": "assets/projetos/5.jpg",
  },
  {
    "titulo":
        "Caracterização de agroecossistemas cafeeiros da região Sul de Minas Gerais",
    "descricao":
        "No presente trabalho pretende-se levantar informações sobre o meio físico da região Sul de Minas, uma das principais regiões produtoras de café do estado de Minas Gerais.",
    "imagemUrl": "assets/projetos/6.jpg",
  },
];

class Projetos extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Projetos({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView.builder(
            itemCount: materialItens.length,
            itemBuilder: (BuildContext context, int index) {
              final materialItem = materialItens[index];
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GeotecIntegracao()),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IdentiAreas()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DistriEspacial()),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MineracaoPragaDoencas()),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CaractAmbiental()),
                      );
                      break;
                    case 5:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CaractAgroecossistemas()),
                      );
                      break;
                  }
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shadowColor: kbackgroundColor,
                  color: kbackgroundColorSec,
                  elevation: 20,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network(
                              materialItem["imagemUrl"]!,
                              fit: BoxFit.cover,
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    materialItem["titulo"]!,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                SizedBox(
                                  height: 200,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Text(
                                    materialItem["descricao"]!,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
