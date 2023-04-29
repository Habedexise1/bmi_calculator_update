// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff0a0321),
        accentColor: Colors.pink,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Color(0xff0a0321),
        ),
      ),
      home: Home(),
    );
  }
}
