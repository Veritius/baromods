--Information structure initialisation
vam={}
vam.config={}
vam.func={}
vam.data={}

--Read forbiddenwordlist.txt and make it a table
vam.data.prohibitedWordList = {}
for line in File.Read("Data/forbiddenwordlist.txt"):gmatch("[^\r\n]+") do
    table.insert(vam.data.prohibitedWordList,line)
end

--Run relevant scripts
dofile("Mods/verisadminmod/initialconfig.lua")
dofile("Mods/verisadminmod/lua/utilities.lua")
dofile("Mods/verisadminmod/lua/commands.lua")
dofile("Mods/verisadminmod/lua/chatinterceptor.lua")
dofile("Mods/verisadminmod/lua/dccharremover.lua")
dofile("Mods/verisadminmod/lua/motd.lua")

Game.DisableSpamFilter(vam.config.disableSpamKick)