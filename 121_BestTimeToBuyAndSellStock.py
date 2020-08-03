
'''
LeetCode Python Practice
121. Best Time to Buy and Sell Stock
'''


class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        # corner case
        if len(prices )==0:
            return 0

        min_return, max_profit = prices[0], 0

        for i in range(1 ,len(prices)):
            max_profit = max(max_profit, prices[i ] -min_return)
            min_return = min(min_return, prices[i])

        return max_profit



