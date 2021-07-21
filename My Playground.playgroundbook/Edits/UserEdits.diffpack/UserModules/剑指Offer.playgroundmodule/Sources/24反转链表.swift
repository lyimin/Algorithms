
/*
 24. 反转链表
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。
 
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 */

func reverseList(_ head: ListNode?) -> ListNode? {
    recur(head, pre: nil)
}

private func recur(_ cur: ListNode?, pre: ListNode?) -> ListNode? {
    if cur == nil {
        return pre 
    }
    let res = recur(cur?.next, pre: cur)
    cur?.next = pre 
    return res
}
