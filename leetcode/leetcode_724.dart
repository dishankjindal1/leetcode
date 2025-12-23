// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  int pivotIndex(List<int> nums) {
    var lSum = 0, rSum = 0;

    for (var i = nums.length - 1; i >= 0; i--) {
      rSum += nums[i];
    }

    for (var i = 0; i < nums.length; i++) {
      lSum += nums[i];

      if (lSum == rSum) return i;

      rSum -= nums[i];
    }

    return -1;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (3, [1, 7, 3, 6, 5, 6]);
  final testcase2 = (-1, [1, 2, 3]);
  final testcase3 = (0, [2, 1, -1]);
  final testcase4 = (2, [-1, -1, 0, 0, -1, -1]);

  final testcase = testcase4;
  var result = solution.pivotIndex(testcase.$2);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
