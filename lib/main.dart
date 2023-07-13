import 'package:flutter/material.dart';
import 'package:flutter1307/page/LoggedOut.dart';
import 'package:flutter1307/page/Login.dart';
import 'package:flutter1307/page/Register.dart';
import 'package:flutter1307/page/Register2.dart';
import 'package:flutter1307/widgets/StatusBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Figma",
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: LoggedOut()
    );
  }
}