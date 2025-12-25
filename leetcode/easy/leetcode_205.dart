// ignore_for_file: unused_import, unused_local_variable

import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';

class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;

    final Uint8List sList = Uint8List(256);
    final Uint8List tList = Uint8List(256);

    for (int i = 0; i < s.length; i++) {
      final ss = s.codeUnitAt(i);
      final tt = t.codeUnitAt(i);

      if (sList[ss] != tList[tt]) return false;

      sList[ss] = i + 1;
      tList[tt] = i + 1;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  final (bool, String, String) testcase1 = (true, 'egg', 'add');
  final (bool, String, String) testcase2 = (false, 'foo', 'bar');
  final (bool, String, String) testcase3 = (true, 'paper', 'title');
  final (bool, String, String) testcase4 = (false, 'badc', 'baba');
  final (bool, String, String) testcase = testcase4;

  final result = solution.isIsomorphic(testcase.$2, testcase.$3);

  print("-> ${result} <- result");
  print("-> ${testcase.$1} <- expected");
}
