import 'package:http/http.dart';
import 'package:bytebank/database/http/webclient.dart';
import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data);
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
      print(data);
      return data;
  }

}

void findAll() async {
  final Response response = await get('http://192.168.0.20:8080/transactions');
  print(response.body);
}