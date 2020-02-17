import 'package:flutter/material.dart';
import 'package:login/pages/login/login.page.dart';

void main() => runApp(MyApp());

//Apenas um Main para chamar a página de Login e inicializar o App

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agrion',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
