// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  bool isPrefixString(String s, List<String> words) {
    var newS = '';

    for (var word in words) {
      newS += word;
      if (newS == s)
        return true;
      else if (!s.startsWith(newS)) return false;
    }

    return newS == s;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ('iloveleetcode', ["i", "love", "leetcode", "apples"]);

  var result = solution.isPrefixString(testcase1.$1, testcase1.$2);

  print(result);
}
