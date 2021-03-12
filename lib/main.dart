import 'package:flutter/material.dart';
import 'HomePage.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Calculator App',
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.red,
          brightness: Brightness.light),
    );
  }
}
