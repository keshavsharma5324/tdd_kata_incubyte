import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_calculator_test/main.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test('returns the sum of two numbers separated by comma', () {
    expect(calculator.add('1,2'), equals(3));
  });
}