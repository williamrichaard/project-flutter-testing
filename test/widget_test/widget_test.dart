import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/weather_app_screen.dart';
import 'package:innopolis_test/data/test_data_repository.dart';

void main() {
  group("Tela do Aplicativo", () {
    // testWidgets("Testando a tela inicial", (WidgetTester tester) async {
    //   await tester.pumpWidget(const MaterialApp(
    //     home: WeatherAppScreen(),
    //   ));
    //   final textFinder = find.text("Atualizar dados");
    //   expect(textFinder, findsOneWidget);
    // });

    // testWidgets("Teste de clique FAB", (WidgetTester tester) async {
    //   await tester.pumpWidget(const MaterialApp(
    //     home: WeatherAppScreen(),
    //   ));
    //   final fabFinder = find.byType(FloatingActionButton);
    //   expect(fabFinder, findsOneWidget);
    //   await tester.tap(fabFinder);
    //   await tester.pumpAndSettle();
    //   final currentTempTextFinder = find.text("34 °C");
    //   expect(currentTempTextFinder, findsOneWidget);
    // });

    // testWidgets("Testando a tela inicial do aplicativo",
    //     (WidgetTester tester) async {
    // //   /// Inicialização do repositório
    // //   final repository = MockDataRepository();
    // //   /// Criando um widget
    // //   await tester.pumpWidget(MaterialApp(home: WeatherAppScreen(repository: repository)));
    // //   /// Pesquisa de texto
    // //   final textFinder = find.text("Atualizar dados");
    // //   /// Pesquisa de botão
    //   final fabFinder = find.byType(FloatingActionButton);
    // //   /// Comparando finder сom o matcher
    // //   expect(textFinder, findsOneWidget);
    // //   expect(fabFinder, findsOneWidget);

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

    testWidgets("Testando a tela inicial do aplicativo",
        (WidgetTester tester) async {
      final repository = TestDataRepository();
      await tester.pumpWidget(MaterialApp(
          home: WeatherAppScreen(
        repository: repository,
      )));
      // Verifica se o botão FAB é exibido na tela
      expect(find.byType(FloatingActionButton), findsOneWidget);

      // Simula um clique no botão
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle(); // Espera pela atualização da interface

      // Verifica se os textos "Temperatura" e "34 °C" são exibidos na tela após o clique no botão
      expect(find.text("Temperatura"), findsOneWidget);
      expect(find.text("34 °C"), findsOneWidget);
    });

    testWidgets("Testando a tela inicial do aplicativo",
      (WidgetTester tester) async {
      // Inicialização do repositório mockado
      final repository = TestDataRepository();
    
      // Criando um widget e exibindo-o
      await tester.pumpWidget(MaterialApp(home: WeatherAppScreen(repository: repository)));
    
      // Verifica se o texto e o FloatingActionButton são exibidos na tela
      expect(find.text("Atualizar dados"), findsOneWidget);
      expect(find.byType(FloatingActionButton), findsOneWidget);
    });
  });
}
