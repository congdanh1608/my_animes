import 'package:flutter/material.dart';
import 'package:my_animes/views/register/register_screen.dart';

class RegisterScreenView extends RegisterScreenState {
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
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Re-Password"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(12.0),
                      onPressed: () {
                        register();
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    height: 2.0,
                    color: Colors.white70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: InkWell(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 14.0, color: Colors.white70, fontStyle: FontStyle.italic, decoration: TextDecoration.underline),
                    ),
                    onTap: () {
                      login();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
