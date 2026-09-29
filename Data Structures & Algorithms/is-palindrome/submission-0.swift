class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = s.lowercased().filter { $0.isLetter || $0.isNumber }
    let char: [Character] = Array(str)
    let midCount: Int = char.count/2
    
    for i in 0..<midCount {
        if char[i] != char[char.count - i - 1] {
            return false
        }
    }
    
    return true
    }
}