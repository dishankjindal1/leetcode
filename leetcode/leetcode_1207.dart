// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  bool uniqueOccurrences(List<int> arr) {
    var hashMap = <int, int>{};

    for (var num in arr) {
      hashMap.update(num, (e) => e + 1, ifAbsent: () => 1);
    }

    return hashMap.values.length == Set.from(hashMap.values).length;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (true, [1, 2, 2, 1, 1, 3]);

  final testcase = testcase1;
  var result = solution.uniqueOccurrences(testcase.$2);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
