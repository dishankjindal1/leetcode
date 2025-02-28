class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  factory ListNode.fromList(List<int> list) {
    if (list.isEmpty) return ListNode();

    ListNode root = ListNode(list.first);
    ListNode head = root;

    for (final val in list.sublist(1)) {
      // root.next = ListNode(val);
      // root = root.next!;
    }

    return head;
  }

  @override
  String toString() {
    var result = '';
    var copy = next;
    while (next != null) {
      result += '$val';
      copy = copy?.next;
    }
    return result;
  }
}
