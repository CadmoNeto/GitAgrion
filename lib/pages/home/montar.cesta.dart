import 'dart:io';
import 'package:flutter/material.dart';

int _itemTotal = 0;

class MontarCesta extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          /*SelecTXT*/ Padding(
            padding: EdgeInsets.only(top: 8),
            child: Container(
              width: screenWidth,
              height: 60,
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Selecione até 10 Itens",
                      style: TextStyle(fontSize: 26),
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
          /*ItemList*/ Flexible(
            child: ListView(
              children: <Widget>[
                ListItem(
                  title: "Tomate",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//=================================================================================================================
class ListItem extends StatefulWidget {
  final String title;
  ListItem({
    this.title,
  });

  @override
  _ListItemState createState() => _ListItemState();
}

//=================================================================================================================
class _ListItemState extends State<ListItem> {
  int _itemCount = 0;

  void remove() {
    setState(() {
      _itemTotal--;
      _itemCount--;
    });
  }

  void add() {
    setState(() {
      _itemCount++;
      _itemTotal++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      trailing: Row(
        children: <Widget>[
          _itemCount != 0
              ? IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () => remove(),
                )
              : Container(),
          Text(_itemCount.toString()),
          _itemTotal < 10
              ? IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => setState(() => _itemCount++),
                )
              : Container(),
        ],
      ),
    );
  }
}
