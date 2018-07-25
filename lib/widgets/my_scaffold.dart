import 'package:flutter/material.dart';

import 'package:flutter_app/widgets/heading_box.dart';
import 'package:flutter_app/widgets/box_widget.dart';

class MyScaffold extends StatefulWidget {
  
  @override
    State createState() => new MyScaffoldState();
}

class MyScaffoldState extends State<MyScaffold> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Krona Koblenz'),
        backgroundColor: Colors.red,
      ),

      backgroundColor: Colors.white70,
      body: Column(
        children: <Widget>[
          new HeadingBox(),
          new Row(
            children: <Widget>[
              BoxWidget(),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),),
              BoxWidget()
            ],
          ),
          new Row(
            children: <Widget>[
              BoxWidget(),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),),
              BoxWidget()
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.import_contacts),
          title: Text('Pubblicazioni'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.slideshow),
          title: Text('Video'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text('About'),
        ),
      ]),
      
    );
  }
}