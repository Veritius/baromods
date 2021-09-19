tw.func.stringstarts = function(str, sw)
    return string.sub(str, 1, #sw) == str
end

tw.func.average = function(t)
    local s = 0
    for _,v in pairs(t) do
        s = s + v
    end
    return s / #t
end

tw.func.getGridItems = function(includeConnectedSubs)
    local rt = {}
    local sb = Submarine.GetItems(includeConnectedSubs)
    for _,v in Ipairs(sb) do
        if v.ParentInventory == nil then
            rt:insert(v)
        end
    end
    return rt
end