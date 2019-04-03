import 'package:flutter/material.dart';
import 'package:udemy_101/views/product_view.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, { this.deleteProduct }) {
    print('[Products widget] constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    Map<String, String> product = products[index];
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['imageUrl']),
          Text(product['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return ProductView(product: product);
                    }),
                  ).then((bool value) {
                    if (value) {
                      deleteProduct(index);
                    }
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductLists() {
    Widget productCards = Center(child: Text('Nothing there.'));

    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductLists();
  }
}
