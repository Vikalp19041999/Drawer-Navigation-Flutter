import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Navigation'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
            child:Text(
              "DRAWER NAVIGATION",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "In apps that use Material Design, there are two primary options for navigation: tabs and drawers. When there is insufficient space to support tabs, drawers provide a handy alternative.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "In Flutter, use the Drawer widget in combination with a Scaffold to create a layout with a Material Design drawer. This recipe uses the following steps:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "1. Create a Scaffold\n2. Add a drawer\n3. Populate the drawer with items\n4.Close the drawer programmatically",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Refer this to understand more',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              InkWell(
                child: Text(
                  'Here',
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
                onTap: () =>
                    launch('https://www.youtube.com/watch?v=WRj86iHihgY'),
              ),
            ],
          ),
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(child: Text('Drawer Header Widget',
            style: TextStyle(fontSize: 25),),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),),
              ListTile(
                title: Text('First Item'),
                onTap: ()=>Navigator.pop(context),),
              ListTile(
                title: Text('Second Item'),
                onTap: ()=>Navigator.pop(context),),
              ListTile(
                title: Text('Third Item'),
                onTap: ()=>Navigator.pop(context),),
              ListTile(
                title: Text('Fourth Item'),
                onTap: ()=>Navigator.pop(context),),
              ListTile(
                title: Text('Fifth Item'),
                onTap: ()=>Navigator.pop(context),),        
          ],
        ),
      ),
    );
  }
}
