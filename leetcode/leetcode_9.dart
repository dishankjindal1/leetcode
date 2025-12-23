// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    var diviser = 1;
    while (x >= (10 * diviser)) {
      diviser *= 10;
    }

    while (x > 0) {
      var rightBit = x % 10;
      var leftBit = x ~/ diviser;
      if (rightBit != leftBit) return false;

      x %= diviser;
      x ~/= 10;
      diviser ~/= 100;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 121;

  var result = solution.isPalindrome(testcase1);

  print(result);
}
