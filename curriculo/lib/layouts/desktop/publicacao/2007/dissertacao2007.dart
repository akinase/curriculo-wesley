import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2007 extends StatelessWidget {
  Dissertacao2007({Key? key}) : super(key: key);

  List<Map<String, String>> publi2007 = [
    {
      'PDF':
          ' A ocupação espaço - temporal dos cafezais no município de Machado, no Sul de Minas: a relação entre aptidão agrícola da terra e seu uso na atividade cafeeira.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2007/dissertacao/Tese_Doutorado_Lucio.pdf'
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
                    itemCount: publi2007.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2007[index]['PDF']!,
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
