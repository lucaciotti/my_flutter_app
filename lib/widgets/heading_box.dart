import 'package:flutter/material.dart';

class HeadingBox extends StatelessWidget {
  final String _netImage;
  HeadingBox(this._netImage);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(this._netImage)
          ),
          border: Border(bottom: BorderSide(width: 2.0))
        ),
        height: 170.0,
      ),
      Container(
        padding: EdgeInsets.all(2.0),
      ),
    ]);
  }
}
