import 'package:flutter/material.dart';

class Each_View extends StatefulWidget {
  String _title;
  Each_View(this._title);
  @override
  _Each_ViewState createState() => _Each_ViewState();
}

class _Each_ViewState extends State<Each_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title)),
      body: Center(child: Text(widget._title),)
    );
  }
}

