import 'package:flutter/material.dart';
import 'package:instagram/home_page_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData(

        primaryColor: Color(0xFF020202),

      ),
      home: HomePageScreen(),
      routes: {
        '/main': (context) => HomePageScreen(),

      },
    );
  }
}
