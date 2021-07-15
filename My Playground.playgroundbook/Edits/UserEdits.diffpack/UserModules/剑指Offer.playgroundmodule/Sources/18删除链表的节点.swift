
/*
 18. 删除链表的节点
 
 给定单向链表的头指针和一个要删除的节点的值，定义一个函数删除该节点。
 返回删除后的链表的头节点。
 
 输入: head = [4,5,1,9], val = 5
 输出: [4,1,9]
 解释: 给定你链表中值为 5 的第二个节点，那么在调用了你的函数之后，该链表应变为 4 -> 1 -> 9.
 */

func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
    if head?.val == val || head == nil {
        return head?.next
    }
    
    var currNode = head?.next
    
    while currNode != nil, currNode?.val != val {
        currNode = currNode?.next
    }
    
    currNode?.next = currNode?.next?.next
    return head
}
