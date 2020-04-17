import 'package:bytebank/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatefulWidget {

  final Function(String password) onConfirm;

  TransactionAuthDialog({@required this.onConfirm});

  @override
  _TransactionAuthDialogState createState() => _TransactionAuthDialogState();
}

class _TransactionAuthDialogState extends State<TransactionAuthDialog> {

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      content: TextField(
        controller: _passwordController,
        obscureText: true,
        maxLength: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 64, letterSpacing: 24),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            print('Cancel');
          },
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            print('Confirm');
            widget.onConfirm(_passwordController.text);
          },
          child: Text('Confirm'),
        ),
      ],
    );
  }
}
