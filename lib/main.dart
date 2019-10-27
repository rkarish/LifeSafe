import 'package:flutter/material.dart';
import 'package:life_safe/login.dart';
import 'package:life_safe/strings.dart';

void main() => runApp(LifeSafe());

class LifeSafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        dividerColor: Colors.transparent,
      ),
      home: Login(),
    );
  }
}
