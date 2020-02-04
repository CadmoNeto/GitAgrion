import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login/pages/home/home.page.dart';
import 'package:login/pages/login/recover.page.dart';
import 'package:login/pages/login/singup.page.dart';

//======================================================================================================================
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

//======================================================================================================================
class _LoginPageState extends State<LoginPage> {
  var rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var scrWid = MediaQuery.of(context).size.width;
    var scrHei = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text(
          "Agrion",
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => exit(0),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: scrHei,
        width: scrWid,
        child: Padding(
          padding: EdgeInsets.only(
            left: 4,
            right: 4,
          ),
          child: Center(
            child: ListView(
              padding: EdgeInsets.only(
                top: 50,
              ),
              children: <Widget>[
                /*Logo*/ Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green[300],
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: SizedBox(
                      child: Image.asset(
                        "assets/my_icon.png",
                      ),
                      height: (scrWid * 0.3),
                      width: (scrWid * 0.3),
                    ),
                  ),
                ),
                /*E-Mail*/ Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "E-Mail",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                /*Senha*/ Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                /*Extras*/ Row(
                  children: <Widget>[
                    /*RememberMe*/ Checkbox(
                      checkColor: Colors.white,
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value;
                        });
                      },
                    ),
                    /*RememberMeText*/ Text(
                      "Lembrar de Mim",
                      style: TextStyle(fontSize: 16),
                    ),
                    /*RecovPass*/ Container(
                      padding: EdgeInsets.only(left: 90),
                      height: 40,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPasswordPage()),
                          );
                        },
                        child: Text(
                          "Recuperar Senha",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                /*Espaço*/ SizedBox(
                  height: 30,
                ),
                /*Botões*/ Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      /*Login*/ Container(
                        width: (scrWid * 0.35),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ButtonTheme(
                          child: RaisedButton(
                            color: Colors.green[200],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      /*Espaço*/ SizedBox(
                        width: (scrWid * 0.2),
                      ),
                      /*SignUp*/ Container(
                        width: (scrWid * 0.35),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ButtonTheme(
                          child: RaisedButton(
                            color: Colors.green[200],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SingUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Cadastrar-se",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
