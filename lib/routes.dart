import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/magazine_page.dart';

final routes = {
      '/home': (BuildContext context) => new HomePage(),
      '/kiakkiera': (BuildContext context) => new MagazinePage('kiakkiera', 'La Kiakkiera', 'http://www.koblenz.it/wp-content/uploads/2012/07/www.koblenz.it/kiakkiera-top.jpg'),
      '/acces': (BuildContext context) => new MagazinePage('acces', 'Acces', 'http://www.krona.es/wp-content/uploads/2012/07/es.krona.it/Acces-up.jpg'),
      '/krona': (BuildContext context) => new MagazinePage('krona', 'Cataloghi Krona', 'http://www.krona.it/upload/spot/immagine-capitolo-kompatto.jpg'),
      '/koblenz': (BuildContext context) => new MagazinePage('koblenz', 'Cataloghi Koblenz', 'http://www.koblenz.it/upload/spot/nuova-home-kubica.jpg'),
      '/charla': (BuildContext context) => new MagazinePage('charla', 'La Charla', 'http://www.koblenz.es/wp-content/uploads/2015/10/www.koblenz.es/lacharla.jpg'),
      '/bavardeur': (BuildContext context) => new MagazinePage('bavardeur', 'Le Petit Bavardeur', 'http://koblenz.k-group.com/wp-content/uploads/2016/12/koblenz.k-group.com/bavardeur-u.jpg'),
      '/about': null,
};