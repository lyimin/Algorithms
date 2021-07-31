
/*
 26. 树的子结构
 输入两棵二叉树A和B，判断B是不是A的子结构。(约定空树不是任意一个树的子结构)
 
 B是A的子结构， 即 A中有出现和B相同的结构和节点值。
 
 例如:
 给定的树 A:
 
           3
         / \
       4   5
     / \
   1   2
 给定的树 B：
 
       4 
     /
   1
 返回 true，因为 B 与 A 的一个子树拥有相同的结构和节点值。
 */
/*
func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
    if A == nil || B == nil {
        return false 
    }
    if A!.val == B!.val && recur(A?.left, B?.left) && recur(A?.right, B?.right) {
        return true 
    }
    return isSubStructure(A?.left, B) || isSubStructure(A?.right, B)
}

func recur(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
    if b == nil { return true }
    if a == nil { return false }
    if a?.val == b?.val {
        return recur(a?.left, b?.left) && recur(a?.right, b?.right)
    }
    return false
}
*/
