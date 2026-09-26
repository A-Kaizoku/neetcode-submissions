class Solution {
    // func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    //     var dict: [String: [Int]] = [:]
    //     var finalArray: [[String]] = []
    //     for i in 0..<strs.count {
    //         let sortedStr = sortStringCharacters(strs[i])
    //         // 1. sort the string characters and add index to a dictionary
    //         if var existingIndexes: [Int] = dict[sortedStr] {
    //             existingIndexes.append(i)
    //             dict[sortedStr] = existingIndexes
    //         } else {
    //             let indexArray: [Int] = [i]
    //             dict[sortedStr, default: []] = indexArray
    //         }
            
            
    //     }
        
    //     // print the dictionary inside finalArray
    //     for key in dict.keys {
    //         var indexArray: [String] = []
    //         dict[key]?.forEach { index in
    //             indexArray.append(strs[index])
    //         }
    //         finalArray.append(indexArray)
    //     }
    //     return finalArray
    // }

    // func sortStringCharacters(_ strArray: String) -> String {
    //     var sortedChars: [Character] = Array(strArray)
    //     for j in 0..<sortedChars.count {
    //         for k in 0..<sortedChars.count - 1 - j {
    //             if sortedChars[k] > sortedChars[k+1] {
    //                 sortedChars.swapAt(k, k+1)
    //             }
    //         }
    //     }
        
    //     return String(sortedChars)
    // }

    func groupAnagrams(_ strArray: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]
        
        for str in strArray {
            let key = String(str.sorted())
            dict[key, default: []].append(str)
        }
        
        return Array(dict.values)
    }
}
