import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/ProductDetails.dart';

import 'cart_products.dart';

class Products extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _ProductState();
  }
}

class _ProductState extends State<Products>{
  var product_list =[
    {
      "item_id":"1",
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price":10.00,
      "price":8.00,
    },
    {
      "item_id":"2",
      "name":"Blazer",
      "picture":"images/products/blazer2.jpeg",
      "old_price":10.00,
      "price":8.00,
    },
    {
      "item_id":"3",
      "name":"Blazer",
      "picture":"images/products/dress1.jpeg",
      "old_price":10.00,
      "price":8.00,
    },
    {
      "item_id":"4",
      "name":"Blazers",
      "picture":"images/products/dress2.jpeg",
      "old_price":10.00,
      "price":8.00,
    },
    
  ];

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: product_list.length,
      primary: false,
      shrinkWrap: false,
       gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (BuildContext context, int index){
         var singleproduct = SingleProductModel( item_id: product_list[index]["item_id"],
             product_name: product_list[index]["name"],
             prod_picture: product_list[index]["picture"],
             prod_oldPrice: product_list[index]["old_price"],
             prod_price: product_list[index]["price"]);
         return(Single_prod(SingleProductModel: singleproduct,)
         );

          


       },

    );
  }
}

class Single_prod extends StatelessWidget{
    final SingleProductModel;

    Single_prod({
      this.SingleProductModel
    });
  @override
  Widget build(BuildContext context) {
  
    return Card(
      child: Hero(
        tag: SingleProductModel.item_id,
        child: Material(
          child: InkWell(onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new ProductDetails(SingleProductModel: this.SingleProductModel,))),
          
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(SingleProductModel.product_name, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text("RM "+SingleProductModel.prod_price.toString(),style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w100,
                
              ),
              ),
              subtitle: Text("RM "+SingleProductModel.prod_oldPrice.toString(),style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w100,
                decoration: TextDecoration.lineThrough),
                ),
            ),
          ),
          child: Image.asset(SingleProductModel.prod_picture,
          fit: BoxFit.cover,)
          ,),
        ),
      ),
    ));
  }
}