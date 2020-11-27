import 'package:flutter/material.dart';
import 'package:designpatterns_burgerjoint/HomeScreen.dart';

class BurgerJointApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}