# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
    out = []
    line = []
    line << words[0]
    linelen = line[0].length
    i = 1
    while i < words.length do 
        if linelen + line.length + words[i].length <= max_width
            line << words[i]
            linelen += words[i].length
        else
            out << justify(line, max_width - linelen)
            line = [words[i]]
            linelen = words[i].length
        end
        i += 1
    end
    out << leftJustify(line, max_width)
    return out    
end

def justify(line, spaces)
    if line.length == 1
        return line[0] + (' ' * spaces)
    else
        out = line[0]
        spaces_even = spaces / (line.length-1)
        extra = spaces % (line.length-1)
        for i in 1..line.length-1 do
            if extra > 0
                out = out + (' ' * (spaces_even + 1)) + line[i]
                extra -= 1
            else
                out = out + (' ' * spaces_even) + line[i]
            end
        end
        return out
    end
end

def leftJustify(line, max_width)
    out = line[0]
    max_width -= line[0].length
    for i in 1..line.length-1 do
        out = out + " " + line[i]
        max_width -= line[i].length + 1
    end
    return out + (" " * max_width)
end
    

