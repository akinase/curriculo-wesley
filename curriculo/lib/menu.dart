import 'package:flutter/material.dart';
import '../constantes.dart';

class ListaMenu extends StatefulWidget implements PreferredSizeWidget {
  final String menu;

  const ListaMenu({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  State<ListaMenu> createState() => _ListaMenuState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _ListaMenuState extends State<ListaMenu> {
  late String selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.menu;
  }

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double limiteLargura = 900;
    bool telaMenorQueLimite = larguraTela < limiteLargura;
    Map<String, Widget> menuSelecionado =
        telaMenorQueLimite ? menuMobi : menuDesk;
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(84, 214, 172, 94),
            kbackgroundColor,
          ],
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuSelecionado.keys.map((category) {
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
                      builder: (context) => menuSelecionado[category]!),
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
                      width: 50,
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
