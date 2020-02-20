import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  final formKey = GlobalKey<FormState>();

  var rememberMe = false; //Variável para a caixa do Lembrar Conta

  String _email;
  String _senha;

  bool validateAndSave() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      print("OI");
      try {
        FirebaseUser user = (await FirebaseAuth.instance
                .signInWithEmailAndPassword(email: _email, password: _senha))
            .user;
        print("Entrou como: ${user.uid}");
        Navigator.push(
          //Função para acessar a HomePage
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } catch (e) {
        print("Error: $e");
      }
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(
            "Usuário e/ou Senha inválido(s)",
            style: TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Ok"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWid =
        MediaQuery.of(context).size.width; //Variável que pega a Largura da Tela
    var scrHei =
        MediaQuery.of(context).size.height; //Variável que pega a Altura da Tela

    return Scaffold(
      appBar: AppBar(
        //Barra na parte superior do Aplicativo
        backgroundColor: Colors.green[300], //Cor da Barra
        title: Text(
          //Texto que vai na Barra
          "Agrion",
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          //Sessão com Botões na Barra
          IconButton(
            //Botão para Sair
            icon: Icon(Icons.exit_to_app),
            onPressed: () => exit(0),
          )
        ],
      ),
      backgroundColor: Colors.white, //Cor do Fundo do App
      body: Container(
        //Corpo do App
        height: scrHei,
        width: scrWid,
        child: Form(
          key: formKey,
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
                    //Aqui é onde Inicializa-se a Logo
                    child: Container(
                      child: SizedBox(
                        child: Image.asset(
                          "assets/my_icon.png",
                        ),
                        height: (scrWid * 0.4),
                        width: (scrWid * 0.4),
                      ),
                    ),
                  ),
                  /*E-Mail*/ Padding(
                    //Este é o TextField para inserção do E-Mail
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      //Aqui é o TextField

                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => value.isEmpty
                          ? 'Insira um E-Mail.'
                          : null, //Impede de deixar o E-Mail vazio
                      onSaved: (value) => _email = value,
                      style: new TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "E-Mail",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  /*Senha*/ Padding(
                    //Este é o TextField para inserção da Senha
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      //Aqui é o TextField

                      obscureText: true,
                      keyboardType: TextInputType.text,
                      validator: (value) => value.isEmpty
                          ? "Insira uma Senha."
                          : null, //Impede de deixar a Senha vazia
                      onSaved: (value) => _senha = value,
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
                        //Box para o Lembrar-me
                        checkColor: Colors.white,
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            //Função que altera a Caixa
                            rememberMe =
                                value; //Atribui o valor Booleano para a Variável
                          });
                        },
                      ),
                      /*RememberMeText*/ Text(
                        "Lembrar de Mim", //Texto do Lembrar-me
                        style: TextStyle(fontSize: 16),
                      ),
                      /*RecovPass*/ Container(
                        //Botão para acessar Página de Recuperação de Senha
                        padding: EdgeInsets.only(left: 90),
                        height: 40,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //Função para Acessar a Página
                                  builder: (context) =>
                                      ResetPasswordPage()), //de Recuperação de Senha
                            );
                          },
                          child: Text(
                            "Recuperar Senha", //Texto da Recuperação de Senha
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
                          //Botão de Login
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
                              //O Botão, de fato
                              color: Colors.green[200],
                              onPressed: () {
                                validateAndSubmit();
                                // if (_email == 'cadmonneto@gmail.com' &&
                                //     _senha == '12345678') {
                                //   //Compara a Variável do E-Mail e da Senha

                                //   Navigator.push(
                                //     //Função para acessar a HomePage
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => HomePage(),
                                //     ),
                                //   );
                                // } else {
                                //   showDialog(
                                //     context: context,
                                //     builder: (_) => AlertDialog(
                                //       title: Text(
                                //         "Usuário e/ou Senha inválido(s)",
                                //         style: TextStyle(fontSize: 20),
                                //       ),
                                //       actions: <Widget>[
                                //         FlatButton(
                                //           onPressed: () =>
                                //               Navigator.pop(context),
                                //           child: Text("Ok"),
                                //         ),
                                //       ],
                                //     ),
                                //   );
                                // }
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
                          //Botão para a Página de Cadastro
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
                              //O Botão, de fato
                              color: Colors.green[200],
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SingUpPage(), //Encaminha para a Página de Cadastro
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
      ),
    );
  }
}
