import 'package:curriculo/layouts/componete_menu_desktop.dart';
import 'package:flutter/material.dart';
import '../../constantes.dart';
import '../slide_home.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          kSecundaryColor, //esta em constatantes  //esta em constatantes
      body: Column(
        children: <Widget>[
          const ListaMenu(),
          ClipPath(
            clipper: MyClipper(), //parte ovulada azul
            child: const Carousel(),
          ),
        ],
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
    // TODO: implement shouldReclip
    return false;
  }
}
