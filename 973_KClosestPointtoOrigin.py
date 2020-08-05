'''
LeetCode Python Practice
973. K Closest Points to Origin

calculate the sum of square>>>store in a dictionary>>>
sort the value>>>pick the k closest points
'''


class Solution:
    def kClosest(self, points: List[List[int]], K: int) -> List[List[int]]:
        dictionary = dict()
        res = []
        i = 0

        for j in points:
            d = j[0]**2 + j[1]**2
            temp = dictionary.get(d, [])
            temp.append(j)
            dictionary[d] = temp
        dist = sorted(dictionary.keys())

        while len(res) < K:
            res.extend(dictionary[dist[i]])
            i += 1

        return res
