import 'package:flutter/material.dart';

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
    );
  
  }

}

