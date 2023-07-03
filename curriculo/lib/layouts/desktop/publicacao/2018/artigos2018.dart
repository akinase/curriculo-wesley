import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2018 extends StatelessWidget {
  Artigos2018({Key? key}) : super(key: key);

  List<Map<String, String>> publi2018 = [
    {
      'PDF':
          'Exploiting feature extraction techniques for remote sensing image classification. In: IEEE Latin America Tranactions, VOL. 16, NO. 10, October 2018',
      'path':
          '/assets/publicacoes/2018/Exploiting feature extraction techniques for remote sensing image classification.pdf',
      'referencial':
          'M. Boell, H. Alves, M. Volpato, D. Ferreira, and W. Lacerda'
    },
    {
      'PDF':
          'Evaluating Precipitation Estimates from Eta, TRMM and CHRIPS Data in the South-Southeast Region of Minas Gerais State - Brazil',
      'path':
          '/assets/publicacoes/2018/Exploiting feature extraction techniques for remote sensing image classification.pdf',
      'referencial': 'NOGUEIRA, S.M.C.; MOREIRA, M.A.; VOLPATO, M.M.L.'
    },
    {
      'PDF':
          'Relationship between coffee crop productivity and vegetation indexes derived from oli / landsat-8 sensor data with and without topographic correction',
      'path':
          '/assets/publicacoes/2018/Relationship between coffee crop productivity and vegetation indexes derived from oli - landsat-8 sensor data with and without topographic correction.pdf',
      'referencial': 'NOGUEIRA, S.M.C.; MOREIRA, M.A.; VOLPATO, M.M.L.'
    },
    {
      'PDF': 'Indicadores de sustentabilidade em agroecossistemas (isa)',
      'path':
          '/assets/publicacoes/2018/Indicadores de sustentabilidade em agroecossistemas.pdf',
      'referencial':
          'Guimarães, D.P.; LANDAU, E.C.; FERREIRA, J.M.L.; VOLPATO, M.M.L.; ALVES, H.M.R. . Uso de imagens de satélite no planejamento do setor agropecuário. INFORME AGROPECUÁRIO (BELO HORIZONTE), v. 38, p. 42-54, 2018.',
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
                  itemCount: publi2018.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2018[index]['PDF']!,
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
                                        text: publi2018[index]['referencial']),
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
                                            pdfPath: publi2018[index]['path']!,
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
