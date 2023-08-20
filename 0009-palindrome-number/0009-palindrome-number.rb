# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x < 0
        return false
    end

    arr = Array.new

    while x >= 0 do
        digit = x % 10
        puts digit
        arr << digit
        x = x / 10
        if x == 0
            break
        end
    end
    j = arr.length - 1
    for i in 0..j/2 do
        puts i 
        if arr[i] != arr[j-i]
            return false
        end
    end
    return true
end