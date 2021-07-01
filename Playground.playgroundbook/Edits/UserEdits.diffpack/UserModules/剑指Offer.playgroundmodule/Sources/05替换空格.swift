/**
 05. 替换空格
 请实现一个函数，把字符串 s 中的每个空格替换成"%20"。
 
 
 
 示例：
 输入：s = "We are happy."
 输出："We%20are%20happy."
 */
public func replaceSpace(_ s: String) -> String {
    let res = s.replacingOccurrences(of: " ", with: "$20")
    return res
}
