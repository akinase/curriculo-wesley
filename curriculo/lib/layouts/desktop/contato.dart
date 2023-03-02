import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constantes.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(40.0),
              child: const Text(
                "Membros da Equipe de Pesquisadoras",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              color: kbackgroundColorSec,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                          radius: 100.0,
                          backgroundImage: NetworkImage(
                              "/assets/contato/pesquisadoras/helena.jpg"),
                        ),
                      ),
                      const Text(
                        "Helena Maria Ramos Alves",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: kfontText,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Curriculo Lattes',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // ignore: deprecated_member_use
                              launch('http://lattes.cnpq.br/4766494058302983');
                            },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                          radius: 100.0,
                          backgroundImage: NetworkImage(
                              "/assets/contato/pesquisadoras/margarete.jpg"),
                        ),
                      ),
                      const Text(
                        "Margarete Marin Lordelo Volpato",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: kfontText,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Curriculo Lattes',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // ignore: deprecated_member_use
                              launch('http://lattes.cnpq.br/9088910054495930');
                            },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                      ),
                    ],
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                              "/assets/contato/pesquisadoras/tati.jpg"),
                        ),
                      ),
                      const Text(
                        "Tatiana Grossi Chquiloff Vieira",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: kfontText,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Curriculo Lattes',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // ignore: deprecated_member_use
                              launch('http://lattes.cnpq.br/0854702186727582');
                            },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text("Contatos",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Contato $index"),
                    subtitle: const Text("Email"),
                    leading: const CircleAvatar(),
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
