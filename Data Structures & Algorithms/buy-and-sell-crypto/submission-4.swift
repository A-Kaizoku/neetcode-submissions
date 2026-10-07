class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0
        var left = 0
        var right = prices.count - 1
        for i in 0..<prices.count {
            let profit = prices[i] - minPrice
            if prices[i] < minPrice {
                minPrice = prices[i]
            }

            if profit > maxProfit {
                maxProfit = profit
            }
        }

        return maxProfit
    }
}
