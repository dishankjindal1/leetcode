// ignore_for_file: unused_local_variable

class Solution {
  int removeElement(List<int> nums, int val) {
    int l = 0, r = nums.length - 1;

    while (l <= r) {
      if (nums[l] == val) {
        nums.removeAt(l);
        r--;
      } else {
        l++;
      }
    }

    return nums.length;

    // nums.removeWhere((e) => e == val);

    // return nums.length;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (2, [3, 2, 2, 3], 3);

  final testcase = testcase1;

  final result = solution.removeElement(testcase.$2, testcase.$3);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
