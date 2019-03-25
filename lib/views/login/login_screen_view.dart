import 'package:flutter/material.dart';
import 'package:my_animes/views/login/login_screen.dart';

class LoginScreenView extends LoginScreenState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("lib/assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24.0, 100.0, 24.0, 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "Username"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(12.0),
                      onPressed: () {
                        login();
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                      child: InkWell(
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 14.0, color: Colors.white70, decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          register();
                        },
                      ),
                    ),
                    Container(
                      width: 1.5,
                      color: Colors.white70,
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                      child: InkWell(
                        child: Text(
                          "Forget Password",
                          style: TextStyle(fontSize: 14.0, color: Colors.white70, decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          forgetPassword();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
