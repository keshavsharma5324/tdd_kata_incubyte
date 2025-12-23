
void main() {
  print(StringCalculator().add('5,6,3,8,2'));
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var nums = numbers.split(',');
    return nums.map((n) => int.parse(n)).reduce((sum, n) => sum + n);
  }
}

