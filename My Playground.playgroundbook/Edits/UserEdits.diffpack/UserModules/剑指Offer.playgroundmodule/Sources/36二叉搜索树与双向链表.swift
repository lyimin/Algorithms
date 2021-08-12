
/*
 36. 二叉搜索树与双向链表
 
 输入一棵二叉搜索树，将该二叉搜索树转换成一个排序的循环双向链表。要求不能创建任何新的节点，只能调整树中节点指针的指向。
 返回如下的二叉树：
 3 
 / \
 9  20
 / \
 15 7
 
 15 <=> 9 <=> 7 <=> 3 <=> 20 <=> 15
 
 // 中序遍历代码 
 dfs(root.left)
 root.val 
 dfs(root.right)
 */

class Solution {
    private var pre: TreeNode?
    private var head: TreeNode? 
    
    func treeToDoublyList(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return head }
        dfs(root)
        head?.left = pre
        pre?.right = head 
        return head 
    }
    
    func dfs(_ root: TreeNode?) {
        if root == nil { return }
        dfs(root?.left)
        if pre != nil {
            pre?.right = root
        }
        else {
            head = root 
        }
        root?.left = pre
        pre = root
        dfs(root?.right)
    }
}


