// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  int deleteGreatestValue(List<List<int>> grid) {
    var totalSum = 0;

    for (var row in grid) {
      row.sort();
    }

    for (var i = 0; i < grid[0].length; i++) {
      var sum = 0;
      for (var row in grid) {
        sum = max(sum, row[i]);
      }
      totalSum += sum;
    }

    return totalSum;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [
    [1, 2, 4],
    [3, 3, 1]
  ];

  final testcase2 = [
    [10],
  ];

  var result = solution.deleteGreatestValue(testcase1);

  print(result);
}
