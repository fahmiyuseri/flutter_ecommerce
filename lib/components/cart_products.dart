import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/ProductDetails.dart';

import 'cart_products.dart';

class CartProducts extends StatefulWidget {
  static List<SingleProductModel> listCart = [];
  @override
  _CartProductsState createState() => _CartProductsState();
}


class _CartProductsState extends State<CartProducts> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CartProducts.listCart.length,
      itemBuilder: (context,index){
        return Card(
            child: Hero(
                tag: CartProducts.listCart[index].item_id,
                child: Material(
                child: InkWell(onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => new ProductDetails(SingleProductModel: CartProducts.listCart[index],))),

        child: Row(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.white,
                child: Image.asset(CartProducts.listCart[index].prod_picture),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.all(5.0),
                    child: new Text(CartProducts.listCart[index].product_name,style: TextStyle(fontWeight: FontWeight.bold),),),

                Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Row(
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(5.0),
                            child: new Text("Promo Price :",),),
                          Padding(padding: const EdgeInsets.only(),
                            child: new Text("RM "+CartProducts.listCart[index].prod_price.toString(), style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),),

                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(5.0),
                            child: new Text("Ori Price : ",),),
                          Padding(padding: const EdgeInsets.only(),
                            child: new Text("RM "+CartProducts.listCart[index].prod_price.toString(), style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),),

                        ],
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      Row(
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(5.0),
                            child: new Text("Size :",),),
                          Padding(padding: const EdgeInsets.only(),
                            child: new Text("36UK",),),

                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(5.0),
                            child: new Text("Color :",),),
                          Padding(padding: const EdgeInsets.only(),
                            child: new Text("Yellow",),),

                        ],
                      ),
                    ],
                  ),
                ],
                ),




                ],
              ),


            ],
          ),
        ),
        ),
            ),
        ); //==container

      },
    );
  }
}

class SingleProductModel  {
  final item_id;
  final product_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;
  SingleProductModel({
    this.item_id,
    this.product_name,
    this.prod_picture,
    this.prod_oldPrice,
    this.prod_price
  });
}
