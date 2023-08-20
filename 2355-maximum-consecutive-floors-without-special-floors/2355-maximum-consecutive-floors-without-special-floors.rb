# @param {Integer} bottom
# @param {Integer} top
# @param {Integer[]} special
# @return {Integer}
def max_consecutive(bottom, top, special)
    if special.length == 0
        return top - bottom + 1
    end
    special.sort!
    
    maximum = special[0] - bottom
    for i in 0..special.length-2 do
        gap = special[i+1] - special[i] - 1
        comp = [maximum, gap]
        maximum = comp.max
    end
    gap = top - special[special.length-1]
    comp = [maximum, gap]
    maximum = comp.max
    return maximum
end