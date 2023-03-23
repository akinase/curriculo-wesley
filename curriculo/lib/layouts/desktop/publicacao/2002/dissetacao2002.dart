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
          'curriculo-wesley/curriculo/assets/publicacoes/2002/dissetacao/Marley dissertação final.pdf',
      'referencial':
          'RESENDE, R.J.T.P. Caracterização do meio físico de áreas cafeeiras do Sul de Minas por meio do SPRING. 2000. 135f. Tese ( Mestrado em Agronomia) - Universidade Federal de Lavras, Lavras, 2000.',
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
                  itemCount: publi2002.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2002[index]['PDF']!,
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
                                        text: publi2002[index]['referencial']),
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
