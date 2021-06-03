import 'package:flutter/material.dart';
import 'package:sewaa/library/Common.dart';
import 'package:sewaa/screens/LandingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: primaryColor,
      ),
      home: LandingScreen(),
    );
  }
}
