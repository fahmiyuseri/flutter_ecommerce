import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/ProductDetails.dart';

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
      "picture":"images/products/blazer1.jpeg",
      "old_price":10.00,
      "price":8.00,
    },
    {
      "item_id":"3",
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price":10.00,
      "price":8.00,
    },
    {
      "item_id":"4",
      "name":"Blazers",
      "picture":"images/products/blazer1.jpeg",
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
         return(Single_prod(
          item_id: product_list[index]["item_id"],
          product_name: product_list[index]["name"],
          prod_picture: product_list[index]["picture"],
          prod_oldPrice: product_list[index]["old_price"],
          prod_price: product_list[index]["price"],
          
         )
         );
       },

    );
  }
}

class Single_prod extends StatelessWidget{
    final item_id;
    final product_name;
    final prod_picture;
    final prod_oldPrice;
    final prod_price;
    Single_prod({
      this.item_id,
      this.product_name,
      this.prod_picture,
      this.prod_oldPrice,
      this.prod_price
    });
  @override
  Widget build(BuildContext context) {
  
    return Card(
      child: Hero(
        tag: item_id,
        child: Material(
          child: InkWell(onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new ProductDetails(product_name))),
          
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text("RM "+prod_price.toString(),style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w100,
                
              ),
              ),
              subtitle: Text("RM "+prod_oldPrice.toString(),style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w100,
                decoration: TextDecoration.lineThrough),
                ),
            ),
          ),
          child: Image.asset(prod_picture, 
          fit: BoxFit.cover,)
          ,),
        ),
      ),
    ));
  }
}