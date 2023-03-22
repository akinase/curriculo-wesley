import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2004 extends StatelessWidget {
  Dissertacao2004({Key? key}) : super(key: key);

  List<Map<String, String>> publi2004 = [
    {
      'PDF':
          'Portal Vertical do GeoSolos: Geoprocessamento e Caracterização de Agroecossistemas Cafeeiros.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2004/dissetacao/monografia_Vanessa.pdf'
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
                    itemCount: publi2004.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2004[index]['PDF']!,
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
