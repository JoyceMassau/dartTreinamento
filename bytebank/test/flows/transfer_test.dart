import 'package:bytebank/main.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../matchers/matchers.dart';
import '../mocks/mocks.dart';
import 'actions.dart';

void main() {
  testWidgets('Verifica se transfere um contato', (tester) async {
    final mockContactDao = MocksContactDao();

    await tester.pumpWidget(BytebankApp(contactDao: mockContactDao,));
    final dashboard = find.byType(Dashboard);
    expect(dashboard, findsOneWidget);

    when(mockContactDao.findAll()).thenAnswer((invocation) async {
      debugPrint('Name invocation ${invocation.memberName}');
      return [Contact(0, 'Joyce', 1234)];
    });

    await clickOnTheTransferFeatureItem(tester);
    await tester.pumpAndSettle(); //Pump faz o Rebuild do widget para fazer a próxima microtarefa no meio do caminho até o conteúdo ser carregado
    //Se tiver outra microtarefa pendente de ser executada, pump não vai funcionar
    
    final contactsList = find.byType(ContactsList);
    expect(contactsList, findsOneWidget);

    verify(mockContactDao.findAll()).called(1);

    final contactItem = find.byWidgetPredicate((widget) {
      if(widget is ContactItem) {
        return widget.contact.name == 'Joyce' &&
          widget.contact.accountNumber == 1234;
      }
      return false;
    });
    expect(contactItem, findsOneWidget);
  });
}