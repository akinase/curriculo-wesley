import 'package:curriculo/homepage.dart';
import 'package:curriculo/layouts/desktop/mapeamento/mantiqueira.dart';
import 'package:curriculo/layouts/desktop/mapeamento/tres_pontas.dart';
import 'package:curriculo/layouts/desktop/mapeamento/sebastiao.dart';
import 'package:flutter/material.dart';
import 'layouts/desktop/contatoDesk.dart';
import 'layouts/desktop/mapeamento/machado.dart';
import 'layouts/desktop/mapeamentoDesk.dart';
import 'layouts/desktop/protejetosDesk.dart';
import 'layouts/desktop/publicacoes.dart';

const kDefaultShadown =
    BoxShadow(offset: Offset(0, 4), blurRadius: 4, color: Colors.black26);

const kDefaultPadding = 20.0;
const kSecundaryColor = Color.fromARGB(183, 255, 255, 255); //0XFFFE6D8E
const kTextColor = Color.fromARGB(255, 27, 49, 6);
const kTextLightColor = Color(0XFF9A9BB2);
const kDefaultPadding2 = 3.0;
const kbackgroundColor = Color.fromARGB(255, 226, 182, 99);
const kbackgroundColorSec = Color.fromARGB(183, 255, 255, 255);
const kfontText = FontWeight.normal;

final Map<String, Widget> categories = {
  "Inicio": const HomePage(),
  "Mapeamento de Pesquisas": const MapeamentoDesk(),
  "Projetos": const ProjetosDesk(),
  "Publicações Cientificas": PublicacoesDesk(),
  "Equipe GeoSolos": const ContatoDesk()
};

final Map<String, Widget> menumapeamento = {
  "Página Inicial": const HomePage(),
  "Machado": const Machado(),
  "Mantiqueira de Minas": const Mantiqueira(),
  "São Sebastião do Paraíso": const Sebastiao(),
  "Três Pontas": const TresPontas(),
};

final Map<String, String> equipeTecnica = {
  'Franklin Daniel Inácio': 'Agrônomo',
  'Larissa Machado Rodrigues Monteiro': 'Estudante Graduação UFLA',
  'Tiago Henrique da Silva': 'Tecnólogo em Meio Ambiente',
  'Vinícius Teske de Carvalho': 'Estudante Graduação UFLA',
  'Wesley Ribeiro de Souza': 'Bacharel em Sistemas de Informação',
};
