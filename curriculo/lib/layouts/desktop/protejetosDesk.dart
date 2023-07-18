// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:curriculo/layouts/desktop/projetosDesk/geotecIntegracao.dart';
import 'package:flutter/material.dart';
import '../../constantes.dart';
import '../../menu.dart';
import 'projetosDesk/caractAgroecossistemas.dart';
import 'projetosDesk/caractAmbiental.dart';
import 'projetosDesk/distriEspacial.dart';
import 'projetosDesk/identiAreas.dart';
import 'projetosDesk/mineracaoPragaDoencas.dart';

class ProjetosDesk extends StatelessWidget {
  const ProjetosDesk({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ListaMenu(
        menu: 'Projetos',
      ),
      body: Container(
        color: kbackgroundColor,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 80, right: 80),
          child: ListView.builder(
            itemCount: materialItens.length,
            itemBuilder: (BuildContext context, int index) {
              final materialItem = materialItens[index];
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GeotecIntegracaoDesk()),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IdentiAreas()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DistriEspacial()),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MineracaoPragaDoencas()),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CaractAmbiental()),
                      );
                      break;
                    case 5:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CaractAgroecossistemas()),
                      );
                      break;
                  }
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shadowColor: kbackgroundColor,
                  color: kbackgroundColorSec,
                  elevation: 20,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network(
                              materialItem["imagemUrl"]!,
                              fit: BoxFit.cover,
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    materialItem["titulo"]!,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                SizedBox(
                                  height: 200,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Text(
                                    materialItem["descricao"]!,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
