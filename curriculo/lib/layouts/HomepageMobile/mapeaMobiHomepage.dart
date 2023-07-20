// ignore_for_file: file_names

import 'package:curriculo/layouts/mobile/mapeamentoMob/machadoMob.dart';
import 'package:flutter/material.dart';
import '../mobile/mapeamentoMob/mantiqueiraMob.dart';
import '../mobile/mapeamentoMob/sebastiaoMob.dart';
import '../mobile/mapeamentoMob/tresPontasMobi.dart';

class MapeaMobiHomepage extends StatefulWidget {
  const MapeaMobiHomepage({Key? key}) : super(key: key);

  @override
  State<MapeaMobiHomepage> createState() => _MapeaMobiHomepageState();
}

// ignore: unused_element

class _MapeaMobiHomepageState extends State<MapeaMobiHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/machado/machado.jpg'),
                  fit: BoxFit.cover, // Para cobrir todo o espaço do container
                ),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MachadoMobi(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white12)),
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
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mantiqueira/mantiqueira.jpg'),
                  fit: BoxFit.cover, // Para cobrir todo o espaço do container
                ),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MantiqueiraMobi(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white12)),
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/sebastiao/sebastiao.jpg'),
                  fit: BoxFit.cover, // Para cobrir todo o espaço do container
                ),
              ),
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
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white12)),
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tres_pontas/tres_pontas.jpg'),
                  fit: BoxFit.cover, // Para cobrir todo o espaço do container
                ),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TresPontasMobi(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white12)),
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
