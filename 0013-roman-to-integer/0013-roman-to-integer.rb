# @param {String} s
# @return {Integer}
def roman_to_int(s)
    out = 0
    len = s.length - 1
    vee, ex, el, cee, dee, em = false, false, false, false, false, false
    for i in 0..len
        j = len - i 
        case s[j]
        when 'I'
            if vee or ex
                out -= 1
            else
                out += 1
            end
        when 'V'
            out += 5
            vee = true
        when 'X'
            if el or cee
                out -= 10
            else
                out += 10
            end
            ex = true
        when 'L'
            out += 50
            el = true
        when 'C'
            if dee or em
                out -= 100
            else
                out += 100
            end
            cee = true
        when 'D'
            out += 500
            dee = true
        when 'M'
            out += 1000
            em = true
        end
    end
    return out
end 