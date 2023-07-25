import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2019 extends StatelessWidget {
  Artigos2019({Key? key}) : super(key: key);

  List<Map<String, String>> publi2019 = [
    {
      'PDF':
          'Meteorological variables and sensorial quality of coffee in the mantiqueira region of minas gerais',
      'path':
          'arquivos/publicacoes/2019/Meteorological variables and sensorial quality of coffee in the mantiqueira region of minas gerais.pdf',
      'referencial':
          'BOREM, F.M.; LUZ, M.P.S.; SÁFADI, T.; VOLPATO, M.M.L.; ALVES, H.M.R.; BORÉM, R.A.T., MACIEL, D.A.'
    },
    {
      'PDF':
          'Selection of conilon coffee clones tolerant to pests and diseases in Minas Gerais',
      'path':
          'arquivos/publicacoes/2019/Selection of conilon coffee clones tolerant to pests and diseases in Minas Gerais.pdf',
      'referencial':
          'SILVA, V.A.; ABRAHÃO, J.C.R.; LIMA, L.A.; CARVALHO, G.R.; FERRÃO, A.G.; SALGADO, S.M.L.; VOLPATO, M.M.L.; BOTELHO, C.E.'
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
                  itemCount: publi2019.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2019[index]['PDF']!,
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
                                        text: publi2019[index]['referencial']),
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
                                            pdfPath: publi2019[index]['path']!,
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
