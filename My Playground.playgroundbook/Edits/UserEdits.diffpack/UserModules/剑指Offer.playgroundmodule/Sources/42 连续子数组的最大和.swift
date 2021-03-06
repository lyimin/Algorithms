/*
 42. 连续子数组的最大和
 输入一个整型数组，数组中的一个或连续多个整数组成一个子数组。求所有子数组的和的最大值。
 要求时间复杂度为O(n)。
 
 示例1:
 
 输入: nums = [-2,1,-3,4,-1,2,1,-5,4]
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
 */

func maxSubArray(_ nums: [Int]) -> Int {
    var max = nums[0]
    var former = 0 
    var cur = max 
    nums.forEach {
        cur = $0
        if former > 0 {
            cur += former
        }
        if cur > max {
            max = cur 
        }
        former = cur 
    }
    return max
}
