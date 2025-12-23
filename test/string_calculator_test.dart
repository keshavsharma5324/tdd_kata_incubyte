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

  test('returns the sum of multiple numbers separated by commas', () {
    expect(calculator.add('1,2,3,4,5'), equals(15));
  });

  test('handles new lines between numbers', () {
    expect(calculator.add('1\n2,3'), equals(6));
  });

  test('supports custom delimiters', () {
    expect(calculator.add('//;\n1;2'), equals(3));
    expect(calculator.add('//|\n1|2|3'), equals(6));
  });

  test('throws exception for negative numbers', () {
    expect(() => calculator.add('1,-2,3,-4'), throwsFormatException);
    expect(
          () => calculator.add('1,-2,3,-4'),
      throwsA(
        predicate(
              (e) => e is FormatException && e.message == 'Negatives not allowed: -2, -4',
        ),
      ),
    );
  });
}