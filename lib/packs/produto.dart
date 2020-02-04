import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Produto(
            image: "assets/alface.png",
            name: "Alface",
          ),
          Produto(
            image: "assets/alho.png",
            name: "Alho",
          ),
          Produto(
            image: "assets/aspargo.png",
            name: "Aspargo",
          ),
          Produto(
            image: "assets/beterraba.png",
            name: "Beterraba",
          ),
          Produto(
            image: "assets/cebola.png",
            name: "Cebola",
          ),
          Produto(
            image: "assets/cenoura.png",
            name: "Cenoura",
          ),
        ],
      ),
    );
  }
}

class Produto extends StatelessWidget {
  final String image;
  final String name;

  Produto({
    this.image,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: InkWell(
        onTap: () => {},
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green[300],
              width: 3,
            ),
            borderRadius: BorderRadius.circular(3),
          ),
          child: ListTile(
            title: Image.asset(
              image,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
