// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home.dart'; // الصفحة الرئيسية

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HUE App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(), // بدء من الصفحة الرئيسية
    );
  }
}
