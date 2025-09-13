import 'package:flutter/material.dart';
import 'package:fish_recognition_mobile_app/opening_page.dart';
import 'package:fish_recognition_mobile_app/recognition_page.dart';
import 'package:fish_recognition_mobile_app/data_book.dart';
import 'package:fish_recognition_mobile_app/about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FishDetective',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => OpeningPage(),
        '/home': (_) => RecognitionPage(),
        '/settings': (_) => DataBookPage(),
        '/about': (_) => AboutPage(),
      },
    );
  }
}
