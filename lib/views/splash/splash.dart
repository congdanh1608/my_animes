import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.network("http://bestwallpapers.website/wp-content/uploads/2019/01/4090e7af0384bb41b03113a573faa78a.jpg"),
    ));
  }
}
