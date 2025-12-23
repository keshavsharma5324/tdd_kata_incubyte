
void main() {
  print(StringCalculator().add('//[***]\n1***2***3'));
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      int delimiterEndIndex = numbers.indexOf('\n');
      String delimiterSection = numbers.substring(2, delimiterEndIndex);

      // Handle [delimiter] format
      if (delimiterSection.startsWith('[') && delimiterSection.endsWith(']')) {
        delimiter = delimiterSection.substring(1, delimiterSection.length - 1);
      } else {
        delimiter = delimiterSection;
      }

      numbers = numbers.substring(delimiterEndIndex + 1);
    }

    var nums = numbers.split(RegExp('${RegExp.escape(delimiter)}|\n'));
    var numbersList = nums.map((n) => int.parse(n)).toList();

    var negatives = numbersList.where((n) => n < 0);
    if (negatives.isNotEmpty) {
      throw FormatException('Negatives not allowed: ${negatives.join(', ')}');
    }

    return numbersList.where((n) => n <= 1000).reduce((sum, n) => sum + n);
  }
}
