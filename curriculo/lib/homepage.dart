import 'package:curriculo/layouts/desktop/desktop.dart';
import 'package:curriculo/layouts/mobile/contato.dart';
import 'package:curriculo/layouts/mobile/mobile.dart';
import 'package:curriculo/layouts/mobile/mapeamento.dart';
import 'package:curriculo/layouts/mobile/rede.dart';
import 'package:curriculo/layouts/mobile/sobre.dart';
import 'package:curriculo/layouts/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() =>
      _HomePageState(desktopApp: Desktop(), mobilebody: Mobile());
}

class _HomePageState extends State<HomePage> {
  final Widget mobilebody;
  final Widget desktopApp;
  late PageController selectPage;
  int id = 0;

  _HomePageState({required this.mobilebody, required this.desktopApp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(scrollDirection: Axis.vertical, children: [
        Responsividade(mobilebody: mobilebody, desktopApp: desktopApp),
        const Mapeamento(),
        const Sobre(),
        const Contato(),
        const Rede(),
      ]),
    );
  }
}
