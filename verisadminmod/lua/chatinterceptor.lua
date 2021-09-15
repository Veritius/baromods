Hook.Add("chatMessage", "vam_ProhibitedMessageInterceptor", function(message, client)
    if vam.config.interceptProhibitedMessages == true then
        for key, useless in pairs(vam.data.prohibitedWordList) do
            if message:find(key) == true then
                Game.SendDirectChatMessage(vam.config.servermessageprefix, vam.config.messageInterceptionText, nil, 7, client)
                Game.Log(tostring(client) .. "'s message was intercepted by filter", 7)
                return true
            end
        end
    end
end)