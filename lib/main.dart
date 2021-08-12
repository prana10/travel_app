import 'package:flutter/material.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/homePage.dart';
import 'package:travel_app/pages/spalsh_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      routes: {
        '/': (context) => SplashScreen(),
        '/HomePage': (context) => HomePage(),
        '/detail_page': (context) => DetailPage(),
      },
    );
  }
}