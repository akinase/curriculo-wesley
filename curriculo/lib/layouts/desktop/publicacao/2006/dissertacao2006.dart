import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2006 extends StatelessWidget {
  Dissertacao2006({Key? key}) : super(key: key);

  List<Map<String, String>> publi2006 = [
    {
      'PDF':
          'Caracterização do ambiente agrícola do complexo Serra Negra por meio de Sensoriamento e Sistemas de Informação Geográfica.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2006/dissertacao/Tiagodissertacao.pdf'
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
                    itemCount: publi2006.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2006[index]['PDF']!,
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
