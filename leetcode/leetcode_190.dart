// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  int reverseBits(int n) {
    var result = 0;
    // 32 is because we are reversing the 32bits integer, we we are reversing 64bits, then the loop count have been 64.
    for (var i = 0; i < 32; i++) {
      var bit = n & 1;
      result = (result << 1) | bit;
      n = n >> 1;
    }
    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 43261596;

  var result = solution.reverseBits(testcase1);

  print(result);
}
