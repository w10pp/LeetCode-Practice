'''
LeetCode Python Practice
819. Most Common Word

remove punctuations>>>split sentence>>>store words that
are not in banned list>>>find the most common one
'''

#import re

class Solution:
    def mostCommonWord(self, paragraph: str, banned: List[str]) -> str:
        remove_chars = "[!?',;.']"
        paragraph = re.sub(remove_chars, ' ', paragraph)

        words = paragraph.split()

        dic = {}
        max_v = 0
        for word in words:
            word = word.lower()
            if word not in banned:
                dic[word] = dic.get(word, 0) + 1
                if dic[word] > max_v:
                    max_v = dic[word]
                    res = word
        return res


