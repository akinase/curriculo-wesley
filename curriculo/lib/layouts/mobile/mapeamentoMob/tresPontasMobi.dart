// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:curriculo/constantes.dart';

import '../../desktop/mapeamento/menuMapeamento.dart';

// ignore: camel_case_types
class TresPontasMobi extends StatelessWidget {
  const TresPontasMobi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MunuMapeamento(
        menu: "Três Pontas",
      ),
      body: Container(
        color: kbackgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: kbackgroundColorSec,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      textAlign: TextAlign.center,
                      "Três Pontas",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Área de Estudo",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/tres_pontas/1.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "Em Três Pontas foi selecionada uma área de 510,84 km2 delimitada pelas coordenadas UTM 422 km e 448 km W e 7.626 km e 7.646 km S, na carta topográfica do IBGE, escala 1:50.000, de Três Pontas (SF-23-I-I-4). Órbita Ponto Sistema Landsat 219/75.O ambiente é caracterizado por uma altitude em torno de 950m, variando de 700 a 1150, clima ameno, tropical de altitude, pouca disponibilidade de recursos hídricos, predominância de relevo suave ondulado e Latossolo Vermelho Escuro distrófico, Cambissolo álico e Argissolo Vermelho Escuro distrófico. Possibilidade de produção de bebidas finas e média e alta tecnologia aplicada.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/tres_pontas/2.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A figura acima apresenta as classes de  altitude de Três Pontas. O mapa de altitude de Três Pontas - MG apresenta faixas de altitude entre < 850 e > 1100 metros. As faixas de altitude de maior predominância na região de  Três Pontas são  a de <850 que corresponde a  53%  e  850-900 metros que corresponde a 28% . Os locais que apontam altitude de 1000 a >1100 metros computam juntos menos de 1% da área.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/tres_pontas/3.jpg',
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A figura acima apresenta as classes de declividade de Três Pontas. O mapa de declividade de Três Pontas - MG apresenta classes de relevo plano, suave ondulado, ondulado, forte ondulado, montanhoso e escarpado. A classe de declividade de maior predominância é a do relevo ondulado que apresenta 27927,54 hectares, o que corresponde a 55% do total da área da região de  Três Pontas, o segundo predominante a classe de declividade de relevo suave ondulado  que corresponde a 32% .",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/tres_pontas/4.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A figura acima apresenta as classes de solos de Três Pontas. O mapa de solos de Três Pontas apresenta diferentes tipos de solos. O solo predominante é o solo LV (Latossolo Vermelho) que representa 36827,1 hectares ou seja 72% a área total na região de  Três Pontas. A classe de solo RU (NEOSSOLO FLÚVIO)  representa 1% da área da região de Três Pontas já a classe de solo NL é encontrada na região, 0%.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/tres_pontas/5.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A figura acima apresenta as classes de vertente em Três Pontas. No mapa de orientação das vertentes podemos ver que não há uma predominância entre a orientação das vertentes na região de Três Pontas.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/tres_pontas/6.jpg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        child: Text(
                          textAlign: TextAlign.justify,
                          "A figura acima apresenta a evolução do parque cafeeiro em Três Pontas de 1987 até 2007. O mapa de Evolução do parque cafeeiro da região de Três Pontas representa a distribuição das áreas na evolução do parque cafeeiro durante o período 1987 a 2007. Nota-se que nesse período houve maior parcela de novas áreas, 36%,  porém a diferença é pouco em relação a áreas extintas que compõe 35% das áreas mapeadas.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
