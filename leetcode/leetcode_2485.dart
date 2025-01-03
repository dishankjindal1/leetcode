// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  int pivotInteger(int n) {
    var prefixSum = List.filled(n, 1);
    for (var i = 1; i < n; i++) {
      prefixSum[i] = prefixSum[i - 1] + i + 1;
    }

    var totalSum = 0;
    for (var i = n; i >= n ~/ 2; i--) {
      totalSum += i;
      if (totalSum == prefixSum[i - 1]) return i;
    }

    return -1;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 1;

  var result = solution.pivotInteger(testcase1);

  print(result);
}
