// ignore_for_file: no_logic_in_create_state, sort_child_properties_last, unrelated_type_equality_checks, prefer_typing_uninitialized_variables

import 'package:curriculo/layouts/mobile/mobile.dart';
import 'package:curriculo/layouts/HomepageDesk/projetoHomePage.dart';
import 'package:curriculo/layouts/HomepageMobile/projetoMobiHomepage.dart';
import 'package:flutter/material.dart';
import 'layouts/HomepageDesk/contatoHomePage.dart';
import 'layouts/HomepageMobile/contatoMobiHomepage.dart';
import 'layouts/desktop/desktop.dart';
import 'layouts/HomepageMobile/mapeaMobiHomepage.dart';
import 'menu.dart';
import 'publicacoes.dart';
import 'responsividade.dart';
import 'layouts/HomepageDesk/mapeamentoHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, categories}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState(
        desktopApp: const Desktop(),
        mobilebody: const Mobile(),
        mapeamDesk: const MapeamentoHomePage(),
        mapeamMobi: const MapeaMobiHomepage(),
        projetosDesk: const ProjetoHomePage(),
        projetosMobi: const ProjetosMobiHomepage(),
        contatoDesk: const ContatoHomePage(),
        contatoMobi: const ContatoMobiHomepage(),
      );
}

class _HomePageState extends State<HomePage> {
  final Widget mobilebody;
  final Widget desktopApp;
  final Widget mapeamDesk;
  final Widget mapeamMobi;
  final Widget projetosDesk;
  final Widget projetosMobi;
  final Widget contatoDesk;
  final Widget contatoMobi;

  _HomePageState({
    required this.mobilebody,
    required this.desktopApp,
    required this.mapeamDesk,
    required this.mapeamMobi,
    required this.projetosDesk,
    required this.projetosMobi,
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
          Responsividade(mobilebody: projetosMobi, desktopApp: projetosDesk),
          Publicacoes(),
          Responsividade(mobilebody: contatoMobi, desktopApp: contatoDesk),
        ],
      ),
    );
  }
}
