#
# @lc app=leetcode id=102 lang=ruby
#
# [102] Binary Tree Level Order Traversal
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    return [] if root.nil?  
    bfs = []
    q = [root]
    while !q.empty?
        level = []
        for i in 0..q.size-1
            node = q.shift
            level << node.val
            q << node.left if !node.left.nil?
            q << node.right if !node.right.nil?
        end
        bfs << level
    end
    return bfs
end
# @lc code=end
# @lc MEDIUM