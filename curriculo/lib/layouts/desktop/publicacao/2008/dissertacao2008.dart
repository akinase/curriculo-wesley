import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2008 extends StatelessWidget {
  Dissertacao2008({Key? key}) : super(key: key);

  List<Map<String, String>> publi2008 = [
    {
      'PDF':
          'Determinação das áreas cafeeiras mecanizáveis no Sul de Minas Gerais com cenários para a colheita.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2008/disssertacao/Dissertacao_Fabiano.pdf'
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
                    itemCount: publi2008.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2008[index]['PDF']!,
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
