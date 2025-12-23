// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  int mySqrt(int x) {
    if (x == 1) return 1;

    var i = 0, j = x, res = 0;
    while (i <= j) {
      var mid = i + ((j - i) ~/ 2);

      var val = mid * mid;
      if (x == val)
        return mid;
      else if (x > val) {
        i = mid + 1;
        res = mid;
      } else {
        j = mid - 1;
      }
    }

    return res;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 4;
  final testcase2 = 8;
  final testcase3 = 0;
  final testcase4 = 5;
  final testcase5 = 1;

  var result = solution.mySqrt(testcase5);

  print(result);
}
