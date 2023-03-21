import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Artigos2007 extends StatelessWidget {
  Artigos2007({Key? key}) : super(key: key);

  List<Map<String, String>> publi2007 = [
    {
      'PDF':
          'Delimitação de um território potencial para a produção de cafés de qualidade diferenciada nos municípios de Campestre, Machado, e Poço Fundo. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5.',
      'path':
          'curriculo/assets/publicacoes/2007/Delimitação de um território potencial para a produção de cafés de qualidade diferenciada nos municípios de Campestre, Machado, e Poço Fundo.pdf'
    },
    {
      'PDF':
          'Dinâmica espaço-temporal de ambientes cafeeiros de Minas Gerais. Informe Agropecuário. Geotecnologias, Belo Horizonte, v.28',
      'path':
          'curriculo/assets/publicacoes/2007/Dinâmica espaço-temporal de ambientes cafeeiros de Minas Gerais.pdf',
    },
    {
      'PDF':
          'Classificação automática de imagens de satélites no mapeamento da região cafeeira de Patrocínio, MG. In:SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5.',
      'path':
          'curriculo/assets/publicacoes/2007/Classificação automática de imagens de satélites no mapeamento da região cafeeira de Patrocínio, MG.pdf',
    },
    {
      'PDF':
          'Interações entre variáveis ambientais e o comportamento espectral do cafeeiro em imagens orbitais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 5.',
      'path':
          'curriculo/assets/publicacoes/2007/Interações entre variáveis ambientais e o comportamento espectral do cafeeiro em imagens orbitais.pdf',
    },
    {
      'PDF':
          'Avaliação da acurácia do mapeamento do uso da terra no complexo Serra Negra, Patrocínio, MG, por interpretação visual e classificação automática de imagens Landsat. In: SIMPÓSIO BRASILEIRO DE SENSORIAMENTO REMOTO, 13.',
      'path':
          'curriculo/assets/publicacoes/2007/Avaliação da acurácia do mapeamento do uso da terra no complexo Serra Negra, Patrocínio, MG, por interpretação visual e classificação automática de imagens Landsat.pdf',
    },
    {
      'PDF': '',
      'path': '',
    },
    {
      'PDF': '',
      'path': '',
    },
    {
      'PDF': '',
      'path': '',
    },
    {
      'PDF': '',
      'path': '',
    },
    {
      'PDF': '',
      'path': '',
    },
    {
      'PDF': '',
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
                width: 800,
                child: ListView.builder(
                  itemCount: publi2007.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2007[index]['PDF']!),
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
    );
  }

  // ignore: non_constant_identifier_names
}
