import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: Card(
      child: Column(
        children: <Widget>[
          Text('Teste'),
          Text('Teste'),
          Text('Teste'),
          Text('Teste'),
        ],
      ),
    ),
    appBar: AppBar(title: Text('Transferências')),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    ),
  ),
));
