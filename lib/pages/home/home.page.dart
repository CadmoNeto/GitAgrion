import 'package:flutter/material.dart';
import 'package:login/packs/produto.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

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
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text("Págia Inicial"),
                      ),
                    ],
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            /*HortText*/ Container(
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green[300],
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(
                child: Text(
                  "Hortaliças",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            /*Hortas*/ Container(
              height: 120,
              child: HorizontalView(),
            ),
            /*FruitText*/ Container(
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green[300],
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(
                child: Text(
                  "Frutas",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            /*Hortas*/ Container(
              height: 120,
              child: HorizontalView(),
            ),
            /*FruitText*/ Container(
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green[300],
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(
                child: Text(
                  "Frutas",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            /*Hortas*/ Container(
              height: 120,
              child: HorizontalView(),
            ),
            /*FruitText*/ Container(
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green[300],
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(
                child: Text(
                  "Frutas",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            /*Hortas*/ Container(
              height: 120,
              child: HorizontalView(),
            ),
            /*FruitText*/ Container(
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green[300],
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(
                child: Text(
                  "Frutas",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            /*Hortas*/ Container(
              height: 120,
              child: HorizontalView(),
            ),
          ],
        ),
      ),
    );
  }
}
