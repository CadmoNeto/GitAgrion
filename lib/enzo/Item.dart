import 'package:flutter/material.dart';

class Product {
  Product({this.name, this.image, this.preco, this.quantidade});
  final String name;
  final String image;
  final double preco;
  final int quantidade;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({this.product, this.inCart, this.onCartChanged})
      : super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  //  Color _getColor(BuildContext context) {
  //   // The theme depends on the BuildContext because different parts of the tree
  // //   // can have different themes.  The BuildContext indicates where the build is
  // //   // taking place and therefore which theme to use.

  //    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  //  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          onCartChanged(product, inCart);
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage(product.image),
        ),
        title: Text(product.name + product.preco.toString() + "Reais",
            style: _getTextStyle(context)),
        subtitle: Text("Quantidade:" + product.quantidade.toString()),
        trailing: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              // when removing a TextField, you must do two things:
              // 1. decrement the number of controllers you should have (fieldCount)
              // 2. actually remove this field's controller from the list of controllers
              // this.product = null;
              // this.inCart = null;
              // this.onCartChanged = null;
            }));
  }
}
