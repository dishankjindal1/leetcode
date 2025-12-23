// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    var count = 0;
    for (var i = 0; i < flowerbed.length; i++) {
      if (flowerbed[i] == 0 &&
          (i == 0 || flowerbed[i - 1] == 0) &&
          (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)) {
        n--;
        i++;
      }
    }

    return n <= 0;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ([1, 0, 0, 0, 1], 1, true);
  final testcase2 = ([0, 0, 1, 0, 1], 1, true);
  final testcase3 = ([1, 0, 0, 0, 1], 2, false);
  final testcase4 = ([1, 0, 0, 0, 1, 0, 0], 2, true);
  final testcase5 = ([0], 1, true);
  final testcase6 = ([0, 0, 1, 0, 0], 1, true);

  final testcase = testcase6;
  var result = solution.canPlaceFlowers(testcase.$1, testcase.$2);

  print("-> $result <- result");
  print("-> ${testcase.$3} <- expected");
}
