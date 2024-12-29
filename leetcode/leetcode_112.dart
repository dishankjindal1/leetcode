// ignore_for_file: unused_local_variable

import '../core/core.dart';

class Solution {
  // Recursive
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) return false;

    bool dfs(TreeNode? node, int targetSum) {
      if (node == null) return false;

      if (node.val == targetSum && node.left == null && node.right == null)
        return true;

      return dfs(node.left, targetSum - node.val) ||
          dfs(node.right, targetSum - node.val);
    }

    return dfs(
      root,
      targetSum,
    );
  }

  // Iterative
  bool hasPathSum1(TreeNode? root, int targetSum) {
    if (root == null) return false;

    var queue = Queue<(TreeNode?, int)>();
    queue.add((root, targetSum));

    while (queue.isNotEmpty) {
      final (node, sum) = queue.removeFirst();

      if (node == null) return false;

      if (sum - node.val == 0 && node.left == null && node.right == null)
        return true;

      if (node.left != null) queue.add((node.left, sum - node.val));
      if (node.right != null) queue.add((node.right, sum - node.val));
    }

    return false;
  }
}

void main() {
  final solution = Solution();

  final testcase1 =
      TreeNode.fromList([5, 4, 8, 11, null, 13, 4, 7, 2, null, null, null, 1]);

  // testcase1.printTree();

  var result = solution.hasPathSum1(testcase1, 22);

  print(result);
}
