// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<List<int>> allCellsDistOrder(
      int rows, int cols, int rCenter, int cCenter) {
    var distances = <int, List<List<int>>>{};

    for (var i = 0; i < rows; i++) {
      for (var j = 0; j < cols; j++) {
        var distance = (rCenter - i).abs() + (cCenter - j).abs();

        if (distances.containsKey(distance)) {
          distances[distance]!.add([i, j]);
        } else {
          distances[distance] = [
            [i, j]
          ];
        }
      }
    }

    var sorted = distances.keys.toList()..sort();

    var array = <List<int>>[];
    for (var key in sorted) {
      array.addAll(distances[key]!);
    }

    return array;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (
    1,
    2,
    0,
    0,
  );

  final testcase2 = (
    2,
    2,
    0,
    1,
  );

  final testcase3 = (
    2,
    3,
    1,
    2,
  );

  var result = solution.allCellsDistOrder(
      testcase2.$1, testcase2.$2, testcase2.$3, testcase2.$4);

  print(result);
}
