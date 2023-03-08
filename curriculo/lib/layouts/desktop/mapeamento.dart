import 'package:curriculo/constantes.dart';
import 'package:curriculo/layouts/desktop/mapeamento/machado.dart';
import 'package:curriculo/layouts/desktop/mapeamento/mantiqueira.dart';
import 'package:curriculo/layouts/desktop/mapeamento/sebastiao.dart';
import 'package:curriculo/layouts/desktop/mapeamento/tres_pontas.dart';
import 'package:flutter/material.dart';

class Mapeamento extends StatefulWidget {
  const Mapeamento({Key? key}) : super(key: key);

  @override
  State<Mapeamento> createState() => _MapeamentoState();
}

class _MapeamentoState extends State<Mapeamento> {
  int _selectedIndex = 0;
  bool _isHovering = false;

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MouseRegion(
                      onEnter: (event) => setState(() => _isHovering = true),
                      onExit: (event) => setState(() => _isHovering = false),
                      child: Stack(
                        children: [
                          Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: _isHovering ? 1000 : 700,
                              width: _isHovering ? 1000 : 500,
                              child: Image.network(
                                'assets/machado/machado.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
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
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MouseRegion(
                      onEnter: (event) => setState(() => _isHovering = true),
                      onExit: (event) => setState(() => _isHovering = false),
                      child: Stack(
                        children: [
                          Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: _isHovering ? 1000 : 700,
                              width: _isHovering ? 1000 : 500,
                              child: Image.network(
                                'assets/mantiqueira/mantiqueira.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
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
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MouseRegion(
                      onEnter: (event) => setState(() => _isHovering = true),
                      onExit: (event) => setState(() => _isHovering = false),
                      child: Stack(
                        children: [
                          Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: _isHovering ? 1000 : 700,
                              width: _isHovering ? 1000 : 500,
                              child: Image.network(
                                'assets/sebastiao/sebastiao.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
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
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MouseRegion(
                      onEnter: (event) => setState(() => _isHovering = true),
                      onExit: (event) => setState(() => _isHovering = false),
                      child: Stack(
                        children: [
                          Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: _isHovering ? 1000 : 700,
                              width: _isHovering ? 1000 : 500,
                              child: Image.network(
                                'assets/tres_pontas/tres_pontas.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TresPontas(),
                                  ),
                                );
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
