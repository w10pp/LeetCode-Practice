'''
LeetCode Python Practice
733.Flood Fill
'''



class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, newColor: int) -> List[List[int]]:
        # set the old color
        old_color = image[sr][sc]

        if newColor == old_color:
            return image

        # recursion
        recurse(image, sr, sc, newColor, old_color)
        return image


def recurse(image, sr, sc, newColor, old_color):

    if image[sr][sc] != old_color:
        return

    image[sr][sc] = newColor

    # check upper left right lower
    if sr != 0:
        recurse(image, sr-1, sc, newColor, old_color)

    if sc != 0:
        recurse(image, sr, sc-1, newColor, old_color)

    if sc != len(image[0])-1:
        recurse(image, sr, sc+1, newColor, old_color)

    if sr != len(image)-1:
        recurse(image, sr+1, sc, newColor, old_color)
