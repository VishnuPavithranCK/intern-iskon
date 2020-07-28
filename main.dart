import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


//my own imports
import 'package:flutter_appevents/components/horizontal_listview.dart';
import 'package:flutter_appevents/components/Events.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/dance.jpg'),
          AssetImage('images/music.jpg'),
          AssetImage('images/yoga.jpg'),
          AssetImage('images/event.jpg'),
          AssetImage('images/event1.jpg'),
          AssetImage('images/event2.jpg'),
          AssetImage('images/event3.jpg'),
          AssetImage('images/event4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[600],
        title: Center(child: Text('FOLK EVENT')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Vishnu'),
              accountEmail: Text('vishnupavithran314@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red[400],
              ),
            ),

            //body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My events'),
                leading: Icon(Icons.event),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Payment'),
                leading: Icon(Icons.payment),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories',style: TextStyle(fontSize: 18.0,),),),

          //horizontal list view begins here
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Events',style: TextStyle(fontSize: 15.0,),),),

          //grid view
          Container(
            height: 320.0,
            child: Events(),
          ),



        ],
      ),
    );
  }
}
