import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2000 extends StatelessWidget {
  Artigos2000({Key? key}) : super(key: key);

  List<Map<String, String>> publi2000 = [
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros em regiões produtoras de Minas Gerais por meio do geoprocessamento. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Caracterização de agroecossistemas cafeeiros em regiões produtoras de Minas Gerais por meio do geoprocessamento.pdf',
    },
    {
      'PDF':
          'Utilização do Spring para avaliação do uso da terra em agroecossistemas cafeeiros da região de São Sebastião do Paraíso- MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Utilização do Spring para avaliação do uso da terra em agroecossistemas cafeeiros da região de São Sebastião do Paraíso- MG.pdf',
    },
    {
      'PDF':
          'Sistemas de Informação Geográfica na avaliação de impactos ambientais provenientes de atividades agropecuárias.Informe Agropecuário. Agropecuária e Ambiente,Belo Horizonte.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Sistemas de Informação Geográfica na avaliação de impactos ambientais provenientes de atividades agropecuárias.pdf',
    },
    {
      'PDF':
          'O uso do software SPRING no zoneamento geomorfopedológico da região de Machado, MG, ocupada pela cafeicultura. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/O uso do software SPRING no zoneamento geomorfopedológico da região de Machado MG ocupada pela cafeicultura.pdf',
    },
    {
      'PDF':
          'Uso de sistema de informação geográfica na determinação de classes de susceptibilidade erosiva dos solos da região de Lavras, MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Uso de sistema de informação geográfica na determinação de classes de susceptibilidade erosiva dos solos da região de Lavras MG.pdf',
    },
    {
      'PDF':
          'Estimativa de áreas ocupadas pela cafeicultura em regiões produtoras de Minas Gerais por meio de geoprocessamento. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Estimativa de áreas ocupadas pela cafeicultura em regiões produtoras de Minas Gerais por meio de geoprocessamento.pdf',
    },
    {
      'PDF':
          'Utilização do Spring para avaliação do uso da terra em agroecossistemas cafeeiros da região de Lavras- MG. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Utilização do Spring para avaliação do uso da terra em agroecossistemas cafeeiros da região de Lavras- MG.pdf',
    },
    {
      'PDF':
          'Caracterização ambiental e evolução da área ocupada pela cafeicultura na microbacia do Ribeirão Vermelho em Lavras-MG. In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 26.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Caracterização ambiental e evolução da área ocupada pela cafeicultura na microbacia do Ribeirão Vermelho em Lavras-MG.pdf',
    },
    {
      'PDF':
          'Uso de Sistema de Informação Geográfica na caracterização da microbacia do Ribeirão Fundo, município de São Sebastião do Paraíso, MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Uso de Sistema de Informação Geográfica na caracterização da microbacia do Ribeirão Fundo município de São Sebastião do Paraíso MG.pdf',
    },
    {
      'PDF':
          'Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 1.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais.pdf',
    },
    {
      'PDF':
          'Uso do sensoriamento remoto na análise temporal da ocupação do solo pela cafeicultura em São Sebastião do Paraíso, MG. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 13.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2000/Uso do sensoriamento remoto na análise temporal da ocupação do solo pela cafeicultura em São Sebastião do Paraíso MG.pdf',
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
                  itemCount: publi2000.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2000[index]['PDF']!),
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
}
