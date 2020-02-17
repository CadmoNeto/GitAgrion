
import 'package:flutter/material.dart';
import 'layout.dart';


class AboutPage extends StatelessWidget{
  static String tag =  'about page';
  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Center(
      child: Text('Este app foi criado por Enzo Mury')
    ));
  }

}