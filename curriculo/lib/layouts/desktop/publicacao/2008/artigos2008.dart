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
    },
    {
      'PDF':
          'Environmental characterization of coffee lands of the region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22.',
      'path': '',
    },
    {
      'PDF':
          'Redes Neurais Artificiais na classificação de imagens multitemporais da região cafeeira de Três Pontas/MG. In: CONGRESSO  BRASILEIRO DE PESQUISAS CAFEEIRAS, 34.',
      'path':
          'curriculo/assets/publicacoes/2008/Redes Neurais Artificiais na classificação de imagens multitemporais da região cafeeira de Três Pontas-MG.pdf',
    },
    {
      'PDF':
          'Estudo da relação pedomorfológica na distribuição de solos com horizontes B textural e B nítico na paisagem de Lavras, Minas Gerais. Revista Brasileira de Ciência do Solo, Viçosa.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2008/Estudo da relação pedomorfológica na distribuição de solos com horizontes B textural e B nítico na paisagem de Lavras.pdf',
    },
    {
      'PDF':
          'Mapeamento e distribuição por classe de relevo da cultura cafeeira em uma área piloto no município de Três Pontas MG..In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34.',
      'path':
          'curriculo/assets/publicacoes/2008/Mapeamento e distribuição por classe de relevo da cultura cafeeira em uma área piloto no município de Três Pontas MG.pdf',
    },
    {
      'PDF':
          'SPOT images automatic classification for mapping land use in the coffee growing region of Guaxupé, south of the state of Minas Gerais in Brazil. In: INTERNATIONAL CONFERENCE ON COFFEE SCIENCE, 22.',
      'path': '',
    },
    {
      'PDF':
          'Monitoramento de cafeeiros utilizando imagens do satélite TERRA/MODIS: distinção das culturas em produção e em formação .In: CONGRESSO BRASILEIRO DE PESQUISAS CAFEEIRAS, 34.',
      'path':
          'curriculo/assets/publicacoes/2008/Monitoramento de cafeeiros utilizando imagens do satélite TERRA-MODIS _distinção das culturas em produção e em formação.pdf',
    },
    {
      'PDF':
          ' Geotecnologias aplicadas à agrometeorologia. Informe Agropecuário. Efeito das mudanças climáticas na agricultura, Belo Horizonte, v.29',
      'path': '',
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    itemCount: publi2008.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2008[index]['PDF']!,
                            textAlign: TextAlign.center),
                        onTap: () {
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
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
