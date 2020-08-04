'''
LeetCode Python Practice
56.Merge Intervals
'''


class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        # corner case
        if len(intervals) <= 1:
            return intervals

        # sort interval
        intervals.sort(key=lambda x: x[0])
        res = []

        for i in intervals:
            # res is empty or no overlap
            if not res or res[-1][-1] < i[0]:
                res.append(i)

            else:
                res[-1][-1] = max(res[-1][-1], i[-1])

        return res