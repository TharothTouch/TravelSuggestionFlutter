import 'package:flutter/material.dart';
import 'package:travel_suggestion/drawer_screen.dart';
import 'package:travel_suggestion/login_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
