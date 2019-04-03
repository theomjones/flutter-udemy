import 'package:flutter/material.dart';
import 'package:udemy_101/product-manager.dart';

class ProductsView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
    );
  }
}
