/**
 10
 - 斐波那契数列
 - 青蛙跳台阶问题（动态规划，清晰图解）
 写一个函数，输入 n ，求斐波那契（Fibonacci）数列的第 n 项（即 F(N)）。斐波那契数列的定义如下
 
 示例：
 输入：n = 2
 输出：1
 
 输入：n = 5
 输出：5
 
 f(n) = f(n-1)+f(n-2)
 */
public func fib(_ n: Int) -> Int {
    if n < 2 {
        return n
    }
    var a = 0
    var b = 1
    var sum = a+b
    for i in 2..<n {
        a = b 
        b = sum 
        sum = (a+b)%1000000007
    }
    return sum
}
