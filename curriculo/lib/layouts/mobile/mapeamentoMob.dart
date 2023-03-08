// ignore: file_names
import 'package:curriculo/layouts/desktop/mapeamento/machado.dart';
import 'package:curriculo/layouts/desktop/mapeamento/mantiqueira.dart';
import 'package:flutter/material.dart';
import 'sebastiaoMob.dart';

class MapeamentoMob extends StatefulWidget {
  const MapeamentoMob({Key? key}) : super(key: key);

  @override
  State<MapeamentoMob> createState() => _MapeamentoMobState();
}

// ignore: unused_element
int _selectedIndex = 0;

void setState(Null Function() param0) {}

class _MapeamentoMobState extends State<MapeamentoMob> {
  // ignore: unused_element
  static void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
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
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
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
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Sebastiao(),
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
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
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
          ),
        ],
      ),
    );
  }
}
