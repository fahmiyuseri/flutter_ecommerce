import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutter_ecommerce/components/horizontal_listview.dart';
import 'package:flutter_ecommerce/components/products.dart';
void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    ),
  );
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 8.0,
        //dotColor: Colors.red,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text("Fashion App"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text("Fahmi Yuseri"),
             accountEmail: Text("fahmiyuseri@gmail.com"),
             currentAccountPicture: GestureDetector(
               child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color:Colors.white),
               ),
               ),
               decoration: new BoxDecoration(color: Colors.red  
               ),
               ),

               //Body
               InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("Home Page"),
                   leading: Icon(Icons.home, color: Colors.orange),
                  )
               ),
                InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("My Account"),
                   leading: Icon(Icons.person, color: Colors.indigo),
                  )
               ),
                InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("My Orders"),
                   leading: Icon(Icons.shopping_basket, color: Colors.green),
                  )
               ),
                InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("Categories"),
                   leading: Icon(Icons.dashboard, color: Colors.yellow),
                  )
               ),
                 InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("Favourites"),
                   leading: Icon(Icons.favorite, color: Colors.red),
                  )
               ),
                
               Divider(),
                InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("Settings"),
                   leading: Icon(Icons.settings, color: Colors.blue),
                  )
               ),
                InkWell(
                 onTap: (){},
                 child: ListTile( 
                   title: Text("About"),
                   leading: Icon(Icons.help, color: Colors.amber),
                  )
               ),
               
          ],
        ),
      ),
      body:new ListView(
        //Image Carousel begins here
        children: <Widget>[
          image_carousel,
          //padding widger
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text("Categories1",)),
          //HOrizontal list
           HorizontalList(),

           //Padding widget
           new Padding(padding: const EdgeInsets.all(20.0),
           child: new Text("Recent Products"),),

           //Grid view
           Container(
             height: 500,
               child: Products()
             ,)
        ],
      )
    );
  
  }

}

