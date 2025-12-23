
void main() {
  print(StringCalculator().add('1\n2,3'));
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var nums = numbers.split(RegExp('[,|\n]'));
    return nums.map((n) => int.parse(n)).reduce((sum, n) => sum + n);
  }
}

