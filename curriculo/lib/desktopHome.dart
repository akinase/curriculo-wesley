// ignore_for_file: file_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:curriculo/constantes.dart';
import 'package:curriculo/slide_home.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: 20,
            ),
            AspectRatio(
              aspectRatio: 4.2,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Center(
                    child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Carousel()),
                  ),
                  Container(color: Colors.black.withOpacity(0.40)),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 200, right: 200, top: 20),
                    child: Text(
                      "Laboratório de Geoprocessamento GeoSolos",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.headlineMedium!,
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
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 950,
                child: const Text(
                  textAlign: TextAlign.justify,
                  "Este site tem como objetivo divulgar os resultados de pesquisa do Laboratório de Geoprocessamento - GeoSolos, da Empresa de Pesquisa Agropecuária de Minas Gerais - EPAMIG. O GeoSolos realiza, por meio de geotecnologias, o mapeamento e a caracterização de ambientes cafeeiros nas principais regiões produtoras do estado de Minas Gerais. Estão disponibilizados a metodologia para a caracterização ambiental e o mapeamento da cultura cafeeira, bem como os resultados obtidos nos projetos desenvolvidos pela equipe de pesquisadores. Os mapas gerados estão disponíveis de forma interativa por meio de webmapping. O laboratório é resultado de uma parceria entre a EPAMIG, a Embrapa Café e a Universidade Federal de Lavras - UFLA e tem como principal financiador o Consórcio Pesquisa Café.",
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
    );
  }
}