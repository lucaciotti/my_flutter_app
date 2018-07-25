import 'package:flutter/material.dart';
// import 'package:flutter_web_browser/flutter_web_browser.dart';

import 'package:flutter_app/pages/landing_page.dart';
import 'package:flutter_app/pages/home_page.dart';

void main() {
  runApp(new MaterialApp(
    home: new LandingPage(),
    theme: ThemeData(fontFamily: 'PT_Sans_Narrow'),
    routes: <String, WidgetBuilder>{
      // Set routes for using the Navigator.
      '/home': (BuildContext context) => new HomePage(),
      '/about': null,
    },
  ));
}

