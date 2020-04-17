import 'dart:convert';
import 'package:bytebank/database/http/webclient.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

class TransactionWebClient {
  
  Future<List<Transaction>> findAll() async {
    final Response response = await client.get(baseUrl).timeout(Duration(seconds: 5));
    List<Transaction> transactions = _toTransactions(response)    ;
    return transactions;
  }

  List<Transaction> _toTransactions(Response response) {
    final List<dynamic> decodedJson = jsonDecode(response.body);
    final List<Transaction> transactions = decodedJson.map((dynamic json) {
      return Transaction.fromJson(json);
    }).toList();
    return transactions;
  }

  Future<Transaction> save(Transaction transaction) async {
    
    final String transactionJson = jsonEncode(transaction.toJson());
    
    final Response response = await client.post(baseUrl, headers: {
      'Content-type': 'application/json',
      'password': '1000',
    }, body: transactionJson);

    return Transaction.fromJson(jsonDecode(response.body));
  }

}