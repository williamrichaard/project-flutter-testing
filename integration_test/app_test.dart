import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/presentation/weather_app_screen.dart';
import 'package:integration_test/integration_test.dart';
import 'package:innopolis_test/data/test_data_repository.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("Tela do Aplicativo", () {
    late TestDataRepository repository;
    late WidgetTester tester;

    setUp(() {
      repository = TestDataRepository();
    });

    tearDown(() {
      // Limpar recursos após cada teste, se necessário
    });

    testWidgets("Testando a tela inicial", (tester) async {
      tester = tester;
      await tester.pumpWidget(MaterialApp(
        home: WeatherAppScreen(repository: repository),
      ));
      expect(find.text("Atualizar dados"), findsOneWidget);
      await Future.delayed(const Duration(seconds: 5));
    });

    testWidgets("Teste de clique FAB", (tester) async {
      tester = tester;
      await tester.pumpWidget(MaterialApp(
        home: WeatherAppScreen(repository: repository),
      ));
      expect(find.byType(FloatingActionButton), findsOneWidget);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump(); // Aguarda a atualização da interface após o clique no botão
      await tester.pumpAndSettle();
      expect(find.text("Brasília"), findsOneWidget);
      expect(find.text("Temperatura"), findsOneWidget);
      expect(find.text("34 °C"), findsOneWidget);
      await Future.delayed(const Duration(seconds: 5));
    });
  });
}