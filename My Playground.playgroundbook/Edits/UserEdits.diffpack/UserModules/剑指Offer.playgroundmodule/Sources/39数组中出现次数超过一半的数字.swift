
/*
 39. 数组中出现次数超过一半的数字
 数组中有一个数字出现的次数超过数组长度的一半，请找出这个数字。
 你可以假设数组是非空的，并且给定的数组总是存在多数元素。
 示例 1:
 
 输入: [1, 2, 3, 2, 2, 2, 5, 4, 2]
 输出: 2
 
 */

func majorityElement(_ nums: [Int]) -> Int {
    var x = 0
    var votes = 0 
    for num in nums {
        if votes == 0 {
            x = num 
        }
        votes += num == x ? 1 : -1
    }
    return x
}

func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
    let newArray = arr.sorted(by: { $0 < $1})
    let set = Set(newArray)
    return Array(Array(set)[..<k])
}
