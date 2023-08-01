import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2008 extends StatelessWidget {
  Artigos2008({Key? key}) : super(key: key);

  List<Map<String, String>> publi2008 = [
    {
      'PDF':
          'Delimitation of a potential territory for the production of quality coffee in the south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22.',
      'path': '',
      'referencial':
          'ALVES, H.M.R.; BERNARDES, T.; SILVEIRA, M.A.; VIEIRA, T.G.C.; VOLPATO, M.M.L..Delimitation of a potential territory for the production of quality coffee in the south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22., 2008, Campinas. Proceedings... Paris:ASIC, 2008.',
    },
    {
      'PDF':
          'Environmental characterization of coffee lands of the region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22.',
      'path': '',
      'referencial':
          'ALVES, H.M.R.; VIEIRA, T.G.C.; VOLPATO, M.M.L.;BERNARDES, T.; LACERDA, M.P.C. Environmental characterization of coffee lands of the region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22., 2008, Campinas. Proceedings... Paris:ASIC, 2008. p.227-227.',
    },
    {
      'PDF':
          'Redes Neurais Artificiais na classificação de imagens multitemporais da região cafeeira de Três Pontas/MG. In: CONGRESSO  BRASILEIRO DE PESQUISAS CAFEEIRAS, 34.',
      'path':
          'arquivos/publicacoes/2008/redes_neurais_artificiais_na_classificacao_de_imagens_multitemporais_da_regiao_cafeeira_de_tres_pontas-MG.pdf',
      'referencial':
          'BOTELHO, T.G.; NAVARES, J.F.; VIEIRA, T.G.C.; ALVES, H.M.R. Redes Neurais Artificiais na classificação de imagens multitemporais da região cafeeira de Três Pontas/MG. In: CONGRESSO  BRASILEIRO DE PESQUISAS CAFEEIRAS, 34, 2008, Caxambú. Anais... Varginha: Fundação Procafé, 2008.',
    },
    {
      'PDF':
          'Estudo da relação pedomorfológica na distribuição de solos com horizontes B textural e B nítico na paisagem de Lavras, Minas Gerais. Revista Brasileira de Ciência do Solo, Viçosa.',
      'path':
          'arquivos/publicacoes/2008/estudo_da_relacao_pedomorfologica_na_distribuicao_de_solos_com_horizontes_B_textural_e_B_nitico_na_paisagem_de_lavras.pdf',
      'referencial':
          'LACERDA, M.P.C.; QUEMENEUR, J.J.G.; ANDRADE, H.; ALVES, H.M.R.; VIEIRA, T.G.C. Estudo da relação pedomorfológica na distribuição de solos com horizontes B textural e B nítico na paisagem de Lavras, Minas Gerais. Revista Brasileira de Ciência do Solo, Viçosa, v.32, p.271-284. 2008.',
    },
    {
      'PDF':
          'Mapeamento e distribuição por classe de relevo da cultura cafeeira em uma área piloto no município de Três Pontas MG..In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34.',
      'path':
          'arquivos/publicacoes/2008/mapeamento_de_areas_cafeeiras_na_regiao_de_guaxupa-uma_abordagem_automatizada.pdf',
      'referencial':
          'SANTOS, W.J.R.; ALVES, H.M.H.R.; VIEIRA, T.G.C.; SOUSA, R.B.; SILVA, E.; BRAGA, R.C.A.; VOLPATO, M.M.L. Mapeamento e distribuição por classe de relevo da cultura cafeeira em uma área piloto no município de Três Pontas MG..In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34., 2008, Caxambú. Anais... Varginha:FundaçãoProcafé, 2008.',
    },
    {
      'PDF':
          'SPOT images automatic classification for mapping land use in the coffee growing region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22.',
      'path': '',
      'referencial':
          'VIEIRA, T.G.C.; ALVES, H.M.R.; VOLPATO, M.M.L.; BERNANRDES, T. SPOT images automatic classification for mapping land use in the coffee growing region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22., 2008, Campinas. Proceedings... Paris:ASIC, 2008.p. 228-228.',
    },
    {
      'PDF':
          'Monitoramento de cafeeiros utilizando imagens do satélite TERRA/MODIS: distinção das culturas em produção e em formação .In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34.',
      'path':
          'arquivos/publicacoes/2008/monitoramento_de_cafeeiros_utilizando_imagens_do_satelite_TERRA-MODIS_distincao_das_culturas_em_producao_e_em_formacao.pdf',
      'referencial':
          'VOLPATO, M.M.L.;  VIEIRA, T.G.C.; ALVES, H.M.R.; SANTOS, W.J.R.; BERNARDES, T.; OLIVEIRA, V.C.S. Monitoramento de cafeeiros utilizando imagens do satélite TERRA/MODIS: distinção das culturas em produção e em formação .In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34., 2008, Caxambú. Anais... Varginha:Fundação Procafé, 2008.',
    },
    {
      'PDF':
          ' Geotecnologias aplicadas à agrometeorologia. Informe Agropecuário. Efeito das mudanças climáticas na agricultura, Belo Horizonte, v.29',
      'path': '',
      'referencial':
          'VOLPATO, M.M.L.; ALVES, H.M.R.; VIEIRA, T.G.C. Geotecnologias aplicadas à agrometeorologia. Informe Agropecuário. Efeito das mudanças climáticas na agricultura, Belo Horizonte, v.29, n. 246, 2008.',
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
                  itemCount: publi2008.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                      ),
                      title: Text(publi2008[index]['PDF']!,
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
                                        text: publi2008[index]['referencial']),
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
                                            pdfPath: publi2008[index]['path']!,
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
