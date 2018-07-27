import 'package:flutter/material.dart';

import 'package:flutter_app/widgets/box_widget.dart';

class PublicationTab extends StatelessWidget {
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          child: new Column(
            children: <Widget>[
              new Row( 
                children: <Widget>[
                  BoxWidget('Catalogo Krona', 'http://www.krona.it/upload/spot/immagine-capitolo-kompatto.jpg', '/krona'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Catalogo Koblenz', 'http://www.koblenz.it/upload/spot/nuova-home-kubica.jpg', '/koblenz'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('La Kiakkiera', 'http://www.koblenz.it/wp-content/uploads/2012/07/www.koblenz.it/kiakkiera-top.jpg', '/kiakkiera'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Acces', 'http://www.krona.es/wp-content/uploads/2012/07/es.krona.it/Acces-up.jpg', '/acces'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('La Charla', 'http://www.koblenz.es/wp-content/uploads/2015/10/www.koblenz.es/lacharla.jpg', '/charla'),
                ]
              ),
              new Row( 
                children: <Widget>[
                  BoxWidget('Le Petit Bavardeur', 'http://koblenz.k-group.com/wp-content/uploads/2016/12/koblenz.k-group.com/bavardeur-u.jpg', '/bavardeur'),
                ]
              ),
            ]),
        ),
      );
  }
}