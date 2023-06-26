import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2017 extends StatelessWidget {
  Artigos2017({Key? key}) : super(key: key);

  List<Map<String, String>> publi2017 = [
    {
      'PDF':
          'Mapeamento da cultura cafeeira por meio de classificação automática utilizando atributos espectrais, texturais e fator de iluminação',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2017/Mapeamento da cultura cafeeira por meio de classificação automática utilizando atributos espectrais, texturais e fator de iluminação.pdf',
      'referencial':
          'MARUJO, R.F.B.; MOREIRA, M.A.; VOLPATO, M.M.L.; ALVES, H.M.R. .Mapeamento da cultura cafeeira por meio de classificação automática utilizando atributos espectrais, texturais e fator de iluminação. COFFEE SCIENCE, v. 12, p. 164, 2017.',
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
                  itemCount: publi2017.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2017[index]['PDF']!,
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
                                        text: publi2017[index]['referencial']),
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
