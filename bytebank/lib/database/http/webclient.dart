import 'package:http/http.dart';
import 'package:bytebank/database/http/webclient.dart';
void findAll() async {
  final Response response = await get('http://192.168.0.20:8080/transactions');
  print(response.body);
}