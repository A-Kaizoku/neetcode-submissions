class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0
        
        for price in prices {
            minPrice = min(minPrice, price)
            
            let profit = price - minPrice
            maxProfit = max(maxProfit, profit)
        }
        
        return maxProfit
    }
}