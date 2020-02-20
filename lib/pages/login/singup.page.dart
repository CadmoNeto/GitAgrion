//import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:login/pages/login/login.page.dart';
//import 'package:flutter_masked_text/flutter_masked_text.dart';

//======================================================================================================================
class SingUpPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  String _nome;
  String _cpf;
  String _telefone;
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
      print("OI2");
      try {
        FirebaseUser user = (await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: _email, password: _senha))
            .user;
        print("Registrado como: ${user.uid}");
      } catch (e) {
        print("Error: $e");
      }
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
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              //Botão para Voltar para Tela de Login
              Navigator.pop(context, false);
            }),
        title: Text("Voltar"), //Texto que vai na Barra
        backgroundColor: Colors.green[300],
      ),
      backgroundColor: Colors.white, //Cor do Fundo
      body: Container(
        //Corpo do App
        height: scrHei,
        width: scrWid,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              /*Icon*/ SizedBox(
                child: Icon(
                  //Ícone do Cadastro
                  Icons.person_add,
                  size: (scrWid * 0.3),
                  color: Colors.green[300],
                ),
              ),
              /*Nome*/ Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: TextFormField(
                  //Espaço para Inserção do Nome
                  validator: (value) => value.isEmpty
                      ? "Insira uma Senha."
                      : null, //Impede de deixar a Senha vazia
                  onSaved: (value) => _nome = value,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Nome Completo",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              /*CPF*/ Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: TextFormField(
                  //Espaço para Inserção do CPF
                  validator: (value) => value.isEmpty
                      ? "Insira uma Senha."
                      : null, //Impede de deixar a Senha vazia
                  onSaved: (value) => _cpf = value,
                  maxLengthEnforced: true,
                  maxLength: 11,
                  //controller: MaskedTextController(mask: '000.000.000-00'),
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "CPF",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              /*Telf*/ Center(
                child: TextFormField(
                  //Espaço para Inserção do Telefone
                  //maxLengthEnforced: true,
                  //maxLength: 15,
                  //controller: MaskedTextController(mask: '(00) 00000-0000'),
                  validator: (value) => value.isEmpty
                      ? "Insira uma Senha."
                      : null, //Impede de deixar a Senha vazia
                  onSaved: (value) => _telefone = value,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Telefone Celular",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              /*E-Mail*/ Center(
                child: TextFormField(
                  //Espaço para Inserção do E-Mail
                  validator: (value) => value.isEmpty
                      ? "Insira uma Senha."
                      : null, //Impede de deixar a Senha vazia
                  onSaved: (value) => _email = value,
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "E-Mail",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              /*Senha*/ Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                child: TextFormField(
                  //Espaço para Inserção da Senha
                  validator: (value) => value.isEmpty
                      ? "Insira uma Senha."
                      : null, //Impede de deixar a Senha vazia
                  onSaved: (value) => _senha = value,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              //======================================================================================================================
              /*Botão*/ Center(
                //Botão para Cadastro
                child: Container(
                  height: 50,
                  width: (scrWid * 0.3),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ButtonTheme(
                    height: 60,
                    child: RaisedButton(
                      //O Botão, de fato
                      color: Colors.green[200],
                      onPressed: () => {
                        validateAndSubmit(),
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text(
                              "Usuário criado",
                              style: TextStyle(fontSize: 20),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Ok"),
                              ),
                            ],
                          ),
                        ),
                        Navigator.pop(context),
                      },
                      child: Text(
                        "Concluir", //Texto do Botão
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              /*Cancelar*/ Center(
                //Botão para Cancelar e Retornar à Tela de Login
                child: Container(
                  height: 40,
                  child: FlatButton(
                    //O Botão, de fato
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancelar",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              //======================================================================================================================
            ],
          ),
        ),
      ),
    );
  }
}
