
void main() {
  print(StringCalculator().add('5,6'));
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var nums = numbers.split(',');
    if (nums.length == 1) return int.parse(nums[0]);

    return int.parse(nums[0]) + int.parse(nums[1]);
  }
}

