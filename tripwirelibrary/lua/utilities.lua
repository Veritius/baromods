tw.func.stringstarts = function(input, cond)
    -- Original function made by EvilFactory, modified by Veritius
    return string.sub(input, 1, string.len(cond)) == cond
end