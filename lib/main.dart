import 'package:flutter/material.dart';
import 'package:flutter1307/page/home_page.dart';
import 'package:flutter1307/page/logged_out.dart';
import 'package:flutter1307/page/login.dart';
import 'package:flutter1307/page/register.dart';
import 'package:flutter1307/page/register2.dart';
import 'package:flutter1307/widgets/status_bar.dart';
import 'package:flutter1307/widgets/card.dart';

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
        home: HomePage()
    );
  }
}