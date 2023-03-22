import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2003 extends StatelessWidget {
  Artigos2003({Key? key}) : super(key: key);

  List<Map<String, String>> publi2003 = [
    {
      'PDF':
          'Avaliação das terras e sua importância para o planejamento racional do uso. Informe Agropecuário, Agroecologia, Belo Horizonte.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2003/Avaliação das terras e sua importância para o planejamento racional do uso.pdf',
    },
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros nas principais regiões produtoras do estado de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2003/Caracterização de agroecossistemas cafeeiros nas principais regiões produtoras do estado de Minas Gerais.pdf',
    },
    {
      'PDF':
          'Caracterização da cultura cafeeira  em relação as classes de solos e declividade utilizando técnicas de geoprocessamento na região de São Sebastião do Paraíso-MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2003/Caracterização da cultura cafeeira  em relação as classes de solos e declividade utilizando técnicas de geoprocessamento na região de São Sebastião do Paraíso-MG.pdf',
    },
    {
      'PDF':
          'Avaliação de um modelo agrometeorológico para a previsão de produtividade de café em três localidades da Região Sul do Estado de Minas Gerais. Revista Brasileira de Agrometeorologia, Santa Maria,',
      'path': '',
    },
    {
      'PDF':
          'Mapeamento das classes de solos da região de Machado-MG, a partir da correlação entre solos e relevo, utilizando técnicas de geoprocessamento. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2003/Mapeamento das classes de solos da região de Machado-MG a partir da correlação entre solos e relevo, utilizando técnicas de geoprocessamento.pdf',
    },
    {
      'PDF':
          'Parâmetros culturais para avaliação do comportamento espectral da cultura do café(coffea arábica) em Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2003/Parâmetros culturais para avaliação do comportamento espectral da cultura do café em Minas Gerais.pdf',
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
                  itemCount: publi2003.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2003[index]['PDF']!),
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
