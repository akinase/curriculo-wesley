import 'package:curriculo/layouts/mobile/componete_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/avd.dart';
import '../../constantes.dart';
import '../desktop/slide_home.dart';

final String menu = "assets/icons/menu.svg";
final String lupa = "assets/icons/search.svg";

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bildAppBar(),
      backgroundColor: kSecundaryColor,
      body: Column(
        children: <Widget>[
          ListaMenu(),
          ClipPath(
            clipper: MyClipper(), //parte ovulada azul
            child: const Carousel(
              key: null,
            ), /*Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0XFFbaff28),
                    Color(0XFF7ac72d),
                  ],
                ),
              ),
            ),*/
          ),
        ],
      ),
    );
  }

  AppBar bildAppBar() {
    return AppBar(
        //barra top
        backgroundColor:
            kSecundaryColor, //cor da barra de pesquisa e menu lateral
        elevation: 2,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset(menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            icon: SvgPicture.asset(lupa),
            onPressed: () {},
          )
        ]);
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
