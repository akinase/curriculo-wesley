import 'package:curriculo/layouts/mobile/componete_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/avd.dart';
import '../../constantes.dart';
import '../desktop/slide_home.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecundaryColor,
      appBar: MyAppBar, //esta em constatantes
      drawer: MyDrawer, //esta em constatantes
      body: Column(
        children: <Widget>[
          const ListaMenu(),
          ClipPath(
            clipper: MyClipper(), //parte ovulada azul
            child: Carousel(),
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
