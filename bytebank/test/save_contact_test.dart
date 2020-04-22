import 'package:bytebank/main.dart';
import 'package:bytebank/screens/contact_form.dart';
import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter_test/flutter_test.dart';

import 'matchers.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Verifica se salva um contato', (tester) async {
    await tester.pumpWidget(BytebankApp());
    final dashboard = find.byType(Dashboard);
    expect(dashboard, findsOneWidget);

    final transferFeatureItem = find.byWidgetPredicate((widget) => featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
    expect(transferFeatureItem, findsOneWidget);
    await tester.tap(transferFeatureItem);
    await tester.pump(); //Rebuild do widget para fazer a próxima microtarefa no meio do caminho até o conteúdo ser carregado
    await tester.pump(); 
    await tester.pump(); 
    
    final contactsList = find.byType(ContactsList);
    expect(contactsList, findsOneWidget);

    final fabNewContact = find.widgetWithIcon(FloatingActionButton, Icons.add);
    expect(fabNewContact, findsOneWidget);
    await tester.tap(fabNewContact);

    final contactForm = find.byType(ContactForm);
    expect(contactForm, findsOneWidget);
    //Se tiver outra microtarefa pendente de ser executada, pump não vai funcionar
  
  });
}