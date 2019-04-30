import 'package:flutter/material.dart';
import 'bottom_appbar_demo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
          primarySwatch:Colors.lightBlue
      ),
      home: BottomAppBarDemo(),
    );
  }
}
