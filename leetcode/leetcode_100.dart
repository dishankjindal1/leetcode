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
  bool isSameTree(TreeNode? p, TreeNode? q) {
    if (p == null && q == null) return true;
    if (p == null || q == null) return false;

    return p.val == q.val &&
        isSameTree(p.left, q.left) &&
        isSameTree(p.right, q.right);
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (
    TreeNode(
      1,
      TreeNode(2),
      TreeNode(3),
    ),
    TreeNode(
      1,
      TreeNode(2),
      TreeNode(2),
    )
  );

  final testcase2 = (
    TreeNode(
      1,
      TreeNode(2),
      // TreeNode(3),
    ),
    TreeNode(
      1,
      // TreeNode(2),
      null,
      TreeNode(2),
    )
  );

  var result = solution.isSameTree(testcase1.$1, testcase1.$2);

  print(result);
}
