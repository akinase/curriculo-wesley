// ignore_for_file: file_names

import 'package:curriculo/layouts/mobile/projetosMobi/caractAgroecossistemasMobi.dart';
import 'package:curriculo/layouts/mobile/projetosMobi/geotecIntegracaoMobi.dart';
import 'package:flutter/material.dart';
import '../../../../constantes.dart';
import '../mobile/projetosMobi/caractAmbientalMobi.dart';
import '../mobile/projetosMobi/distriEspacialMobi.dart';
import '../mobile/projetosMobi/identiAreasMobi.dart';
import '../mobile/projetosMobi/mineracaoPragaDoencasMobi.dart';

class ProjetosMobiHomepage extends StatelessWidget {
  const ProjetosMobiHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Container(
          padding: const EdgeInsets.all(30.0),
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
                            builder: (context) => const GeotecIntegracaoMobi()),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IdentiAreasMobi()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DistriEspacialMobi()),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MineracaoPragaDoencasMobi()),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CaractAmbientalMobi()),
                      );
                      break;
                    case 5:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CaractAgroecossistemasMobi()),
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
                            padding: const EdgeInsets.all(25.0),
                            child: Image.network(
                              materialItem["imagemUrl"]!,
                              fit: BoxFit.cover,
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.20,
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
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                SizedBox(
                                  height: 100,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Text(
                                    materialItem["descricao"]!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.0,
                                    ),
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
