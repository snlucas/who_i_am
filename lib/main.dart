import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(WhoIAm());

class WhoIAm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}
