// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  int singleNumber(List<int> nums) {
    return nums.reduce((a, b) => a ^ b);
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [2, 2, 1, 1, 4, 3, 3];

  var result = solution.singleNumber(testcase1);

  print(result);
}
