import 'package:bytebank/main.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verifica se é apresentada na tela imagem principal quando dashboard é aberto', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });

  testWidgets('Verifica se é apresentada funcionalidade de Transferência quando dashboard é aberto', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final iconTransferFeatItem = find.widgetWithIcon(FeatureItem, Icons.monetization_on);
    expect(iconTransferFeatItem, findsOneWidget);
    
    final nameTransferFeatItem = find.widgetWithText(FeatureItem, 'Transfer');
    expect(nameTransferFeatItem, findsOneWidget);
  });
}