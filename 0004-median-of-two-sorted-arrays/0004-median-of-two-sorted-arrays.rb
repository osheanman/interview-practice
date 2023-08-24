# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    # a. merge arrays and grab middle index
    mnlen = nums1.length + nums2.length
    mid = mnlen/2
    mn = merge(nums1, nums2)
    if mnlen % 2 == 1
        return mn[mnlen/2]
    else
        return (mn[mid] + mn[mid - 1]) / 2.0
    end
    # b. some search algo?
end

def merge(a, b)
    out = []
    if a.length < 1
        return out + b
    elsif b.length < 1
        return out + a
    elsif a[0] < b[0]
        out << a.shift
    else
        out << b.shift
    end
    
    if a.length < 1
        return out + b
    elsif b.length < 1
        return out + a
    else
        return out + merge(a, b)
    end
end