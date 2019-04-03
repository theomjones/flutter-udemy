import 'package:flutter/material.dart';
import 'package:udemy_101/views/auth-view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.orange,
      ),
      home: AuthView(),
    );
  }
}
