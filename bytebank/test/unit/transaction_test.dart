import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar valor quando criarmos uma Transaction', () {
    final transaction = Transaction(null,200, null);
    expect(transaction.value, 200);
  });
  test('Deve apresentar falha quando criar Transferência com valor menor do que zero', () {
    expect(() => Transaction(null, 0, null), throwsAssertionError);
  });
}