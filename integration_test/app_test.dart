import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/app_screen.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("AppScreen", () {
    testWidgets("Testando a tela inicial", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AppScreen(),
      ));
      final textFinder = find.text("Atualizar dados");
      expect(textFinder, findsOneWidget);
      await Future.delayed(const Duration(seconds: 5));
    });

    testWidgets("Teste de clique FAB", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AppScreen(),
      ));
      final fabFinder = find.byType(FloatingActionButton);
      expect(fabFinder, findsOneWidget);
      await tester.tap(fabFinder);
      await tester.pumpAndSettle();
      final mainTextFinder = find.text("Brasília");
      final tempTextFinder = find.text("Temperatura");
      final currentTempTextFinder = find.text("34 °C");
      expect(mainTextFinder, findsOneWidget);
      expect(tempTextFinder, findsOneWidget);
      expect(currentTempTextFinder, findsOneWidget);
      /// Um ​​atraso é necessário aqui, apenas para que o teste não feche imediatamente.
      await Future.delayed(const Duration(seconds: 5));
    });
  });
}
