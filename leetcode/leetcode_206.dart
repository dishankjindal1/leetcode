// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  ListNode? reverseList(ListNode? head) {
    return head;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = (
    [5, 4, 3, 2, 1],
    [1, 2, 3, 4, 5],
  );

  final testcase = testcase1;

  final result = solution.reverseList(ListNode.fromList(testcase.$2));

  print("-> $result <- result");
  print("-> ${testcase.$1.join()} <- expected");
}
