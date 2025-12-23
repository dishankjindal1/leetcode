// ignore_for_file: unused_local_variable

class Solution {
  int removeDuplicates(List<int> nums) {
    int i = 0;

    for (int j = 1; j < nums.length; j++) {
      if (nums[i] != nums[j]) {
        i++;
        nums[i] = nums[j];
      }
    }

    return i + 1;

    // below solution is slow, because the removeAt func is an expensive operation
    // int i = 1, j = nums.length - 1;

    // while (i <= j) {
    //   if (nums[i - 1] == nums[i]) {
    //     nums.removeAt(i);
    //     j--;
    //   } else {
    //     i++;
    //   }
    // }

    // return nums.length;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (2, [1, 1, 2]);
  final testcase2 = (5, [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);

  final testcase = testcase2;

  final result = solution.removeDuplicates(testcase.$2);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
