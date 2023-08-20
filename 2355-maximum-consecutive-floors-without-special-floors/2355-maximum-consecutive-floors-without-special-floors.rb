# @param {Integer} bottom
# @param {Integer} top
# @param {Integer[]} special
# @return {Integer}
def max_consecutive(bottom, top, special)
    if special.length == 0
        return top - bottom + 1
    end
    arr = special.sort
    
    maximum = arr[0] - bottom
    for i in 0..arr.length-2 do
        gap = arr[i+1] - arr[i] - 1
        comp = [maximum, gap]
        maximum = comp.max
    end
    gap = top - arr[arr.length-1]
    comp = [maximum, gap]
    maximum = comp.max
    return maximum
end