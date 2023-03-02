import 'package:curriculo/layouts/desktop/desktop.dart';
import 'package:curriculo/layouts/desktop/contato.dart';
import 'package:curriculo/layouts/mobile/mobile.dart';
import 'package:curriculo/layouts/desktop/mapeamento.dart';
import 'package:curriculo/layouts/mobile/rede.dart';
import 'package:curriculo/layouts/mobile/sobre.dart';
import 'package:curriculo/layouts/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() =>
      // ignore: no_logic_in_create_state
      _HomePageState(desktopApp: const Desktop(), mobilebody: const Mobile());
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
