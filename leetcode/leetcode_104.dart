// ignore_for_file: unused_import

import 'dart:collection';
import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;

    int totalDepth = 1 + max(maxDepth(root.left), maxDepth(root.right));

    return totalDepth;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = TreeNode(
    3,
    TreeNode(
      9,
    ),
    TreeNode(
      20,
      TreeNode(15),
      TreeNode(7),
    ),
  );

  var result = solution.maxDepth(testcase1);

  print(result);
}
