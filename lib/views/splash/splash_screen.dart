import 'package:flutter/material.dart';
import 'package:my_animes/views/splash/splash_screen_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenView createState() => SplashScreenView();
}

abstract class SplashScreenState extends State<SplashScreen> {
  @protected
  final int delayTime = 3000;

  //delay and start login screen
  @protected
  _startDelay() {
    Future.delayed(Duration(milliseconds: delayTime), () {
      Navigator.pushReplacementNamed(context, '/loginScreen');
    });
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }
}
