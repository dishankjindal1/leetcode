// ignore_for_file: unused_import

import '../core/core.dart';

class Solution {
  bool hasCycle(ListNode? root) {
    var fast = root?.next?.next;
    var slow = root;

    while (fast != slow) {
      if (slow == null || fast == null) return false;

      fast = fast.next?.next;
      slow = slow.next;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  final node5 = ListNode(5);
  final node4 = ListNode(4, node5);
  final node3 = ListNode(3, node4);
  final node2 = ListNode(2, node3);
  final root = ListNode(
    0,
    ListNode(
      1,
      node2,
    ),
  );
  node5.next = node2;

  var result = solution.hasCycle(root);

  print(result);
}
