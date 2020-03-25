import 'package:demo2ea/src/pages/alert_page.dart';
import 'package:demo2ea/src/pages/avatar_page.dart';
import 'package:demo2ea/src/pages/home_page.dart';
import 'package:demo2ea/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo2 EA',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [ // Para obtener la localización horaria
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Español
      ],
      //home:  HomePage()
      routes: getApplicationRoutes(), // Método desde el cual llamamos al mapa de rutas de la App
    );
  }
}