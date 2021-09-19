Hook.Add("roundStart","esl_LockHook", function(item)
    for _,v in ipairs(tw.func.getGridItems(false)) do
        if v.Prefab.Identifier == "esl_locker_xy" then
            Submarine.LockX=true
            Submarine.LockY=true
            Item.AddToRemoveQueue(v)
            break
        end
    end
end)