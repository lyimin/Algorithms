/**
 11. 旋转数组的最小数字
 把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。输入一个递增排序的数组的一个旋转，输出旋转数组的最小元素。例如，数组 [3,4,5,1,2] 为 [1,2,3,4,5] 的一个旋转，该数组的最小值为1。
   
 示例：
 输入：[3,4,5,1,2]
 输出：1
 
 二分法查询
 */
func minArray(_ numbers: [Int]) -> Int {
    /*
    if numbers.count == 1 {
        return numbers.first!
    }
    for i in 1..<numbers.count {
        if numbers[i] < numbers[i-1] {
            return numbers[i]
        }
    }
    return numbers.last!
    */
    var i = 0
    var j = numbers.count - 1
    while(i < j) {
        let m = (i+j)/2
        if numbers[m] > numbers[j] {
            i = m+1
        }
        else if numbers[m] < numbers[j] {
            j = m
        }
        else {
            j-=1
        }
    }
    return numbers[i]
}

