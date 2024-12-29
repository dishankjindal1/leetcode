// ignore_for_file: unused_local_variable

import '../core/core.dart';

class Solution {
  // Recursive
  List<double> averageOfLevels(TreeNode? root) {
    if (root == null) return [];

    var lists = <List<int>>[];
    var result = <double>[];

    void bfs(TreeNode? node, int level) {
      if (node == null) return;
      if (lists.length == level) {
        lists.add([]);
      }

      lists[level].add(node.val);

      if (node.left != null) bfs(node.left, level + 1);
      if (node.right != null) bfs(node.right, level + 1);
    }

    bfs(root, 0);

    for (final list in lists) {
      result.add(list.reduce((a, b) => a + b) / list.length);
    }

    return result;
  }

  // Iterative
  List<double> averageOfLevels1(TreeNode? root) {
    if (root == null) return [];

    var result = <double>[];
    var queue = Queue<TreeNode?>();
    queue.add(root);

    while (queue.isNotEmpty) {
      final level = queue.length;
      final subList = <int>[];
      for (var i = 0; i < level; i++) {
        final cur = queue.removeFirst();
        subList.add(cur!.val);

        if (cur.left != null) queue.add(cur.left);
        if (cur.right != null) queue.add(cur.right);
      }

      var levelAvg = subList.reduce((a, b) => a + b) / subList.length;
      result.add(levelAvg);
    }

    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = TreeNode.fromList([3, 9, 20, null, null, 15, 7]);

  // testcase1.printTree();

  var result = solution.averageOfLevels(testcase1);

  print(result);
}
