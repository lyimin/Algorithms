
/*
 32 - I. 从上到下打印二叉树
 从上到下打印出二叉树的每个节点，同一层的节点按照从左到右的顺序打印。
 
 例如:
 给定二叉树: [3,9,20,null,null,15,7],
 
 3
 / \
 9  20
 /  \
 15   7
 返回：
 [3,9,20,15,7]
   
 */

private class Solution {
    
    private var res: [[Int]] = []
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return res }
        dfs(depth: 0, root: root)
        return res
    }
    
    private func dfs(depth: Int, root: TreeNode?) {
        if root == nil { return }
        if depth == res.count {
            res.append([])
        }
        res[depth].append(root!.val)
        dfs(depth: depth+1, root: root?.left)
        dfs(depth: depth+1, root: root?.right)
    }
} 

