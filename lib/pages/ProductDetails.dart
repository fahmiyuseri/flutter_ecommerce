import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/products.dart';

class ProductDetails extends StatefulWidget{
  final item_id;
  final product_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;
  ProductDetails({
    this.item_id,
    this.product_name,
    this.prod_picture,
    this.prod_oldPrice,
    this.prod_price
  });
  @override
  ProductDetailState createState() => ProductDetailState();



}

class ProductDetailState extends State<ProductDetails>{

  List<DropdownMenuItem<String>> sizeList = [];
  List<DropdownMenuItem<String>> colorList = [];
  List<DropdownMenuItem<String>> qtyList = [];
  String selectedsize = null;
  String selectedcolor = null;
  String selectedqty = null;

  @override
  Widget build(BuildContext context) {
    sizeList = [];
    sizeList.add(new DropdownMenuItem(child: new Text("31cm"),value: "31",));
    sizeList.add(new DropdownMenuItem(child: new Text("32cm"),value: "32",));
    sizeList.add(new DropdownMenuItem(child: new Text("33cm"),value: "33",));
    sizeList.add(new DropdownMenuItem(child: new Text("34cm"),value: "34",));
    sizeList.add(new DropdownMenuItem(child: new Text("35cm"),value: "35",));

    colorList = [];
    colorList.add(new DropdownMenuItem(child: new Text("Red"),value: "red",));
    colorList.add(new DropdownMenuItem(child: new Text("Blue"),value: "blue",));
    colorList.add(new DropdownMenuItem(child: new Text("Green"),value: "green",));

    qtyList = [];
    qtyList.add(new DropdownMenuItem(child: new Text("1"),value: "1",));
    qtyList.add(new DropdownMenuItem(child: new Text("10"),value: "10",));
    qtyList.add(new DropdownMenuItem(child: new Text("100"),value: "100",));

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.product_name),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){})
        ],
      ),

      //BOdy
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("RM "+widget.prod_oldPrice.toString(),
                            style:TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough)),
                      ),
                      Expanded(
                        child: new Text("RM "+widget.prod_price.toString(), style:TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                      ),
                    ],
                  ),
                ),

              ),
            ),
          ),
          Row(
            children: <Widget>[
              //====== size button ======
              Expanded(
                  child: DropdownButton(items: sizeList,
                    hint: new Text("Select Size"),
                    value:selectedsize,
                    onChanged: (value){
                      print("selected item $value");
                      selectedsize = value;
                      setState(() {

                      });
                    },)


              ),

              //====== size button ======
              Expanded(
                  child: DropdownButton(items: colorList,
                    hint: new Text("Select Color"),
                    value:selectedcolor,
                    onChanged: (value){
                      print("selected item $value");
                      selectedcolor = value;
                      setState(() {

                      });
                    },)


              ),

              //====== size button ======
              Expanded(
                  child: DropdownButton(items: qtyList,
                    hint: new Text("Select Qty"),
                    value:selectedqty,
                    onChanged: (value){
                      print("selected item $value");
                      selectedqty = value;
                      setState(() {

                      });
                    },)


              ),


            ],
          ),
          Row(
            children: <Widget>[
              //====== size button ======
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy Now"),
                ),


              ),

              new IconButton(icon:Icon(Icons.add_shopping_cart), onPressed: (){}),
              new IconButton(icon:Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.9, 5.0, 5.0, 5.0),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text(widget.product_name,),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.9, 5.0, 5.0, 5.0),
                child: new Text("Product brands", style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("BrandX",),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.9, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("New",),)
            ],
          ),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text("Similar Products"),),
          Container(
            height: 500,
            child: Products()
            ,)
        ],
      ),
    );
  }


}