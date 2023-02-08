import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Responsividade extends StatelessWidget {
  final Widget mobilebody;
  final Widget desktopApp;

  const Responsividade(
      {super.key,
      required this.mobilebody,
      required this.desktopApp}); //Construtor das classes mobile e desktop

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobilebody;
        } else {
          return desktopApp;
        }
      },
    );
  }
}
