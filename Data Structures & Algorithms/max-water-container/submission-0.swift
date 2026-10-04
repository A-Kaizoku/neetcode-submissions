class Solution {
    func maxArea(_ heights: [Int]) -> Int {
    var maxArea: Int = 0
    var left = 0
    var right = heights.count - 1
    
    while left < right {
        let area = min(heights[left], heights[right] ) * (right - left)
        if area > maxArea {
            maxArea = area
        }
        if heights[right] > heights[left] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return maxArea
}
}
