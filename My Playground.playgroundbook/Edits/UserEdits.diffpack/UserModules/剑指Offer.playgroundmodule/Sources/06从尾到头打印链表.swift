
/**
 06. 从尾到头打印链表
 输入一个链表的头节点，从尾到头反过来返回每个节点的值（用数组返回）。
 
 示例：
 输入：head = [1,3,2]
 输出：[2,3,1]
 
 思路：1.while循环遍历， 2.递归
 */

public class ListNode {
    public var val: Int!
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public func reversePrint(_ head: ListNode?) -> [Int] {
    
    /// 1.while遍历
    /*
    var currNode: ListNode? = head
    var values: [Int] = []
    while(currNode != nil) {
        values.insert(currNode!.val, at: 0)
        currNode = currNode?.next
    }
    return values
    */
    
    /// 2.递归
    var res: [Int] = []
    func getValue(_ head: ListNode) {
        res.insert(head.val, at: 0)
        if let next = head.next {
            getValue(next)
        }
    }
    return res
}
