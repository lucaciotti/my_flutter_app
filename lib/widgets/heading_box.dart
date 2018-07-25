import 'package:flutter/material.dart';

class HeadingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    'http://www.koblenz.it/wp-content/uploads/2012/07/www.koblenz.it/kiakkiera-top.jpg')),
            border: Border(bottom: BorderSide(width: 2.0))),
        height: 170.0,
      ),
      Container(
        padding: EdgeInsets.all(10.0),
      ),
    ]);
  }
}
