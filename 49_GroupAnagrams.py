'''
LeetCode Python Practice
49.Group Anagrams
'''


class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        dictionary = {}
        for word in sorted(strs):
            key = tuple(sorted(word))
            dictionary[key] = dictionary.get(key, []) + [word]

        return dictionary.values()




