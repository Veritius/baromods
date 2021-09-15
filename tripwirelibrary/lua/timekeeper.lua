tw.data.waitTable = {}

Hook.Add("roundStart","tw_roundStart", function()
    tw.data.currentThinkInt=0
end)

Hook.Add("think","tw_thinkCycle", function()
    tw.data.currentThinkInt = tw.data.currentThinkInt + 1
    for key, data in pairs(tw.data.waitTable) do
        if data[1] == tw.data.currentThinkInt then
            data[2]()
        end
    end
end)

tw.func.wait = function(tickWait,secondWait,functionToCall)
    if secondWait > 0 and tickWait > -1 then
        local wellNamedVar = (tw.data.currentThinkInt+tickWait+(tw.data.thinkRate*secondWait))
        local assembledTable = {
            wellNamedVar,
            functionToCall
        }
        table.insert(tw.data.waitTable, assembledTable)
    end
end
