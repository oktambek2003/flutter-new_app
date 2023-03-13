import 'package:car_app/models/food.dart';
import 'package:car_app/screns/registratsiya.dart';
import 'package:flutter/material.dart';

import './screns/HomeScreen.dart';
import './screns/blackScrens.dart';
import './screns/secondScreen.dart';
import './screns/complatedScreen.dart';
Route generateRoute(settings) {
  if (settings.name == HomeScreen.rounName) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
  if (settings.name == MyWidget.routName) {
    return MaterialPageRoute(
        builder: (context) => MyWidget(car: settings.arguments as Car));
  }
  if (settings.name == MyWidget1.routName) {
    return MaterialPageRoute(builder: (context) => MyWidget1());
  }
   if (settings.name == ComplatedPage.routName) {
    return MaterialPageRoute(builder: (context) => ComplatedPage());
  }
  return MaterialPageRoute(builder: (context) => BlackScerens());
}
