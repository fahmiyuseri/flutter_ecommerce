import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  final product_name;
  ProductDetails(
    this.product_name
  );
  @override
  ProductDetailState createState() => ProductDetailState(product_name);

   

}

class ProductDetailState extends State<ProductDetails>{
    final product_name;
  ProductDetailState(
    this.product_name
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text(product_name),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){})
        ],
      ),
    );
  }


}