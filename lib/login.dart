import 'package:flutter/material.dart';
import 'package:life_safe/dashboard.dart';
import 'package:life_safe/strings.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 200.0,
                  width: 200.0,
                  child: Image(
                    image: AssetImage('assets/img/logo.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 25.0,
                    right: 25.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    Strings.pleaseSignIn,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    left: 25.0,
                    right: 25.0,
                    bottom: 5.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: Strings.email,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 25.0,
                    right: 25.0,
                    bottom: 15.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: Strings.password,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 25.0,
                    right: 25.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  child: ButtonTheme(
                    minWidth: 375.0,
                    child: RaisedButton(
                      onPressed: () {
                        print('Sign in pressed.\n');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },
                      color: Colors.blue,
                      child: Text(Strings.signIn),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 15.0,
                    left: 25.0,
                    right: 25.0,
                    bottom: 0.0,
                  ),
                  child: Text(Strings.noAccount),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 0.0,
                    left: 25.0,
                    right: 25.0,
                    bottom: 15.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print('Sign up pressed.\n');
                    },
                    child: Text(
                      Strings.signUp,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
