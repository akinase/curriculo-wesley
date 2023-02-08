import 'package:flutter/material.dart';

const kDefaultShadown =
    BoxShadow(offset: Offset(0, 4), blurRadius: 4, color: Colors.black26);

const kDefaultPadding = 20.0;
const kSecundaryColor = Color.fromARGB(183, 255, 255, 255); //0XFFFE6D8E
const kTextColor = Color(0XFF12153D);
const kTextLightColor = Color(0XFF9A9BB2);
const kDefaultPadding2 = 3.0;

// ignore: non_constant_identifier_names
var MyDrawer = Drawer(
  backgroundColor: kSecundaryColor,
  child: Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      const DrawerHeader(child: Icon(Icons.agriculture_sharp)),
      const ListTile(
        leading: Icon(Icons.login),
        title: Text('L O G I N'),
      )
    ],
  ),
);

var MyAppBar = AppBar(
  backgroundColor: Color.fromARGB(255, 202, 214, 201),
);
