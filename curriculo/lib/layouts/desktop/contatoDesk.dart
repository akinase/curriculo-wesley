// ignore_for_file: file_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constantes.dart';
import '../../menu.dart';

class ContatoDesk extends StatelessWidget {
  const ContatoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> listaCircleAvatar = [];
    // Cria a lista de CircleAvatar usando a lista de fotos
    listaCircleAvatar.addAll(listaFotos.map(
      (foto) => CircleAvatar(radius: 30.0, foregroundImage: AssetImage(foto)),
    ));

    return Scaffold(
      appBar: const ListaMenu(
        menu: 'Equipe GeoSolos',
      ),
      backgroundColor: kbackgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 10, left: 80, right: 80),
              child: const Text(
                "Membros da Equipe de Pesquisadoras",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                color: kbackgroundColorSec,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: CircleAvatar(
                              radius: 80.0,
                              backgroundImage: NetworkImage(
                                  '/assets/contato/pesquisadoras/helena.jpg'),
                            ),
                          ),
                          const Text(
                            "Helena Maria Ramos Alves",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: kfontText,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.link),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Curriculo Lattes',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // ignore: deprecated_member_use
                                      launch(
                                          'http://lattes.cnpq.br/4766494058302983');
                                    },
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.email),
                          const Row(
                            children: [
                              Icon(Icons.phone),
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                              ),
                              Text("(35) 38291751")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: NetworkImage(
                                '/assets/contato/pesquisadoras/margarete.jpg'),
                          ),
                        ),
                        const Text(
                          "Margarete Marin Lordelo Volpato",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: kfontText,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.link),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Curriculo Lattes',
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // ignore: deprecated_member_use
                                    launch(
                                        'http://lattes.cnpq.br/9088910054495930');
                                  },
                              ),
                            ),
                          ],
                        ),
                        const Icon(Icons.email),
                        const Row(
                          children: [
                            Icon(Icons.phone),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                            ),
                            Text("(35) 38291190")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
              child: Text("Equipe Tecnica",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: kbackgroundColorSec,
              height: 300,
              width: 700,
              child: ListView.builder(
                itemCount: equipeTecnica.length,
                itemBuilder: (context, index) {
                  final key = equipeTecnica.keys.toList()[index];
                  final descricao = equipeTecnica[key]!;
                  return ListTile(
                    title: Text(key),
                    subtitle: Text(descricao),
                    leading: listaCircleAvatar[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
