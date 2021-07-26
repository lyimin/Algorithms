/*
 27. 二叉树的镜像
 请完成一个函数，输入一个二叉树，该函数输出它的镜像。
 例如输入：
 
           4
       /   \
     2     7
   / \   / \
 1   3 6   9
 镜像输出：
 
           4
       /   \
     7     2
   / \   / \
 9   6 3   1
 */
func mirrorTree(_ root: TreeNode?) -> TreeNode? {
    mirror(root)
    return root
}

func mirror(_ tree: TreeNode?) {
    if tree == nil { return }
    if tree?.left != nil { 
        mirror(tree?.left)
    }
    if tree?.right != nil {
        mirror(tree?.right)
    }
    let temp = tree?.right 
    tree?.right = tree?.left 
    tree?.left = temp 
}
