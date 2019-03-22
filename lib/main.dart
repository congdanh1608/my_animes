// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:my_animes/views/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Anime App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor: Colors.pinkAccent,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 26.0, fontFamily: 'Raleway-Bold'),
          body1: TextStyle(fontSize: 18.0, fontFamily: 'Raleway-Regular'),
          body2: TextStyle(fontSize: 14.0, fontFamily: 'Raleway-Regular'),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: getRoute,
    );
  }

  Route<dynamic> getRoute(routeSettings) {
    switch (routeSettings.name) {
      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => SplashScreen(),
        );
    }
  }
}
