import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/magazine_page.dart';

final routes = {
      '/home': (BuildContext context) => new HomePage(),
      '/kiakkiera': (BuildContext context) => new MagazinePage(),
      '/about': null,
};