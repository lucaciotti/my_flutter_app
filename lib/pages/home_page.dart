import 'package:flutter/material.dart';
// import 'package:carousel/carousel.dart';

import 'package:flutter_app/widgets/box_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[ new Container(color: Colors.white70, child: Image.asset('assets/images/logo.png', width: 35.0, fit: BoxFit.cover),), Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)), Text('Krona Koblenz', style: TextStyle(fontSize: 20.0),),]),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white70,
      
      body:  new SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          child: new Column(
            children: <Widget>[
              new Row( 
                children: <Widget>[
                  BoxWidget('La Kiakkiera', 'http://www.koblenz.it/wp-content/uploads/2012/07/www.koblenz.it/kiakkiera-top.jpg', '/kiakkiera'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Access', 'http://www.krona.es/wp-content/uploads/2012/07/es.krona.it/Acces-up.jpg', '/access'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Catalogo Krona', 'http://www.koblenz.it/wp-content/uploads/2012/07/www.koblenz.it/kiakkiera-top.jpg', '/cataloghi'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Catalogo Koblenz', 'http://www.krona.es/wp-content/uploads/2012/07/es.krona.it/Acces-up.jpg', '/access'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('La Charla', 'http://www.krona.es/wp-content/uploads/2012/07/es.krona.it/Acces-up.jpg', '/access'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Le Petit Bavardeur', 'http://www.krona.es/wp-content/uploads/2012/07/es.krona.it/Acces-up.jpg', '/access'),
                ]
              ),
            ]),
        ),
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
