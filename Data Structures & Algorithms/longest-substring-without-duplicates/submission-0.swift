class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)

        var charSet = Set<Character>()

        var left = 0
        var result = 0

        for right in 0..<chars.count {

            while charSet.contains(chars[right]) {
                charSet.remove(chars[left])
                left += 1
            }

            charSet.insert(chars[right])

            result = max(result, right - left + 1)
        }

        return result
    }
}
