import 'package:flutter/material.dart';
import 'package:my_animes/views/register/register_screen_view.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenView createState() => RegisterScreenView();
}

abstract class RegisterScreenState extends State<RegisterScreen> {
  @protected
  register() {
    Navigator.pushReplacementNamed(context, '/homeScreen');
  }

  @protected
  login() {
    Navigator.pop(context);
  }
}
