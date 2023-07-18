import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2002 extends StatelessWidget {
  Artigos2002({Key? key}) : super(key: key);

  List<Map<String, String>> publi2002 = [
    {
      'PDF':
          'Caracterização ambiental de áreas de café do cerrado mineiro. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14.',
      'path':
          '/assets/publicacoes/2002/Caracterização ambiental de áreas de café do cerrado mineiro.pdf',
      'referencial':
          'ALVES, H.M.R.; VIEIRA, T.G.C.; LACERDA, M.P.C.; ANDRADE, H.; MACHADO, M.L. Caracterização ambiental de áreas de café do cerrado mineiro. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14., 2002, Cuiabá. Anais... Viçosa:SBCS, 2002. CD-ROM.',
    },
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros do Sul de Minas por meio de SIG, para fins de monitoramento e planejamento sustentável In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14.',
      'path':
          'assets/publicacoes/2002/Caracterização de agroecossistemas cafeeiros do Sul de Minas por meio de SIG para fins de monitoramento e planejamento sustentável.pdf',
      'referencial':
          'LACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; ANDRADE, H.; MACHADO, M.L. Caracterização de agroecossistemas cafeeiros do Sul de Minas por meio de SIG, para fins de monitoramento e planejamento sustentável In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14., 2002, Cuiabá. Anais... Viçosa:SBCS, 2002. CD-ROM.',
    },
    {
      'PDF':
          'Identificação de áreas ocupadas pela cafeicultura nas principais regiões produtoras de Minas Gerais utilizando-se técnicas de geoprocessamento. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14.',
      'path':
          'assets/publicacoes/2002/Identificação de áreas ocupadas pela cafeicultura nas principais regiões produtoras de Minas Gerais utilizando-se técnicas de geoprocessamento.pdf',
      'referencial':
          'VIEIRA, T.G.C.; ALVES, H.M.R.; LACERDA, M.P.C.; MACHADO, M.L. Identificação de áreas ocupadas pela cafeicultura nas principais regiões produtoras de Minas Gerais utilizando-se técnicas de geoprocessamento. In: REUNIÃO BRASILEIRA DE MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA, 14., 2002, Cuiabá. Anais... Viçosa:SBCS, 2002. CD-ROM.',
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
                                  const Text('Visualizar PDF:'),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    child: const Text('Baixar'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PdfViewerPage(
                                            pdfPath: publi2002[index]['path']!,
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
