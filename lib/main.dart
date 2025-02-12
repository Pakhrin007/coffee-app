import 'package:coffee/dashboard/dashboard.dart';
import 'package:coffee/screen/login.dart';
import 'package:coffee/splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const Splashscreen(),
    );
  }
}
