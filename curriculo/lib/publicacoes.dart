// ignore_for_file: file_names

import 'package:curriculo/constantes.dart';
import 'package:curriculo/layouts/desktop/publicacao/2000/artigos2000.dart';
import 'package:curriculo/layouts/desktop/publicacao/2000/dissertacao2000.dart';
import 'package:curriculo/layouts/desktop/publicacao/2001/artigos2001.dart';
import 'package:curriculo/layouts/desktop/publicacao/2002/artigos2002.dart';
import 'package:curriculo/layouts/desktop/publicacao/2002/dissetacao2002.dart';
import 'package:curriculo/layouts/desktop/publicacao/2003/artigo2003.dart';
import 'package:curriculo/layouts/desktop/publicacao/2003/dissertacao2003.dart';
import 'package:curriculo/layouts/desktop/publicacao/2004/artigos2004.dart';
import 'package:curriculo/layouts/desktop/publicacao/2004/dissertacao2004.dart';
import 'package:curriculo/layouts/desktop/publicacao/2005/artigos2005.dart';
import 'package:curriculo/layouts/desktop/publicacao/2006/artigos2006.dart';
import 'package:curriculo/layouts/desktop/publicacao/2006/dissertacao2006.dart';
import 'package:curriculo/layouts/desktop/publicacao/2007/artigos2007.dart';
import 'package:curriculo/layouts/desktop/publicacao/2007/dissertacao2007.dart';
import 'package:curriculo/layouts/desktop/publicacao/2008/artigos2008.dart';
import 'package:curriculo/layouts/desktop/publicacao/2008/dissertacao2008.dart';
import 'package:curriculo/layouts/desktop/publicacao/2009/artigos2009.dart';
import 'package:curriculo/layouts/desktop/publicacao/2009/dissertacao2009.dart';
import 'package:curriculo/layouts/desktop/publicacao/2010/artigos2010.dart';
import 'package:curriculo/layouts/desktop/publicacao/2011/artigo2011.dart';
import 'package:curriculo/layouts/desktop/publicacao/2011/dissertacao2011.dart';
import 'package:curriculo/layouts/desktop/publicacao/2012/artigo2012.dart';
import 'package:curriculo/layouts/desktop/publicacao/2013/artigo2013.dart';
import 'package:curriculo/layouts/desktop/publicacao/2014/artigos2014.dart';
import 'package:curriculo/layouts/desktop/publicacao/2015/artigos2015.dart';
import 'package:curriculo/layouts/desktop/publicacao/2015/dissertacao2015.dart';
import 'package:curriculo/layouts/desktop/publicacao/2016/artigo2016.dart';
import 'package:curriculo/layouts/desktop/publicacao/2017/artigo2017.dart';
import 'package:curriculo/layouts/desktop/publicacao/2018/artigos2018.dart';
import 'package:curriculo/layouts/desktop/publicacao/2019/artigos2019.dart';
import 'package:curriculo/layouts/desktop/publicacao/2020/artigos2020.dart';
import 'package:curriculo/layouts/desktop/publicacao/2023/artigos2023.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class PublicacoesDesk extends StatelessWidget {
  PublicacoesDesk({super.key});

  final Map<String, IconData> _mainTabs = {
    '2000': Icons.picture_as_pdf,
    '2001': Icons.picture_as_pdf,
    '2002': Icons.picture_as_pdf,
    '2003': Icons.picture_as_pdf,
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
    '2016': Icons.picture_as_pdf,
    '2017': Icons.picture_as_pdf,
    '2018': Icons.picture_as_pdf,
    '2019': Icons.picture_as_pdf,
    '2020': Icons.picture_as_pdf,
    '2023': Icons.picture_as_pdf,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: _mainTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                "Publicações Cientificas: Artigos, Dissesrtações e Teses",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 112, 90, 49),
                )),
            centerTitle: true,
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: Tooltip(
            message: 'Voltar à Home Page',
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              backgroundColor: Colors.white70,
              child: const Icon(
                Icons.home_sharp,
                color: Colors.black,
              ),
            ),
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
      case '2023':
        content = Artigos2023();
        break;
      case '2020':
        content = Artigos2020();
        break;
      case '2019':
        content = Artigos2019();
        break;
      case '2018':
        content = Artigos2018();
        break;
      case '2017':
        content = Artigos2017();
        break;
      case '2016':
        content = Artigos2016();
        break;
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
      case '2007':
        content = Artigos2007();
        break;
      case '2006':
        content = Artigos2006();
        break;
      case '2005':
        content = Artigos2005();
        break;
      case '2004':
        content = Artigos2004();
        break;
      case '2003':
        content = Artigos2003();
        break;
      case '2002':
        content = Artigos2002();
        break;
      case '2001':
        content = Artigos2001();
        break;
      case '2000':
        content = Artigos2000();
        break;
      default:
        content = Container(
          color: kbackgroundColor,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
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
        content = Dissertacao2015();
        break;
      case '2011':
        content = Dissertacao2011();
        break;
      case '2009':
        content = Dissertacao2009();
        break;
      case '2008':
        content = Dissertacao2008();
        break;
      case '2007':
        content = Dissertacao2007();
        break;
      case '2006':
        content = Dissertacao2006();
        break;
      case '2004':
        content = Dissertacao2004();
        break;
      case '2003':
        content = Dissertacao2003();
        break;
      case '2002':
        content = Dissertacao2002();
        break;
      case '2000':
        content = Dissertacao2000();
        break;
      default:
        content = Container(
          color: kbackgroundColor,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
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
