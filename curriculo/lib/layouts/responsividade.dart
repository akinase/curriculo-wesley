import 'package:flutter/material.dart';

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
        if (constraints.maxWidth < 900) {
          return mobilebody;
        } else {
          return desktopApp;
        }
      },
    );
  }
}
