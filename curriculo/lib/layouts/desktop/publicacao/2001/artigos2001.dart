import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2001 extends StatelessWidget {
  Artigos2001({Key? key}) : super(key: key);

  List<Map<String, String>> publi2001 = [
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte I: Agroecossistema de São Sebastião do Paraíso. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'arquivos/publicacoes/2001/caracterizacao_de_agroecossistemas_cafeeiros_de_minas_gerais_por_meio_do_spring-parte_i.PDF',
      'referencial':
          'ALVES, H.M.R.; LACERDA, M.P.C.; VIEIRA, T.G.C.; RESENDE, R.J.T.P.; ANDRADE, H.; MACHADO, M.L.; CEREDA, G.J.  Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte I: Agroecossistema de São Sebastião do Paraíso. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2367-2376. ',
    },
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte II: Agroecossistema de Machado. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'arquivos/publicacoes/2001/caracterizacao_de_agroecossistemas_cafeeiros_de_minas_gerais_por_meio_do_spring_parte-II-agroecossistema_de_machado.PDF',
      'referencial':
          'LACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; RESENDE, R.J.T.P.; ANDRADE, H.; MACHADO, M.L.; CEREDA, G.J.  Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte II: Agroecossistema de Machado. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2377-2385.',
    },
    {
      'PDF':
          ' Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte III: Agroecossistema de Patrocíno. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'arquivos/publicacoes/2001/caracterizacao_de_agroecossistemas_cafeeiros_de_minas_gerais_por_meio_do_spring_parte_III-agroecossistema_de_patrocino.PDF',
      'referencial':
          'LACERDA, M.P.C.; ALVES, H.M.R.; VIEIRA, T.G.C.; MACHADO, M.L.; RESENDE, R.J.T.P.; ANDRADE, H.; CEREDA, G.J.  Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte III: Agroecossistema de Patrocíno. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2386-2393.',
    },
    {
      'PDF':
          'Caracterização do meio físico de agroecossistemas cafeeiros da Zona da Mata de Minas Gerais usando técnicas de Sensoriamento Remoto e Sistemas de Informações Geográficas e fotografias aéreas não convencionais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'arquivos/publicacoes/2001/caracterizacao_do_meio_fisico_de_agroecossistemas_cafeeiros_da_zona_da_mata_de_minas_gerais.PDF',
      'referencial':
          'MACHADO, M.L.; ALVES, H.M.R.; VIEIRA, T.G.C.; LACERDA, M.P.C.; ANDRADE, H.; FERNANDES FILHO, E.I.; SCHAEFER, C.E.R.; CEREDA, G.J. Caracterização do meio físico de agroecossistemas cafeeiros da Zona da Mata de Minas Gerais usando técnicas de Sensoriamento Remoto e Sistemas de Informações Geográficas e fotografias aéreas não convencionais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.2399-2409.',
    },
    {
      'PDF':
          'Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'arquivos/publicacoes/2001/imagens_orbitais_aplicadas_ao_levantamento_da_cultura_do_cafe_em_minas_gerais.PDF',
      'referencial':
          'VIEIRA, T.G.C.; LACERDA, M.P.C.; ALVES, H.M.R.; VEIGA, R.D.; VILELA, A.V.; CEREDA, G.J.; ANDRADE, H.; MACHADO, M.L.  Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2., 2001, Vitória. Anais... Brasília:Embrapa Café, 2001. p.144-152.',
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
                  itemCount: publi2001.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2001[index]['PDF']!,
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
                                        text: publi2001[index]['referencial']),
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
                                            pdfPath: publi2001[index]['path']!,
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
