class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var rows = Array(repeating: Set<Character>(), count: 9)
        var cols = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)
        
        for row in 0..<9 {
            for col in 0..<9 {
                
                let value = board[row][col]
                
                if value == "." {
                    continue
                }
                
                let box = (row / 3) * 3 + (col / 3)
                
                if rows[row].contains(value) ||
                   cols[col].contains(value) ||
                   boxes[box].contains(value) {
                    return false
                }
                
                rows[row].insert(value)
                cols[col].insert(value)
                boxes[box].insert(value)
            }
        }
        
        return true
    }
}