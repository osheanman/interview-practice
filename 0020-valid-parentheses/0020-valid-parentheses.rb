# @param {String} s
# @return {Boolean}
def is_valid(s)
    paren = []
    brace = []
    bracket = []
    for i in 1..s.length do
        case s[i-1]
        when '('
            paren << i
        when '{'
            brace << i
        when '['
            bracket << i
        when ')'
            if paren.last.to_i > 0 && paren.last.to_i > brace.last.to_i && paren.last.to_i > bracket.last.to_i
                paren.pop
            else
                return false
            end
        when '}'
            if brace.last.to_i > 0 && brace.last.to_i > bracket.last.to_i && brace.last.to_i > paren.last.to_i
                brace.pop
            else
                return false
            end
        when ']'
            if bracket.last.to_i > 0 && bracket.last.to_i > brace.last.to_i && bracket.last.to_i > paren.last.to_i
                bracket.pop
            else
                return false
            end
        end
    end
    return paren.empty? && brace.empty? && bracket.empty?
end