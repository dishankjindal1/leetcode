// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  int hammingWeight(int n) {
    var result = 0;

    while (n != 0) {
      result++;
      n = n & (n - 1);
    }

    return result;
  }

  // preferred
  int hammingWeight1(int n) {
    var result = 0;

    for (var i = 0; i < n.bitLength; i++) {
      if (((n >> i) & 1) == 1) {
        result++;
      }
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 111;

  var result = solution.hammingWeight1(testcase1);

  print(result);
}
