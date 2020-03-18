import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Full Name',
            ),
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Account Number',
            ),
            style: TextStyle(
              fontSize: 24.0,
            ),
            keyboardType: TextInputType.number,
          ),
          RaisedButton(
            child: Text('Create'),
            onPressed: () {},
          )
        ]
      ),
    );
  }
}