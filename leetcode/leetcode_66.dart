// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  List<int> plusOne(List<int> digits) {
    var plusOne = true;

    for (var i = digits.length - 1; i >= 0; i--) {
      if (digits[i] == 9 && plusOne) {
        digits[i] = 0;
      } else if (plusOne) {
        digits[i] += 1;
        plusOne = false;
      }
    }

    if (plusOne) {
      digits.insert(0, 1);
    }

    return digits;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [1, 2, 3];
  final testcase2 = [1, 2, 9];
  final testcase3 = [9];
  final testcase4 = [9, 9];
  final testcase5 = [9, 1, 9];
  final testcase6 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];

  var result = solution.plusOne(testcase3);

  print(result);
}
