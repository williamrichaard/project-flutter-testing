import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/app_screen.dart';

void main() {
  group("AppScreen", () {
    testWidgets("Verificando a tela inicial", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AppScreen(),
      ));
      final textFinder = find.text("Atualize seus dados");
      expect(textFinder, findsOneWidget);
    });

    testWidgets("Teste de clique FAB", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AppScreen(),
      ));
      final fabFinder = find.byType(FloatingActionButton);
      expect(fabFinder, findsOneWidget);
      await tester.tap(fabFinder);
      await tester.pumpAndSettle();
      final currentTempTextFinder = find.text("36 °C");
      expect(currentTempTextFinder, findsOneWidget);
    });
  });
}
