/*
 17. 打印从1到最大的n位数
 输入数字 n，按顺序打印出从 1 到最大的 n 位十进制数。比如输入 3，则打印出 1、2、3 一直到最大的 3 位数 999。
 
 输入: n = 1
 输出: [1,2,3,4,5,6,7,8,9]
 */

func printNumbers(_ n: Int) -> [Int] {
    var array: [Int] = []
    let total = calculate(n, 10) - 1
    return (0..<total).map { $0+1 }
}

func calculate(_ n: Int, _ sum: Int) -> Int {
    if n == 1 {
        return sum
    }
    let res = sum * 10
    return calculate(n-1, res)
}
