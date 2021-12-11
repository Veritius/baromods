Hook.Add("clientConnected", "vam_MOTDHook", function(client)
    if vam.config.motdenabled == true then
        Game.SendDirectChatMessage(nil, vam.config.motdcontent, nil, 2, client) --Text chat
        Game.SendDirectChatMessage(nil, vam.config.motdcontent, nil, 7, client) --Message box
    end
end)