import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State createState() => new LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.white,
      child: new InkWell(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset('images/logo.png', width: 150.0,),
            new Text('Krona Koblenz', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
            new Text('Marketing', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          ],
        ),
      ),

    );
  }
}