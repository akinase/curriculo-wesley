import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2023 extends StatelessWidget {
  Artigos2023({Key? key}) : super(key: key);

  List<Map<String, String>> publi2023 = [
    {
      'PDF':
          'Evaluation of the Water Conditions in Coffee Plantations Using RPA',
      'path':
          '/assets/publicacoes/2023/Evaluation of the Water Conditions in Coffee Plantations.pdf',
      'referencial':
          'SANTOS, S.A.; FERRAZ, G.A.S. ; FIGUEIREDO, V.C. ; VOLPATO, M.M.L. ; MACHADO, M.L. ; SILVA, V.A. . Evaluation of the Water Conditions in Coffee Plantations Using RPA. Agriengineering, v. 5, p. 65-84, 2023.'
    },
    {
      'PDF':
          'Agronomic performance and productivity of Arabica coffee intercropped with timber species',
      'path':
          '/assets/publicacoes/2023/Agronomic performance and productivity of Arabica coffee intercropped with timber species.pdf',
      'referencial':
          'FREITAS, A.F.; FONSECA, A.J.; VOLPATO, M.M.L.; CARVALHO, G.R.; VENTURIN, R.P.; SILVA, V.A. . Agronomic performance and productivity of Arabica coffee intercropped with timber species. REVISTA CERES, v. 70, p. 73-80, 2023.'
    },
    {
      'PDF':
          'Predicting coffee water potential from spectral reflectance indices with neural networks',
      'path':
          '/assets/publicacoes/2023/Predicting coffee water potential from spectral reflectance indices with neural networks.pdf',
      'referencial':
          'NUNES, P.H.; PIERANGELI, E.V.; SANTOS, M.O.; SILVEIRA, H.R.O.; MATOS, C.S.M.; PEREIRA, A.B.; ALVES, H.M.R.; VOLPATO, M.M.L.; SILVA, V.A.; FERREIRA, D.D. . Predicting coffee water potential from spectral reflectance indices with neural networks. Smart Agricultural Technology, v. 4, p. 100213, 2023.'
    }
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
                  itemCount: publi2023.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2023[index]['PDF']!,
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
                                        text: publi2023[index]['referencial']),
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text('Visualizar PDF:'),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    child: const Text('Baixar'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PdfViewerPage(
                                            pdfPath: publi2023[index]['path']!,
                                          ),
                                        ),
                                      );
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
