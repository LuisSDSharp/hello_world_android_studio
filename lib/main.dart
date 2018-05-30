import 'package:flutter/material.dart';

import 'category_route.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      home: CategoryList(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        textTheme: TextTheme(
            body1: TextStyle(color: Colors.black),
            display1: TextStyle(color: Colors.grey[500])
        ),
      ),
    );
  }
}
 