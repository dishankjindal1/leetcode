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
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return root;

    var queue = Queue<TreeNode?>();
    queue.add(root);

    while (queue.isNotEmpty) {
      var cur = queue.removeFirst();
      var temp = cur?.left;
      cur?.left = cur.right;
      cur?.right = temp;

      if (cur?.left != null) queue.add(cur?.left);
      if (cur?.right != null) queue.add(cur?.right);
    }

    return root;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = TreeNode(
    1,
    TreeNode(2),
    TreeNode(3),
  );

  var result = solution.invertTree(testcase1);

  void printTree(TreeNode? node) {
    Queue<TreeNode?> queue = Queue();
    queue.add(node);

    while (queue.isNotEmpty) {
      final currentNode = queue.removeFirst();
      if (currentNode == null) break;
      print(currentNode.val);

      if (currentNode.left != null) queue.add(currentNode.left);
      if (currentNode.right != null) queue.add(currentNode.right);
    }
  }

  printTree(result);
}
