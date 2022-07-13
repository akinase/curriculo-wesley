import 'package:curriculo/layouts/desktop.dart';
import 'package:curriculo/layouts/mobile/mobile.dart';
import 'package:curriculo/layouts/responsibilidade.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Responsividade(
      mobilebody: Mobile(),
      desktopApp: Desktop(),
    );
  }
}
