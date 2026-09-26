class Solution {

    func encode(_ strs: [String]) -> String {
        var string = ""

        for str in strs {
            string.append("#\(str.count):\(str)")
        }

        return string
    }

    func decode(_ str: String) -> [String] {
        var result: [String] = []
        let chars = Array(str)
        var i = 0

        while i < chars.count {

            guard chars[i] == "#" else {
                break
            }

            i += 1

            var numCount = ""

            while i < chars.count && chars[i].isNumber {
                numCount.append(chars[i])
                i += 1
            }

            guard let count = Int(numCount),
                  i < chars.count,
                  chars[i] == ":" else {
                break
            }

            i += 1

            let endIndex = i + count

            guard endIndex <= chars.count else {
                break
            }

            result.append(String(chars[i..<endIndex]))

            i = endIndex
        }

        return result
    }
}