import 'package:curriculo/layouts/desktop/protejetosGeoSolosDesk.dart';
import 'package:curriculo/layouts/desktop/publicacao/publicacoes.dart';
import 'package:curriculo/layouts/desktop/webMapping.dart';
import 'package:curriculo/layouts/mobile/mapeamentoMob.dart';
import 'package:curriculo/layouts/desktop/contato.dart';
import 'package:flutter/material.dart';
import '../../constantes.dart';
import '../homepage.dart';
import 'desktop/mapeamento.dart';

class ListaMenu extends StatefulWidget implements PreferredSizeWidget {
  const ListaMenu({Key? key, categories}) : super(key: key);

  @override
  State<ListaMenu> createState() => _ListaMenuState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _ListaMenuState extends State<ListaMenu> {
  String selectedCategory = "Inicio";

  final Map<String, Widget> categories = {
    "Inicio": const HomePage(),
    "Mapeamento de Pesquisas": const Mapeamento(),
    "WebMapping": const WebMapping(),
    "Projetos": const Projetos(),
    "Publicações Cientificas": Publicacoes(),
    "Equipe GeoSolos": const Contato()
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          //begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            kbackgroundColor,
            Color.fromARGB(84, 214, 172, 94),
          ],
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories.keys.map((category) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
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
                              ? const Color.fromARGB(255, 112, 90, 49)
                              : const Color.fromARGB(255, 27, 49, 6),
                        ),
                  ),
                  if (selectedCategory == category)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      height: 8,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 112, 102, 83),
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
