# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
    stack = []
    stack.push(-1)
    max = 0
    for i in 0..s.length-1 do
        if s[i] == '('
            stack.push(i)
        else
            stack.pop()
            if stack.empty?
                stack.push(i)
            else
                max = [max, i-stack[stack.length-1]].max
            end
        end
    end
    return max
end