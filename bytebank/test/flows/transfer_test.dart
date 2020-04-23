import 'package:bytebank/components/response_dialog.dart';
import 'package:bytebank/components/transaction_auth_dialog.dart';
import 'package:bytebank/main.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:bytebank/screens/transactions_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../matchers/matchers.dart';
import '../mocks/mocks.dart';
import 'actions.dart';

void main() {
  testWidgets('Verifica se transfere um contato', (tester) async {
    final mockContactDao = MocksContactDao();
    final mockTransactionWebClient = MocksTransactionWebClient();

    await tester.pumpWidget(BytebankApp(
      transactionWebClient: mockTransactionWebClient,
      contactDao: mockContactDao,
    ));
    final dashboard = find.byType(Dashboard);
    expect(dashboard, findsOneWidget);

    var joyce = Contact(0, 'Joyce', 1234);
    
    when(mockContactDao.findAll()).thenAnswer((invocation) async {
      debugPrint('Name invocation ${invocation.memberName}');
      return [joyce];
    });

    await clickOnTheTransferFeatureItem(tester);
    await tester
        .pumpAndSettle(); //Pump faz o Rebuild do widget para fazer a próxima microtarefa no meio do caminho até o conteúdo ser carregado
    //Se tiver outra microtarefa pendente de ser executada, pump não vai funcionar

    final contactsList = find.byType(ContactsList);
    expect(contactsList, findsOneWidget);

    verify(mockContactDao.findAll()).called(1);

    final contactItem = find.byWidgetPredicate((widget) {
      if (widget is ContactItem) {
        return widget.contact.name == 'Joyce' &&
            widget.contact.accountNumber == 1234;
      }
      return false;
    });
    expect(contactItem, findsOneWidget);
    await tester.tap(contactItem);
    await tester.pumpAndSettle();

    final transactionForm = find.byType(TransactionForm);
    expect(transactionForm, findsOneWidget);

    final contactName = find.text('Joyce');
    expect(contactName, findsOneWidget);
    final contactAccountNumber = find.text('1234');
    expect(contactAccountNumber, findsOneWidget);

    final textFieldValue = find.byWidgetPredicate((widget) {
      return textFieldByLabelTextMatcher(widget, 'Value');
    });
      expect(textFieldValue, findsOneWidget);
      await tester.enterText(textFieldValue, '200');

      final transferButton = find.widgetWithText(RaisedButton, 'Transfer');
      expect(transferButton, findsOneWidget);
      await tester.tap(transferButton);
      await tester.pumpAndSettle();

      final transactionAuthDialog = find.byType(TransactionAuthDialog);
      expect(transactionAuthDialog, findsOneWidget);

      final textFieldPassword = find.byKey(transactionAuthDialogTextFieldPasswordKey);
      expect(textFieldPassword, findsOneWidget);
      await tester.enterText(textFieldPassword, '1000');

      final cancelButton = find.widgetWithText(FlatButton, 'Cancel');
      expect(cancelButton, findsOneWidget);
      final confirmButton = find.widgetWithText(FlatButton, 'Confirm');
      expect(confirmButton, findsOneWidget);

      when(mockTransactionWebClient.save(Transaction(null, 200, joyce), '1000'))
      .thenAnswer((_) async => Transaction(null, 200, joyce));
      await tester.tap(confirmButton);
      await tester.pumpAndSettle();

      final successDialog = find.byType(SuccessDialog);
      expect(successDialog, findsOneWidget);

      final okButton = find.widgetWithText(FlatButton, 'Ok');
      expect(okButton, findsOneWidget);
      await tester.tap(okButton);
      await tester.pumpAndSettle();

      final contactsListBack = find.byType(ContactsList);
      expect(contactsListBack, findsOneWidget);
  });
}
