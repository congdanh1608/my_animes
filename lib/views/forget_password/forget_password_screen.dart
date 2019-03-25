import 'package:flutter/material.dart';
import 'package:my_animes/views/forget_password/forget_password_screen_view.dart';
import 'package:my_animes/views/login/login_screen_view.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  ForgetPasswordScreenView createState() => ForgetPasswordScreenView();
}

abstract class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @protected
  login() {
    Navigator.pop(context);
  }

  @protected
  forgetPassword() {
    Navigator.pop(context);
  }
}
