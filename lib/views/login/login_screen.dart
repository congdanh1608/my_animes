import 'package:flutter/material.dart';
import 'package:my_animes/views/login/login_screen_view.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenView createState() => LoginScreenView();
}

abstract class LoginScreenState extends State<LoginScreen> {
  @protected
  login() {
    Navigator.pushReplacementNamed(context, '/homeScreen');
  }

  @protected
  register() {
    Navigator.pushNamed(context, '/registerScreen');
  }

  @protected
  forgetPassword() {
    Navigator.pushNamed(context, '/forgetPasswordScreen');
  }
}
