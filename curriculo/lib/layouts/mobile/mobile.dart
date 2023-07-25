import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../constantes.dart';
import '../../slide_home.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ClipPath(
                    clipper: MyClipper(), //parte ovulada azul
                    child: const Carousel(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Laboratório de Geoprocessamento GeoSolos",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.headlineMedium!,
                child: AnimatedTextKit(
                  pause: const Duration(milliseconds: 1500),
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText("Café"),
                    TyperAnimatedText("Geoprocessamento"),
                    TyperAnimatedText("Imagem de Satélite"),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50),
              child: SizedBox(
                child: Text(
                  textAlign: TextAlign.justify,
                  "Este site tem como objetivo divulgar os resultados de pesquisa do Laboratório de Geoprocessamento - GeoSolos, da Empresa de Pesquisa Agropecuária de Minas Gerais - EPAMIG. O GeoSolos realiza, por meio de geotecnologias, o mapeamento e a caracterização de ambientes cafeeiros nas principais regiões produtoras do estado de Minas Gerais. Estão disponibilizados a metodologia para a caracterização ambiental e o mapeamento da cultura cafeeira, bem como os resultados obtidos nos projetos desenvolvidos pela equipe de pesquisadores. Os mapas gerados estão disponíveis de forma interativa por meio de webmapping. O laboratório é resultado de uma parceria entre a EPAMIG, a Embrapa Café e a Universidade Federal de Lavras - UFLA e tem como principal financiador o Consórcio Pesquisa Café.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
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

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(
        0, size.height - 80); // - 80 é do menu ou app bar que estara no top

    path.quadraticBezierTo(
        //posições x1 e x2 e y1 e y2 do plano carteziano
        size.width / 2,
        size.height,
        size.width,
        size.height - 80); // - 80 é do menu ou app bar que estara no top

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
