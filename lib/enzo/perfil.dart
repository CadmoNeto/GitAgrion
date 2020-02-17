import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  static String tag = 'Perfil';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Meu perfil",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        backgroundColor: Colors.green[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('fotinha'),
                ),
                Text(
                  'Enzo Mury Figueiredo',
                  style: TextStyle(
                    fontFamily: 'fonte',
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonte',
                    color: Colors.red[400],
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Text(""),
                Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '79 988888888',
                        style: TextStyle(fontFamily: 'fonte', fontSize: 20.0),
                      ),
                    )),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.cake,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '19/04/2000',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'fonte'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
