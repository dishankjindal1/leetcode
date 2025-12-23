import 'dart:math';

class Solution {
  // int maxProfit(List<int> prices) {
  //   final int n = prices.length;
  //   final memo = <String, int>{};

  //   int dp(int i, int hold) {
  //     if (i >= n) return 0;

  //     var key = "$i-$hold";

  //     if (memo[key] != null) return memo[key]!;

  //     final skipCurrentDay = dp(i + 1, hold);

  //     if (hold == 0) {
  //       final buy = -prices[i] + dp(i + 1, 1);
  //       memo[key] = max(skipCurrentDay, buy);
  //     } else {
  //       final sell = prices[i] + dp(i + 1, 0);
  //       memo[key] = max(skipCurrentDay, sell);
  //     }

  //     return memo[key]!;
  //   }

  //   return dp(0, 0);
  // }

  int maxProfit(List<int> prices) {
    var nextNoStock = 0, nextStock = 0;

    for (var index = prices.length - 1; index >= 0; index--) {
      nextNoStock = max(nextNoStock, -prices[index] + nextStock);
      nextStock = max(nextStock, prices[index] + nextNoStock);
    }

    return nextNoStock;
  }
}

void main() {
  final solution = Solution();

  // final testcase1 = (7, [7, 1, 5, 3, 6, 4]);
  final testcase2 = (4, [1, 2, 3, 4, 5]);
  // final testcase3 = (0, [7, 6, 4, 3, 1]);

  final testcase = testcase2;

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