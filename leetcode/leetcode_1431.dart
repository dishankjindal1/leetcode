// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    var maxCandies = candies.reduce((a, b) => a > b ? a : b), result = <bool>[];
    for (var count in candies) {
      result.add(count + extraCandies >= maxCandies);
    }
    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ([2, 3, 5, 1, 3], 3);

  var result = solution.kidsWithCandies(testcase1.$1, testcase1.$2);

  print(result);
}
