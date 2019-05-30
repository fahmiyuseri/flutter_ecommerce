import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/cart_products.dart';


class Cart extends StatefulWidget {

  @override
  CartState createState() => CartState();
}


class CartState extends State<Cart> {

  List<DropdownMenuItem<String>> sizeList = [];
  List<DropdownMenuItem<String>> colorList = [];
  List<DropdownMenuItem<String>> qtyList = [];
  String selectedsize = null;
  String selectedcolor = null;
  String selectedqty = null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text("Shopping Cart"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
        ],
      ),

      //==== cart product
      body: new CartProducts(),
      //=====Bottom navigation bar ===
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total"),
                subtitle : Text("RM 230")

              ),

            ),
            Expanded(
              child: new MaterialButton(onPressed: (){},
                child: new Text("Check out", style: TextStyle(color:Colors.white),),
                color: Colors.red,

              ),

            ),
          ],
        ),
      ),
    );
  }
}