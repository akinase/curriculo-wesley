import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2002 extends StatelessWidget {
  Dissertacao2002({Key? key}) : super(key: key);

  List<Map<String, String>> publi2002 = [
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros da Zona da Mata de Minas Gerias, usando Sensoriamento Remoto e Sistemas de Informações Geográficas.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2002/dissetacao/Marley dissertação final.pdf'
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
                    itemCount: publi2002.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2002[index]['PDF']!,
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
