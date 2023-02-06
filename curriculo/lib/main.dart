import 'package:curriculo/homepage.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //inicialização do framer do flutter

  /* await Firebase.initializeApp(
    //exportado pelo arquivo de configuração
    options: DefaultFirebaseOptions.currentPlatform,
  ); */

  runApp(MaterialApp(
      title: "Currículo Wesley Ribeiro de Souza",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(fontFamily: "Poppins" // fonte app
          )));

  /*await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); */
}
