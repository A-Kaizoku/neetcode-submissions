class Solution {
      func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
//        let sortedNum = numbers.sorted {
//            $0 < $1
//        }
        for (i,num) in numbers.enumerated() {
            let targetCompliment = target - num
            if let compIndex = dict[targetCompliment] {
                return [compIndex + 1, i + 1].sorted(by: <)
            }
            
            dict[num] = i
        }
        return []
    }
}
