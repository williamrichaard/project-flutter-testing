import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() => print('Executar setUp'));

  tearDown(() => print('Executar tearDown'));

  test("Teste 1", () => print('Executar Teste 1'));

  test("Teste 2", () => print('Executar Teste 2'));
}
