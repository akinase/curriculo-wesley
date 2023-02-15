import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nomesEquipe = [
      "Fulano da Silva",
      "Ciclano Oliveira",
      "Beltrano Souza",
    ];
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text("Membros da Equipe de Pesquisadoras",
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage:
                      NetworkImage("/assets/contato/pesquisadoras/helena.jpg"),
                ),
              ),
              Text("Helena Maria Ramos Alves"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      "/assets/contato/pesquisadoras/margarete.jpg"),
                ),
              ),
              const Text("Margarete Marin Lordelo Volpato"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      NetworkImage("/assets/contato/pesquisadoras/tati.jpg"),
                ),
              ),
              const Text("Tatiana Grossi Chquiloff Vieira"),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child:
                Text("Contatos", style: Theme.of(context).textTheme.headline5),
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
    );
  }
}
