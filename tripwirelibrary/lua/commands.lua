Hook.Add("chatMessage", "tw_commandHandler", function(message, client)
    message = message:lower()

    -- abysmal command template for reference
    -- /ck execute "spawn jeremy" false
    -- <root> <arg1 str> <arg2 str> <arg3 bool>
    if tw.func.stringstarts(message, "/") then
        Game.Log("coom", 9)
        return true
    end
end)