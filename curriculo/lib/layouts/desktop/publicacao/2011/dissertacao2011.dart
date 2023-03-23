import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2011 extends StatelessWidget {
  Dissertacao2011({Key? key}) : super(key: key);

  List<Map<String, String>> publi2011 = [
    {
      'PDF':
          'Redes neurais artificiais aplicadas na identificação automática de áreas cafeeiras em imagens de satélite.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2011/dissertacao/LiviaNAndrade_dissert.pdf',
      'referencial':
          'ANDRADE, L.N. Redes neurais artificiais aplicadas na identificação automática de áreas cafeeiras em imagens de satélite. 2011. 87f. Tese ( Mestrado em Ciência da Computação) - Universidade Federal de Minas Gerais, Belo Horizonte, 2011.',
    },
    {
      'PDF':
          'Classificação automática de áreas cafeeiras em imagens de satélite, utilizando Redes Neurais Artificiais',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2011/dissertacao/Monografia_Liliany.pdf',
      'referencial':
          'PEREIRA, L.A.A. Classificação automática de áreas cafeeiras em imagens de satélite, utilizando Redes Neurais Artificiais. 2011. 50f. Monografia ( Bacharel em Ciência da Computação) - Universidade Federal de Lavras, Lavras, 2011.',
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
                child: ListView.builder(
                  itemCount: publi2011.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2011[index]['PDF']!,
                          textAlign: TextAlign.center),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Referencial e Download'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Referencial bibliografico:'),
                                  TextField(
                                    controller: TextEditingController(
                                        text: publi2011[index]['referencial']),
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text('Baixar PDF:'),
                                  ElevatedButton(
                                    child: const Text('Baixar'),
                                    onPressed: () {
                                      // Lógica para baixar PDF
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
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('Sair'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
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
