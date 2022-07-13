#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |n, i|
        if hash[target - n]
            return hash[target - n], i
        end
        hash[n] = i
    end
end
# @lc code=end
# @lc EASY