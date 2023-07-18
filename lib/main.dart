import 'package:flutter/material.dart';

import 'package:flutter1307/pages/chat.dart';
import 'package:flutter1307/pages/chat_detail.dart';
import 'package:flutter1307/pages/home_page.dart';
import 'package:flutter1307/pages/info.dart';
import 'package:flutter1307/pages/logged_out.dart';
import 'package:flutter1307/pages/login.dart';
import 'package:flutter1307/pages/photo_open.dart';
import 'package:flutter1307/pages/register.dart';
import 'package:flutter1307/pages/register2.dart';
import 'package:flutter1307/pages/search.dart';
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
        home: LoggedOut()
    );
  }
}