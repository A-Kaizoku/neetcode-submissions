class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        
        let numSet = Set(nums)
        var longest = 0
        
        for num in numSet {
            
            // num is the beginning of a sequence
            if !numSet.contains(num - 1) {
                
                var currentNum = num
                var currentLength = 1
                
                // Keep looking for the next number
                while numSet.contains(currentNum + 1) {
                    currentNum += 1
                    currentLength += 1
                }
                
                longest = max(longest, currentLength)
            }
        }
        
        return longest
    }
}