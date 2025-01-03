// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  List<int> answerQueries(List<int> nums, List<int> queries) {
    var answer = List.filled(queries.length, 0);

    nums.sort();

    for (var i = 0; i < queries.length; i++) {
      answer[i] = findMaxSubSeq(nums, queries[i]);
    }

    return answer;
  }

  int findMaxSubSeq(List<int> nums, int sum) {
    var count = 0, totalSum = 0;
    for (var i = 0; i < nums.length; i++) {
      if (totalSum + nums[i] > sum) break;
      totalSum += nums[i];
      count++;
    }

    return count;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ([4, 5, 2, 1], [3, 10, 21]);
  final testcase2 = ([2, 3, 4, 5], [1]);
  final testcase3 = (
    [736411, 184882, 914641, 37925, 214915],
    [331244, 273144, 118983, 118252, 305688, 718089, 665450]
  );
  final testcase4 = (
    [469781, 45635, 628818, 324948, 343772, 713803, 452081],
    [816646, 929491]
  );

  var result = solution.answerQueries(testcase1.$1, testcase1.$2);

  print(result);
}
