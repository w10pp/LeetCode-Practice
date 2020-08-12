'''
LeetCode Python Practice
863. All Nodes Distance K in Binary Tree
'''


# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def distanceK(self, root: TreeNode, target: TreeNode, K: int) -> List[int]:
        def dfs(root, parent=None):
            if not root:
                return
            root.parent = parent
            dfs(root.left, root)
            dfs(root.right, root)

        dfs(root)

        q = [(target, 0)]
        res = []
        visited = set()
        while q:
            node, level = q.pop(0)
            if not node or node in visited:
                continue
            visited.add(node)

            if level == K:
                res.append(node.val)
            if level > K:
                break

            q.append((node.left, level + 1))
            q.append((node.right, level + 1))
            q.append((node.parent, level + 1))

        return res




