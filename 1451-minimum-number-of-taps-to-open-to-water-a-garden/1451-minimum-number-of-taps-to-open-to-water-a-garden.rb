# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
    spaces = Array.new(n+1, Float::INFINITY)
    spaces[0] = 0
    # create array where spaces between nodes correspond to minimum number of taps needed to cover them
    for i in 0..n do
        puts "i: #{i}"
        low = [i - ranges[i], 0].max
        high = [i + ranges[i], n].min
        for j in (low + 1)..(high) do
            spaces[j] = [spaces[j], spaces[low] + 1].min
        end
    end

    if spaces[-1] == Float::INFINITY then return -1 else return spaces[-1] end
   
end