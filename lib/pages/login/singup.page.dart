import 'package:flutter/material.dart';
//import 'package:flutter_masked_text/flutter_masked_text.dart';

//======================================================================================================================
class SingUpPage extends StatelessWidget {
  final textController1 =
      TextEditingController(); //Variável para reconhecer o Input do TextField
  final textController2 =
      TextEditingController(); //Variável para reconhecer o Input do TextField
  final textController3 =
      TextEditingController(); //Variável para reconhecer o Input do TextField
  final textController4 =
      TextEditingController(); //Variável para reconhecer o Input do TextField
  final textController5 =
      TextEditingController(); //Variável para reconhecer o Input do TextField

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
                controller:
                    textController1, //Aqui é a Variável que recebe o Input do TextField
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
                controller:
                    textController2, //Aqui é a Variável que recebe o Input do TextField
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
                controller:
                    textController3, //Aqui é a Variável que recebe o Input do TextField
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
                controller:
                    textController4, //Aqui é a Variável que recebe o Input do TextField
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
                controller:
                    textController5, //Aqui é a Variável que recebe o Input do TextField
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
              //Botão para Cadastro #Não Funciona#
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
                    onPressed: () => {},
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
    );
  }
}
