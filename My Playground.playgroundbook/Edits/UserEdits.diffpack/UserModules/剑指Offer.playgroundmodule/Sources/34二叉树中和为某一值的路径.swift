
/*
 34. 二叉树中和为某一值的路径
 输入一棵二叉树和一个整数，打印出二叉树中节点值的和为输入整数的所有路径。从树的根节点开始往下一直到叶节点所经过的节点形成一条路径。
 
 示例:
 给定如下二叉树，以及目标和 target = 22，
 
 5
 / \
 4   8
 /   / \
 11  13  4
 /  \    / \
 7    2  5   1
 返回:
 
 [
 [5,4,11,2],
 [5,8,4,5]
 ]
 */

class Solution {
    var res: [[Int]] = []
    var temp: [Int] = []
    
    func pathSum(_ root: TreeNode?, _ target: Int) -> [[Int]] {
        dfs(root, sum: target)
        return res
    }
    
    func dfs(_ root: TreeNode?, sum: Int) {
        guard let root = root else { return }
        let del = sum - root.val 
        temp.append(root.val)
        if del == 0 && root.left == nil && root.right == nil {
            res.append(temp)
        }
        dfs(root.left, sum: del)
        dfs(root.right, sum: del)
        temp.removeLast()
    }
}


