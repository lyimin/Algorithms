
/*
 25. 合并两个排序的链表
 输入两个递增排序的链表，合并这两个链表并使新链表中的节点仍然是递增排序的。
 
 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4
 */

public func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let l1 = l1, let l2 = l2 else  { return nil }
    var curr = l1.val > l2.val ? l2 : l1 
    return apply(curr, l1: l1, l2: l2)
}

public func apply(_ curr: ListNode, l1: ListNode?, l2: ListNode?) -> ListNode {
    if l1 == nil && l2 == nil { return curr }
    let l1Val = l1?.val ?? 0
    let l2Val = l2?.val ?? 0
    if l1Val > l2Val {
        curr.next = l2
        return apply(curr, l1: l1, l2: l2?.next)
    }
    else {
        curr.next = l1  
        return apply(curr, l1: l1?.next, l2: l2)
    }
    return curr
}
