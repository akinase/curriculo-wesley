import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2016 extends StatelessWidget {
  Artigos2016({Key? key}) : super(key: key);

  List<Map<String, String>> publi2016 = [
    {
      'PDF':
          'Geotechnologies for the characterization of specialty coffee environments of Mantiqueira de Minas in Brazil .In: The International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences, 2016',
      'path':
          '/assets/publicacoes/2016/Geotechnologies for the characterization of specialty coffee environments of Mantiqueira de Minas in Brazil.pdf',
      'referencial':
          'ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.; LACERDA, M.P.C.; BORÉM, F.M. Geotechnologies for the characterization of specialty coffee environments of Mantiqueira de Minas in Brazil. In: The International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences, Volume XLI-B8, 2016 XXIII ISPRS Congress, 12–19 July 2016, Prague, Czech Republic',
    },
    {
      'PDF':
          'Characterization and spectral monitoring of coffee lands in Brazil. In: The International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences, 2016',
      'path':
          '/assets/publicacoes/2016/Characterization and spectral monitoring of coffee lands in Brazil.pdf',
      'referencial':
          'ALVES, H. M. R.; VOLPATO, M. M. L.; VIEIRA, T. G. C.; MACIEL, D. A.; GONÇALVES, T. G.; DANTAS, M. F. Characterization and spectral monitoring of coffee lands in Brazil. In: The International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences, Volume XLI-B8, 2016 XXIII ISPRS Congress, 12–19 July 2016, Prague, Czech Republic'
    },
    {
      'PDF':
          'Impactos da deficiência hídrica nas respostaas ecofisiológicas e espectrais do cafeeiro consorciado com espécies madeireiras',
      'path':
          '/assets/publicacoes/2016/Impactos da deficiência hídrica nas respostaas ecofisiológicas e espectrais do cafeeiro consorciado com espécies madeireiras.pdf',
      'referencial':
          'SILVEIRA, H.R.O.; SANTOS, M.O.; SILVA, V.A.; VENTURIN; R.P.; VOLPATO, M.M.L.; DANTAS, M.F.; CARVALHO, G.R.; SETOTAW, T.A.; MOREIRA, F.C.; BARBOSA, J.P.R.A.D.; RESENDE, M.L.V.'
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
                  itemCount: publi2016.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2016[index]['PDF']!,
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
                                        text: publi2016[index]['referencial']),
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
                                            pdfPath: publi2016[index]['path']!,
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
