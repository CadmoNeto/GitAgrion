import 'package:flutter/material.dart';
import 'package:login/pages/login/recover.page.dart';
import 'package:login/pages/login/singup.page.dart';

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.green[300],
              title: Text(
                "Agrion",
                style: TextStyle(fontSize: 25),
              ),
            ),
            /*SignUp*/ ListTile(
              title: Text(
                "Registrar-se",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingUpPage(),
                  ),
                );
              },
            ),
            /*RecovPass*/ ListTile(
              title: Text(
                "Recuperar Senha",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPasswordPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
