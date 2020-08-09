'''
LeetCode Python Practice
694. Number of Distinct Islands
'''


class Solution:
    def numDistinctIslands(self, grid: List[List[int]]) -> int:
        if len(grid) == 0:
            return 0
        if len(grid[0]) == 0:
            return 0

        res = set()
        for i in range(len(grid)):
            for j in range(len(grid[0])):
                if grid[i][j] == 1:
                    path = []
                    self.get_path(grid, i, j, len(grid), len(grid[0]), path)
                    res.add("".join(path))

        return len(res)

    def get_path(self, grid, i, j, row, col, path):
        if i < 0 or j < 0 or i == row or j == col or grid[i][j] == 0:
            return;
        grid[i][j] = 0
        path.append("1")

        path.append("Top")
        self.get_path(grid, i + 1, j, row, col, path)

        path.append("Bottom")
        self.get_path(grid, i - 1, j, row, col, path)

        path.append("Left")
        self.get_path(grid, i, j + 1, row, col, path)

        path.append("Right")
        self.get_path(grid, i, j - 1, row, col, path)





