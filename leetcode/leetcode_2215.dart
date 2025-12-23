// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    var ans = <List<int>>[[], []],
        nums1s = Set.from(nums1),
        nums2s = Set.from(nums2);

    for (var num in nums1s) {
      if (!nums2s.contains(num)) {
        ans[0].add(num);
      }
    }

    for (var num in nums2s) {
      if (!nums1s.contains(num)) {
        ans[1].add(num);
      }
    }

    return ans;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (
    [
      [1, 3],
      [4, 6]
    ],
    [1, 2, 3],
    [2, 4, 6]
  );
  final testcase2 = (
    [
      [3],
      []
    ],
    [1, 2, 3, 3],
    [1, 1, 2, 2]
  );

  final testcase = testcase2;
  var result = solution.findDifference(testcase.$2, testcase.$3);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
