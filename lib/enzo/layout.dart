
import 'package:flutter/material.dart';

class Layout {
  static Scaffold getContent(BuildContext context, content){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Center(
          child: Text('Agrion')
        ),
      ),
      body: content,
    );

    
  }
}