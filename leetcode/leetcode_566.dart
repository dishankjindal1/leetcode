// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
    if (mat.length * mat[0].length != r * c) return mat;

    var items = [for (var row in mat) ...row].reversed.toList();

    return List.generate(
      r,
      (e) => List.generate(
        c,
        (e) => items.removeLast(),
        growable: false,
      ),
      growable: false,
    );
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (
    [
      [1, 2],
      [3, 4]
    ],
    1,
    4
  );

  var result = solution.matrixReshape(testcase1.$1, testcase1.$2, testcase1.$3);

  print(result);
}
