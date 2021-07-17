/*
 21. 调整数组顺序使奇数位于偶数前面
 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有奇数位于数组的前半部分，所有偶数位于数组的后半部分。
 
 输入：nums = [1,2,3,4]
 输出：[1,3,2,4] 
 注：[3,1,2,4] 也是正确的答案之一。
 */
func exchange(_ nums: [Int]) -> [Int] {
    var temp = nums
    temp.sort { (first, second) -> Bool in
        return first%2>second%2
    }
    return temp
}
