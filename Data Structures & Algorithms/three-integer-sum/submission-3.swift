class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count >= 3 else {
        return []
    }
    
    let sortedNums = nums.sorted(by: <)
    
    var result: [[Int]] = []
    
    for i in 0..<sortedNums.count {
        if i > 0 && sortedNums[i] == sortedNums[i-1] {
            continue
        }
        // 2 sum in a sorted array
        var left = i + 1
        var right = sortedNums.count - 1
        
        while left < right {
            let sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
            if sum == 0 {
                result.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                left += 1
                right -= 1
                while left < right, sortedNums[left] == sortedNums[left - 1] {
                    left += 1
                }
                while left < right, sortedNums[right] == sortedNums[right + 1] {
                    right -= 1
                }
            } else if sum > 0 {
                right -= 1
            } else {
                left += 1
            }
        }
    }
    
    return result
}
}
