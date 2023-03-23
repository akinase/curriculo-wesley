import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2009 extends StatelessWidget {
  Dissertacao2009({Key? key}) : super(key: key);

  List<Map<String, String>> publi2009 = [
    {
      'PDF':
          'Distribuição espacial de cafés do estado de Minas Gerais e sua relação com a qualidade.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2009/dissertacao/Distribuicao_Espacial_Cafe.pdf',
      'referencial':
          'BARBOSA, J.N. Distribuição espacial de cafés do estado de Minas Gerais e sua relação com a qualidade. 2009. 91f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2009.',
    },
    {
      'PDF':
          'Geotecnologias para o estudo espaço-temporal da cafeicultura da região de São Sebastião do Paraíso, MG.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2009/dissertacao/monografia_walbert.pdf',
      'referencial':
          'SANTOS, W.J.R. Geotecnologias para o estudo espaço-temporal da cafeicultura da região de São Sebastião do Paraíso, MG. 2009. 49f. Monografia ( Agronomia) - Universidade Federal de Lavras, Lavras, 2009',
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
                  itemCount: publi2009.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2009[index]['PDF']!,
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
                                        text: publi2009[index]['referencial']),
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
