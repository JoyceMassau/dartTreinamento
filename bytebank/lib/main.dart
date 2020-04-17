import 'package:bytebank/components/transaction_auth_dialog.dart';
import 'package:bytebank/database/http/webclient.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:http/http.dart';
import 'package:bytebank/database/http/webclient.dart';
import 'models/contact.dart';
import 'models/transaction.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: TransactionAuthDialog(),
    );
  }
}
