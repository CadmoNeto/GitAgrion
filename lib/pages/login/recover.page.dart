import 'package:flutter/material.dart';

//======================================================================================================================
class ResetPasswordPage extends StatelessWidget {
  final textController1 =
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
        backgroundColor: Colors.green[300], //Cor da Barra
      ),
      backgroundColor: Colors.white, //Cor do Fundo
      body: Container(
        //Corpo do App
        width: scrWid,
        height: scrHei,
        padding: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: <Widget>[
            /*Icon*/ SizedBox(
              child: Icon(
                //Ícone do Cadastro
                Icons.lock_outline,
                size: 180,
                color: Colors.green[300],
              ),
            ),
            /*Forgot*/ Center(
              child: Text(
                "Esqueceu sua Senha?", //Título da Página
                style: TextStyle(fontSize: 32),
              ),
            ),
            /*Espaço*/ SizedBox(
              height: 20,
            ),
            /*Texto*/ Text(
              //Texto da Página
              "Por favor, insira o E-Mail associado a sua conta para que possamos enviar uma senha provisória para o mesmo. Recomendamos também, que após reaver o acesso a sua conta, altere a sua senha.",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            /*E-Mail*/ Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                //Espaço para Inserção do E-Mail
                controller:
                    textController1, //Aqui é a Variável que recebe o Input do TextField
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "E-Mail",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            /*Botão*/ Padding(
              padding: EdgeInsets.only(
                left: 60,
                right: 60,
              ),
              child: Container(
                //Botão de Recuperação de Senha
                height: 50,
                width: 60,
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
                      "Recuperar Senha", //Texto do Botão
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
              child: Container(
                height: 40,
                child: FlatButton(
                  onPressed: () {
                    //Botão para Cancelar
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancelar",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
