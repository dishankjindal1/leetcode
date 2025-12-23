// ignore_for_file: unused_import

import 'dart:collection';
import 'dart:math';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null || list2 == null) {
      return list1 ?? list2;
    }

    var head = ListNode(0);
    var tail = head;

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        tail.next = list1;
        list1 = list1.next;
      } else {
        tail.next = list2;
        list2 = list2.next;
      }

      tail = tail.next!;
    }

    tail.next = list1 ?? list2;
    return head.next;
  }
}

void main() {
  final solution = Solution();

  final arr1 = ListNode(1, ListNode(2, ListNode(4)));
  final arr2 = ListNode(1, ListNode(3, ListNode(4)));

  var result = solution.mergeTwoLists(arr1, arr2);

  while (result != null) {
    print(result.val);
    result = result.next;
  }
}
