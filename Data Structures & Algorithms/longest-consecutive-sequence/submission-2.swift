class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0 
        }
    var right = 1
    var lcount = 1
    var mainCount = 1
    let sortedNum = nums.sorted()
    while right < sortedNum.count {
        if (sortedNum[right] == sortedNum[right - 1]) {
            right += 1
        } else if (sortedNum[right] - sortedNum[right - 1]) == 1 {
            right += 1
            lcount += 1
        } else {
            mainCount = max(mainCount, lcount)
            right += 1
            lcount = 1
        }
    }
    mainCount = max(mainCount, lcount)
    
    return mainCount
}
}