class Solution {
       func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var charCount: [Character: Int] = [:]
        for value in s.indices {
            let char: Character = s[value]
            charCount[char, default: 0] += 1
        }
        
        for i in t.indices {
            let char: Character = t[i]
            charCount[char, default: 0] -= 1
        }
        
        if charCount.values.contains(where: { $0 != 0 }) {
            return false
        } else {
            return true
        }
        
    }
}
