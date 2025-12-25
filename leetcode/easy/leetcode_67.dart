// ignore_for_file: unused_import, unused_local_variable

import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';

class Solution {
  String addBinary(String a, String b) {
    final maxlength = max(a.length, b.length);
    a = a.padLeft(maxlength, '0');
    b = b.padLeft(maxlength, '0');

    var result = '', carry = 0;

    for (int i = maxlength - 1; i >= 0; i--) {
      var valA = a[i] == '0' ? 0 : 1;
      var valB = b[i] == '0' ? 0 : 1;
      var addAB = valA + valB + carry;
      result = '${addAB % 2}$result';
      carry = addAB ~/ 2;
    }

    if (carry == 1) {
      result = '$carry$result';
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  final (String, String, String) testcase1 = ('100', '11', '1');
  final (String, String, String) testcase2 = ('10101', '1010', '1011');
  final (String, String, String) testcase = testcase1;

  final result = solution.addBinary(testcase.$2, testcase.$3);

  print("-> ${result} <- result");
  print("-> ${testcase.$1} <- expected");
}
