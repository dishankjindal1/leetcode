import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  factory TreeNode.fromList(List<int?> list) {
    if (list.isEmpty) return TreeNode();

    final Queue<int?> queue = Queue.from(list);
    final Queue<TreeNode?> treeQueue = Queue();

    final root = TreeNode(queue.removeFirst()!);
    treeQueue.add(root);

    while (queue.isNotEmpty) {
      final cur = treeQueue.removeFirst();
      final l = queue.removeFirst(),
          r = queue.isNotEmpty ? queue.removeFirst() : null;

      if (l != null) {
        cur?.left = TreeNode(l);
        treeQueue.add(cur?.left);
      }

      if (r != null) {
        cur?.right = TreeNode(r);
        treeQueue.add(cur?.right);
      }
    }

    return root;
  }

  void printTree() {
    Queue<TreeNode?> queue = Queue();
    queue.add(this);

    while (queue.isNotEmpty) {
      final curr = queue.removeFirst();
      if (curr == null) {
        print('null');
        continue;
      }
      print(curr.val);

      if (curr.left != null || curr.right != null) {
        queue.add(curr.left);
        queue.add(curr.right);
      }
    }
  }
}
