// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<int> getRow(int rowIndex) {
    var result = <int>[];
    var value = 1;

    for (var c = 0; c <= rowIndex; c++) {
      result.add(value);

      value = (value * (rowIndex - c)) ~/ (c + 1);
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = 4;

  var result = solution.getRow(testcase1);

  print(result);
}
