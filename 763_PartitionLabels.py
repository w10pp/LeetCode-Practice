'''
LeetCode Python Practice
763. Partition Labels

'''


class Solution:
    def partitionLabels(self, S: str) -> List[int]:
        d = {}

        for i, val in enumerate(S):
            d[val] = i

        curr_max_i, prev_value, result = 0, 0, []
        for i, val in enumerate(S):
            curr_max_i = max(curr_max_i, d[val])

            if i == curr_max_i:
                result.append(i + 1 - prev_value)
                prev_value = i + 1
        return result

