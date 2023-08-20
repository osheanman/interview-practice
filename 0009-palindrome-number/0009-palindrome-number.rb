# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x < 0
        return false
    end

    rev = 0
    input = x

    while input > 0 do
        digit = input % 10
        rev = (rev * 10) + digit
        input = input / 10
    end
    
    return x == rev
end