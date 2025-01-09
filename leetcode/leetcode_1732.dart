// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  int largestAltitude(List<int> gain) {
    var maxV = 0, tSum = 0;
    for (var num in gain) {
      tSum += num;

      if (tSum > maxV) {
        maxV = tSum;
      }
    }

    return maxV;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (1, [-5, 1, 5, 0, -7]);
  final testcase2 = (0, [-4, -3, -2, -1, 4, 3, 2]);

  final testcase = testcase1;
  var result = solution.largestAltitude(testcase.$2);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
