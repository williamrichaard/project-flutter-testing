import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Desenvolvimento através de testes TDD", () {
    final result = sum(5, 6);
    expect(result, 11);
    final result1 = sum(1, 6);
    expect(result1, 7);
  });
}

int sum(int a, int b) {
  return a + b;
}
