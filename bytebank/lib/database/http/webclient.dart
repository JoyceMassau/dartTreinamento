import 'dart:convert';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';
import 'package:bytebank/database/http/webclient.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

const String baseUrl = 'http://192.168.0.21:8080/transactions';

final Client client =
    HttpClientWithInterceptor.build(
      interceptors: [LoggingInterceptor()],
      requestTimeout: Duration(seconds: 5)
    );