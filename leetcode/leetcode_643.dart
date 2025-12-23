// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    var wSum = 0;
    for (var i = 0; i < k; i++) {
      wSum += nums[i];
    }

    var maxT = wSum;
    for (var i = k; i < nums.length; i++) {
      wSum = wSum + nums[i] - nums[i - k];
      maxT = max(maxT, wSum);
    }

    return maxT / k;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (12.75000, [1, 12, -5, -6, 50, 3], 4);
  final testcase2 = (5.000, [5], 1);
  final testcase3 = (-1, [-1], 1);
  final testcase4 = (4.0, [0, 4, 0, 3, 2], 1);

  final testcase = testcase4;
  var result = solution.findMaxAverage(testcase.$2, testcase.$3);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
