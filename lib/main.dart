import 'package:flutter/material.dart';

//Screens
import './screens/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currency App Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: StartScreen(),
      routes: {
        StartScreen.routeName: (ctx) => StartScreen(),
      },
    );
  }
}
