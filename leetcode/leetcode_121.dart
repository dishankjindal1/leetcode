// ignore_for_file: unused_local_variable

class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxPrice = 0;

    for (var i = 1; i < prices.length; i++) {
      var profit = prices[i] - minPrice;

      if (profit > maxPrice) {
        maxPrice = profit;
      }

      if (prices[i] < minPrice) {
        minPrice = prices[i];
      }
    }

    return maxPrice;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (5, [7, 1, 5, 3, 6, 4]);

  final testcase = testcase1;

  final result = solution.maxProfit(testcase.$2);

  print("-> $result <- result");
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