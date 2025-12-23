// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<List<int>> transpose(List<List<int>> matrix) {
    var newMatrix = List<Int32List>.generate(
      matrix[0].length,
      (e) =>
          Int32List.fromList(List.filled(matrix.length, -1, growable: false)),
      growable: false,
    );

    for (var i = 0; i < matrix[0].length; i++) {
      for (var j = 0; j < matrix.length; j++) {
        newMatrix[i][j] = matrix[j][i];
      }
    }

    return newMatrix;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  final testcase2 = [
    [1, 2, 3],
    [4, 5, 6]
  ];

  final testcase3 = [
    [-51, 36, -31, 23],
    [3, 12, -31, 65],
    [-20, 2, -42, -62],
    [0, -49, 75, 77],
    [-52, 46, 45, 37],
    [-98, 17, 14, 78],
    [50, 88, -15, -31],
    [84, -59, -96, 23],
    [42, 1, 48, 81],
    [-92, 95, -71, 37]
  ];
  // [[-51,3,-20,0,-52,-98,50,84,42,-92],[36,12,2,-49,46,17,88,-59,1,95],[-31,-31,-42,75,45,14,-15,-96,48,-71],[23,65,-62,77,37,78,-31,23,81,37]]

  var result = solution.transpose(testcase3);

  print(result);
}
