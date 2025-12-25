// ignore_for_file: unused_import, unused_local_variable

import 'dart:collection';
import 'dart:math';

class Solution {
  int removeElement(List<int> nums, int val) {
    int l = 0, r = nums.length - 1;

    while (l <= r) {
      if (nums[r] == val) {
        r--;
        if (r < 0) continue;
      }

      if (nums[l] == val) {
        int temp = nums[r];
        nums[r] = nums[l];
        nums[l] = temp;
      }

      l++;
    }

    return l;
  }
}

void main() {
  final solution = Solution();

  final (List<int>, List<int>, int) testcase1 = ([2, 2], [3, 2, 2, 3], 3);
  final (List<int>, List<int>, int) testcase2 = (
    [0, 1, 4, 0, 3],
    [0, 1, 2, 2, 3, 0, 4, 2],
    2,
  );
  final (List<int>, List<int>, int) testcase3 = ([2], [2], 3);
  final (List<int>, List<int>, int) testcase = testcase3;

  final result = solution.removeElement(testcase.$2, testcase.$3);

  print(testcase);

  print("-> ${result} <- result");
  print("-> ${testcase.$1} <- expected");
}
