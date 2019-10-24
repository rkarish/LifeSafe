import 'package:flutter/material.dart';

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
                'Please Sign In',
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
                  labelText: 'Email:',
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
                  labelText: 'Password:',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              child: RaisedButton(
                onPressed: () {
                  print('Sign in button pressed.\n');
                },
                color: Colors.blue,
                child: Text('Sign In'),
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
              child: Text('Don\'t have a Life Safe account?'),
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
                  print('Sign up text pressed.\n');
                },
                child: Text(
                  'Sign Up Here...',
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
