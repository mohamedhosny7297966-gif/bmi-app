


import 'package:bmicalculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1C2135),
            appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff24263B),
        titleTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
      fontWeight: FontWeight.w600,

       ),
      ),
      ),
      home: HomeScreen(

      ),
    );
  }
}
