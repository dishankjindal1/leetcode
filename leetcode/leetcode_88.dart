// ignore_for_file: unused_local_variable

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    var i = m - 1, j = n - 1;

    while (i >= 0 && j >= 0) {
      if (nums2[j] > nums1[i]) {
        nums1[i + j + 1] = nums2[j];
        j--;
      } else {
        nums1[i + j + 1] = nums1[i];
        i--;
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

  final testcase1 = ([1, 2, 2, 3, 5, 6], [1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
  final testcase2 = ([1], [1], 1, <int>[], 0);
  final testcase3 = ([1], [0], 0, <int>[1], 1);

  final testcase = testcase3;

  solution.merge(testcase.$2, testcase.$3, testcase.$4, testcase.$5);

  print("-> ${testcase.$2.join()} <- result");
  print("-> ${testcase.$1.join()} <- expected");
}
