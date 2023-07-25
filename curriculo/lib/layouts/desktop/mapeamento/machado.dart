import 'package:flutter/material.dart';
import 'package:curriculo/constantes.dart';

import 'menuMapeamento.dart';

class Machado extends StatelessWidget {
  const Machado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MunuMapeamento(
        menu: 'Machado',
      ),
      body: Container(
        color: kbackgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: const Color.fromARGB(183, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Machado",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(40),
                      child: SizedBox(
                        width: 800,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Área de Estudo",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'arquivos/machado/1.png',
                      height: 500.0,
                      width: 700.0,
                    ),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: const SizedBox(
                        width: 800,
                        child: Text(
                          textAlign: TextAlign.justify,
                          "Em Machado foi selecionada uma área de 520 km2 delimitada pelas coordenadas UTM 392 Km e 418 Km W e 7.620 Km e 7.600 Km S, nas folhas topográficas do IBGE, escala 1:50.000, de Machado (SF-23-I-III-1) e Campestre (SF-23-V-D-IV-2). Órbita Ponto Sistema Landsat 219/75. O ambiente é caracterizado por áreas elevadas, com altitudes de 780 a 1260 metros, clima ameno, sujeito a geadas, moderada deficiência hídrica, relevo suave ondulado a forte ondulado, predomínio de Latossolos e solos com B textural, possibilidade de produção de bebidas finas, sistemas de produção de médio a alto nível tecnológico, considerando diversos fatores como características dos cafezais, dimensões médias das áreas plantadas, cultivares mais utilizadas, técnicas de manejo, características do meio físico (tipo de solo e relevo) e outras.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: kfontText,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'arquivos/machado/2.jpg',
                      height: 700.0,
                      width: 700.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 800,
                        child: Text(
                          textAlign: TextAlign.justify,
                          "O  mapa de altitude de Machado-MG apresenta faixas de altitude entre < 850 e > 1100 metros. As faixas de altitude de maior predominância na região  de Machado são  a de < 850 e 850-900 metros, conforme indicam a tabela e o gráfico acima, representam juntas 70% da área total. Os locais que apontam altitude de 1000 a > 1100 metros computam 10% da área.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: kfontText,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'arquivos/machado/3.jpg',
                      height: 700.0,
                      width: 700.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 800,
                        child: Text(
                          textAlign: TextAlign.justify,
                          "O mapa de declividade de Machado-MG apresenta classes de relevo plano, suave ondulado, ondulado, forte ondulado, montanhoso e escarpado. A classe de declividade de maior predominância é a do relevo ondulado que apresenta 29615 hectares, o que corresponde a 57% do total da área de Machado. As classes de declividade de relevo montanhoso a escarpado apresentam 1% da área total de Machado.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: kfontText,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'arquivos/machado/4.jpg',
                      height: 700.0,
                      width: 700.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 800,
                        child: Text(
                          textAlign: TextAlign.justify,
                          "O mapa de solos de Machado apresenta os diferentes tipos de solos. Os solos predominantes são o solo PVA + PV (Argissolo Vermelho - Amarelo + Argissolo Vermelho) que representa 30% seguido pelo solo LVA2 + LV2 (Latossolo Vermelho - Amarelo + Latossolo Vermelho) 27%. Solos CX+RL  (Cambisolo) são os menos encontrados.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: kfontText,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'arquivos/machado/5.jpg',
                      height: 700.0,
                      width: 700.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 80),
                      child: SizedBox(
                        width: 800,
                        child: Text(
                          textAlign: TextAlign.justify,
                          "No mapa de orientação das vertentes podemos ver que não há uma predominância entre a orientação das vertentes na região de Machado.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: kfontText,
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
