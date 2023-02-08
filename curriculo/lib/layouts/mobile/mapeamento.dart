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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Text('Machado'),
          ),
          const Center(
            child: Text('Três Pontas'),
          ),
          const Center(
            child: Text('São Sebastião do Paraíso'),
          ),
          const Center(
            child: Text('Mantiqueira de Minas'),
          ),
        ],
      ),
    );
  }
}
