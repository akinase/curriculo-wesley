// ignore_for_file: file_names, non_constant_identifier_names
import 'package:image_network/image_network.dart';
import 'package:curriculo/constantes.dart';
import 'package:curriculo/layouts/desktop/mapeamento/machado.dart';
import 'package:curriculo/layouts/desktop/mapeamento/mantiqueira.dart';
import 'package:curriculo/layouts/desktop/mapeamento/sebastiao.dart';
import 'package:curriculo/layouts/desktop/mapeamento/tres_pontas.dart';
import 'package:flutter/material.dart';

class MapeamentoHomePage extends StatefulWidget {
  const MapeamentoHomePage({Key? key}) : super(key: key);

  @override
  State<MapeamentoHomePage> createState() => _MapeamentoHomePageState();
}

class _MapeamentoHomePageState extends State<MapeamentoHomePage> {
  bool _isHovering = false;
  String machado = 'arquivos/machado/machado.jpg';
  String mantiqueira = 'arquivos/mantiqueira/mantiqueira.jpg';
  String sebastiao = 'arquivos/sebastiao/sebastiao.jpg';
  String tresPontas = 'arquivos/tres_pontas/tres_pontas.jpg';

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
                              width: _isHovering ? 700 : 400,
                              child: ImageNetwork(
                                height: 1000,
                                width: 700,
                                image: machado,
                                fitWeb: BoxFitWeb.cover,
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
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white12)),
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
                              width: _isHovering ? 700 : 400,
                              child: ImageNetwork(
                                height: 1000,
                                width: 700,
                                image: mantiqueira,
                                fitWeb: BoxFitWeb.cover,
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
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white12)),
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
                              width: _isHovering ? 700 : 400,
                              child: ImageNetwork(
                                height: 1000,
                                width: 700,
                                image: sebastiao,
                                fitWeb: BoxFitWeb.cover,
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
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white12)),
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
                              width: _isHovering ? 700 : 400,
                              child: ImageNetwork(
                                height: 1000,
                                width: 700,
                                image: tresPontas,
                                fitWeb: BoxFitWeb.cover,
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
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white12)),
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
