import 'package:flutter/material.dart';
import 'layout.dart';

class Homepage extends StatelessWidget{

  static String tag = 'home.page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child:Text('Hello World')
    );


    return Layout.getContent(context, content);
  }

}