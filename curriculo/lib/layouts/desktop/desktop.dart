import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../componete_menu_desktop.dart';
import '../slide_home.dart';
import 'package:curriculo/constantes.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

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
              aspectRatio: 4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Carousel(),
                    ],
                  ),
                  Container(color: Colors.black.withOpacity(0.40)),
                  Column(
                    children: [
                      const ListaMenu(),
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
                                  .displaySmall!
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
