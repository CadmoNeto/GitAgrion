import 'package:flutter/material.dart';

//======================================================================================================================
class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWid = MediaQuery.of(context).size.width;
    var scrHei = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context, false);
            }),
        title: Text("Voltar"),
        backgroundColor: Colors.green[300],
      ),
      backgroundColor: Colors.white,
      body: Container(
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
                Icons.lock_outline,
                size: 180,
                color: Colors.green[300],
              ),
            ),
            /*Forgot*/ Center(
              child: Text(
                "Esqueceu sua Senha?",
                style: TextStyle(fontSize: 32),
              ),
            ),
            /*Espaço*/ SizedBox(
              height: 20,
            ),
            /*Texto*/ Text(
              "Por favor, insira o E-Mail associado a sua conta para que possamos enviar uma senha provisória para o mesmo. Recomendamos também, que após reaver o acesso a sua conta, altere a sua senha.",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
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
            /*Botão*/ Padding(
              padding: EdgeInsets.only(
                left: 60,
                right: 60,
              ),
              child: Container(
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
                    color: Colors.green[200],
                    onPressed: () => {},
                    child: Text(
                      "Recuperar Senha",
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
