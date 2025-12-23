// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  // Bottom up approach // MEMOIZATION
  var hashMap = {};
  int climbStairs1(int n) {
    if (hashMap[n] != null) return hashMap[n];
    if (n == 0) return 1;
    if (n == 1) return 1;

    hashMap[n] = climbStairs(n - 1) + climbStairs(n - 2);

    return hashMap[n];
  }

// Top down approach // Tabulation
  int climbStairs2(int n) {
    hashMap[0] = 0;
    hashMap[1] = 1;
    hashMap[2] = 2;

    for (var i = 3; i <= n; i++) {
      hashMap[i] = hashMap[i - 1] + hashMap[i - 2];
    }

    return hashMap[n];
  }

  // constant space // Tabulation
  int climbStairs(int n) {
    if (n == 1 || n == 2) return n;

    var l = 1, r = 2;

    for (var i = 3; i <= n; i++) {
      var newSum = l + r;
      l = r;
      r = newSum;
    }

    return r;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 1;

  var result = solution.climbStairs(testcase1);

  print(result);
}
