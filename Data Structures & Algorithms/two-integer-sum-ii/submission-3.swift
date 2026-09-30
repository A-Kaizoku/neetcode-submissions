class Solution {
      func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        // var dict: [Int: Int] = [:]
        // for (i,num) in numbers.enumerated() {
        //     let targetCompliment = target - num
        //     if let compIndex = dict[targetCompliment] {
        //         return [compIndex + 1, i + 1].sorted(by: <) // (1-indexed)
        //     }
            
        //     dict[num] = i
        // }
        // return []

        // using two pointers: 
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            } else if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }

    return []
    }
}
