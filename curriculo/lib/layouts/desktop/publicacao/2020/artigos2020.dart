import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2020 extends StatelessWidget {
  Artigos2020({Key? key}) : super(key: key);

  List<Map<String, String>> publi2020 = [
    {
      'PDF': 'Leaf water potential of coffee estimated by landsat-8 images',
      'path':
          'arquivos/publicacoes/2020/Leaf_water_potential_of_coffee_estimated_by_landsat-8_images.pdf',
      'referencial':
          'MACIEL, D.A.; SILVA, V.A.; ALVES, H.M.R.; VOLPATO, M.M.L.; BARBOSA, J.P.R.A.; SOUZA, V.C.O.; SANTOS, M.O.; SILVEIRA, H.R.O.; DANTAS, M.F.; FREITAS, A.F.; CARVALHO, G.R., SANTOS, J.O.'
    },
    {
      'PDF':
          'Temporal and spatial variability of the diameter distribution in a secondary brazilian atlantic forest suggests site-specific management practices',
      'path':
          'arquivos/publicacoes/2020/Temporal_and_spatial_variability_of_the_diameter_distribution_in_a_secondary_brazilian_atlantic_forest_suggests_site-specific_management_practices.pdf',
      'referencial':
          'CALIMAN, J.P.; REIS, G.G.; REIS, M.G.F.; LEITE, H.G.; TORRES, C.M.M.E.; VOLPATO, M.M.L.; RESENDE, R.T.; MONTE, M.A.'
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
                  itemCount: publi2020.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2020[index]['PDF']!,
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
                                        text: publi2020[index]['referencial']),
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
                                            pdfPath: publi2020[index]['path']!,
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
