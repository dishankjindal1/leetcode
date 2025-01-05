// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  bool areOccurrencesEqual(String s) {
    var hashMap = {};

    for (var i = 0; i < s.length; i++) {
      if (hashMap[s[i]] == null) {
        hashMap.addAll({s[i]: 1});
      } else {
        hashMap[s[i]]++;
      }
    }

    var val = hashMap[s[0]];

    for (var item in hashMap.values) {
      if (item != val) return false;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = "abacbc";
  final testcase2 = "aaabb";
  final testcase3 = "vvvvvvvvvvvvvvvvvvv";

  var result = solution.areOccurrencesEqual(testcase3);

  print(result);
}
