import 'package:flutter/material.dart';

class Mapeamento extends StatefulWidget {
  const Mapeamento({Key? key}) : super(key: key);

  @override
  State<Mapeamento> createState() => _MapeamentoState();
}

class _MapeamentoState extends State<Mapeamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 241, 207, 14),
              Color.fromARGB(255, 3, 241, 43),
            ],
          ),
        ),
        child: Column(),
      ),
    );
  }
}
