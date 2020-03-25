import 'package:demo2ea/src/pages/alert_page.dart';
import 'package:demo2ea/src/pages/avatar_page.dart';
import 'package:demo2ea/src/pages/card_page.dart';
import 'package:demo2ea/src/pages/home_page.dart';
import 'package:demo2ea/src/pages/input_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {     // Generamos un mapa de rutas para la navegación en la app
  return <String, WidgetBuilder>{
    '/'     : (BuildContext context) => HomePage(),
    'alert' : (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card' : (BuildContext context) => CardPage(),
    'inputs' : (BuildContext context) => InputPage(),
  };
}