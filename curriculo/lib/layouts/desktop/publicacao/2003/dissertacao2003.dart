import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2003 extends StatelessWidget {
  Dissertacao2003({Key? key}) : super(key: key);

  List<Map<String, String>> publi2003 = [
    {
      'PDF':
          'Uso de geotecnologias no estudo das relações entre solos, orientação de vertentes e o comportamento espectral de áreas cafeeiras em Machado, Minas Gerais.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2003/dissertacao/TESE Hudson PRONTA.pdf'
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
                    itemCount: publi2003.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2003[index]['PDF']!,
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
