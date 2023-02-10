import 'package:curriculo/layouts/mobile/sobre.dart';
import 'package:flutter/material.dart';

class Mapeamento extends StatefulWidget {
  const Mapeamento({Key? key}) : super(key: key);

  @override
  State<Mapeamento> createState() => _MapeamentoState();
}

int _selectedIndex = 0;

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

void setState(Null Function() param0) {}

class _MapeamentoState extends State<Mapeamento> {
  // ignore: unused_element
  static void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width; // responsividade dos botoes

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              InkWell(
                onTap: () {
                  _onItemTapped(0);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Sobre(null)));
                },
                child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.red,
                  // ignore: prefer_const_constructors
                  child: SizedBox(
                    width: width * 0.2,
                    height: width * 0.2,
                    child: const Center(
                      child: Text(
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
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  _onItemTapped(1);
                },
                child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.blue,
                  child: SizedBox(
                    width: width * 0.2,
                    height: width * 0.2,
                    child: const Center(
                      child: Text(
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
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  _onItemTapped(2);
                },
                child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.green,
                  child: SizedBox(
                    width: width * 0.2,
                    height: width * 0.2,
                    child: const Center(
                      child: Text(
                        "São Sebastião do Paraíso",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:
                              20, // ajustar o tamanho do texto em relação ao tamanho da tela
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  _onItemTapped(3);
                },
                child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.yellow,
                  child: SizedBox(
                    width: width * 0.2,
                    height: width * 0.2,
                    child: const Center(
                      child: Text(
                        "Três Pontas",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:
                              20, // ajustar o tamanho do texto em relação ao tamanho da tela
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
