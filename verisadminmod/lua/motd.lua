Hook.Add("clientConnected", "vam_MOTDHook", function(client)
    if vam.config.motdenabled == true then
        Game.SendDirectChatMessage(vam.config.motdtitle, vam.config.motdcontents, nil, 7, client)
    end
end)