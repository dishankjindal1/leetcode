// ignore_for_file: unused_import, unused_local_variable

import 'dart:collection';
import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  // Recursive
  bool isSymmetric(TreeNode? root) {
    bool dfs(TreeNode? left, TreeNode? right) {
      if (left == null && right == null) return true;
      if (left == null || right == null) return false;

      return left.val == right.val &&
          dfs(left.left, right.right) &&
          dfs(left.right, right.left);
    }

    return dfs(root?.left, root?.right);
  }

  // Iterative
  bool isSymmetric1(TreeNode? root) {
    if (root == null) return true;

    var stack = <(TreeNode?, TreeNode?)>[(root.left, root.right)];

    while (stack.isNotEmpty) {
      var (left, right) = stack.removeAt(0);

      if (left == null && right == null) continue;
      if (left == null || right == null) return false;
      if (left.val != right.val) return false;

      stack.add((left.left, right.right));
      stack.add((left.right, right.left));
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = TreeNode(
    1,
    TreeNode(
      2,
      TreeNode(3),
      TreeNode(4),
    ),
    TreeNode(
      2,
      TreeNode(4),
      TreeNode(3),
    ),
  );

  final testcase2 = TreeNode(
    1,
    TreeNode(
      2,
      null,
      TreeNode(3),
    ),
    TreeNode(
      2,
      TreeNode(3),
      null,
    ),
  );

  var result = solution.isSymmetric1(testcase2);

  print(result);
}
