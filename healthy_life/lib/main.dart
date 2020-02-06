import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy Life',
      theme: ThemeData(
        primaryColor: Color(0xFF03DA9E),
        accentColor: Color(0xFF0D1904),
        backgroundColor: Color(0xFFEDFDF5),
        textSelectionColor: Color(0xFF707070)
      ),
      home: MainScreen(),
    );
  }
}
