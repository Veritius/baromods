tw.data.currentThinkInt = 0
tw.data.waitTable = {}

Hook.Add("roundStart","tw_timekeeperResetData", function()
    tw.data.currentThinkInt=0
    tw.data.waitTable = {}
end)

Hook.Add("think","tw_timekeeperThinkCheck", function()
    tw.data.currentThinkInt = tw.data.currentThinkInt + 1
    for key, data in pairs(tw.data.waitTable) do
        if data[1] == tw.data.currentThinkInt then
            data[2]()
            tw.data.waitTable[key] = nil
        end
    end
end)

tw.func.wait = function(tickWait,secondWait,functionToCall)
    if secondWait > -1 and tickWait > -1 and (secondWait+tickWait>0) then
        local targetTickInt = (tw.data.currentThinkInt+tickWait+(tw.data.thinkRate*secondWait))
        local assembledTable = {targetTickInt, functionToCall}
        table.insert(tw.data.waitTable, assembledTable)
    end
end