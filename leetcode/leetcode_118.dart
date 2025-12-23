// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<List<int>> generate(int numRows) {
    var result = <List<int>>[];
    for (var r = 0; r < numRows; r++) {
      var row = List<int>.filled(r + 1, 1);
      result.add(row);

      if (r >= 2) {
        for (var c = 1; c < r; c++) {
          result[r][c] = result[r - 1][c - 1] + result[r - 1][c];
        }
      }
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 5;

  var result = solution.generate(testcase1);

  print(result);
}
