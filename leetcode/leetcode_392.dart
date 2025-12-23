// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  bool isSubsequence(String s, String t) {
    if (s.trim().isEmpty) return true;
    if (t.trim().isEmpty) return false;

    var l = 0, r = 0;

    while (r < t.length) {
      if (s[l] == t[r]) {
        l++;
        r++;
      } else {
        r++;
      }

      if (l == s.length) return true;
    }

    return false;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (true, "abc", "ahbgdc");
  final testcase2 = (false, "axc", "ahbgdc");

  final testcase = testcase1;
  var result = solution.isSubsequence(testcase.$2, testcase.$3);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
