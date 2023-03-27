import 'package:curriculo/layouts/desktop/desktop.dart';
import 'package:curriculo/layouts/desktop/contato.dart';
import 'package:curriculo/layouts/desktop/publicacao/publicacoes.dart';
import 'package:curriculo/layouts/desktop/webMapping.dart';
import 'package:curriculo/layouts/mobile/mobile.dart';
import 'package:curriculo/layouts/desktop/mapeamento.dart';
import 'package:curriculo/layouts/mobile/sobre.dart';
import 'package:curriculo/layouts/responsive.dart';
import 'package:flutter/material.dart';

import 'layouts/componete_menu_desktop.dart';
import 'layouts/desktop/protejetosGeoSolosDesk.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, categories}) : super(key: key);

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
      appBar: const ListaMenu(),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Responsividade(mobilebody: mobilebody, desktopApp: desktopApp),
          const Mapeamento(),
          const WebMapping(),
          const Projetos(),
          Publicacoes(),
          const Contato(),
        ],
      ),
    );
  }
}
