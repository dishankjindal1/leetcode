// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  String mergeAlternately(String word1, String word2) {
    var res = '', len = min(word1.length, word2.length);

    for (var i = 0; i < len; i++) {
      res += word1[i];
      res += word2[i];
    }

    return res +
        (word1.length > word2.length
            ? word1.substring(len)
            : word2.substring(len));
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ('abc', 'pqr');

  var result = solution.mergeAlternately(testcase1.$1, testcase1.$2);

  print(result);
}
