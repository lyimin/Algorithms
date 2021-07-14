/*
 16. 数值的整数次方
 实现 pow(x, n) ，即计算 x 的 n 次幂函数（即，xn）。不得使用库函数，同时不需要考虑大数问题。
 
 输入：x = 2.00000, n = 10
 输出：1024.00000
 
 输入：x = 2.00000, n = -2
 输出：0.25000
 解释：2-2 = 1/22 = 1/4 = 0.25
 */
func myPow(_ x: Double, _ n: Int) -> Double {
    if n == 0 {
        return 1 
    }
    if n < 0 {
        return 1/calculate(x, -n, x)
    }
    else {
        return calculate(x, n, x)
    }
}

func calculate(_ x: Double, _ n: Int, _ sum: Double) -> Double {
    if n == 1 {
        return sum
    }
    let res = sum * x 
    return calculate(x, n-1, res)
}
