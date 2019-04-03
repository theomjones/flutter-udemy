import 'package:flutter/material.dart';
import 'package:udemy_101/views/products_view.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (BuildContext ctx) => ProductsView()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
    ;
  }
}
