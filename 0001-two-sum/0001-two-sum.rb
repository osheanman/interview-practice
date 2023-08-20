# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    diff = Hash.new
    for i in 0..nums.length-1 do
        if !diff.has_key?(target - nums[i])
            diff[nums[i]] = i
        else
            return [diff[target - nums[i]], i]  
        end    
    end
end