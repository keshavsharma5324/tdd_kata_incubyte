
void main() {
  print(StringCalculator().add('1,-2,3,-4'));
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      int delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);
      numbers = numbers.substring(delimiterEndIndex + 1);
    }

    var nums = numbers.split(RegExp('[$delimiter\n]'));
    var numbersList = nums.map((n) => int.parse(n)).toList();

    var negatives = numbersList.where((n) => n < 0);
    if (negatives.isNotEmpty) {
      throw FormatException('Negatives not allowed: ${negatives.join(', ')}');
    }

    return numbersList.reduce((sum, n) => sum + n);
  }
}

