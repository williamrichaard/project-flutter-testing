import 'package:flutter_test/flutter_test.dart';
import 'package:innopolis_test/utilits/temperature_converter.dart';

void main() {
  test('Verificando a função convertHumanTemp', () {

    final result = TemperatureConverter.convertHumanTemp(29.3);
    expect(result, equals("29 °C"));


    final result2 = TemperatureConverter.convertHumanTemp(null);
    expect(result2, equals("Erro de dados"));

  });
}

