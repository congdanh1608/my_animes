import 'package:flutter/material.dart';
import 'package:my_animes/views/splash/splash_screen.dart';

class SplashScreenView extends SplashScreenState {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("lib/assets/images/background.jpg"),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("lib/assets/images/ic_spin_loading.gif"),
              ),
            ))
      ],
    ));
  }
}
