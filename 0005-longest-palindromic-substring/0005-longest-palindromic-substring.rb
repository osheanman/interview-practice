# @param {String} s
# @return {String}
def longest_palindrome(s)
    m = (s.length * 2) - 2
    longest = ""
    for i in 0..m do
        temp = both_step(s, i)
        if temp.length > longest.length
            longest = temp
        end
    end
    return longest
end

def both_step(s, i)
    out = ""
    if i % 2 == 0
        # on a letter
        out = out + s[i/2]
        left = i/2 - 1
        right = i/2 + 1
    else 
        # off a letter
        left = (i-1)/2
        right = (i+1)/2
    end
    while left >= 0 && right < s.length do
        if s[left] == s[right]
            out = s[left] + out + s[right]
            left -= 1
            right += 1
        else
            return out
        end
    end
    return out
end