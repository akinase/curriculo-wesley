
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Sebastiao extends StatelessWidget {
  const Sebastiao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(30),
                child: const Text(
                  textAlign: TextAlign.justify,
                  "São Sebastião do Paraíso",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  textAlign: TextAlign.justify,
                  "Área de Estudo",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Image.asset(
                'assets/sebastiao/1.png',
                height: 700.0,
                width: 700.0,
              ),
              const Padding(
                padding: EdgeInsets.all(80),
                child: Text(
                  textAlign: TextAlign.justify,
                  "Em São Sebastião do Paraíso foi selecionada uma área de 520 km2 delimitada pelas coordenadas 274 km e 300 km W e 7.680 km e 7.700 km S, das cartas topográficas do IBGE, escala 1:50.0000, de São Sebastião do Paraíso (SF-23-V-A-VI-3) e São Tomás de Aquino (SF-23-V-A-V-4). Órbita Ponto Sistema Landsat 220/74. O ambiente é caracterizado por uma altitude que varia de 850 a 1100 metros, clima mesotérmico, média e alta disponibilidade de recursos hídricos, predominância de relevo ondulado a suave ondulado e latossolo vermelho férrico e litossolo vermelho férrico. Possibilidade de produção de bebidas finas e média e alta tecnologia aplicada.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Image.asset(
                'assets/sebastiao/2.jpg',
                height: 700.0,
                width: 700.0,
              ),
              const Padding(
                padding: EdgeInsets.all(80),
                child: Text(
                  textAlign: TextAlign.justify,
                  "A figura acima apresenta as classes de  altitude de São Sebastião do Paraíso. Verifica-se que 54% da área encontra-se na faixa de altitude de 800 a 900 metros. A classe de 900 a 1000 metros ocupa 36% da área. Ou seja mais da metade da área de estudo encontra-se em altitudes de 800 a 1000 metros. Cerca de 10% da área encontra-se em altitudes maiores do que 1000 metros. Observa-se que a região possui uma grande variação altimétrica. O município de São Sebastião do Paraíso se caracteriza por possuir baixas altitudes.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Image.asset(
                'assets/sebastiao/3.jpg',
                height: 700.0,
                width: 700.0,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(80),
                child: const SizedBox(
                  child: Text(
                    textAlign: TextAlign.justify,
                    "A figura acima apresenta os dados sobre o relevo de São Sebastião do Paraíso.  Observa-se que o relevo da área é bastante movimentado e verifica-se que 53% da área encontra-se em relevo ondulado.  A segunda classe mais significativa é a do relevo suave ondulado, que ocupa 32% da área e o relevo escarpado ocupa apenas 0,1% da área. A maior extensão das terras da região (62%) está nas classes intermediárias de declive, com relevo que varia de ondulado a forte ondulado.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/sebastiao/4.jpg',
                height: 700.0,
                width: 700.0,
              ),
              const Padding(
                padding: EdgeInsets.all(80),
                child: SizedBox(
                  height: 120,
                  child: Text(
                    textAlign: TextAlign.justify,
                    "As figuras acima apresenta a orientação das vertentes em São Sebastião do Paraíso. No mapa de orientação das vertentes podemos ver que não há uma predominância entre a orientação das vertentes na região.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/sebastiao/5.jpg',
                height: 700.0,
                width: 700.0,
              ),
              const Padding(
                padding: EdgeInsets.all(80),
                child: SizedBox(
                  height: 120,
                  child: Text(
                    textAlign: TextAlign.justify,
                    "O mapa de solos de São Sebastião do Paraíso apresenta os diferentes tipos de solos. O solo predominante é o solo LVAp (Latossolo Vermelho - Amarelo Psamítico) que representa 15211,71 hectares ou seja 29% a área total na região de São Sebastião do Paraíso.",
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
    );
  }
}
