import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2003 extends StatelessWidget {
  Artigos2003({Key? key}) : super(key: key);

  List<Map<String, String>> publi2003 = [
    {
      'PDF':
          'Avaliação das terras e sua importância para o planejamento racional do uso. Informe Agropecuário, Agroecologia, Belo Horizonte.',
      'path':
          'arquivos/publicacoes/2003/avaliacao_das_terras_e_sua_importancia_para_o_planejamento_racional_do_uso.pdf',
      'referencial':
          'ALVES, H.M.R.; ALVARENGA, M.I.N.; LACERDA, M.P.C. ; VIEIRA, T.G.C. Avaliação das terras e sua importância para o planejamento racional do uso. Informe Agropecuário, Agroecologia, Belo Horizonte, v. 24, n.220, p.82-93, 2003.',
    },
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros nas principais regiões produtoras do estado de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11.',
      'path':
          'arquivos/publicacoes/2003/caracterizacao_de_agroecossistemas_cafeeiros_nas_principais_regioes_produtoras_do_estado_de_minas_gerais.pdf',
      'referencial':
          'ALVES, H.M.R.; LACERDA, M.P.C.; VIEIRA, T.G.C. Caracterização de agroecossistemas cafeeiros nas principais regiões produtoras do estado de Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11., 2003, Belo Horizonte. Anais... São José dos Campos:INPE, 2003. p.11-17.',
    },
    {
      'PDF':
          'Caracterização da cultura cafeeira  em relação as classes de solos e declividade utilizando técnicas de geoprocessamento na região de São Sebastião do Paraíso-MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11.',
      'path':
          'arquivos/publicacoes/2003/caracterizacao_da_cultura_cafeeira_em_relacao_as_classes_de_solos_e_declividade_utilizando_tecnicas_de_geoprocessamento_na_regiao_de_sao_sebastiao_do_paraiso.pdf',
      'referencial':
          'BERTOLDO, M.A.; VIEIRA, T.G.C.; ALVES, H.M.R.; OLIVEIRA, M.L.R.; MARQUES, H.S. Caracterização da cultura cafeeira  em relação as classes de solos e declividade utilizando técnicas de geoprocessamento na região de São Sebastião do Paraíso-MG. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO,11.,2003, Belo Horizonte. Anais...São José dos Campos:INPE, 2003. p.33-38.',
    },
    {
      'PDF':
          'Avaliação de um modelo agrometeorológico para a previsão de produtividade de café em três localidades da Região Sul do Estado de Minas Gerais. Revista Brasileira de Agrometeorologia, Santa Maria,',
      'path': '',
      'referencial':
          'CARVALHO, L. G.; SEDIYAMA, G. C.; CECON, P. R. ; ALVES, H. M. R. Avaliação de um modelo agrometeorológico para a previsão de produtividade de café em três localidades da Região Sul do Estado de Minas Gerais. Revista Brasileira de Agrometeorologia, Santa Maria, v. 11, n.2, p.343-352, 2003.',
    },
    {
      'PDF':
          'Mapeamento das classes de solos da região de Machado-MG, a partir da correlação entre solos e relevo, utilizando técnicas de geoprocessamento. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11.',
      'path':
          'arquivos/publicacoes/2003/mapeamento_das_classes_de_solos_da_regiao_de_machado-mg_a_partir_da_correlacao_entre_solos_e_relevo_utilizando_tecnicas_de_geoprocessamento.pdf',
      'referencial':
          'MARQUES, H.S.; BERTOLDO, M.A.; ANDRADE, H.; ALVES, H.M.R.; VIEIRA, T.G.C.; OLIVEIRA, M.L.R. Mapeamento das classes de solos da região de Machado-MG, a partir da correlação entre solos e relevo, utilizando técnicas de geoprocessamento. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11., 2003, Belo Horizonte. Anais... São José dos Campos:INPE, 2003. p.169-172.',
    },
    {
      'PDF':
          'Parâmetros culturais para avaliação do comportamento espectral da cultura do café(coffea arábica) em Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11.',
      'path':
          'arquivos/publicacoes/2003/parametros_culturais_para_avaliacao_do_comportamento_espectral_da_cultura_do_cafe_em_minas_gerais.pdf',
      'referencial':
          'VIEIRA, T.G.C.; ALVES, H.M.R.; LACERDA, M.P.C. Parâmetros culturais para avaliação do comportamento espectral da cultura do café(coffea arábica) em Minas Gerais. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 11., 2003, Belo Horizonte. Anais... São José dos Campos:INPE, 2003. p.247-254.',
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
                  itemCount: publi2003.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2003[index]['PDF']!,
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
                                        text: publi2003[index]['referencial']),
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
                                            pdfPath: publi2003[index]['path']!,
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
