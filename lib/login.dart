import 'package:flutter/material.dart';
import 'package:life_safe/dashboard.dart';
import 'package:life_safe/strings.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 180.0,
              width: 180.0,
              padding: EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('assets/img/logo.png'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25.0),
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
                top: 0.0,
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
                bottom: 25.0,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: Strings.password,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
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
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 25.0,
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
                bottom: 25.0,
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
