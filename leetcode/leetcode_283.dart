// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  List<int> moveZeroes(List<int> nums) {
    var l = 0, r = 1;
    while (r < nums.length) {
      if (nums[l] == 0) {
        if (nums[r] == 0) {
          r++;
        } else {
          var temp = nums[l];
          nums[l] = nums[r];
          nums[r] = temp;
          l++;
        }
      } else {
        l++;
        r++;
      }
    }
    return nums;
  }

  List<int> moveZeroes1(List<int> nums) {
    var l = 0, r = 0;
    while (r < nums.length) {
      if (nums[r] != 0) {
        nums[l] = nums[r];
        l++;
      }
      r++;
    }

    while (l < nums.length) {
      nums[l] = 0;
      l++;
    }
    return nums;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ([1, 3, 12, 0, 0], [0, 1, 0, 3, 12]);
  final testcase2 = ([1, 0], [1, 0]);

  final testcase = testcase2;
  var result = solution.moveZeroes(testcase.$2);

  print("-> $result <- result");
  print("-> ${testcase.$1} <- expected");
}
