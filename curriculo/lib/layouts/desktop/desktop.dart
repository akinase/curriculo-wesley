import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curriculo/layouts/desktop/slide_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../mobile/componete_menu.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 233, 230),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: 20,
            ),
            AspectRatio(
              aspectRatio: 4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Carousel(),
                    ],
                  ),
                  Container(color: Colors.black.withOpacity(0.66)),
                  Column(
                    children: [
                      ListaMenu(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Laboratório de Geoprocessamento GeoSolos",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.subtitle1!,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText("Café"),
                    TyperAnimatedText("Geoprocessamento"),
                    TyperAnimatedText("Imagem de Satélite rapideye"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(80),
              child: Container(
                height: 120,
                child: const Text(
                  textAlign: TextAlign.center,
                  "Este site tem como objetivo divulgar os resultados de pesquisa do Laboratório de Geoprocessamento - GeoSolos, da Empresa de Pesquisa Agropecuária de Minas Gerais - EPAMIG. O GeoSolos realiza, por meio de geotecnologias, o mapeamento e a caracterização de ambientes cafeeiros nas principais regiões produtoras do estado de Minas Gerais. Estão disponibilizados a metodologia para a caracterização ambiental e o mapeamento da cultura cafeeira, bem como os resultados obtidos nos projetos desenvolvidos pela equipe de pesquisadores. Os mapas gerados estão disponíveis de forma interativa por meio de webmapping. O laboratório é resultado de uma parceria entre a EPAMIG, a Embrapa Café e a Universidade Federal de Lavras - UFLA e tem como principal financiador o Consórcio Pesquisa Café.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
