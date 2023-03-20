import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Publi2006 extends StatelessWidget {
  Publi2006({Key? key}) : super(key: key);

  List<Map<String, String>> publi2015 = [
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

  get pdfFiles => null;

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
                  itemCount: publi2015.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2015[index]['PDF']!),
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

  // ignore: non_constant_identifier_names
}
