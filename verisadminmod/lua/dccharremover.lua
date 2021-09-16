Hook.Add("clientDisconnect", "vam_ClientRemoverHook", function(client)
    if vam.config.removeDisconnectedCharacters == true then
        Character.DespawnNow(client.Character)
        Game.Log("Removed disconnected corpse of " .. tostring(client), 9)
    end
end)