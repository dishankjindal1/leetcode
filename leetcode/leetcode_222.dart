// ignore_for_file: unused_local_variable

import '../core/core.dart';

class Solution {
  // Recursive
  int countNodes(TreeNode? root) {
    if (root == null) return 0;

    int dfs(TreeNode? root) {
      if (root == null) return 0;

      return 1 + dfs(root.left) + dfs(root.right);
    }

    return dfs(root);
  }

  // Iterative
  int countNodes1(TreeNode? root) {
    if (root == null) return 0;

    var count = 0;
    TreeNode? node = root;

    count++;
    count += node.left != null ? countNodes(node.left) : 0;
    count += node.right != null ? countNodes(node.right) : 0;

    return count;
  }

  // Iterative
  int countNodes2(TreeNode? root) {
    if (root == null) return 0;

    var total = 0;
    var queue = Queue<TreeNode?>();
    queue.add(root);

    while (queue.isNotEmpty) {
      final cur = queue.removeFirst();

      if (cur == null) continue;

      total++;

      if (cur.left != null) queue.add(cur.left);
      if (cur.right != null) queue.add(cur.right);
    }

    return total;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = TreeNode.fromList([1, 2, 3, 4, 5, 6]);

  // testcase1.printTree();

  var result = solution.countNodes2(testcase1);

  print(result);
}
