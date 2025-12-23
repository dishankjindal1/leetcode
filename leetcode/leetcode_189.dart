// ignore_for_file: unused_local_variable

class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;
    k %= nums.length;

    reverse(nums, 0, n);
    reverse(nums, 0, k);
    reverse(nums, k, n);
  }

  void reverse(List<int> nums, int l, int r) {
    for (var i = l; i < (l + r) / 2; i++) {
      var temp = nums[i];
      nums[i] = nums[r - (i - l) - 1];
      nums[r - (i - l) - 1] = temp;
    }
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ([5, 6, 7, 1, 2, 3, 4], [1, 2, 3, 4, 5, 6, 7], 3);

  final testcase = testcase1;

  solution.rotate(testcase.$2, testcase.$3);

  print("-> ${testcase.$2} <- result");
  print("-> ${testcase.$1} <- expected");
}











// class Solution {
//   // neetcode
//   int removeDuplicates1(List<int> nums) {
//     var l = 0, r = 0;

//     while (r < nums.length) {
//       var count = 1;
//       while (r + 1 < nums.length && nums[r] == nums[r + 1]) {
//         r++;
//         count++;
//       }

//       for (var i = 0; i < min(2, count); i++) {
//         nums[l] = nums[r];
//         l += 1;
//       }

//       r += 1;
//     }

//     return l;
//   }

//   // greg
//   int removeDuplicates(List<int> nums) {
//     var count = 1, j = 1;
//     for (var i = 1; i < nums.length; i++) {
//       if (nums[i - 1] == nums[i]) {
//         count++;
//       } else {
//         count = 1;
//       }

//       if (count <= 2) {
//         nums[j] = nums[i];
//         j++;
//       }
//     }

//     return j;
//   }
// }