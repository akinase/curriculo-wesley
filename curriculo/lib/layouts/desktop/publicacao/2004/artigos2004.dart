import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2004 extends StatelessWidget {
  Artigos2004({Key? key}) : super(key: key);

  List<Map<String, String>> publi2004 = [
    {
      'PDF':
          ' Evolução de áreas cafeeiras na região de São Sebastião do Paraíso/MG em relação ao uso da terra e às classes de solos, utilizando o Sistema de Informação Geográfica SPRING. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/EVOLUÇÃO DE ÁREAS CAFEEIRAS NA REGIÃO DE SÃO SEBASTIÃO DO PARAÍSO - MG.pdf',
    },
    {
      'PDF':
          'Characterization of coffee agroecosystems of The state of Minas Gerais in Brazil. In: CONGRESSO DE ISPRS - SOCEIDADE INTERNACIONAL DE FOTOGRAMETRIA E SENSOPRIAMENTO REMOTO, 20.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Characterization of coffee agroecosystems of The state of Minas Gerais in Brazil.pdf',
    },
    {
      'PDF':
          'Uso de geotecnologias no estudo do ambiente cafeeiro de Machado – região sul de Minas. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Uso de geotecnologias no estudo do ambiente cafeeiro de Machado – região sul de Minas.pdf',
    },
    {
      'PDF':
          'Uso e ocupação da terra na região de Serra Negra em Patrocínio-MG por meio de Sistemas de Informação Geográfica. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Uso e ocupação da terra na região de Serra Negra em Patrocínio-MG por meio de Sistemas de Informação Geográfica.pdf',
    },
    {
      'PDF':
          'Dinâmica das áreas de cafeeiros em função das classes de declividade do relevo e estimativa da produtividade  na região de Três Pontas-M.G. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Dinâmica das áreas de cafeeiros em função das classes de declividade do relevo e estimativa da produtividade  na região de Três Pontas-M.G.pdf',
    },
    {
      'PDF':
          'Uso do ambiente web para a divulgação de resultados de pesquisas cafeeiras utilizando técnicas de geoprocessamento. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Uso do ambiente web para a divulgação de resultados de pesquisas cafeeiras utilizando técnicas de geoprocessamento.pdf',
    },
    {
      'PDF':
          'Uso do Sistema de Informação Geográfica para avaliação ambiental da propriedade a partir de dados regionais: Estudo de caso da Fazenda Diamantina, São Sebastião do Paraíso. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Uso do Sistema de Informação Geográfica para avaliação ambiental da propriedade a partir de dados regionais.pdf',
    },
    {
      'PDF':
          'Evolução de áreas cafeeiras na região de Patrocínio/MG em relação ao uso da terra e às classes de orientação de vertente, utilizando o Sistema de Informação Geográfica SPRING. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 30.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Evolução de áreas cafeeiras na região de Patrocínio-MG em relação ao uso da terra e às classes de orientação de vertente.pdf',
    },
    {
      'PDF':
          'Crop parameters for the evaluation of the spectral response of coffee (Coffea Arabica) areas within the state of Minas Gerais, Brazil. . In: CONGRESSO DE ISPRS - SOCEIDADE INTERNACIONAL DE FOTOGRAMETRIA E SENSOPRIAMENTO REMOTO, 20.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/Crop parameters for the evaluation of the spectral response of coffee  areas within the state of Minas Gerais.pdf',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Container(
              color: kbackgroundColorSec,
              child: SizedBox(
                width: 800,
                child: ListView.builder(
                  itemCount: publi2004.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2004[index]['PDF']!),
                      onTap: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Publi2014(
                              pdfPath: publi2014[index]['path']!,
                            ),
                          ),
                        );
                        */
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
}
