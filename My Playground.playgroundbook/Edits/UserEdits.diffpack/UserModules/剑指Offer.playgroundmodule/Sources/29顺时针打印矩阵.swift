
/*
 29. 顺时针打印矩阵
 输入一个矩阵，按照从外向里以顺时针的顺序依次打印出每一个数字。
 
 示例 1：
 
 输入：matrix = [[1,2,3],[4,5,6],[7,8,9]]
 输出：[1,2,3,6,9,8,7,4,5]
 示例 2：
 
 输入：matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
 输出：[1,2,3,4,8,12,11,10,9,5,6,7]
 
 */
func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var res: [Int] = []
    if matrix.count == 0 { return res}
    var left = 0, right = matrix[0].count - 1, top = 0, bottom = matrix.count - 1
    let length = matrix.count * right
    while true {
        
        // left -> Right
        for i in left...right {
            res.append(matrix[top][i])
        }
        top += 1
        if top > bottom { break }
        
        // top -> Bottom
        for i in top...bottom {
            res.append(matrix[i][right])
        }
        right -= 1
        if right < left { break }
        
        // right -> left 
        for i in (left...right).reversed() {
            res.append(matrix[bottom][i])
        }
        bottom -= 1
        if bottom < top { break }
        
        // bottom -> top
        for i in (top...bottom).reversed() {
            res.append(matrix[i][left])
        }
        left += 1
        if left > right { break }
    }
    return res
}
