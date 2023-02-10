import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre(String? s, {Key? key}) : super(key: key);

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.yellow);
  }
}
