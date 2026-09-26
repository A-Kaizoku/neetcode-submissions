class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var answer: [Int] = []
        var prefixProduct: [Int] = []
        
        for (index, value) in nums.enumerated() {
            if index == 0 {
                prefixProduct.append(value)
            } else {
                let prefixProductNum: Int = (value * prefixProduct[index - 1])
                prefixProduct.append(prefixProductNum)
            }
        }
        //    reverse for loop
        var suffixProduct: [Int] = Array(repeating: 1, count: nums.count)
        
        for index in stride(from: nums.count - 2, through: 0, by: -1) {
            suffixProduct[index] = suffixProduct[index + 1] * nums[index + 1]
        }
        
        for index in 0..<nums.count {
            if index == 0 {
                answer.append(suffixProduct[index])
            } else {
                answer.append(prefixProduct[index - 1] * suffixProduct[index])
            }
        }
        
        return answer
        
        }
}
