import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dissertacao2015 extends StatelessWidget {
  Dissertacao2015({Key? key}) : super(key: key);

  List<Map<String, String>> publi2015 = [
    {
      'PDF': '',
      'path': '',
      'referencial': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Container(
              color: kbackgroundColorSec,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    itemCount: publi2015.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(publi2015[index]['PDF']!,
                            textAlign: TextAlign.center),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
