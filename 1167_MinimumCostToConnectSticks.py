'''
LeetCode Python Practice
1167. Minimum Cost to Connect Sticks
'''
import heapq
class Solution:
    def connectSticks(self, sticks: List[int]) -> int:
        res = 0
        heapq.heapify(sticks)
        while len(sticks) > 1:
            c = heapq.heappop(sticks) + heapq.heappop(sticks)
            res += c
            heapq.heappush(sticks, c)
        return res
    