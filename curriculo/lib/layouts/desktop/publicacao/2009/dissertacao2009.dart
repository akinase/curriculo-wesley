import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2009 extends StatelessWidget {
  Dissertacao2009({Key? key}) : super(key: key);

  List<Map<String, String>> publi2009 = [
    {
      'PDF':
          'Distribuição espacial de cafés do estado de Minas Gerais e sua relação com a qualidade.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2009/dissertacao/Distribuicao_Espacial_Cafe.pdf'
    },
    {
      'PDF':
          'Geotecnologias para o estudo espaço-temporal da cafeicultura da região de São Sebastião do Paraíso, MG.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2009/dissertacao/monografia_walbert.pdf'
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
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    itemCount: publi2009.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2009[index]['PDF']!,
                            textAlign: TextAlign.center),
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
      ),
    );
  }
}
