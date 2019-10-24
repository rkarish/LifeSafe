import 'package:flutter/material.dart';
import 'package:life_safe/login.dart';

void main() => runApp(LifeSafe());

class LifeSafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Safe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
