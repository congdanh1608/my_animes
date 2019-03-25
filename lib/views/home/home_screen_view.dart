import 'package:flutter/material.dart';
import 'package:my_animes/views/home/home_screen.dart';

class HomeScreenView extends HomeScreenState {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.title,
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }

}

class _PopularThisSession extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ,
    );
  }

}
