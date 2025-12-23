
void main() {
  print(StringCalculator().add('//;\n1;2'));
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
    return nums.map((n) => int.parse(n)).reduce((sum, n) => sum + n);
  }
}

