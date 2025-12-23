// ignore_for_file: unused_local_variable

import '../core/core.dart';

class Solution {
  // Recursive
  TreeNode? sortedArrayToBST(List<int> nums) {
    if (nums.isEmpty) return null;

    TreeNode? constructNode(int l, int r) {
      if (l > r) return null;

      int mid = (l + r) ~/ 2;
      TreeNode? node = TreeNode(nums[mid]);
      node.left = constructNode(l, mid - 1);
      node.right = constructNode(mid + 1, r);

      return node;
    }

    return constructNode(0, nums.length - 1);
  }

  // Iterative
  TreeNode? sortedArrayToBST1(List<int> nums) {
    if (nums.isEmpty) return null;

    var queue = Queue<(TreeNode?, int, int)>();

    TreeNode? head = TreeNode(nums[(nums.length - 1) ~/ 2]);
    queue.add((head, 0, nums.length - 1));

    while (queue.isNotEmpty) {
      var (cur, l, r) = queue.removeFirst();

      int mid = (l + r) ~/ 2;

      if (mid - 1 >= l) {
        var ln = TreeNode(nums[(mid - 1 + l) ~/ 2]);
        cur?.left = ln;
        queue.add((cur?.left, l, mid - 1));
      }

      if (mid + 1 <= r) {
        var rn = TreeNode(nums[(r + mid + 1) ~/ 2]);
        cur?.right = rn;
        queue.add((cur?.right, mid + 1, r));
      }
    }

    return head;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [-10, -3, 0, 5, 9];

  // testcase1.printTree();

  var result = solution.sortedArrayToBST1(testcase1);

  result?.printTree();
}
