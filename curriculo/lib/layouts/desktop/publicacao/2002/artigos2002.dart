import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2002 extends StatelessWidget {
  Artigos2002({Key? key}) : super(key: key);

  List<Map<String, String>> publi2002 = [
    {
      'PDF':
          'Caracterização ambiental de áreas de café do cerrado mineiro. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2002/Caracterização ambiental de áreas de café do cerrado mineiro.pdf',
    },
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros do Sul de Minas por meio de SIG, para fins de monitoramento e planejamento sustentável In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2002/Caracterização de agroecossistemas cafeeiros do Sul de Minas por meio de SIG para fins de monitoramento e planejamento sustentável.pdf',
    },
    {
      'PDF':
          'Identificação de áreas ocupadas pela cafeicultura nas principais regiões produtoras de Minas Gerais utilizando-se técnicas de geoprocessamento. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2002/Identificação de áreas ocupadas pela cafeicultura nas principais regiões produtoras de Minas Gerais utilizando-se técnicas de geoprocessamento.pdf',
    },
    {
      'PDF': '',
      'path': '',
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
                  itemCount: publi2002.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2002[index]['PDF']!),
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
