import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Componente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[],
    );
  }
}

class ListaMenu extends StatefulWidget {
  const ListaMenu({Key? key}) : super(key: key);

  @override
  State<ListaMenu> createState() => _ListaMenuState();
}

class _ListaMenuState extends State<ListaMenu> {
  int selectedCategory = 0;
  List<String> categories = [
    "Sobre Wesley",
    "Portifolio",
    "Contatos",
    "Redes Sociais"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding2),
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0XFFbaff28),
            Color(0XFF7ac72d),
          ],
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => bildCategory(index, context),
      ),
    );
  }

  Padding bildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        //metodo para selecionar o menu
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kTextColor
                        : Colors.black45
                            .withOpacity(0.35), //cor sombreado do appbar
                  ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? Color.fromARGB(237, 243, 15, 186)
                    : Colors
                        .transparent, // retira as marcações das demais palavras do vetor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
