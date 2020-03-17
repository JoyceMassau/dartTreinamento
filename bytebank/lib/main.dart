import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          children: <Widget>[
            Image.network('https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_960_720.jpg')
          ],
        ),
      ),
    );
  }
}
