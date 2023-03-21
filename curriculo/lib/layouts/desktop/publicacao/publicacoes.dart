import 'package:curriculo/constantes.dart';
import 'package:curriculo/layouts/desktop/publicacao/2008/artigos2008.dart';
import 'package:curriculo/layouts/desktop/publicacao/2009/artigos2009.dart';
import 'package:curriculo/layouts/desktop/publicacao/2010/artigos2010.dart';
import 'package:curriculo/layouts/desktop/publicacao/2011/artigo2011.dart';
import 'package:curriculo/layouts/desktop/publicacao/2012/artigo2012.dart';
import 'package:curriculo/layouts/desktop/publicacao/2013/artigo2013.dart';
import 'package:curriculo/layouts/desktop/publicacao/2014/artigos2014.dart';
import 'package:curriculo/layouts/desktop/publicacao/2015/artigos2015.dart';
import 'package:flutter/material.dart';

class Publicacoes extends StatelessWidget {
  Publicacoes({super.key});

  final Map<String, IconData> _mainTabs = {
    '2000': Icons.picture_as_pdf,
    '2002': Icons.picture_as_pdf,
    '2004': Icons.picture_as_pdf,
    '2005': Icons.picture_as_pdf,
    '2006': Icons.picture_as_pdf,
    '2007': Icons.picture_as_pdf,
    '2008': Icons.picture_as_pdf,
    '2009': Icons.picture_as_pdf,
    '2010': Icons.picture_as_pdf,
    '2011': Icons.picture_as_pdf,
    '2012': Icons.picture_as_pdf,
    '2013': Icons.picture_as_pdf,
    '2014': Icons.picture_as_pdf,
    '2015': Icons.picture_as_pdf,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: _mainTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kbackgroundColor,
            bottom: TabBar(
              isScrollable: true,
              indicatorWeight: 5,
              labelColor: Colors.black45,
              tabs: _mainTabs.keys.map((tabName) {
                return Tab(
                  text: tabName,
                  icon: Icon(
                    _mainTabs[tabName],
                    color: Colors.black,
                  ),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: _mainTabs.keys.map((tabName) {
              return _buildTabContent(context, tabName);
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(BuildContext context, String tabName) {
    final List<Tab> subTabs = [
      const Tab(text: 'Artigos'),
      const Tab(text: 'Dissertação e Teses'),
    ];

    return DefaultTabController(
      length: subTabs.length,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.pinkAccent,
            labelColor: Colors.black,
            indicatorWeight: 7,
            tabs: subTabs,
          ),
          Flexible(
            child: TabBarView(
              children: [
                _buildSubTabContentArtigo(context, tabName, subTabs[0].text!),
                _buildSubTabContentDissetarcao(
                    context, tabName, subTabs[1].text!),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubTabContentArtigo(
      BuildContext context, String tabName, String subTabName) {
    Widget content;
    switch (tabName) {
      case '2015':
        content = Artigos2015();
        break;
      case '2014':
        content = Artigos2014();
        break;
      case '2013':
        content = Artigos2013();
        break;
      case '2012':
        content = Artigos2012();
        break;
      case '2011':
        content = Artigos2011();
        break;
      case '2010':
        content = Artigos2010();
        break;
      case '2009':
        content = Artigos2009();
        break;
      case '2008':
        content = Artigos2008();
        break;
      default:
        content = Container(
          color: kbackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Não houve publicação deste segmento neste ano",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
        break;
    }
    return content;
  }

  Widget _buildSubTabContentDissetarcao(
      //só esta no case os que ja foram confirmados ter publicações de Dissertação e/ou Tese
      BuildContext context,
      String tabName,
      String subTabName) {
    Widget content;
    switch (tabName) {
      case '2014':
        content = Artigos2015();
        break;
      case '2011':
        content = Artigos2015();
        break;
      case '2009':
        content = Artigos2015();
        break;
      case '2008':
        content = Artigos2015();
        break;
      case '2007':
        content = Artigos2015();
        break;
      case '2006':
        content = Artigos2015();
        break;
      case '2000':
        content = Artigos2015();
        break;
      default:
        content = Container(
          color: kbackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Não houve publicação deste segmento neste ano",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
        break;
    }
    return content;
  }
}
