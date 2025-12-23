// ignore_for_file: unused_import, unused_local_variable

import 'dart:collection';
import 'dart:math';

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = m - 1, j = n - 1;

    while (i >= 0 && j >= 0) {
      if (nums1[i] > nums2[j]) {
        nums1[i + j + 1] = nums1[i];
        i--;
      } else {
        nums1[i + j + 1] = nums2[j];
        j--;
      }
    }

    while (j >= 0) {
      nums1[i + j + 1] = nums2[j];
      j--;
    }
  }
}

void main() {
  final solution = Solution();

  final (List<int>, int, List<int>, int) testcase1 = (
    [1, 2, 3, 0, 0, 0],
    3,
    [2, 5, 6],
    3,
  );
  final (List<int>, int, List<int>, int) testcase2 = ([1], 1, [], 0);
  final (List<int>, int, List<int>, int) testcase3 = ([0], 0, [1], 1);

  final (List<int>, int, List<int>, int) testcase = testcase3;

  solution.merge(testcase.$1, testcase.$2, testcase.$3, testcase.$4);

  print("-> $testcase <- result");
  print("-> ${testcase.$1} <- expected");
}
