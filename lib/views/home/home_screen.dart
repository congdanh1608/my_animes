import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_animes/views/home/home_screen_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenView();
  }
}

abstract class HomeScreenState extends State<HomeScreen> {
  @protected
  bool isExit = false;

  @protected
  Future<bool> onWillPop() async {
    if (isExit) {
      exit(0);
    } else {
      Fluttertoast.showToast(
        msg: 'Press one more time to exit app.',
        toastLength: Toast.LENGTH_SHORT,
      );
      isExit = true;
      await Future.delayed(Duration(seconds: 3), () {
        isExit = false;
      });
    }
  }
}
