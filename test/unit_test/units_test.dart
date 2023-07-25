import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/utilits/utilities.dart';

void main() {
  test('Verificando uma função para valores padrão', () {

    final result = Utilities.convertHumanTemp(29.3);
    expect(result, equals("32 °C"));


    final result2 = Utilities.convertHumanTemp(null);
    expect(result2, equals("Erro de dados"));

  });
}

