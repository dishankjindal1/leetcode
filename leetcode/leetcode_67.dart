// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  String addBinary(String a, String b) {
    int maxLength = a.length > b.length ? a.length : b.length;
    a = a.padLeft(maxLength, '0');
    b = b.padLeft(maxLength, '0');

    var result = '', carry = 0;

    for (var i = maxLength - 1; i >= 0; i--) {
      var digit1 = a[i] == '0' ? 0 : 1;
      var digit2 = b[i] == '0' ? 0 : 1;
      var sum = digit1 + digit2 + carry;
      result = "${sum % 2}$result";
      carry = sum ~/ 2;
    }

    if (carry > 0) {
      result = "$carry$result";
    }

    return result;
  }

  // Bit manipulation
  // this will not pass all testcases, as the number will overflow
  String addBinary1(String a, String b) {
    var p = int.parse(a, radix: 2);
    var q = int.parse(b, radix: 2);

    while (q > 0) {
      var withoutCarry = p ^ q;
      var carry = (p & q) << 1;

      p = withoutCarry;
      q = carry;
    }

    return p.toRadixString(2);
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ('11', '1');

  var result = solution.addBinary1(testcase1.$1, testcase1.$2);

  print(result);
}
