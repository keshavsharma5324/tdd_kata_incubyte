
void main() {
  print(StringCalculator().add('//[***]\n1***2***3'));
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    List<String> delimiters = [','];
    if (numbers.startsWith('//')) {
      int delimiterEndIndex = numbers.indexOf('\n');
      String delimiterSection = numbers.substring(2, delimiterEndIndex);

      // Handle multiple delimiters format
      if (delimiterSection.startsWith('[')) {
        delimiters = [];
        int start = 0;
        while (start < delimiterSection.length) {
          int openBracket = delimiterSection.indexOf('[', start);
          if (openBracket == -1) break;
          int closeBracket = delimiterSection.indexOf(']', openBracket);
          delimiters.add(delimiterSection.substring(openBracket + 1, closeBracket));
          start = closeBracket + 1;
        }
      } else {
        delimiters = [delimiterSection];
      }

      numbers = numbers.substring(delimiterEndIndex + 1);
    }

    // Escape all delimiters and create regex pattern
    String pattern = delimiters.map((d) => RegExp.escape(d)).join('|');
    var nums = numbers.split(RegExp('$pattern|\n'));

    var numbersList = nums.map((n) => int.parse(n)).toList();

    var negatives = numbersList.where((n) => n < 0);
    if (negatives.isNotEmpty) {
      throw FormatException('Negatives not allowed: ${negatives.join(', ')}');
    }

    return numbersList.where((n) => n <= 1000).reduce((sum, n) => sum + n);
  }
}
