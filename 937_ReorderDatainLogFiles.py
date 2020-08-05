'''
LeetCode Python Practice
937. Reorder Data in Log Files
'''


class Solution:
    def reorderLogFiles(self, logs: List[str]) -> List[str]:
        # create list to store elements
        digit = []
        letter = []

        for log in logs:
            # check the second element in the log
            if log.split()[1].isalpha():
                letter.append(log.split())
            else:
                digit.append(log)
        # print(letter)
        letter.sort(key=lambda x :x[0])
        # print(letter)
        letter.sort(key=lambda x :x[1:])
        # print(letter)

        for i in range(len(letter)):
            letter[i] = (" ".join(letter[i]))

        letter.extend(digit)
        return letter


