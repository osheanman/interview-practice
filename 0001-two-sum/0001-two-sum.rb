# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    for i in 0..nums.length-1 do
        for j in i+1..nums.length-1 do
            if nums[i] + nums[j] == target
                return [i, j]
            end
        end    
    end
end