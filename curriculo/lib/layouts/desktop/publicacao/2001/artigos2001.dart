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
          'curriculo-wesley/curriculo/assets/publicacoes/2001/Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING- Parte 1.PDF',
    },
    {
      'PDF':
          'Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte II: Agroecossistema de Machado. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2001/Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING- Parte 1.PDF',
    },
    {
      'PDF':
          ' Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING. Parte III: Agroecossistema de Patrocíno. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2001/Caracterização de agroecossistemas cafeeiros de Minas Gerais por meio do SPRING Parte III- Agroecossistema de Patrocíno.PDF',
    },
    {
      'PDF':
          'Caracterização do meio físico de agroecossistemas cafeeiros da Zona da Mata de Minas Gerais usando técnicas de Sensoriamento Remoto e Sistemas de Informações Geográficas e fotografias aéreas não convencionais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2001/Caracterização do meio físico de agroecossistemas cafeeiros da Zona da Mata de Minas Gerais.PDF',
    },
    {
      'PDF':
          'Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais. In: SIMPÓSIO DE PESQUISA DOS CAFÉS DO BRASIL, 2.',
      'path':
          'curriculo-wesley/curriculo/assets/publicacoes/2001/Imagens orbitais aplicadas ao levantamento da cultura do café em Minas Gerais.PDF',
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
                  itemCount: publi2001.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(publi2001[index]['PDF']!),
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
}
