// ignore_for_file: file_names

import 'package:curriculo/layouts/desktop/mapeamento/machado.dart';
import 'package:curriculo/layouts/desktop/mapeamento/mantiqueira.dart';
import 'package:flutter/material.dart';
import 'mapeamentoMob/sebastiaoMob.dart';

class MapeamentoMobi extends StatefulWidget {
  const MapeamentoMobi({Key? key}) : super(key: key);

  @override
  State<MapeamentoMobi> createState() => _MapeamentoMobiState();
}

// ignore: unused_element
int _selectedIndex = 0;

void setState(Null Function() param0) {}

class _MapeamentoMobiState extends State<MapeamentoMobi> {
  // ignore: unused_element
  static void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Machado(),
                        ),
                      );
                    },
                    child: const Text(
                      "Machado",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mantiqueira(),
                      ),
                    );
                  },
                  child: const Text(
                    "Mantiqueira de Minas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SebastiaoMobi(),
                      ),
                    );
                  },
                  child: const Text(
                    "São Sebastião do Paraíso",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Adicione a ação que deseja que seja realizada quando o botão for pressionado aqui.
                  },
                  child: const Text(
                    "Três Pontas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
