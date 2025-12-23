// ignore_for_file: unused_import, unused_local_variable

import 'dart:collection';
import 'dart:math';

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    if (magazine.length < ransomNote.length) return false;

    final hashMap = <int, int>{};

    for (final e in magazine.runes) {
      hashMap.putIfAbsent(e, () => 0);
      hashMap.update(e, (e) => e + 1);
    }

    for (final e in ransomNote.runes) {
      if (!hashMap.containsKey(e)) {
        return false;
      }
      hashMap.update(e, (e) => e - 1);

      if (hashMap[e]!.isNegative) return false;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  final (bool, String, String) testcase1 = (false, "a", "b");
  final (bool, String, String) testcase2 = (false, "aa", "ab");
  final (bool, String, String) testcase3 = (true, "aa", "aab");

  final (bool, String, String) testcase = testcase1;

  final result = solution.canConstruct(testcase.$2, testcase.$3);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
