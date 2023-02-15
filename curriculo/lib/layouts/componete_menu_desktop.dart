import 'package:curriculo/layouts/desktop/desktop.dart';
import 'package:curriculo/layouts/mobile/mapeamentoMob.dart';
import 'package:flutter/material.dart';
import 'package:curriculo/layouts/mobile/rede.dart';
import 'package:curriculo/layouts/mobile/sobre.dart';

import '../homepage.dart';
import 'desktop/contato.dart';

class ListaMenu extends StatefulWidget implements PreferredSizeWidget {
  const ListaMenu({Key? key}) : super(key: key);

  @override
  State<ListaMenu> createState() => _ListaMenuState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _ListaMenuState extends State<ListaMenu> {
  String selectedCategory = "Inicio";

  final Map<String, Widget> categories = {
    "Inicio": HomePage(),
    "Mapeamento de Pesquisas": const Mapeamento(),
    "WebMapping": const Sobre(),
    "Projetos": const Rede(),
    "Publicações Cientificas": const Sobre(),
    "Equipe GeoSolos": const Contato()
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 202, 214, 201),
            Color.fromARGB(255, 232, 233, 230),
          ],
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories.keys.map((category) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => categories[category]!),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: selectedCategory == category
                              ? Colors.black
                              : const Color.fromARGB(137, 189, 16, 189),
                        ),
                  ),
                  if (selectedCategory == category)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      height: 2,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 223, 19, 178),
                      ),
                    ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
