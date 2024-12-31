// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  int searchInsert(List<int> nums, int target) {
    int l = 0, r = nums.length - 1;

    while (r >= l) {
      int mid = l + ((r - l) ~/ 2);
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] > target) {
        r = mid - 1;
      } else {
        l = mid + 1;
      }
    }

    return l;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ([1, 3, 5, 6], 7);

  var result = solution.searchInsert(testcase1.$1, testcase1.$2);

  print(result);
}
