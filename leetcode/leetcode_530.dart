// ignore_for_file: unused_local_variable

import '../core/core.dart';

class Solution {
  // Recursive
  int getMinimumDifference(TreeNode? root) {
    int result = double.maxFinite.toInt();
    int? prev;

    void iot(TreeNode? node) {
      if (node == null) return;
      iot(node.left);
      if (prev != null) {
        result = min(result, node.val - prev!);
      }
      prev = node.val;
      iot(node.right);
    }

    iot(root);

    return result;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = TreeNode.fromList([4, 2, 6, 1, 3]);
  final testcase2 = TreeNode.fromList([543, 384, 652, null, 445, null, 699]);

  // testcase1.printTree();

  var result = solution.getMinimumDifference(testcase2);

  print(result);
}
