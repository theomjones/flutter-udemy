import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final Map<String, String> product;

  ProductView({this.product});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Nav back');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(product['title']),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(product['imageUrl']),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(product['title']),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: CupertinoButton(
                color: Colors.red,
                child: Text('Delete'),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
