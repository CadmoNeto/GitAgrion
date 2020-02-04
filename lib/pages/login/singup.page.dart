import 'package:flutter/material.dart';
//import 'package:flutter_masked_text/flutter_masked_text.dart';

//======================================================================================================================
class SingUpPage extends StatelessWidget {
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
                //maxLengthEnforced: true,
                //maxLength: 15,
                //controller: MaskedTextController(mask: '(00) 00000-0000'),
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
                    color: Colors.green[200],
                    onPressed: () => {},
                    child: Text(
                      "Concluir",
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
            //======================================================================================================================
          ],
        ),
      ),
    );
  }
}
