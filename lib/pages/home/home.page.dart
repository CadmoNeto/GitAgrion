import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login/packs/image.carousel.dart';
//import 'montar.cesta.dart';
//import 'package:login/packs/produto.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text(
          "Agrion",
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      //=================================================================================================================
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/cadmo.png"),
                      fit: BoxFit.fill,
                    )),
              ),
              accountName: Text(
                "Cadmo",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                "cadmonneto@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: <Widget>[
                  /*Home*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Págia Inicial",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  /*Search*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Procurar",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => {},
                  ),
                  /*Cesta*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.shopping_basket,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Monte sua Cesta",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => {},
                  ),
                  /*Vendedor*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Seja um Vendedor",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => {},
                  ),
                  /*Historico*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.history,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Histórico de Compras",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => {},
                  ),
                  /*Perfil*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Meu Perfil",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => {},
                  ),
                  /*FAQ*/ ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.help,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "F.A.Q.",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    onTap: () => {},
                  ),
                ],
              ),
            ),
            Container(
              height: (screenHeight * 0.15),
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Colors.green,
                    thickness: 4,
                  ),
                  Text(
                    "V 0.0.-1",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.exit_to_app,
                          size: 26,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Sair",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onTap: () => exit(0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //=================================================================================================================
      backgroundColor: Colors.white,
      //=================================================================================================================
      body: Container(
        child: ListView(
          children: <Widget>[
            /*PromoTXT*/ Padding(
              padding: EdgeInsets.only(top: 12),
              child: Container(
                width: screenWidth,
                height: 60,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Promoções",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.green[300],
                      thickness: 4,
                    ),
                  ],
                ),
              ),
            ),
            /*Crousel*/ Container(
              height: (screenHeight * 0.25),
              child: ImageCarousel(
                photos: <Widget>[
                  Image.asset('assets/promo1.png'),
                  Image.asset('assets/promo2.png'),
                  Image.asset('assets/promo3.png'),
                ],
              ),
            ),
            Divider(
              color: Colors.green[300],
              thickness: 3,
            ),
            /*Cest&Vend*/ IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  /*Cestas*/ Container(
                    width: (screenWidth * 0.48),
                    child: Column(
                      children: <Widget>[
                        /*CestaTXT*/ Container(
                          width: (screenWidth * 0.5),
                          height: (screenHeight * 0.1),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Compre um Cesta",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.green[300],
                          thickness: 3,
                        ),
                        /*CestaBttns*/ Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              /*Monte*/ Container(
                                height: (screenHeight * 0.1),
                                child: RaisedButton(
                                  onPressed: () => {}, // Navigator.push(
                                  //context,
                                  //MaterialPageRoute(
                                  //   builder: (context) => MontarCesta(),
                                  //),
                                  //),
                                  child: Center(
                                    child: Text(
                                      "Monte sua Cesta",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.green[300],
                                thickness: 2,
                              ),
                              /*Compre*/ Container(
                                height: (screenHeight * 0.1),
                                child: RaisedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                        title: Text(
                                          "Escolha o tipo da Cesta:",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        actions: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              /*Frutas*/ Center(
                                                child: FlatButton(
                                                  onPressed: () => {},
                                                  child: Text(
                                                    "Frutas",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                              /*Legumes*/ Center(
                                                child: FlatButton(
                                                  onPressed: () => {},
                                                  child: Text(
                                                    "Legumes",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                              /*Hortaliças*/ Center(
                                                child: FlatButton(
                                                  onPressed: () => {},
                                                  child: Text(
                                                    "Hortaliças",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Compre uma Cesta",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.green[300],
                                thickness: 2,
                              ),
                              /*Assine*/ Container(
                                height: (screenHeight * 0.1),
                                child: RaisedButton(
                                  onPressed: () => {},
                                  child: Center(
                                    child: Text(
                                      "Assine uma Cesta",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //==========================================================================================
                  VerticalDivider(
                    color: Colors.green[300],
                    thickness: 2,
                  ),
                  //==========================================================================================
                  /*Vend&Coop*/ Container(
                    width: (screenWidth * 0.48),
                    child: Column(
                      children: <Widget>[
                        /*VendTXT*/ Container(
                          width: (screenWidth * 0.5),
                          height: (screenHeight * 0.1),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Seja um Vendedor",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.green[300],
                          thickness: 3,
                        ),
                        /*VendBttns*/ Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              /*Vend*/ Container(
                                height: (screenHeight * 0.1),
                                child: RaisedButton(
                                  onPressed: () => {},
                                  child: Center(
                                    child: Text(
                                      "Associe-se como Vendedor Autônomo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.green[300],
                                thickness: 2,
                              ),
                              /*AssoCoop*/ Container(
                                height: (screenHeight * 0.1),
                                child: RaisedButton(
                                  onPressed: () => {},
                                  child: Center(
                                    child: Text(
                                      "Associe-se a uma Cooperativa",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.green[300],
                                thickness: 2,
                              ),
                              /*Coop*/ Container(
                                height: (screenHeight * 0.1),
                                child: RaisedButton(
                                  onPressed: () => {},
                                  child: Center(
                                    child: Text(
                                      "Cadastre sua Cooperativa",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
