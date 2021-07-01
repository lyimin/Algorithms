/**
 04. 二维数组中的查找
 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个高效的函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数
 
 示例：
 [
 [1,   4,  7, 11, 15],
 [2,   5,  8, 12, 19],
 [3,   6,  9, 16, 22],
 [10, 13, 14, 17, 24],
 [18, 21, 23, 26, 30]
 ]
 
 给定 target = 5，返回 true。
 给定 target = 20，返回 false。
 
 思路：
 从左下角 18 开始遍历
 我们将矩阵逆时针旋转 45° ，并将其转化为图形式，发现其类似于 二叉搜索树
 */

public func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
    var row = matrix.count - 1 
    var col = 0 
    while(row >= 0 && col < matrix.count) {
        let res = matrix[row][col]
        if res < target {
            col+=1
        }
        else if res > target {
            row-=1
        }
        else {
            return true 
        }
    }
    return false
}
