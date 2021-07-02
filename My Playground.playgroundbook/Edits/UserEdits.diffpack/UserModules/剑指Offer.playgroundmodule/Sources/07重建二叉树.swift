
/**
07. 重建二叉树
 
 示例：
 前序遍历 preorder = [3,9,20,15,7]
 中序遍历 inorder = [9,3,15,20,7]
 
 返回如下的二叉树：
 3 
 / \
 9  20
 / \
 15 7
 
 思路：
 1.先序遍历的第一个节点就是根。
 2.中序遍历中通过 根 区分哪些是左子树的，哪些是右子树的
 3.
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

public class Test07 {
    
    /// 保存先序遍历
    var preorder: [Int] = []
    /// 标记中序遍历 key: 在inorder的值， value: 在inorder的index
    var map: [Int: Int] = [:]
    
    public func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        self.preorder = preorder
        inorder.enumerated().forEach { index, value in 
            map[value] = index
        }
        return recursive(rootIndex: 0, leftIndex: 0, rightIndex: inorder.count-1)
    }
    
    /**
     rootIndex: 先序遍历索引
     leftIndex: 中序遍历的索引
     rightIndex: 中序遍历的索引
     */
    public func recursive(rootIndex: Int, leftIndex: Int, rightIndex: Int) -> TreeNode? {
        
        if leftIndex > rightIndex {
            return nil 
        }
        
        // 创建根节点
        let rootValue = preorder[rootIndex]
        let root = TreeNode(rootValue)
        
        /// 在中序遍历的index
        let idx = map[rootValue] ?? 0
        root.left = recursive(rootIndex: rootIndex+1, leftIndex: leftIndex, rightIndex: idx-1)
        root.right = recursive(rootIndex: rootIndex+(idx-leftIndex)+1, leftIndex: idx+1, rightIndex: rightIndex)
        return root
    }
}


