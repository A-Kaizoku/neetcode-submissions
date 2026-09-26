class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int : Int] = [:]
    for i in 0..<nums.count {
        dict[nums[i], default: 0] += 1
    }
//    print(dict)
    let sortedDict = dict.sorted { $0.value > $1.value }
//    print(sortedDict)
    
    return sortedDict.prefix(k).map { $0.key }
}
}
