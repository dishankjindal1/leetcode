// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  List<int> leftRightDifference(List<int> nums) {
    var prefixSum = List.filled(nums.length, 0);

    for (var i = 0; i < nums.length - 1; i++) {
      prefixSum[i + 1] = prefixSum[i] + nums[i];
    }

    var totalSum = 0;
    for (var i = nums.length - 2; i >= 0; i--) {
      totalSum += nums[i + 1];
      prefixSum[i] = (prefixSum[i] - totalSum).abs();
    }

    return prefixSum;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [10, 4, 8, 3];

  var result = solution.leftRightDifference(testcase1);

  print(result);
}
