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
