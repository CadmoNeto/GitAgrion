import 'package:flutter/material.dart';

import 'about.dart';
import 'home.dart';
import 'perfil.dart';

class Listateste extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Homepage.tag: (context) => Homepage(),
    AboutPage.tag: (context) => AboutPage(),
    Perfil.tag: (context) => Perfil()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agrion',
      theme: ThemeData(
        primaryColorDark: Colors.green[300],
        accentColor: Colors.blueAccent,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(
              fontSize: 36, fontStyle: FontStyle.italic, color: Colors.blue),
          body1: TextStyle(fontSize: 14),
        ),
      ),
      home: Homepage(),
      routes: routes,
    );
  }
}
