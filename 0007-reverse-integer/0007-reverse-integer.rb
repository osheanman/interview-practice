# @param {Integer} x
# @return {Integer}
def reverse(x)
    negative = (x < 0)
    temp = x
    out = 0
    negMax = (2**31) / 10 
    posMax = ((2**31) - 1) / 10
    if negative
        temp = temp * -1
    end
    while temp > 0
        if (negative && out > negMax) || (!negative && out > posMax)
            return 0
        end
        out = out * 10
        digit = temp % 10
        out += digit
        temp = temp / 10
    end
    if negative
        return out * -1
    else
        return out
    end
end