import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Publi2005 extends StatelessWidget {
  Publi2005({Key? key}) : super(key: key);

  List<Map<String, String>> publi2005 = [
    {
      'PDF':
          'Geotecnologias aplicadas à caracterização dos ambientes cafeeiros da Mantiqueira de Minas. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 17',
      'path':
          'curriculo/assets/publicacoes/2015/Geotecnologias aplicadas à caracterização dos ambientes cafeeiros da Mantiqueira de Minas.pdf'
    },
    {
      'PDF':
          'Caracterização de áreas bioclimáticas para o cultivo de café arábica na região da Mantiqueira de Minas. In: CONGRESSO BRASILEIRO DE AGROMETEOROLOGIA, 19.',
      'path':
          'curriculo/assets/publicacoes/2015/Caracterização de áreas bioclimáticas para o cultivo de café arábica na região da Mantiqueira de Minas VOLPATO.pdf'
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
                width: MediaQuery.of(context).size.width * 0.85,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    itemCount: publi2005.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2005[index]['PDF']!,
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
