// ignore_for_file: no_logic_in_create_state, sort_child_properties_last, unrelated_type_equality_checks, prefer_typing_uninitialized_variables

import 'package:curriculo/menu.dart';
import 'package:curriculo/layouts/mobile/contatoMobi.dart';
import 'package:curriculo/layouts/mobile/mobile.dart';
import 'package:curriculo/projetoHomePage.dart';
import 'package:flutter/material.dart';
import 'ContatoHomePage.dart';
import 'desktopHome.dart';
import 'layouts/desktop/publicacoes.dart';
import 'layouts/mobile/mapeamentoMob.dart';
import 'responsividade.dart';
import 'mapeamentoHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, categories}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState(
        desktopApp: const DesktopHome(),
        mobilebody: const Mobile(),
        mapeamDesk: const MapeamentoHomePage(),
        mapeamMobi: const MapeamentoMob(),
        projetosDesk: const ProjetoHomePage(),
        contatoDesk: const ContatoHomePage(),
        contatoMobi: const ContatoMobi(),
      );
}

class _HomePageState extends State<HomePage> {
  final Widget mobilebody;
  final Widget desktopApp;
  final Widget mapeamDesk;
  final Widget mapeamMobi;
  final Widget projetosDesk;
  final Widget contatoDesk;
  final Widget contatoMobi;

  _HomePageState({
    required this.mobilebody,
    required this.desktopApp,
    required this.mapeamDesk,
    required this.mapeamMobi,
    required this.projetosDesk,
    required this.contatoDesk,
    required this.contatoMobi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ListaMenu(
        menu: 'Inicio',
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Responsividade(mobilebody: mobilebody, desktopApp: desktopApp),
          Responsividade(mobilebody: mapeamMobi, desktopApp: mapeamDesk),
          Responsividade(mobilebody: projetosDesk, desktopApp: projetosDesk),
          PublicacoesDesk(),
          Responsividade(mobilebody: contatoMobi, desktopApp: contatoDesk),
        ],
      ),
    );
  }
}
