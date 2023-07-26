import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/app_screen.dart';
//import 'package:innopolis_test/data/mock_data_repository.dart';

void main() {
  group("AppScreen", () {
    testWidgets("Testando a tela inicial", (WidgetTester tester) async {
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
      final currentTempTextFinder = find.text("34 °C");
      expect(currentTempTextFinder, findsOneWidget);
    });

    // testWidgets("Testando a tela inicial do aplicativo",
    //     (WidgetTester tester) async {
    //   /// Inicialização do repositório
    //   final repository = MockDataRepository();
    //   /// Criando um widget
    //   await tester.pumpWidget(MaterialApp(home: AppScreen(repository: repository)));
    //   /// Pesquisa de texto
    //   final textFinder = find.text("Atualize seus dados");
    //   /// Pesquisa de botão
    //   final fabFinder = find.byType(FloatingActionButton);
    //   /// Comparando finder сom o matcher
    //   expect(textFinder, findsOneWidget);
    //   expect(fabFinder, findsOneWidget);

    //   /// Simular um clique de botão
    //   await tester.tap(fabFinder);
    //   /// Reconstrução da interface
    //   await tester.pumpAndSettle();
    //   /// Busca por texto
    //   final tempTextFinder = find.text("Temperatura");
    //   /// Busca por texto
    //   final currentTempTextFinder = find.text("34 °C");
    //   /// Comparar finder сom o matcher
    //   expect(tempTextFinder, findsOneWidget);
    //   expect(currentTempTextFinder, findsOneWidget);
    // });

    // testWidgets("Verificando a tela inicial do aplicativo",
    //     (WidgetTester tester) async {
    //   final repository = MockDataRepository();
    //   await tester.pumpWidget(MaterialApp(
    //       home: AppScreen(
    //     repository: repository,
    //   )));
    //   final fabFinder = find.byType(FloatingActionButton);
    //   expect(fabFinder, findsOneWidget);
    //   await tester.tap(fabFinder);
    //   await tester.pumpAndSettle();
    //   final tempTextFinder = find.text("Temperatura");
    //   final currentTempTextFinder = find.text("34 °C");
    //   expect(tempTextFinder, findsOneWidget);
    //   expect(currentTempTextFinder, findsOneWidget);
    // });
  });
}
