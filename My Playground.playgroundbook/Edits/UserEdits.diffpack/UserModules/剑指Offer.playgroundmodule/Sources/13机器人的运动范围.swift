/*
 13. 机器人的运动范围
 
 地上有一个m行n列的方格，从坐标 [0,0] 到坐标 [m-1,n-1] 。一个机器人从坐标 [0, 0] 的格子开始移动，它每次可以向左、右、上、下移动一格（不能移动到方格外），也不能进入行坐标和列坐标的数位之和大于k的格子。例如，当k为18时，机器人能够进入方格 [35, 37] ，因为3+5+3+7=18。但它不能进入方格 [35, 38]，因为3+5+3+8=19。请问该机器人能够到达多少个格子？
 
 深度优先遍历 DFS 递归
 */


public func movingCount(m: Int, n: Int, k: Int) -> Int {
    visited = Array(repeating: Array(repeating: false, count: n), count: m)
    return dfs(m: m, n: n, k: k, i: 0, j: 0)
}


// 1.计算位数之和
func bitSum(_ number: Int) -> Int {
    var sum = 0 
    var n = number
    while(n > 0) {
        sum += n%10
        n /= 10
    }
    return sum
}

var visited: [[Bool]] = []

/// 2.dfs
/// visited：保存是否已经检索过  m: 行 n: 列  k: 位数和不能超过的值  i:当前检索的行  j:当前检索的列
func dfs(m: Int, n: Int, k: Int, i: Int, j: Int) -> Int {
    if i >= m || j >= n || visited[i][j] || bitSum(i) + bitSum(j) > k {
        return 0
    }
    visited[i][j] = true 
    return 1 + dfs(m: m, n: n, k: k, i: i+1, j: j) + dfs(m: m, n: n, k: k, i: i, j: j+1)
}
