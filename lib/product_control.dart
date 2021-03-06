import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      child: Text('Add Product'),
      onPressed: () {
        addProduct({'title': 'Bananasss', 'imageUrl': 'assets/food.jpg'});
      },
    );
  }
}
