import 'package:curriculo/homepage.dart';
import 'package:curriculo/layouts/desktop/mapeamento/mantiqueira.dart';
import 'package:curriculo/layouts/desktop/mapeamento/tres_pontas.dart';
import 'package:curriculo/layouts/desktop/mapeamento/sebastiao.dart';
import 'package:curriculo/layouts/mobile/contatoMobi.dart';
import 'package:curriculo/layouts/mobile/mapeamentoMob/machadoMob.dart';
import 'package:curriculo/layouts/mobile/mapeamentoMobi.dart';
import 'package:curriculo/layouts/mobile/projtosMobi.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'layouts/desktop/contatoDesk.dart';
import 'layouts/desktop/mapeamento/machado.dart';
import 'layouts/desktop/mapeamentoDesk.dart';
import 'layouts/desktop/protejetosDesk.dart';
import 'layouts/mobile/mapeamentoMob/mantiqueiraMob.dart';
import 'layouts/mobile/mapeamentoMob/sebastiaoMob.dart';
import 'layouts/mobile/mapeamentoMob/tresPontasMobi.dart';
import 'publicacoes.dart';

const kDefaultShadown =
    BoxShadow(offset: Offset(0, 4), blurRadius: 4, color: Colors.black26);

const kDefaultPadding = 20.0;
const kSecundaryColor = Color.fromARGB(183, 255, 255, 255); //0XFFFE6D8E
const kTextColor = Color.fromARGB(255, 27, 49, 6);
const kTextLightColor = Color(0XFF9A9BB2);
const kDefaultPadding2 = 3.0;
const kbackgroundColor = Color.fromARGB(255, 226, 182, 99);
const kbackgroundColorSec = Color.fromARGB(183, 255, 255, 255);
const kfontText = FontWeight.normal;

final Map<String, Widget> menuDesk = {
  "Inicio": const HomePage(),
  "Mapeamento de Pesquisas": const MapeamentoDesk(),
  "Projetos": const ProjetosDesk(),
  "Publicações Cientificas": Publicacoes(),
  "Equipe GeoSolos": const ContatoDesk()
};

final Map<String, Widget> menuMobi = {
  "Inicio": const HomePage(),
  "Mapeamento de Pesquisas": const MapeamentoMobi(),
  "Projetos": const ProjetosMobi(),
  "Publicações Cientificas": Publicacoes(),
  "Equipe GeoSolos": const ContatoMobi()
};

final Map<String, Widget> menumapeamento = {
  "Página Inicial": const HomePage(),
  "Machado": const Machado(),
  "Mantiqueira de Minas": const Mantiqueira(),
  "São Sebastião do Paraíso": const Sebastiao(),
  "Três Pontas": const TresPontas(),
};
final Map<String, Widget> menumapeamentomobi = {
  "Página Inicial": const HomePage(),
  "Machado": const MachadoMobi(),
  "Mantiqueira de Minas": const MantiqueiraMobi(),
  "São Sebastião do Paraíso": const SebastiaoMobi(),
  "Três Pontas": const TresPontasMobi(),
};

final Map<String, String> equipeTecnica = {
  'Franklin Daniel Inácio': 'Agrônomo',
  'Larissa Machado Rodrigues Monteiro': 'Estudante Graduação UFLA',
  'Tiago Henrique da Silva': 'Tecnólogo em Meio Ambiente',
  'Wesley Ribeiro de Souza': 'Bacharel em Sistemas de Informação',
};

List<String> listaFotos = [
  'assets/equipe/franklin.jpg',
  'assets/equipe/wesley.jpg',
  'assets/equipe/tiago.jpg',
  'assets/equipe/wesley.jpg',
];

class PdfViewerPage extends StatelessWidget {
  final String pdfPath;

  const PdfViewerPage({Key? key, required this.pdfPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visualizador de PDF',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 112, 90, 49),
            )),
        backgroundColor: kbackgroundColor,
        centerTitle: true,
      ),
      body: SfPdfViewer.network(
        pdfPath,
      ),
    );
  }
}

final List<Map<String, String>> materialItens = [
  {
    "titulo":
        "Geotecnologias na Integração, Espacialização e Visualização de Dados de Pesquisa da Cafeicultura Mineira",
    "descricao":
        "Ao longo dos últimos dez anos, pesquisadores vinculados ao Consórcio Brasileiro de Pesquisa Cafeeira (CBP&D/Café) produziram um grande volume de informações e conhecimentos tácitos e explícitos sobre a cafeicultura mineira.",
    "imagemUrl": 'assets/projetos/1.png',
  },
  {
    "titulo":
        "Identificação de áreas cafeeiras por meio de geotecnologia e abordagens automatizadas não probabilísticas",
    "descricao":
        "Este projeto tem como função a definição de um sistema de classificação automática de imagens de satélite que seja adequado para a identificação e mapeamento do uso e ocupação das terras, com ênfase na cultura do café, por meio de um modelo de Redes Neurais Artificiais.",
    "imagemUrl": 'assets/projetos/2.png',
  },
  {
    "titulo":
        "Distribuição espacial e padrões ambientais dos cafés especiais da microrregião da Serra da Mantiqueira de Minas Gerais, por meio de processamentos geocomputacionais",
    "descricao":
        "O planejamento agrícola se baseia no levantamento dos fatores edafoclimáticos que definem as aptidões agrícolas. O nível de conhecimento destes fatores no tempo e espaço determina a precisão com que os planejamentos poderão ser executados e utilizados. O Brasil ainda é um país carente de caracterizações detalhadas de seus recursos naturais e é nesta lacuna que as geotecnologias e os sistemas computacionais podem contribuir.",
    "imagemUrl": 'assets/projetos/3.jpg',
  },
  {
    "titulo":
        "Mineração de Dados na Identificação de Padrões Espectrais, Espaciais e Climáticos para a Modelagem de Ocorrência de Pragas e Doenças do Cafeeiro no Sul de Minas Gerais",
    "descricao":
        "Uma das maiores dificuldades para implementação de monitoramentos fitossanitários baseado em variáveis climáticas é a aquisição de dados meteorológicos locais.",
    "imagemUrl": 'assets/projetos/4.png',
  },
  {
    "titulo":
        "Caracterização Ambiental de Regiões Cafeeiras para Indicação Geográfica",
    "descricao":
        "Na perspectiva moderna de gestão do território, toda ação de planejamento, ordenação ou monitoramento do espaço deve incluir a análise integrada dos componentes do ambiente. A caracterização ambiental é fundamental para o planejamento agrícola e o nível de detalhamento desta, no tempo e no espaço, determina a escala em que os planejamentos podem ser executados e utilizados.",
    "imagemUrl": 'assets/projetos/5.jpg',
  },
  {
    "titulo":
        "Caracterização de agroecossistemas cafeeiros da região Sul de Minas Gerais",
    "descricao":
        "No presente trabalho pretende-se levantar informações sobre o meio físico da região Sul de Minas, uma das principais regiões produtoras de café do estado de Minas Gerais.",
    "imagemUrl": 'assets/projetos/6.jpg',
  },
];
