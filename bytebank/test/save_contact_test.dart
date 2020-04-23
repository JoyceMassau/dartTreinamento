import 'package:bytebank/main.dart';
import 'package:bytebank/screens/contact_form.dart';
import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'matchers.dart';
import 'package:flutter/material.dart';

import 'mocks.dart';

void main() {
  testWidgets('Verifica se salva um contato', (tester) async {

    final mockContactDao = MocksContactDao();

    await tester.pumpWidget(BytebankApp(contactDao: mockContactDao,));
    final dashboard = find.byType(Dashboard);
    expect(dashboard, findsOneWidget);

    final transferFeatureItem = find.byWidgetPredicate((widget) => featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
    expect(transferFeatureItem, findsOneWidget);
    await tester.tap(transferFeatureItem);
    await tester.pumpAndSettle(); //Pump faz o Rebuild do widget para fazer a próxima microtarefa no meio do caminho até o conteúdo ser carregado
    //Se tiver outra microtarefa pendente de ser executada, pump não vai funcionar
    
    final contactsList = find.byType(ContactsList);
    expect(contactsList, findsOneWidget);

    verify(mockContactDao.findAll()).called(1);

    final fabNewContact = find.widgetWithIcon(FloatingActionButton, Icons.add);
    expect(fabNewContact, findsOneWidget);
    await tester.tap(fabNewContact);
    await tester.pumpAndSettle(); //Já o PumpAndSettle faz várias chamadas do pump até que ele consiga resolver as pendências 

    final contactForm = find.byType(ContactForm);
    expect(contactForm, findsOneWidget); 

    final nameTextField = find.byWidgetPredicate((widget) {
      if(widget is TextField) {
        return widget.decoration.labelText == 'Full Name';
      }
      return false;
    });
    expect(nameTextField, findsOneWidget);
    await tester.enterText(nameTextField, 'Joyce');

    final accountNumberTextField = find.byWidgetPredicate((widget) {
      if(widget is TextField) {
        return widget.decoration.labelText == 'Account Number';
      }
      return false;
    });
    expect(accountNumberTextField, findsOneWidget);
    await tester.enterText(accountNumberTextField, '1234');
    
    final featureItem = find.widgetWithText(FeatureItem, 'Create');
    expect(featureItem, findsOneWidget);
    await tester.tap(featureItem);
    await tester.pumpAndSettle();

    final contactsListBack = find.byType(ContactsList);
    expect(contactsListBack, findsOneWidget);
  });
}